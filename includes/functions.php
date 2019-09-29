<?php
# Linux Day website - common functions
# Copyright (C) 2016, 2017 Valerio Bozzolan, Linux Day Torino
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

function license($code) {
	return Licenses::instance()->get($code);
}

function request_uri() {
	return URL_protocol() . URL_domain() . ROOT . $_SERVER['REQUEST_URI'];
}

/**
 * Generate a stupid MySQL COALESCE() clause to select the most appropriate i18n database column
 *
 * @param  string $name Base virtual name of the column
 * @param  mixed  $i18n Associative array of languages and column names, or a generic column name like 'column_%s'
 * @return string
 */
function i18n_coalesce( $name, $i18n ) {

	// current language (e.g. 'en')
	$lang = latest_language()->getISO();

	// default language of the website
	$default = 'it';

	// allow a generic string
	if( is_string( $i18n ) ) {
		$generic = $i18n;
		$i18n = [];
		$i18n[ $lang    ] = sprintf( $generic, $lang    );
		$i18n[ $default ] = sprintf( $generic, $default );
	}

	// base priority column name
	$base_priority = $i18n[ $default ];

	// try to catch the more specific column, then the default
	if( $lang !== $default && isset( $i18n[ $lang ] ) ) {
		$more_priority = $i18n[ $lang ];
		return "COALESCE( `$more_priority`, `$base_priority` ) AS $name";
	}

	// just pick the default
	return "`$base_priority` AS $name";
}

/**
 * Eventually redirect the request to this permalink
 *
 * It's allowed the 'lang' parameter to be present or not.
 *
 * @param  string $permalink URL of the incoming request (absolute or relative)
 * @return string
 */
function force_permalink( $permalink ) {

	// incoming URL
	$from = BASE_URL . $_SERVER['REQUEST_URI'];

	// force absolute
	$permalink = site_page( $permalink, true );

	// if it's the same request, do nothing
	if( $from === $permalink ) {
		return;
	}

	// redirect to the correct location
	http_redirect( $permalink, 301 );
}

/**
 * Force an URL to have the language argument it it requested the page with it
 *
 * @return string
 */
function keep_url_in_language( $url, $force = false ) {

	if( isset( $_GET['l'] ) || $force ) {
		$url = http_build_get_query( $url, [
			'l' => latest_language()->getISO(),
		] );
	}

	return $url;
}
