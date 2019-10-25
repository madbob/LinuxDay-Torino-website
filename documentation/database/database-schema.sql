-- MySQL dump 10.16  Distrib 10.1.41-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ldto
-- ------------------------------------------------------
-- Server version	10.1.41-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ldto_chapter`
--

DROP TABLE IF EXISTS `ldto_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_chapter` (
  `chapter_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chapter_uid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`chapter_ID`),
  UNIQUE KEY `chapter_uid` (`chapter_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_chapter`
--

LOCK TABLES `ldto_chapter` WRITE;
/*!40000 ALTER TABLE `ldto_chapter` DISABLE KEYS */;
INSERT INTO `ldto_chapter` VALUES (1,'talk','Talk');
INSERT INTO `ldto_chapter` VALUES (2,'party','Linux Installation Party');
INSERT INTO `ldto_chapter` VALUES (3,'coderdojo','Coderdojo');
INSERT INTO `ldto_chapter` VALUES (4,'learning','Corso');
/*!40000 ALTER TABLE `ldto_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_conference`
--

DROP TABLE IF EXISTS `ldto_conference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_conference` (
  `conference_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conference_uid` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conference_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conference_subtitle` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conference_acronym` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conference_persons_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Not part of frab/Pentabarf standard',
  `conference_events_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Not part of frab/Pentabarf standard',
  `conference_quote` text COLLATE utf8mb4_unicode_ci,
  `conference_city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Has to be removed',
  `conference_description` text COLLATE utf8mb4_unicode_ci,
  `conference_start` datetime NOT NULL,
  `conference_end` datetime NOT NULL,
  `conference_days` int(11) NOT NULL,
  `location_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`conference_ID`),
  UNIQUE KEY `conference_uid` (`conference_uid`),
  KEY `location_ID` (`location_ID`),
  CONSTRAINT `ldto_conference_ibfk_1` FOREIGN KEY (`location_ID`) REFERENCES `ldto_location` (`location_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_conference`
--

LOCK TABLES `ldto_conference` WRITE;
/*!40000 ALTER TABLE `ldto_conference` DISABLE KEYS */;
INSERT INTO `ldto_conference` VALUES (1,'2016','Linux Day Torino 2016',NULL,'LDTO16','http://linuxdaytorino.org/2016/user/%1$s','http://linuxdaytorino.org/2016/talk/%1$s',NULL,'Torino',NULL,'2016-10-22 14:00:00','2016-10-22 18:00:00',1,1);
INSERT INTO `ldto_conference` VALUES (2,'2015','Linux Day Torino 2015',NULL,'LDTO15',NULL,NULL,NULL,'Torino',NULL,'2015-10-24 14:00:00','2015-10-24 18:00:00',1,2);
INSERT INTO `ldto_conference` VALUES (3,'2017','Linux Day Torino 2017',NULL,'LDTO17',NULL,NULL,NULL,'Torino',NULL,'2017-10-28 14:00:00','2017-10-28 18:00:00',1,1);
INSERT INTO `ldto_conference` VALUES (4,'2009','Linux Day Torino 2009',NULL,'LDTO2009',NULL,NULL,NULL,'Torino',NULL,'2009-10-24 14:00:00','2009-10-24 18:00:00',1,5);
INSERT INTO `ldto_conference` VALUES (5,'2010','Linux Day Torino 2010',NULL,'LDTO2010',NULL,NULL,NULL,'Torino',NULL,'2010-10-23 10:00:00','2010-10-23 18:00:00',1,5);
INSERT INTO `ldto_conference` VALUES (6,'2011','Linux Day Torino 2011',NULL,'LDTO2011',NULL,NULL,NULL,'Torino',NULL,'2011-10-22 14:00:00','2011-10-22 18:00:00',1,5);
INSERT INTO `ldto_conference` VALUES (7,'2012','Linux Day Torino 2012',NULL,'LDTO2012',NULL,NULL,NULL,'Torino',NULL,'2012-10-26 10:00:00','2012-10-27 18:00:00',2,6);
INSERT INTO `ldto_conference` VALUES (8,'2013','Linux Day Torino 2013',NULL,'LDTO2013',NULL,NULL,NULL,'Torino',NULL,'2013-10-26 14:00:00','2013-10-26 18:00:00',1,4);
INSERT INTO `ldto_conference` VALUES (9,'2014','Linux Day Torino 2014',NULL,'LDTO2014',NULL,NULL,NULL,'Torino',NULL,'2014-10-25 14:00:00','2014-10-25 18:00:00',1,4);
INSERT INTO `ldto_conference` VALUES (10,'2001','Linux Day Torino 2001',NULL,'LDTO2001',NULL,NULL,NULL,'Torino',NULL,'2001-12-01 09:00:00','2001-12-01 15:30:00',1,3);
INSERT INTO `ldto_conference` VALUES (11,'2002','Linux Day Torino 2002',NULL,'LDTO2002',NULL,NULL,NULL,'Torino',NULL,'2002-11-23 09:00:00','2002-11-23 15:30:00',1,9);
INSERT INTO `ldto_conference` VALUES (12,'2008','Linux Day Torino 2008',NULL,'LDTO2008',NULL,NULL,NULL,'Torino',NULL,'2008-10-25 13:30:00','2008-10-25 18:00:00',1,5);
INSERT INTO `ldto_conference` VALUES (13,'2007','Linux Day Torino 2007',NULL,'LDTO2017',NULL,NULL,NULL,'Torino',NULL,'2007-10-27 14:00:00','2007-10-27 18:00:00',1,5);
INSERT INTO `ldto_conference` VALUES (14,'2019','Linux Day Torino 2019',NULL,'LDTO19','http://linuxdaytorino.org/2019/user/%1$s','http://linuxdaytorino.org/2019/talk/%1$s',NULL,'Torino',NULL,'2019-10-26 14:00:00','2019-10-26 19:00:00',1,10);
/*!40000 ALTER TABLE `ldto_conference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_event`
--

DROP TABLE IF EXISTS `ldto_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_event` (
  `event_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_uid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_subtitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_abstract_it` text COLLATE utf8mb4_unicode_ci,
  `event_abstract_en` text COLLATE utf8mb4_unicode_ci,
  `event_abstract_pms` text COLLATE utf8mb4_unicode_ci,
  `event_description_it` text COLLATE utf8mb4_unicode_ci,
  `event_description_en` text COLLATE utf8mb4_unicode_ci,
  `event_description_pms` text COLLATE utf8mb4_unicode_ci,
  `event_note_it` text COLLATE utf8mb4_unicode_ci,
  `event_note_en` text COLLATE utf8mb4_unicode_ci,
  `event_note_pms` text COLLATE utf8mb4_unicode_ci,
  `event_language` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_start` datetime NOT NULL,
  `event_end` datetime NOT NULL,
  `event_img` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_subscriptions` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Enable subscriptions',
  `conference_ID` int(10) unsigned NOT NULL,
  `room_ID` int(10) unsigned DEFAULT NULL,
  `track_ID` int(10) unsigned DEFAULT NULL,
  `chapter_ID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_ID`),
  UNIQUE KEY `event_uid` (`event_uid`,`conference_ID`),
  KEY `room_ID` (`room_ID`),
  KEY `track_ID` (`track_ID`),
  KEY `chapter_ID` (`chapter_ID`),
  KEY `conference_ID` (`conference_ID`),
  KEY `event_start` (`event_start`),
  CONSTRAINT `events_ibfk_5` FOREIGN KEY (`conference_ID`) REFERENCES `ldto_conference` (`conference_ID`) ON DELETE CASCADE,
  CONSTRAINT `events_ibfk_6` FOREIGN KEY (`chapter_ID`) REFERENCES `ldto_chapter` (`chapter_ID`),
  CONSTRAINT `events_ibfk_7` FOREIGN KEY (`track_ID`) REFERENCES `ldto_track` (`track_ID`),
  CONSTRAINT `events_ibfk_8` FOREIGN KEY (`room_ID`) REFERENCES `ldto_room` (`room_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_event`
--

LOCK TABLES `ldto_event` WRITE;
/*!40000 ALTER TABLE `ldto_event` DISABLE KEYS */;
INSERT INTO `ldto_event` VALUES (17,'talk-base-1','Didattica del coding',NULL,NULL,NULL,NULL,'Le basi del coding sono fondamentali, come leggere e scrivere.\nQuali strumenti e metodi didattici hanno a disposizione insegnanti e genitori?','Coding basics are fundamentals, like reading and writing. \nWhich didactics tools and methods do teachers and parents have?',NULL,NULL,NULL,NULL,NULL,'2016-10-22 14:30:00','2016-10-22 15:30:00',NULL,0,1,11,1,1);
INSERT INTO `ldto_event` VALUES (21,'talk-dev-1','Introduzione alla programmazione con JavaScript',NULL,NULL,NULL,NULL,'Un viaggio nel magico mondo della programmazione con consigli pratici e tecnici per chi aspira a creare software e non solo subirlo.','A journey through the magical world of programming with practical and technical recommendation to whoever aspires to create software and not just having it imposed on them.',NULL,NULL,NULL,NULL,NULL,'2016-10-22 14:00:00','2016-10-22 15:00:00','/2016/static/libre-icons/javascript.png',0,1,2,2,1);
INSERT INTO `ldto_event` VALUES (22,'talk-sys-1','Non bisogna aver paura di IPv6',NULL,NULL,NULL,NULL,'Una breve presentazione non tecnica di IPv6, dalle caratteristiche alle potenzialità, le differenze da IPv4 e l\'implementazione in ambiente GNU/Linux.','A short, not technical, presentation of IPv6, from its characteristics to its potentiality, its difference with IPv4 and its implementation in GNU/Linux environments.',NULL,NULL,NULL,NULL,NULL,'2016-10-22 14:00:00','2016-10-22 15:00:00','/2016/static/libre-icons/ipv6.png',0,1,3,3,1);
INSERT INTO `ldto_event` VALUES (23,'talk-misc-1','La tecnologia LoRa e le sue applicazioni IoT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-10-22 14:00:00','2016-10-22 15:00:00',NULL,0,1,4,4,1);
INSERT INTO `ldto_event` VALUES (24,'talk-base-2','Rinascimento 2.0',NULL,NULL,NULL,NULL,'Non è una lezione di storia... o forse sì. Stiamo scrivendo la storia che leggeranno i nostri pronipoti. Siamo spesso troppo presi dai gadget tecnologici per accorgerci che è in corso una rivoluzione, stiamo entrando in una nuova era.','It\'s not a History class... or maybe it is. We are writing the history that our grandchildren will study. We are often to taken by technological gadgets to realize that a revolution is taking place: we are entering a new era. ',NULL,NULL,NULL,NULL,NULL,'2016-10-22 15:00:00','2016-10-22 16:00:00',NULL,0,1,1,1,1);
INSERT INTO `ldto_event` VALUES (25,'talk-base-3','Utilizzi di GNU/Linux',NULL,NULL,NULL,NULL,'Il partecipanti saranno coinvolti in un sondaggio interattivo sugli utilizzi del software libero della vita di tutti i giorni. Si suggerisce di invitare il vostro classico conoscente scettico e/o fanboy (╯°□°)╯.','Participants will be asked to answer an interactive poll on Free as in Freedom Software uses in every day life. It\'s recommended to bring with you your typical skeptic friend and/or the fanboy (╯°□°)╯.',NULL,'Il talk doveva prevedere un sondaggio interattivo con [OpenCV](https://it.wikipedia.org/wiki/OpenCV) ma purtroppo l\'idea è stata soppressa per mancanza di tempo e la presentazione è diventata una cozzaglia di argomenti messi insieme :D\r\n\r\nAl minuto 12 del talk si è detto che «la casa madre di un e-book non è autore di tale e-book», nel senso che non è *soltanto* autore di tale tecnologia, ma ne è anche *padrone*, fintanto che non ci sarà un software libero per utilizzarlo.\r\n\r\nAl minuto 18 si voleva intendere che alcuni sminuiscono il software libero paragonandolo al *comunismo* pensando che uccida il commercio. In realtà molti *freelance* (eccomi!) si guadagnano da vivere sviluppando software libero per aziende che semplicemente apprezzano di essere gli unici a detenere il totale controllo sui propri sistemi.\r\n\r\nAl minuto 27 mi sono dimenticato di mostrare qualche esempio con Blender, tipo [Tears of Steel](https://www.youtube.com/watch?v=R6MlUcmOul8&t=6m18s).\r\n\r\nAl minuto 31 ho accennato al fatto di aver caricato la presentazione sul sito da soli cinque minuti. L\'informazione è scorretta: era stata caricata sul sito da circa un\'ora. In ogni caso è stata fatta la notte dello stesso giorno. :D\r\n\r\nAl minuto 33 non ho fatto abbastanza capire bene quanto odio uTorrent. Per favore basta usare uTorrent! Perchè conoscerlo quando c\'è Transmission, Deluge, etc.? In ogni caso ecco la geniale [rappresentazione del protocollo bittorrent](http://mg8.org/processing/bt.html).\r\n\r\nAl minuto 39 ho citato [Aaron Swartz](https://it.wikipedia.org/wiki/Aaron_Swartz) e il documentario a lui dedicato [The Internet\'s Own Boy: The Story of Aaron Swartz](https://it.wikipedia.org/wiki/The_Internet%27s_Own_Boy:_The_Story_of_Aaron_Swartz). L\'informazione corretta è che Aaron Swartz si suicidò dopo aver subito una multa di 4 milioni di dollari e una potenziale detenzione fino a 50 anni.\r\n\r\nAl minuto 43 è stato citato un popolare e controverso software proprietario di tracciamento dei visitatori. Se possiedi un sito web, utilizza [Piwik](https://piwik.org) per fare le stesse cose ma senza regalare i dati dei tuoi utenti ad altri intermediari.',NULL,NULL,NULL,'2016-10-22 16:00:00','2016-10-22 17:00:00',NULL,0,1,1,1,1);
INSERT INTO `ldto_event` VALUES (26,'talk-base-4','Linux al Comune di Torino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-10-22 17:00:00','2016-10-22 18:00:00',NULL,0,1,1,1,1);
INSERT INTO `ldto_event` VALUES (27,'talk-dev-2','Yocto Project, un generatore automatico di distribuzioni linux embedded',NULL,NULL,NULL,NULL,'Lo Yocto Project è un progetto di collaborazione open source che fornisce modelli, strumenti e metodi che consentono di creare sistemi Linux-based personalizzati per i prodotti embedded indipendenti dall\'architettura hardware. Il progetto è stato creato nel 2010 come una collaborazione tra molti produttori di hardware, fornitori di sistemi operativi open-source e aziende di elettronica per portare un po\' di ordine nel caos di sviluppo di Linux Embedded. Perché usare il Progetto Yocto? Perchè è un ambiente di sviluppo Linux embedded completo con gli strumenti, i metadati e la documentazione - tutto ciò che serve. Gli strumenti gratuiti che Yocto mette a disposizione sono potenti e facilmente generabili (compresi gli ambienti di emulazione, debugger, un toolkit di generatore di applicazioni, ecc) e permettono di realizzare e portare avanti progetti, senza causare la perdita delle ottimizzazioni e degli investimenti effettuati nel corso del fase di prototipazione. Il Progetto Yocto favorisce l\'adozione di questa tecnologia da parte della comunità open source permettendo agli utenti di concentrarsi sulle caratteristiche e lo sviluppo del proprio prodotto.','The Yocto Project is a collaborative open source project that provides prototypes, tools and methods that let you create personalized Linux-based systems for embedded products independent from the hardware architecture. The project was born in 2010 as a partnership of many different hardware manufacturers, open-source operative systems providers and electronic companies,  to bring some order to the chaos that was the development of Linux Embedded. Why use Project Yocto? Because it\'s a development environment for Linux embedded complete with tools, meta-data and documentation - everything that one needs. The free of charge tools that Yocto makes available are powerful and easy to generate (included emulation environments, debuggers, a tool-kit to generate applications and others) and they let you create and continue projects, without causing you a loss of optimizations and investments made in the prototyping phase. Project Yocto supports the adoption of this technology by the open-source community letting users concentrate on the characteristics and development of their product.',NULL,NULL,NULL,NULL,NULL,'2016-10-22 15:00:00','2016-10-22 16:00:00',NULL,0,1,2,2,1);
INSERT INTO `ldto_event` VALUES (28,'talk-dev-3','Dieci anni dietro a FidoCadJ',NULL,NULL,NULL,NULL,'Dietro le quinte del progetto open source [FidoCadJ](http://darwinne.github.io/FidoCadJ/): un editor per l\'elettronica (e non solo), usato in diversi forum italiani.','Behind the scenes of the [FidoCadJ](http://darwinne.github.io/FidoCadJ/) open-source project: an editor for electronics (and not only), used in different Italian forums.',NULL,NULL,NULL,NULL,NULL,'2016-10-22 16:00:00','2016-10-22 17:00:00','/2016/static/libre-icons/fidocadj.png',0,1,2,2,1);
INSERT INTO `ldto_event` VALUES (29,'talk-dev-4','Un bot di Telegram con Python','','Usare Python e la libreria Telepot per sviluppare un semplice bot su Telegram che tira un dado da 6 per noi. Il tutto su un Raspberry Pi, piccolo, economico e parco in consumi.','Developing a simple Telegram bot using Python and the Telepot library  to create a simple 6-faces dice for us. The project is deployed on a  Raspberry PI, small, cheap and low energy.',NULL,'Slide con esempi di codice e presentazione del Raspberry dal vivo, se c\'è connettività e tempo una breve dimostrazione.','Slides with code examples and a live show of the Raspberry, and a brief demonstration if there is enough time.',NULL,NULL,NULL,NULL,'','2016-10-22 17:00:00','2016-10-22 18:00:00','/2016/static/libre-icons/bot_father.jpg',0,1,2,2,1);
INSERT INTO `ldto_event` VALUES (30,'talk-sys-2','Docker: distribuiamo applicazioni',NULL,NULL,NULL,NULL,'Una introduzione ai sistemi distribuiti tramite la gestione dei container realizzati con Docker.\nUna risposta alle domande: Docker a cosa serve? Come si installa? Come si gestisce?','An introduction to distributed systems through the management of Docker\'s containers.\nAn answer to: what do we need Docker for? How to install it? How do I manage it?',NULL,NULL,NULL,NULL,NULL,'2016-10-22 15:00:00','2016-10-22 16:00:00','/2016/static/libre-icons/docker.png',0,1,3,3,1);
INSERT INTO `ldto_event` VALUES (31,'talk-sys-4','Hadoop - BigData in streaming',NULL,NULL,NULL,NULL,'Big Data, cosa sono e dove vanno? Use case di un cluster Hadoop per l\'elaborazione in streaming con Apache NiFi, Kafka e Solr.','What are BigData and where do they go? Case use of a cluster Hadoop to elaborate while streaming with Apache NiFi, Kafka and Solr.',NULL,NULL,NULL,NULL,NULL,'2016-10-22 17:00:00','2016-10-22 18:00:00','/2016/static/libre-icons/hadoop.png',0,1,3,3,1);
INSERT INTO `ldto_event` VALUES (32,'talk-sys-3','InfoSec. Istruzioni per l\'uso.',NULL,NULL,NULL,NULL,'InfoSec → Information Security → Sicurezza delle informazioni.\n\nIl talk illustrerà gli applicativi e darà i giusti consigli per poter tenere maggiormente al sicuro la propria \"vita digitale\".','InfoSec → Information Security.\n\nTalk will show application and give practical advice in order to keep (mainly) safe you \"digital life\".',NULL,NULL,NULL,NULL,NULL,'2016-10-22 16:00:00','2016-10-22 17:00:00',NULL,0,1,3,3,1);
INSERT INTO `ldto_event` VALUES (33,'talk-misc-2','Sostenibilità e Open Culture all\'Università',NULL,'Le apparecchiature guaste sono una risorsa più che un rifiuto. Al Politecnico un gruppo di studenti intende costituire un team dove i ragazzi possano rigenerare le apparecchiature guaste, condividere informazioni e fornire alla società circostante apparecchiature elettroniche funzionanti gratuitamente.','Broken devices are a resource rather than a waste. At Politecnico a group of students mean to build a team where kids can restore broken devices, share informations and provide society around them with free of charge working devices.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-10-22 15:00:00','2016-10-22 16:00:00',NULL,0,1,4,4,1);
INSERT INTO `ldto_event` VALUES (34,'talk-misc-3','Wikidata: la base di conoscenza libera',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-10-22 16:00:00','2016-10-22 17:00:00','/2016/static/libre-icons/wikidata.png',0,1,4,4,1);
INSERT INTO `ldto_event` VALUES (35,'talk-misc-4','Wikipedia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-10-22 17:00:00','2016-10-22 18:00:00','/2016/static/libre-icons/wikipedia.png',0,1,4,4,1);
INSERT INTO `ldto_event` VALUES (37,'lip','LIP','Linux Installation Party','Installazione di varie distribuzioni GNU/Linux.','Installation of various GNU/Linux distributions.',NULL,'Linux Installation Party e assistenza tecnica distribuzioni GNU/Linux. Gestito da volontari.','Linux Installation Party and technical assistance on GNU/Linux distributions. Run by Volunteers.',NULL,NULL,NULL,NULL,NULL,'2016-10-22 14:00:00','2016-10-22 18:00:00',NULL,0,1,9,5,2);
INSERT INTO `ldto_event` VALUES (38,'coderdojo','Coderdojo',NULL,'Laboratorio di coding per i più piccoli a tema Linux Day.','Coding lab for children themed Linux Day.',NULL,'Ebbene sì. Per la prima volta nelle edizioni torinesi del Linux Day, si è deciso di ospitare un CoderDojo, un po\' particolare, dove i ninja si confronteranno con tematiche fondamentali, come il Software Libero e lo sviluppo Open Source. Entra a far parte della gang del Software Libero! =D<br>\n<br>\n<a href=\"https://attendize.ldto.it/e/3/coderdojo-at-linuxday\">Clicca qui per prenotare</a>.\n<br>\n<br>\nUn ringraziamento particolare ai due gruppi che hanno reso possibile quest\'iniziativa CoderDojo Torino e CoderDojo Torino 2.','So yes, for the first time in all of Turin\'s editions of Linux Day, has been decided to host a CoderDojo, a bit unique. There ninjas will confront with fundamentals thematics, like Free Software and Open Source developement. Be a part of the Free Software gang! =D<br>\n<br>\n<a href=\"https://attendize.ldto.it/e/3/coderdojo-at-linuxday\">Click here to book</a>.\n<br>\n<br>\nParticular thanks go to the two groups that made this experience possible CoderDojo Turin and CoderDojo Turin 2.',NULL,NULL,NULL,NULL,NULL,'2016-10-22 14:30:00','2016-10-22 17:30:00',NULL,0,1,10,5,3);
INSERT INTO `ldto_event` VALUES (45,'gnu-linux-base','Lezione introduttiva corso GNU/Linux',NULL,NULL,NULL,NULL,'Questa è stata la prima lezione introduttiva dell\'iniziativa del comitato Linux Day Torino.\n\nSi è trattata di un\'introduzione a GNU/Linux e al mondo del software libero.','This was the first introductive lesson by the Linux Day Turin committee.\n\nIt was an introductive lesson about GNU/Linux and to the Free Software world.',NULL,NULL,NULL,NULL,NULL,'2016-11-15 18:00:00','2016-11-15 19:30:00','/2016/static/corsi-unito.png',1,1,12,1,4);
INSERT INTO `ldto_event` VALUES (46,'gnu-linux-base-installation','Installiamo insieme una distribuzione GNU/Linux',NULL,NULL,NULL,NULL,'Questa è la seconda lezione di un\'iniziativa promossa dal comitato Linux Day Torino.','This is the second lesson from an initiative promoted by the Linux Day Turin committee.',NULL,NULL,NULL,NULL,NULL,'2016-11-23 18:00:00','2016-11-23 19:30:00','/2016/static/corsi-unito.png',1,1,10,1,4);
INSERT INTO `ldto_event` VALUES (47,'gnu-linux-base-debian-maintenance','Manutenzione di un sistema basato su Debian',NULL,NULL,NULL,NULL,'La gestione di un sistema Debian-like (Debian, varie Ubuntu, etc.).\n\nQuesta è la terza lezione di un\'iniziativa promossa dal comitato Linux Day Torino.','The management of a Debian-like (Debian, various Ubuntu, etc.).\n\nThis is the third lesson from an initiative promoted by the Linux Day Turin committee.',NULL,NULL,NULL,NULL,NULL,'2016-11-30 18:00:00','2016-11-30 19:30:00','/2016/static/corsi-unito.png',1,1,10,1,4);
INSERT INTO `ldto_event` VALUES (48,'gnu-linux-base-command-line','I comandi di base di un sistema GNU/Linux',NULL,NULL,NULL,NULL,'Conoscere i comandi di base per l\'amministrazione del filesystem e di altre parti del tuo sistema GNU/Linux.\n\nQuesta è la quarta lezione di un\'iniziativa promossa dal comitato Linux Day Torino.','Conoscere i comandi di base per l\'amministrazione del filesystem e di altre parti del tuo sistema GNU/Linux.\n\nThis is the fourth lesson from an initiative promoted by the Linux Day Turin committee.',NULL,NULL,NULL,NULL,NULL,'2016-12-07 18:00:00','2016-12-07 19:30:00','/2016/static/corsi-unito.png',1,1,10,1,4);
INSERT INTO `ldto_event` VALUES (49,'gnu-linux-base-sysadmin','Gestione del sistema e dei servizi in un sistema GNU/Linux',NULL,NULL,NULL,NULL,'Conoscere quali servizi e quali parti compongono un sistema GNU/Linux e come amministrarli al meglio.\n\nQuesta è la quinta lezione di un\'iniziativa promossa dal comitato Linux Day Torino.','Know which services and which parts build a GNU/Linux system and how to administrate them in the right way.\r\n\r\nThis is the fifth lesson from an initiative promoted by the Linux Day Turin committee.',NULL,NULL,NULL,NULL,NULL,'2016-12-14 18:00:00','2016-12-14 19:30:00','/2016/static/corsi-unito.png',1,1,10,1,4);
INSERT INTO `ldto_event` VALUES (50,'gnu-linux-base-award-ceremony','Consegna degli attestati',NULL,NULL,NULL,NULL,'I più meritevoli e i più presenti saranno premiati con attestati e adesivi!\n\nQuesta giornata conclude le lezioni frutto di un\'iniziativa promossa dal comitato Linux Day Torino.','We will give certificates and stickers!\n\nThis day ends the lessons from an initiative promoted by the Linux Day Turin committee.',NULL,NULL,NULL,NULL,NULL,'2016-12-21 18:00:00','2016-12-21 19:30:00','/2016/static/corsi-unito.png',1,1,10,1,4);
INSERT INTO `ldto_event` VALUES (51,'primi-passi-con-linux','Primi passi con Linux',NULL,NULL,NULL,NULL,'Come e perchè iniziare, quali programmi usare',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,1,1);
INSERT INTO `ldto_event` VALUES (52,'giocare-con-linux','Giocare con Linux',NULL,NULL,NULL,NULL,'Divertirsi con il pinguino',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,1,1);
INSERT INTO `ldto_event` VALUES (53,'openofficeorg','OpenOffice.org',NULL,NULL,NULL,NULL,'Introduzione al software libero di produttivita\' personale',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,1,1);
INSERT INTO `ldto_event` VALUES (54,'firefox-e-thunderbird','Firefox e Thunderbird',NULL,NULL,NULL,NULL,'Ottieni il massimo da posta e web',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,1,1);
INSERT INTO `ldto_event` VALUES (55,'backup-facile-e-incrementale','Backup facile e incrementale',NULL,NULL,NULL,NULL,'Mantenere una copia di riserva dei propri dati',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,1,1);
INSERT INTO `ldto_event` VALUES (56,'niente-panico','Niente panico',NULL,NULL,NULL,NULL,'I trucchi per passare a Linux senza l\'aiuto degli esperti',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,1,1);
INSERT INTO `ldto_event` VALUES (57,'linux-community','Linux Community',NULL,NULL,NULL,NULL,'Districarsi tra gli strumenti della comunità',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,1,1);
INSERT INTO `ldto_event` VALUES (58,'linuxscuola','Linux@scuola',NULL,NULL,NULL,NULL,'Open-source a scuola: non solo utilizzatori, ma anche sviluppatori',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,1,1);
INSERT INTO `ldto_event` VALUES (59,'groupware-intranet','Groupware & Intranet',NULL,NULL,NULL,NULL,'Dal server al desktop!','From server to desktop!',NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,6,1);
INSERT INTO `ldto_event` VALUES (60,'sicurezza-reti-wireless','Sicurezza reti wireless',NULL,NULL,NULL,NULL,'Vulnerabilità di una rete senza fili','Vulnerabilities of a wireless network',NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,6,1);
INSERT INTO `ldto_event` VALUES (61,'videoediting','Videoediting',NULL,NULL,NULL,NULL,'Tecniche e Software per il videoediting su GNU/Linux',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,6,1);
INSERT INTO `ldto_event` VALUES (62,'opensolaris','OpenSolaris',NULL,NULL,NULL,NULL,'OS Opensource non è solo Linux',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,6,1);
INSERT INTO `ldto_event` VALUES (63,'gimpblender','Gimp&Blender',NULL,NULL,NULL,NULL,'Grafica 2D e 3D',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,6,1);
INSERT INTO `ldto_event` VALUES (64,'green-it','Green IT',NULL,NULL,NULL,NULL,'Risparmio energetico con Linux',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,6,1);
INSERT INTO `ldto_event` VALUES (65,'python','Python',NULL,NULL,NULL,NULL,'Come diventare un hacker',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,7,1);
INSERT INTO `ldto_event` VALUES (66,'kernel-linux','Kernel Linux',NULL,NULL,NULL,NULL,'Ricompilazione ed Ottimizzazione del Sistema',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,7,1);
INSERT INTO `ldto_event` VALUES (67,'cloud-computing','Cloud Computing',NULL,NULL,NULL,NULL,'La nuova frontiera del calcolo distribuito',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,7,1);
INSERT INTO `ldto_event` VALUES (68,'arduino-e-linux','Arduino e Linux',NULL,NULL,NULL,NULL,'Hardware e software OpenSource insieme',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,7,1);
INSERT INTO `ldto_event` VALUES (69,'bash','Bash',NULL,NULL,NULL,NULL,'L\'interfaccia utente piu\' rapida al mondo',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,7,1);
INSERT INTO `ldto_event` VALUES (70,'subversion','Subversion',NULL,NULL,NULL,NULL,'Introduzione al Version Control','Introduction to Version Control',NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,7,1);
INSERT INTO `ldto_event` VALUES (71,'sviluppo-web-con-cakephp','Sviluppo Web con CakePHP',NULL,NULL,NULL,NULL,'Introduzione al framework MVC con esempi pratici',NULL,NULL,NULL,NULL,NULL,'it','2009-10-24 00:00:00','2009-10-24 01:00:00',NULL,0,4,NULL,7,1);
INSERT INTO `ldto_event` VALUES (72,'linux-a-scuola','Linux a scuola',NULL,'Sophia Danesino, docente dell\'ITIS Peano di Torino, ha presentato insieme a altri colleghi la sua esperienza con il software libero a scuola, le impressioni degli alunni e la LIM (Lavagna Interattiva Multimediale).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,1,1);
INSERT INTO `ldto_event` VALUES (73,'linux-in-azienda-not-just-for-fun','Linux in azienda: \"not just for fun\"',NULL,'Fabrizio Reale, fondatore e proprietario di Redomino, ha presentato l\'uso di Linux in azienda e risposto alla domanda: «Si può fare business col software libero?».',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,1,1);
INSERT INTO `ldto_event` VALUES (74,'plone-4','Plone 4',NULL,'Presentazione dal vivo della nuovissima release di Plone, uno dei più potenti CMS open source oggi disponibili. Plone è lo strumento ideale per la realizzazione di siti web, intranet, piattaforme di gestione documentale, e-learning ed e-commerce. L\'ultima versione introduce sostanziali innovazioni nelle performance, nell\'interfaccia e nell\'architettura. Scopriamole insieme!',NULL,NULL,'Più veloce, più bello, più facile da usare!',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,1,1);
INSERT INTO `ldto_event` VALUES (75,'arduino-10','Arduino 1.0',NULL,'Arduino è il primo microcontrollore open source, e nasce in Piemonte cinque anni fa, con il preciso obiettivo di semplificare la prototipazione elettronica. Arduino ha semplificato la realizzazione di nuovi prodotti / progetti sia da un punto di vista della piattaforma elettronica (aperta, migliorabile dalla comunità), sia attraverso il programma di compilazione (opensource, crossplatform), e soprattutto attraverso l\'utilizzo di una licenza CC S-A. Arduino festeggia i suoi primi cinque anni, passando alla versione UNO. Tema del Talk é la breve storia della scheda, degli ultimi cambiamenti, e la presa in esame di alcuni progetti.',NULL,NULL,'L\'evoluzione di Arduino e i suoi (infiniti?) utilizzi a scopo didattico',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,1,1);
INSERT INTO `ldto_event` VALUES (76,'imparare-a-usare-sw-open-a-scuola','Imparare a usare SW open a scuola',NULL,'Perché studiare l\'Open Source a scuola? esistono gli strumenti adatti? La discussione presenta alcune idee per studiare il software open source a scuola sia come oggetto diretto di studio sia come mezzo per l\'apprendimento di altre discipline. Attraverso l\'esperienza dell\'adozione di un libro di testo che contiene delle parti rivolte al software open source si vuole riflettere sul ruolo e sulle potenzialità che ha il software Open nella didattica e nell\'insegnamento. Il libro, edito dalla casa editrice Petrini, offre parecchi spunti per la discussione. Saranno presenti gli autori. Una descrizione del libro la trovate',NULL,NULL,'Un libro per imparare a usare anche l\'Open Source',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (77,'net-gnulinux-nemici-o-amici','.NET & GNU/Linux: Nemici o Amici',NULL,'Ormai da qualche anno Mono è l\'implementazione di riferimento (anche se non l\'unica) del framework .NET di Microsoft in ambiente GNU/Linux. Il linguaggio C#, una matura libreria di base e l\'Integrated Development Environment (IDE) MonoDevelop insieme forniscono un ambiente nel quale programmare -oltre che essere divertente- è anche estremamente produttivo. Sempre che la Microsoft non vi faccia causa. Amato, deriso ed osteggiato, Mono è comunque una realtà e nel corso dell\'intervento vedremo cos\'è, come funziona, cosa si può fare in C# e quanto ci sia di vero nelle voci che lo vogliono il cavallo di troia che la MS userà per conquistare Linux.',NULL,NULL,'Programmare in C# su Linux e vivere (quasi) felici',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (78,'html-5','HTML 5',NULL,'HTML5 è uno standard (attualmente in discussione) che racchiude una lunga serie di funzionalità per lo sviluppo di applicazioni web. Dopo una breve storia dello sviluppo web fino ad ora, esploreremo le nuove funzionalità introdotte dall\'html5: geolocalizzazione, storage locale e applicazioni offline, video e audio embedded, funzioni grafiche 2D(3D), form, microformati e semantica... Infine proveremo a delineare cosa ci riserva il futuro dello sviluppo di applicazioni web e non solo.',NULL,NULL,'Le nuove frontiere del web',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (79,'html5-mobile-apps-offline','HTML5 Mobile Apps Offline',NULL,'L\'evoluzione degli standard W3C quali HTML5/CSS3 e il continuo diffondersi di disposivi mobili con web browser evoluti hanno aperto delle nuove strade per lo sviluppo di applicazioni multipiattaforma. Dover imparare una nuova SDK per ogni nuova piattaforma e il dover sottostare a limitanti condizioni degli \"AppStore\" non è l\'ideale, quando invece sarebbe molto più semplice condividere le funzionalità attraverso un sito internet. HTML5 unito a un framework open source MVC come Ruby on Rails possono essere una buona ricetta per iniziare a realizzare webapp avanzate che possano accedere a dispositivi hardware (es GPS) senza complicarci troppo la vita. Visto che gli standard permetteranno al browser di accedere a sempre più hardware, aspettatevi di trovare in futuro una webapp per tutto.',NULL,NULL,'Potenzialità e limiti delle ultime tecnologie web che funzionano anche offline',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (80,'harald-dente-blu-ed-il-bluetooth','Harald Dente Blu ed il bluetooth',NULL,'Dopo una breve introduzione al nome ed alla nascita del bluetooth daremo un\'occhiata alla sua struttura (i layers fisico e di trasporto), ai profili (per esempio DUN,FTP,OBEX) e vedremo brevemente cosa servono i comandi della suite bluez (hciattach, hciconfig; bluetooth-agent, hcitool, rfcomm, l2ping, sdptool) e come usarli.',NULL,NULL,'Che ce ne facciamo dei comandi di bluez',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (81,'asterisk','Asterisk',NULL,'Dall\'invenzione del primo combinatore telefonico manuale di Almon B. Strowger, il mondo della telefonia è diventato sempre più efficiente, complesso e semplice da gestire. Oggigiorno chiunque possiede un computer e un po\' di tempo libero può assemblare la propria centrale telefonica. Questo seminario descriverà una panoramica di Asterisk: quali sono le sue potenzialità, quali le funzionalità e come lo si può integrare nel mondo reale.',NULL,NULL,'La Telefonia open source e la sua integrazione nel mondo reale',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (82,'camera-oscura-digitale','Camera oscura digitale',NULL,'Presentazione dei migliori software per lo sviluppo e la gestione delle fotografia digitale come alternativa ad Adobe LightRoom e Adobe CameraRaw. Sviluppo in \"camera chiara\" dei files in formato RAW, post-produzione preliminare delle proprie fotografie, realizzazione di foto HDR, gestione dei dati EXIF, montaggio di foto panoramiche. Dedicato agli appassionati di fotografia digitale.',NULL,NULL,'Come ottenere il meglio dalle proprie foto',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (83,'tuffarsi-in-vim','Tuffarsi in Vim',NULL,'Trucchi e segreti per utilizzare al meglio quello che sembra solo un semplice editor di testo ma che invece ha alle spalle più di 20 anni di storia.',NULL,NULL,'vim - un editor, una leggenda',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (84,'regular-expressions','Regular Expressions',NULL,'Sfruttare la potenza delle espressioni regolari nei Command LIne tools più usati: grep, sed, awk, find, locate. Il talk parte da una introduzione all\'uso delle espressioni regolari per spiegarne l\'utilità e la sintassi. Verranno poi proposti diversi esempi utili in attività comuni di gestione del filesystem o nella elaborazione di documenti di testo via riga di comando. Non sono richieste competenze preliminari, anche se si il talk si rivolge a chi ha già un buon grado di familiarità con la shell.',NULL,NULL,'Sfruttare le regexp in grep, sed, awk e find',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (85,'apache-directory-server','Apache Directory Server',NULL,'Verrà mostrata una panoramica delle funzionalità del server LDAP sviluppato in Java, la semplicità della configurazione, l\'inserimento degli utenti e la creazione di un DIT per mezzo di Apache Directory Studio su Apache Directory Server, l\'analisi delle proprietà dell\'editor, la configurazione delle connessioni, SSL, ricerche, integrazione in Eclipse e gestione degli schema. Se opportuno in base all\'uditorio verrà mostrato il funzionamento di base delle acl e l\'integrazione con altri strumenti (Apache, PAM, ecc.).',NULL,NULL,'Ldap diventa semplice','Ldap become simple',NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,6,1);
INSERT INTO `ldto_event` VALUES (86,'bacula-il-backup-enterprise','Bacula: il backup enterprise',NULL,'Dice il saggio \"Il backup è buono, il backup è bello, il backup mi fa dormire sereno la notte\". Quando si ha a che fare con molte macchine distribuite e una mole di dati elevata, il backup può diventare un incubo. Bacula è una soluzione opensource cross-plataform che aiuta a risolvere problemi come questi. Verrà mostrata la complessa struttura di una piattaforma di backup con una panoramica sulle potenzialità del tool.',NULL,NULL,'Dormire sereni la notte',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,7,1);
INSERT INTO `ldto_event` VALUES (87,'sviluppo-su-android','Sviluppo su Android',NULL,'Il talk si propone di fornire una panoramica sullo sviluppo di applicazioni Android, utilizzando l\'SDK basato su Eclipse e Java. Dopo una breve introduzione, verranno illustrati alcuni concetti fondamentali dell\'architettura Android, tra cui Activities, Intents, Layout XML, risorse e Drawables. Durante il talk verrà creata una semplice applicazione di esempio e fatta girare sull\'emulatore oltre che su un dispositivo reale. I prerequisiti preferenziali per fruire del talk sono: conoscenza minima del linguaggio Java e XML, infarinatura delle tematiche si sviluppo su piattaforma mobile.',NULL,NULL,'creazione pratica di una applicazione mobile',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,7,1);
INSERT INTO `ldto_event` VALUES (88,'bash-41','Bash 4.1',NULL,'Il talk presenta una serie di comode funzionalità dell\'interprete, meno famose, ma decisamente utili. Verrà presentato un cheatsheet con soluzioni rapide ad esigenze comuni. Verranno esaminate alcune forme di espansione di variabili come l\'indirezione e verranno approfondite le principali funzionalità introdotte negli ultimi 2 anni (versioni 4.X), come ad esempio gli array associativi. Il talk si rivolge ad utenti che abbiano già esperienze, anche poche, di scripting in bash.',NULL,NULL,'Comodi trucchi da usare con bash',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,7,1);
INSERT INTO `ldto_event` VALUES (89,'db-nosql','DB NoSQL',NULL,'Una delle più importanti sfide all’elaborazione distribuita è rappresentata dalla necessità di implementare alcuni requisiti come la scalabilità delle soluzioni relative le basi di dati attraverso una famiglia di soluzioni che rientra in un generico termine NoSQL il quale indica sommariamente i database che non sfruttano la sintassi SQL e che spesso vengono anche classificati come “non relazionali”.',NULL,NULL,'Database Not Only SQL',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,7,1);
INSERT INTO `ldto_event` VALUES (90,'wireshark-revealed','Wireshark revealed',NULL,'L\'intervento verterà sul software wireshark e sul suo uso per capire le logiche delle rete, con focus sulle reti IP. Si partirà dai concetti di sniffer e network analyzer per poi passare a descrivere l\'architettura delle libpcap (in generale) ed i concetti di filtri (pcap e wireshark). Si passerà poi ad approfondire wireshark, presentando una serie di use-case che metteranno in luce i principali aspetti peculiari del software, con dimostrazioni di live-capture e di uso dei tool incorporati al suo interno.',NULL,NULL,'Un occhio nei meandri della rete',NULL,NULL,NULL,NULL,NULL,'it','2010-10-23 00:00:00','2010-10-23 01:00:00',NULL,0,5,NULL,7,1);
INSERT INTO `ldto_event` VALUES (91,'20-anni-di-linux','20 Anni di Linux',NULL,NULL,NULL,NULL,'Quest\'anno ricorrono i primi 20 anni dalla nascita del kernel Linux. Come è nato, chi ci ha lavorato, e come ha impattato la sua esistenza nel corso della breve (ma intensa)...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 15:00:00','2011-10-22 16:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (92,'android-chromiumos-meego-quale-sicurezza','Android, ChromiumOS, MeeGo: Quale Sicurezza?',NULL,NULL,NULL,NULL,'Da qualche anno i dispositivi mobile sono entrati prepotentemente nella nostra vita. A loro affidiamo molti dei nostri dati più importanti anche se non tutti affrontano la...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 17:00:00','2011-10-22 18:00:00',NULL,0,6,NULL,7,1);
INSERT INTO `ldto_event` VALUES (93,'caelinux-per-le-applicazioni-ingegneristiche','CaeLinux per le Applicazioni Ingegneristiche',NULL,NULL,NULL,NULL,'EDF (Electricitè de France) ha sviluppato una serie di programmi per progettare e costruire centrali idroelettriche e nucleari. Il pacchetto comprende un CAD tridimensionale, un \"...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 14:00:00','2011-10-22 15:00:00',NULL,0,6,NULL,7,1);
INSERT INTO `ldto_event` VALUES (94,'come-ottenere-di-piu-da-gimp','Come Ottenere di Più da Gimp',NULL,NULL,NULL,NULL,'The Gimp, il programma freesoftware per il fotoritocco alternativo a PhotoShop, già offre una gran quantità di funzioni ed opzioni, ma grazie a...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 16:00:00','2011-10-22 17:00:00',NULL,0,6,NULL,6,1);
INSERT INTO `ldto_event` VALUES (95,'contribuire-al-kernel-linux','Contribuire al Kernel Linux',NULL,NULL,NULL,NULL,'L\'intervento verterà su una esperienza nell\'inviare una patch al kernel Linux. Oltre ad alcuni brevi dettagli tecnici verrà data enfasi a come nasce una patch, come la si sviluppa...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 17:00:00','2011-10-22 18:00:00',NULL,0,6,NULL,7,1);
INSERT INTO `ldto_event` VALUES (96,'editing-fotografico','Editing Fotografico',NULL,NULL,NULL,NULL,'Panoramica sulle applicazioni per Linux dedicate all\'editing fotografico piu\' o meno avanzato.',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 15:00:00','2011-10-22 16:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (97,'hardware-obsoleto-e-ltsp-sessione-pratica','Hardware Obsoleto e LTSP: Sessione Pratica',NULL,NULL,NULL,NULL,'Troppo spesso i laboratori informatici delle scuole presentano hardware obsoleto e non aggiornato. La soluzione a questo problema puo\' essere LTSP,...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 15:00:00','2011-10-22 16:00:00',NULL,0,6,NULL,6,1);
INSERT INTO `ldto_event` VALUES (98,'hardware-obsoleto-e-ltsp-sessione-teorica','Hardware Obsoleto e LTSP: Sessione Teorica',NULL,NULL,NULL,NULL,'Troppo spesso i laboratori informatici delle scuole presentano hardware obsoleto e non aggiornato. La soluzione a questo problema puo\' essere LTSP...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 14:00:00','2011-10-22 15:00:00',NULL,0,6,NULL,6,1);
INSERT INTO `ldto_event` VALUES (99,'i-desktop-di-linux-gnome3-shell-e-unity','I Desktop di Linux, GNOME3 Shell e Unity',NULL,NULL,NULL,NULL,'Dalla versione 11.04 Ubuntu si presenta con un nuovo ambiente grafico, denominato Unity. Come funziona? Quali sono le sue caratteristiche? Qual\'è il metodo migliore per sfruttare...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 14:00:00','2011-10-22 15:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (100,'impatto-nelluso-del-floss-nelle-piccole-e-medie-imprese','Impatto nell\'uso del FLOSS nelle Piccole e Medie Imprese',NULL,NULL,NULL,NULL,'Il software libero ed opensource può essere estremamente utile non solo a casa ma anche (e soprattutto) in azienda. Meno costoso, più sicuro, maggiormente personalizzabile, e...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 17:00:00','2011-10-22 18:00:00',NULL,0,6,NULL,6,1);
INSERT INTO `ldto_event` VALUES (101,'introduzione-a-blender','Introduzione a Blender',NULL,NULL,NULL,NULL,'Quando si parla di grafica 3D su Linux è impossibile non parlare di Blender. In questo talk una rapida introduzione al programma ed alle sue...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 17:00:00','2011-10-22 18:00:00',NULL,0,6,NULL,6,1);
INSERT INTO `ldto_event` VALUES (102,'introduzione-a-vim','Introduzione a VIM',NULL,NULL,NULL,NULL,'Chi penserebbe che uno dei più potenti IDE del pianeta sia una applicazione senza grafica, senza icone, ma con centinaia di comandi testuali per elaborare in pochi istanti i...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 15:00:00','2011-10-22 16:00:00',NULL,0,6,NULL,7,1);
INSERT INTO `ldto_event` VALUES (103,'le-migliori-estensioni-per-firefox','Le Migliori Estensioni per Firefox',NULL,NULL,NULL,NULL,'Tutti conoscono - e magari usano - Firefox, il browser web alternativo a Internet Explorer, ma non tutti conoscono le...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 14:00:00','2011-10-22 15:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (104,'primi-passi-con-linux','Primi Passi con Linux',NULL,NULL,NULL,NULL,'Una introduzione a Linux ed al software libero: cos\'è, com\'è, e perché è davvero così importante avere accesso pieno ed incondizionato al codice degli applicativi che si usano sul...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 14:00:00','2011-10-22 15:00:00',NULL,0,6,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (105,'primi-passi-con-linux-a-scuola','Primi Passi con Linux... A Scuola',NULL,NULL,NULL,NULL,'Una introduzione a Linux ed al software libero, con un approfondimento speciale al mondo della scuola ed all\'utilizzo di strumenti (e di metodologie) open per la didattica.',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 14:00:00','2011-10-22 15:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (106,'programmazione-in-qt','Programmazione in Qt',NULL,NULL,NULL,NULL,'Nel panorama dei dispositivi mobili vediamo purtroppo una mancanza di un sistema con un modello di sviluppo aperto, sul modello di quanto succede in ambiente desktop, con progetti...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 15:00:00','2011-10-22 16:00:00',NULL,0,6,NULL,6,1);
INSERT INTO `ldto_event` VALUES (107,'sabayon-fedora-openmamba-confronto-tra-distribuzioni','Sabayon, Fedora, openmamba: confronto tra distribuzioni',NULL,NULL,NULL,NULL,'Quando si parla di Linux quasi tutti parlano di Ubuntu, ma esistono molte altre soluzioni più o meno diffuse ognuna delle quali gode di sue specifiche peculiarità. Insieme a Fabio...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 16:00:00','2011-10-22 17:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (108,'shotwell-come-organizzare-le-foto-su-linux','Shotwell: come Organizzare le Foto su Linux',NULL,NULL,NULL,NULL,'Approfondimento su Shotwell, diffusa applicazione open per organizzare al meglio le proprio fotografie. Dedicato a tutti coloro che hanno...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 16:00:00','2011-10-22 17:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (109,'software-libero-in-classe-esperienze-di-vita-vissuta','Software Libero in Classe: Esperienze di Vita Vissuta',NULL,NULL,NULL,NULL,'Spesso si propone di introdurre Linux a scuola, ma qualcuno ci ha già provato? Esperienze pratiche e sincere di software libero tra i banchi: cosa è andato bene, cosa è andato...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 16:00:00','2011-10-22 17:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (110,'software-libero-in-classe-prove-di-liberta','Software Libero in Classe: Prove di Libertà',NULL,NULL,NULL,NULL,'La cultura dominante impone modelli applicativi in ogni ambito della conoscenza: deve la scuola accettare questi modelli e progettare una formazione che vada incontro alle...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 15:00:00','2011-10-22 16:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (111,'software-libero-solidale-gasdotto','Software Libero Solidale: GASdotto',NULL,NULL,NULL,NULL,'Presentazione di una applicazione freesoftware \"made in Torino\", GASdotto, utilizzata da diversi Gruppi di Acquisto della zona ed insieme a loro...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 15:00:00','2011-10-22 16:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (112,'the-document-foundation-un-anno-dopo','The Document Foundation: un Anno Dopo',NULL,NULL,NULL,NULL,'La Document Foundation e\' nata circa un anno fa\' per promuovere lo sviluppo e la diffusione di LibreOffice, fork della ben nota...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 17:00:00','2011-10-22 18:00:00',NULL,0,6,NULL,6,1);
INSERT INTO `ldto_event` VALUES (113,'un-sito-in-50-minuti-con-drupal','Un Sito in 50 Minuti con Drupal',NULL,NULL,NULL,NULL,'I siti Internet non sono tutti uguali, cosiccome non tutti uguali sono gli strumenti. Vediamo come Drupal, noto CMS opensource, è stato utilizzato...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 14:00:00','2011-10-22 15:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (114,'videogiochi-open','Videogiochi Open',NULL,NULL,NULL,NULL,'Linux è solo per i server? Decisamente no, a giudicare dalla quantità di videogiochi (liberi e gratuiti) a disposizione! Una panoramica sui videogames più popolari, dagli...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 16:00:00','2011-10-22 17:00:00',NULL,0,6,NULL,1,1);
INSERT INTO `ldto_event` VALUES (115,'webapp-html5-e-json-con-ruby-on-rails-31','Webapp HTML5 e JSON con Ruby on Rails 3.1',NULL,NULL,NULL,NULL,'Talk sulla versione 3.1 del framework Rails, e sulle tecnologie web associate: HTML5, Javascript e JSON.',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 16:00:00','2011-10-22 17:00:00',NULL,0,6,NULL,7,1);
INSERT INTO `ldto_event` VALUES (116,'wiild-la-lavagna-interattiva-multimediale-low-cost','WiiLD: la Lavagna Interattiva Multimediale Low-Cost',NULL,NULL,NULL,NULL,'Tanto si è parlato di Lavagna Interattiva Multimediale (nota anche come LIM), la quale però costa svariate migliaia di euro e a volte presenta qualche problema tecnico. In questo...',NULL,NULL,NULL,NULL,NULL,'it','2011-10-22 16:00:00','2011-10-22 17:00:00',NULL,0,6,NULL,6,1);
INSERT INTO `ldto_event` VALUES (117,'software-libero-nella-piccola-impresa-un-caso-concreto','Software Libero nella Piccola Impresa: un Caso Concreto',NULL,NULL,NULL,NULL,'La cooperativa MAG4 Piemonte (strumenti di finanza etica e di economia solidale) utilizza da diversi anni software libero per il proprio funzionamento: Debian, MySQL,...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 10:00:00','2012-10-27 11:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (118,'politiche-per-lopen-source','Politiche per l’Open Source?',NULL,NULL,NULL,NULL,'Una panoramica sul ruolo strategico del FLOSS.\n\n\nMariella Berra - Dipartimento di Scienze della Comunicazione dell\'Universita\' di Torino',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 10:30:00','2012-10-27 11:30:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (119,'le-competenze-automotive-di-akhela-nellambito-di-genivi','Le Competenze Automotive di Akhela nell\'Ambito di Genivi',NULL,NULL,NULL,NULL,'Akhela è da tempo impegnata in molti settori dello sviluppo software per il mercato dell\'Automotive. Uno dei campi nei quali Akhela si è distinta presso i più importanti Car...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 11:00:00','2012-10-27 12:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (120,'il-piemonte-di-fronte-alle-sfide-dellagenda-digitale','Il Piemonte di Fronte alle Sfide dell\'Agenda Digitale',NULL,NULL,NULL,NULL,'Il Piemonte di fronte alle sfide dell\'Agenda Digitale: appropriazione e utilizzo delle ICT da parte degli attori del sistema regionale.\n\n\nAlessandro Sciullo - Gruppo di...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 11:30:00','2012-10-27 12:30:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (121,'conclusioni','Conclusioni',NULL,NULL,NULL,NULL,'Conclusioni del convegno, a cura dell\'Assessore al Lavoro, Formazione Professionale e Orientamento per il Mercato del Lavoro della Provincia di Torino.',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 12:00:00','2012-10-27 13:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (122,'free-software-e-open-source','Free Software e Open Source',NULL,NULL,NULL,NULL,'Codice, soldi, libertà e divertimento: ovvero perché il software libero e aperto è buono per chi lo usa e per chi lo fa.\n\n\nUn talk alla portata di tutti per capire cosa...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 14:00:00','2012-10-27 15:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (123,'mozilla-in-mobilita','Mozilla in Mobilità',NULL,NULL,NULL,NULL,'Negli ultimi anni il mercato degli smartphone e della connettività mobile in genere è aumentato e sta aumentando moltissimo.\n\n\nDi pari passo, Mozilla si sta muovendo...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 14:00:00','2012-10-27 15:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (124,'open-data','Open Data',NULL,NULL,NULL,NULL,'Cosa sono gli Open Data e come distinguerli dall\' openfuffa. Best Practices, geolocalizzazione, strumenti per l\'analisi ed esempi italiani e internazionali.\n...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 14:00:00','2012-10-27 15:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (125,'how-a-10-million-dollars-company-uses-free-software','How a 10 Million Dollars Company uses Free Software',NULL,NULL,NULL,NULL,'Come viene usato il free software per creare un sito da un milione di visitatori al giorno?\n\n\nQuali strumenti usano le grandi aziende per ottimizzare lo stack...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 15:00:00','2012-10-27 16:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (126,'open-source-vfx-in-blender-tears-of-steel','Open Source VFX in Blender: \"Tears of Steel\"',NULL,NULL,NULL,NULL,'\"Tears of Steel\" - \"progetto Mango\" è il quarto open movie della Blender Foundation.\n\n\nPresentazione generale del progetto e degli strumenti di VFX 3D open source di...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 15:00:00','2012-10-27 16:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (127,'primi-passi-con-linux','Primi Passi con Linux',NULL,NULL,NULL,NULL,'Una introduzione a Linux ed al software libero: cos\'è, com\'è, e perché è davvero così importante avere accesso pieno ed incondizionato al codice degli applicativi che si usano...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 14:00:00','2012-10-27 15:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (128,'hello-nodejs','Hello node.js',NULL,NULL,NULL,NULL,'Node.js è una piattaforma per costruire facilmente applicazioni di rete veloci e scalabili. In questo talk vedremo quali sono i vantaggi di questa piattaforma, come cominciare...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 16:00:00','2012-10-27 17:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (129,'raspberry-pi-un-ponte-tra-it-e-embedded','Raspberry Pi: un Ponte tra IT e Embedded',NULL,NULL,NULL,NULL,'Raspberry Pi, il nuovo, piccolissimo PC basato su ARM e su Linux, per via del suo bassissimo costo puo\' essere usato sia come tradizionale postazione di lavoro che come...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 16:00:00','2012-10-27 17:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (130,'ploomcake-il-cms-plone-con-steroidi','Ploomcake: il CMS Plone con steroidi!',NULL,NULL,NULL,NULL,'Ploomcake è un\'evoluzione del CMS Plone che rende più semplice la creazione di siti web, intranet e portali collaborativi con una particolare attenzione ai dispositivi mobile...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 17:00:00','2012-10-27 18:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (131,'software-libero-nelle-pa-novita-normative','Software Libero nelle P.A.: Novità Normative',NULL,NULL,NULL,NULL,'Nell\'ultimo anno si sono succedute molte novità normative che riguardano il software libero:\n\n\nla legge della Repubblica Italiana n. 214/2011\nla legge...',NULL,NULL,NULL,NULL,NULL,'it','2012-10-27 17:00:00','2012-10-27 18:00:00',NULL,0,7,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (132,'primi-passi-con-linux','Primi passi con Linux',NULL,'Ci siamo lasciati convincere dall\'immancabile amico smanettone e finalmente abbiamo installato Linux. Subito cominciano le cattive notizie: è diverso da Windows! Ma dove sono i nostri programmi? Perchè xyz.exe non si installa? Come si installa nuovo software? E se non funzionano le periferiche? Come si fa ad \"andare su Internet\"? Introduzione alla sopravvivenza in ambienti (operativi) ostili.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 00:00:00','2013-10-26 01:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (133,'installiamo-insieme-debian','Installiamo insieme Debian',NULL,'Installazione dal vivo di Debian Live 7.0 LXDE, utile per verificare la compatibilità dell\'hardware, adatta a computer nuovi o un po\' datati, facile da mantenere aggiornata: insomma un ottimo esempio di Software libero!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 15:00:00','2013-10-26 16:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (134,'come-e-strutturato-un-sistema-gnulinux','Come è strutturato un Sistema GNU/Linux',NULL,'Conoscere come è fatto GNU/Linux potrebbe esservi utile per non fare errori durante l\'installazione, o  banalmente per sfruttarlo meglio.Vediamo di capire semplicemente come è fatto, seguendolo dall\'accensione al lancio di una applicazione in ambiente grafico.Cercheremo anche di dare risposte a domande come \"32 o 64 bit?\" o \"metto tutto in una partizione?\" e altre che emergeranno durante la conversazione.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 16:00:00','2013-10-26 17:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (135,'corsi-online-per-insegnanti','Corsi Online per Insegnanti',NULL,'Breve storia del percorso che dalla legge regionale sul Software Libero ha portato alla piattaforma teachmood.it e alla realizzazione di corsi per i docenti su diversi software liberi utilizzabili nella didattica. Presentazione della piattaforma e dei corsi.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 17:00:00','2013-10-26 18:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (136,'fotografia-digitale','Fotografia Digitale',NULL,'Panoramiche a 360 gradi con utilizzo del programma Hugin Panorama photo stitcher e Gimp per ritocco finale del cielo blu ed esportazione in jpeg compresso. Utilizzo di fotocamera digitale non reflex con obiettivi intercambiabili, utilizzo di vecchi obiettivi (di 40 anni fa) a focale fissa (non zoom), esposizione manuale e messa a fuoco manuale (fatta una sola volta per tutte le foto), uso del cavalletto, filo telecomando per scatti antivibrazioni.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 14:00:00','2013-10-26 15:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (137,'il-terminale-per-tutti','Il terminale per tutti',NULL,'Un talk per \"assaggiare\" la potenza del terminale, farvi venire la voglia di utilizzare questo strumento nella vita quotidiana e consigliarvi qualche trucchetto.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 15:00:00','2013-10-26 16:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (138,'arduino-yun','Arduino Yún',NULL,'Introduzione ad Arduino Yún, la prima scheda Arduino dotata di un processore dedicato a Linux che affianca e potenzia le capacità del microcontrollore.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 16:00:00','2013-10-26 17:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (139,'quante-ne-sai','Quante ne sai?',NULL,'Torna a grande richiesta il talk interattivo tra hacking e fooling: \"premi la patata\" e rispondi alle domande! Quante SLOC ci sono in Debian? Kryptonite è un manuale di ...? Qual è la nave più veloce della galassia? Ispirato senza ritegno ai blasonati contest della costa ovest: un\'oretta di svago tra nozioni tecniche, meno tecniche e decisamente bizzarre. Ricchi premi e cotillons. Con il supporto di: Raspberry Pi, node.js e gli immancabili, celeberrimi biscotti.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 17:00:00','2013-10-26 18:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (140,'privacy-ed-anonimato-su-internet','Privacy ed anonimato su Internet',NULL,'Il talk si prefigge di illustrare il modo in cui le nostre informazioni personali viaggino in rete: il tracking, il filter-bubbling dei motori di ricerca ed il caso PRISM. Successivamente si presenteranno tecniche e software open-source per navigare al sicuro da ogni tracciabilità ed eventualmente in anonimato.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 14:00:00','2013-10-26 15:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (141,'asterisk-centralino-voip-floss','Asterisk: centralino VoIP FLOSS',NULL,'Configurazione di un centralino telefonico (PBX) basato su Asterisk comprensivo di periferiche (telefoni VoIP, PortAdapter analogici, GSMbox, ecc.). Non tutti sanno che con un PC, GNU/Linux e Asterisk è possibile realizzare un centralino telefonico. Poche nozioni teoriche per passare subito alla configurazione del PBX Asterisk e delle periferiche che saranno utilizzate in diretta dai partecipanti.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 15:00:00','2013-10-26 16:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (142,'zabbix-monitoring-is-possible','Zabbix: Monitoring is possible',NULL,'Introduzione a Zabbix, soluzione di Monitoring Opensource adattabile a varie realta\', dal privato all\'Enterprise. Concetti, caratteristiche di base e scenari di utilizzo.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 16:00:00','2013-10-26 17:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (143,'fastboot-in-sistemi-embedded','Fastboot in sistemi embedded',NULL,'Il talk ha l\'obiettivo di introdurre le tecniche utilizzate per ottimizzare la sequenza di startup di un sistema embedded. Si partirà con la descrizione del bootloader (u-boot), passando per la configurazione del kernel e infine descrivendo la gestione dell\'avvio di servizi in user space (systemd).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 17:00:00','2013-10-26 18:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (144,'mitm-e-webapp','MITM e webapp',NULL,'Partendo da concetti di base come ARP ed SSL si parlerà di tecniche di MITM in relazione con le tecnologie web con dimostrazioni pratiche e suggerimenti sia per la sicurezza personale sia che per quella della propria infrastruttura.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 14:00:00','2013-10-26 15:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (145,'quando-il-nuovo-rende-insicure-le-vpn','Quando il nuovo rende insicure le VPN',NULL,'Sfruttando il poco conosciuto IPv6 si può creare una condizione di rete per la quale il traffico, normalmente diretto su una vpn sicura, viene deviato verso un proxy dell\'attaccante.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 15:00:00','2013-10-26 16:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (146,'penetration-test-con-kali-linux','Penetration Test con Kali Linux',NULL,'Il crescente trend dei cyber attacchi pone a chiunque lavori nel campo IT alcuni importanti quesiti: Quali sono le armi che vengono usate? Siamo pronti? Per rispondere, parleremo di Kali Linux: distribuzione pensata per la sicurezza informatica e i suoi strumenti, che possono identificare una vulnerabilità o compromettere un sitema.  Il talk si snoderà affrontando alcuni aspetti di un attacco informatico, concludendo infine con alcune possibili contromisure.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 16:00:00','2013-10-26 17:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (147,'mifare-ultralight-istruzioni-per-luso','Mifare Ultralight: Istruzioni per l\'uso',NULL,'Uno degli utilizzi più comuni dei chip NFC riguarda i sistemi di trasporto pubblico, in cui spesso si può riscontrare una scorretta implementazione del protocollo Mifare Ultralight. Essendo sprovvisto di un sistema di cifratura hardware, è semplice interagire con il chip e accedere ai dati memorizzati sullo stesso. La nostra ricerca si prefigge di illustrare a tutti le caratteristiche di un biglietto NFC Mifare Ultralight ed evidenziare l’utilizzo adeguato dei bytes del settore \"OTP\".',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 17:00:00','2013-10-26 18:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (148,'i-database-non-relazionali','I Database non Relazionali',NULL,'I database non relazionali, pur non essendo una novità assoluta, hanno registrato una crescita esponenziale nel loro sviluppo e utilizzo negli ultimi anni grazie al sempre più crescente bisogno di scalare in orizzontale, dove i classici RDBMS (database relazionali) presentano diverse limitazioni. I giganti del web, che si trovano a dover gestire database di dimensioni veramente imponenti, hanno sviluppato (o contribuito allo sviluppo) vari NRDBMS (database non relazionali).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 14:00:00','2013-10-26 15:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (149,'redis-per-linux','Redis per Linux',NULL,'Redis come sistema di storage di configurazioni, Etcd. Oltre le sessioni: pub/sub (chat), hipache, AWS ElastiCache per Redis. Master/slave config (il problema di Twilio). Redis come logger e/o queue broker (Logstash)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 15:00:00','2013-10-26 16:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (150,'meteorjs-webapp-in-realtime','MeteorJS & webapp in Realtime',NULL,'Le applicazioni web per essere reattive e sicure devono fare controlli sia lato client che lato server, questo comporta duplicazione di codice e spesso l\'utilizzo di diversi linguaggi di programmazione. MeteorJS, basato su NodeJS, offre un ambiente unico per poter programmare in javascript codice che potrà girare indifferentemente sul browser o sul server o su entrambi.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 16:00:00','2013-10-26 17:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (151,'plone-cms-ploomcake','Plone CMS & Ploomcake',NULL,'Plone è un gestore di contenuti open source sviluppato in Python. Il suo punto di forza è la flessibilità. Con Plone si possono creare siti web, cataloghi prodotti, intranet, gestori documentali, gestori di progetti. Vediamo insieme alcuni esempi da fare in 10 minuti partendo da Ploomcake, una distribuzione Plone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2013-10-26 17:00:00','2013-10-26 18:00:00',NULL,0,8,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (152,'primi-passi-con-linux','Primi passi con Linux',NULL,'Linux è un sistema semplice, veloce e adatto a tutti. Si può usare per navigare su Internet, salvare e modificare fotografie, scrivere documenti, e molto altro: sempre mantenendo la piena compatibilità con le persone intorno a noi. Una panoramica introduttiva su pregi e difetti del sistema operativo più stabile che c\'è.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 00:00:00','2014-10-25 01:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (153,'ma-che-e-sto-linux-day','Ma che è \'sto Linux Day?',NULL,'Un meta-talk sul Linux Day, e non solo quello di Torino: come funziona (o non funziona) la più grande manifestazione nazionale a supporto di Linux e del software libero, dal coordinamento centrale al gruppo organizzatore più disperso.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 15:00:00','2014-10-25 16:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (154,'creative-commons-e-open-data','Creative Commons e Open Data',NULL,'Le licenze Creative Commons permettono a singoli creatori o istituzioni di condividere le proprie opere secondo il modello \"alcuni diritti riservati\". Le licenze CC sono l\'infrastruttura giuridica di un ecosistema di contenuti aperti complementare a quello del software libero. Gli esempi proposti si concentreranno sull\'uso delle licenze Creative Commons per la messa a disposizione di dati.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 16:00:00','2014-10-25 17:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (155,'uefi','UEFI',NULL,'Si fa prima una breve introduzione al processo di booting ed al ruolo che vi gioca(va) il BIOS ed i suoi limiti. Si fa quindi una breve storia del EFI e UEFI, infine si introduce il concetto del Secure Boot e di come alcune distro convivano con le ultime versioni del sistema operativo della Microsoft.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 14:00:00','2014-10-25 15:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (156,'reti-p2p','Reti P2P',NULL,'Si partirà dalle basi per comprendere ed esplorare i concetti fondamentali e strutturali di diverse categorie di reti peer to peer, evidenziando le differenze tra le più conosciute (FreeNet, BOINC, Gnutella ecc.) ed i vari problemi che esse hanno affrontato con successo.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 15:00:00','2014-10-25 16:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (157,'privacy-e-anonimato-su-android','Privacy e anonimato su Android',NULL,'La rapida diffusione degli smartphone, in grado di connettere gli individui in modo quanto mai personale, ha portato l\'informatica al di fuori dei confini tradizionali. Il talk si prefigge di illustrare quanti e quali siano i dati che inconsapevolmente vengono inviati all\'esterno. Successivamente verranno presentate le tecniche ed i software necessari per limitare la fuga di tali informazioni.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 16:00:00','2014-10-25 17:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (158,'conosci-il-software-libero','Conosci il software libero?',NULL,'A grande richiesta, torna il quiz interattivo tra hacking e fooling! Quante SLOC ci sono in Debian? Chi organizza il Caos Communication Camp? Qual è la licenza meno compatibile con la GNU GPL 3? Ispirato senza ritegno ai blasonati contest della costa ovest: un\'oretta di svago tra nozioni tecniche, meno tecniche e decisamente bizzarre. Iron e Abacus faranno ballare la scimmia. Useranno: Raspberry Pi, node.js ...e ortaggi freschi dagli Antichi Borghi. (Non è una metafora: è proprio verdura.) Con la partecipazione di Elia dal MuPin. Ricchi premi e cotillons.Porta il tuo smartphone: gioca anche il pubblico!Sei un drago? Sali sul palco e vinci! Manda QUIZ14 a quantenesai14@ivnb.info :)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 17:00:00','2014-10-25 18:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (159,'reverse-engineering-101','Reverse engineering 101',NULL,'Verranno introdotti gli strumenti più utili per fare reverse engineering e verrà analizzato e risolto, passo dopo passo, un \"crackme\" (pseudo-programma che richiede una password, un codice seriale o altro, creato per scopo puramente didattico).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 14:00:00','2014-10-25 15:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (160,'meteorjs-e-le-infografiche-realtime','MeteorJS e le infografiche realtime',NULL,'L\'approccio client/server sta sempre più stretto per le nuove web/app, MeteorJS rivoluziona il paradigma e propone un\'alternava per scrivere codice javascript che funzioni sul client, sul server o da entrambe le parti. In questo talk vedremo un\'introduzione al framework isomorfico e alcuni esempi che utilizzano dati in streaming o opendata.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 15:00:00','2014-10-25 16:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (161,'strumenti-per-lo-sviluppo-web','Strumenti per lo sviluppo web',NULL,'Migliora la tua esperienza di sviluppatore web adottando strumenti avanzati per automatizzare operazioni ripetitive e noiose: scaffolding nuovi progetti, css performance tooling, live reload browser, javascript linting, merge e minificazione asset, uncss, cdn, integrazione con framework web e tematiche legate al deploy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 16:00:00','2014-10-25 17:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (162,'scrivere-driver-per-il-kernel','Scrivere driver per il kernel',NULL,'Un\'introduzione alla programmazione in spazio kernel. Dopo la presentazione di alcuni concetti di base e delle strutture dati che tengono insieme tutto il sistema, si passa a scrivere un semplice driver, sotto forma di modulo del kernel per pilotare un\'ipotetica periferica.  La scrittura del codice direttamente in sala permette di motivare le scelte fatte e vedere, in piccolo, il modo in cui normalmente si imposta il codice in spazio kernel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 17:00:00','2014-10-25 18:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (163,'shield-e-librerie-raspberrypi','Shield e librerie RaspberryPi',NULL,'RaspberryPi non è solo un microcomputer per applicazioni classiche, ma una vera board per lo sviluppo e la comunicazione con altri sistemi Embedded. In questo talk vedremo come è possibile progettare degli Shield per la piccola Pi tramite gli strumenti open-source come KiCad e l\'utilizzo delle periferiche per mettere in comunicazione la nostra scheda tramite le porte di connessione con il mondo esterno (GPIO, I2C, seriale etc.). Al termine del talk vedremo come sfruttare le potenzialità del linguaggio di programmazione Golang, progettato per architetture ARM, sulla RaspberryPi così da utilizzare in un linguaggio di alto livello per le librerie di comunicazione verso le altre periferiche!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 14:00:00','2014-10-25 15:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (164,'videosorveglianza-raspberrypi','Videosorveglianza RaspberryPi',NULL,'Comprare una videocamera per la sorveglianza e il motion detection già configurata e funzionante è troppo facile. Partiamo dal RaspberryPi, il suo modulo videocamera, Twitter, un po\' di programmazione ed ecco fatta la videosorveglianza gestita completamente via Twitter, che vi avvisa se succede qualcosa nella zona che volete controllare mentre voi non ci siete.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 15:00:00','2014-10-25 16:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (165,'arduino','Arduino',NULL,'Forse la più famosa scheda elettronica al mondo, raccontata da chi ci lavora tutto il giorno: la community, la gamma di piattaforme, progetti pratici e spunti operativi. L\'opensource allo stato solido!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 16:00:00','2014-10-25 17:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (166,'openwrt','OpenWRT',NULL,'OpenWrt, soprannominatosi \"wireless freedom\", è una distribuzione Linux ultraleggera per sistemi embedded, presente in molti wireless router. Ora i cinesi hanno reso disponibili sistemi non chiusi, ma programmabili, atti a costruire sistemi Wi-Fi portatili e indossabili. Nell\'arena si è ora gettata Intel con il modulo Edison, che non è OpenWrt, ma è sempre Linux. Chi vincerà?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 17:00:00','2014-10-25 18:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (167,'ettercap-sicurezza-in-lan','Ettercap, sicurezza in LAN',NULL,'Ettercap è un software libero, strumento progettato per la sicurezza della rete dagli attacchi LAN. Può essere usato per l\'analisi della rete e controllarne quindi la sicurezza. Ettercap è in grado di intercettare il traffico nel segmento di rete, catturare le password e condurre intercettazioni attive contro una serie di protocolli comuni.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 14:00:00','2014-10-25 15:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (168,'virtualizzazione-con-kvm','Virtualizzazione con KVM',NULL,'La virtualizzazione è una delle tecnologie chiave dell\'Informatica attuale, ma non tutti la conoscono e apprezzano per quello che realmente permette di fare. Oltre a introdurre qualche aspetto teorico si cercherà di fare vedere in funzione qemu e kvm, anche utilizzando l\'interfaccia virt-manager.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 15:00:00','2014-10-25 16:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (169,'virtualizzazione-con-docker','Virtualizzazione con Docker',NULL,'Docker è uno dei progetti open source più giovani, ma con la sua grande velocità e scalabilità promette di rivoluzionare la virtualizzazione e i processi di deploy. Andremo ad introdurre il concetto di container rispetto alla virtualizzazione classica per poi analizzare docker e alcune possibilità di utilizzo in vari ambiti.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 16:00:00','2014-10-25 17:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (170,'zabbix','Zabbix',NULL,'Zabbix è uno tra i più noti software di monitoring open source, nato nel lontano 1999 da un\'idea di Alexei Vladishev, ad oggi è una delle soluzioni più promettenti nel mercato mondiale. In questo talk cercherò di trasmettere le basi fondamentali su come installarlo e poter monitorare un host tramite soglie di allarme.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2014-10-25 17:00:00','2014-10-25 18:00:00',NULL,0,9,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (171,'il-software-libero-per-tutti','Il Software Libero per Tutti',NULL,NULL,NULL,NULL,'Dopo avere analizzato i concetti che stanno alla base del software libero, valuteremo insieme i passi che un utente può effettuare per migrare un computer ad una distribuzione libera senza difficoltà.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 17:00:00','2015-10-24 18:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (172,'adotta-un-software','Adotta un Software',NULL,NULL,NULL,NULL,'Cosa fare quando il tuo programma preferito non viene più sviluppato, ovvero come diventare un developer KDE per pigrizia e fare parte di un progetto open source. Ispirato ad una storia vera.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 17:00:00','2015-10-24 18:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (173,'storage-cose-e-come-e-fatto','Storage: Cos\'è e Come è Fatto',NULL,NULL,NULL,NULL,'Struttura di un sistema storage, dai dischi alle interfacce di comunicazione: carrellata non tecnica sui contenuti di questi sistemi di archiviazione, sempre più diffusi anche in ambito casalingo.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 17:00:00','2015-10-24 18:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (174,'f-droid-libera-il-tuo-smartphone','F-Droid, Libera il tuo Smartphone!',NULL,NULL,NULL,NULL,'Lo smartphone è il libro (aperto) della tua vita privata. Puoi continuare a restare nel \"Grande Fratello\", se lo desideri, ma una via di uscita esiste. (A fine talk, installation-party sugli Android).',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 17:00:00','2015-10-24 18:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (175,'un-pinguino-in-comune','Un Pinguino in Comune',NULL,NULL,NULL,NULL,'Non tutti sanno che in numerosi laboratori didattici nelle scuole di Torino si trova Linux. E la storia di come ci sia arrivato parte dall\'assessorato all\'istruzione...',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 15:00:00','2015-10-24 16:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (176,'fare-il-software-libero','Fare il Software Libero',NULL,NULL,NULL,NULL,'Sviluppare software libero non vuol dire solamente mettere dei sorgenti su GitHub: lo scopo del talk è fornire le basi tecniche (e non) per sviluppare nuovi progetti e contribuire a quelli esistenti.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 15:00:00','2015-10-24 16:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (177,'non-ce-cloud-senza-storage','Non c\'è Cloud senza Storage',NULL,NULL,NULL,NULL,'Eravamo abituati a RAID, ARRAY e dischi, ma il mondo evolve e questi sono un ricordo. Ceph è un Distributed Storage tra i più interessanti e pone le basi per le future soluzioni di memorizzazione dati.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 15:00:00','2015-10-24 16:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (178,'libera-un-chromebook','Libera un Chromebook',NULL,NULL,NULL,NULL,'Saremo destinati ad utilizzare solo applicazioni cloud? Forse. Nel frattempo godiamoci l\'accesso hardware, decloudizziamo un Chromebook, installiamo GNU/Linux e godiamoci il 100% delle sue potenzialità.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 15:00:00','2015-10-24 16:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (179,'installiamo-linux','Installiamo Linux!',NULL,NULL,NULL,NULL,'Consigli, dritte e warning su come installare sul proprio computer una delle distribuzioni Linux più famose. Installeremo Linux su un computer di prova per vedere \"live\" tutti i passaggi necessari.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 16:00:00','2015-10-24 17:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (180,'nel-labirinto-dei-codec-futuri','Nel Labirinto dei Codec Futuri',NULL,NULL,NULL,NULL,'Negli ultimi anni abbiamo visto nuovi standard che promettono di essere superiori: HEVC, VP9/VP10, Daala ed Opus. L\'intervento mira a dare una introduzione sugli specifici format e spiegare a che punto siamo.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 16:00:00','2015-10-24 17:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (181,'ibm-bluemix-digital-innovation-platform','IBM Bluemix, Digital Innovation Platform',NULL,NULL,NULL,NULL,'IBM Bluemix è la piattaforma cloud basata su open standard, per lo sviluppo, test e esecuzione di applicazioni in modalità PaaS. Qui una presentazione ed una dimostrazione live.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 16:00:00','2015-10-24 17:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (182,'riservatezza-digitale-missione-impossibile','Riservatezza Digitale: Missione Impossibile?',NULL,NULL,NULL,NULL,'Oggigiorno i dispositivi personali ci accompagnano ovunque, registrando e trasmettendo tutte le attività. È ancora possibile fare uso dello strumento digitale tutelando al contempo la propria privacy?',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 16:00:00','2015-10-24 17:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (183,'e-con-linux-che-programmi-uso','E con Linux che Programmi uso?',NULL,NULL,NULL,NULL,'Panoramica sui programmi più utili da installare sulla vostra nuova installazione di Linux, per non sentire la mancanza di Windows e rimanere sorpresi dalla varietà e qualità. Con regalo a fine talk.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 17:00:00','2015-10-24 18:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (184,'a-summary-of-the-daala-project','A Summary of the Daala Project',NULL,NULL,NULL,NULL,'Daala is a \"next-next generation\" video codec project sponsored by Mozilla and Xiph.Org. The talk will cover what worked, what didn\'t and where we plan to go from here.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 17:00:00','2015-10-24 18:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (185,'ninux-e-reti-wireless-comunitarie','Ninux e Reti Wireless Comunitarie',NULL,NULL,NULL,NULL,'Ninux.org, la più grande community wireless italiana in salsa open source. Liberi di condividere e sperimentare. Teoria e pratica delle reti wireless comunitarie.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 17:00:00','2015-10-24 18:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (186,'copyright-copyleft','Copyright-Copyleft',NULL,NULL,NULL,NULL,'Capire insieme quali sono i diritti di chi fruisce e diffonde e di chi crea e produce contenuti in rete, per sapere cosa fare e prevedere come andrà a finire la battaglia sui contenuti in rete.',NULL,NULL,NULL,NULL,NULL,'it','2015-10-24 17:00:00','2015-10-24 18:00:00',NULL,0,2,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (187,'primi-passi-con-linux','Primi Passi con Linux',NULL,NULL,NULL,NULL,'14:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 14:00:00','2017-10-28 15:00:00',NULL,0,3,NULL,1,1);
INSERT INTO `ldto_event` VALUES (188,'privacy','Privacy',NULL,NULL,NULL,NULL,'15:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 15:30:00','2017-10-28 16:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (189,'il-nostro-diritto-digitale-alla-citta','Il Nostro Diritto Digitale alla Città',NULL,NULL,NULL,NULL,'16:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 16:30:00','2017-10-28 17:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (190,'quando-un-dato-e-cancellato','Quando un dato è cancellato',NULL,NULL,NULL,NULL,'17:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 17:30:00','2017-10-28 18:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (191,'rust-perche-e-perche-no','Rust, perché e perché no',NULL,NULL,NULL,NULL,'14:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 14:30:00','2017-10-28 15:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (192,'blockchain-da-zero-al-codice','Blockchain, da zero al codice',NULL,NULL,NULL,NULL,'15:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 15:30:00','2017-10-28 16:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (193,'embedded','Embedded',NULL,NULL,NULL,NULL,'16:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 16:30:00','2017-10-28 17:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (194,'far-parlare-i-dispositivi-iot','Far parlare i dispositivi IoT',NULL,NULL,NULL,NULL,'17:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 17:30:00','2017-10-28 18:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (195,'big-data-rt-analytics','Big Data RT Analytics',NULL,NULL,NULL,NULL,'14:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 14:30:00','2017-10-28 15:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (196,'fun-with-zabbix-iot','Fun with Zabbix & IoT',NULL,NULL,NULL,NULL,'15:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 15:30:00','2017-10-28 16:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (197,'da-ipv4-a-ipv6','Da IPv4 a IPv6',NULL,NULL,NULL,NULL,'16:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 16:30:00','2017-10-28 17:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (198,'varnish-quando-la-cache-conta','Varnish: quando la cache conta',NULL,NULL,NULL,NULL,'17:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 17:30:00','2017-10-28 18:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (199,'dispositivi-iot-con-iottly','Dispositivi IoT con iottly',NULL,NULL,NULL,NULL,'14:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 14:30:00','2017-10-28 15:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (200,'odoo-erp-open-per-lazienda','Odoo, ERP open per l\'azienda',NULL,NULL,NULL,NULL,'15:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 15:30:00','2017-10-28 16:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (201,'quali-alternative-a-whatsapp','Quali alternative a WhatsApp?',NULL,NULL,NULL,NULL,'16:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 16:30:00','2017-10-28 17:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (202,'bitcoin-e-monero','Bitcoin e Monero',NULL,NULL,NULL,NULL,'17:30',NULL,NULL,NULL,NULL,NULL,'it','2017-10-28 17:30:00','2017-10-28 18:30:00',NULL,0,3,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (203,'lug-torino','LUG Torino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2001-12-01 09:15:00','2001-12-01 10:15:00',NULL,0,10,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (204,'debian-gnulinux-news','Debian GNU/Linux news',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2001-12-01 10:00:00','2001-12-01 11:00:00',NULL,0,10,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (205,'billing-tools-with-free-software-free-software-for-network-monitoring','Billing tools with free software / Free software for network monitoring',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2001-12-01 10:45:00','2001-12-01 11:00:00',NULL,0,10,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (206,'software-libero-e-impresa','Software libero e impresa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2001-12-01 11:30:00','2001-12-01 12:00:00',NULL,0,10,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (207,'open-media-streaming','Open Media Streaming',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2001-12-01 13:00:00','2001-12-01 14:00:00',NULL,0,10,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (208,'mosix','MOSIX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2001-12-01 13:45:00','2001-12-01 14:00:00',NULL,0,10,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (209,'presentazione-del-libro-informatica-solidale','presentazione del libro \"Informatica solidale\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2001-12-01 14:30:00','2001-12-01 15:00:00',NULL,0,10,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (210,'le-attivita-del-gnulinux-users-group-torino','Le attività del GNU/Linux Users Group Torino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 09:15:00','2002-11-23 10:00:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (211,'software-libero-nuove-opportunita-per-la-pubblica-amministrazione-la-scuola-e-le-imprese','Software Libero, nuove opportunità per la Pubblica Amministrazione, la scuola e le imprese',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 09:30:00','2002-11-23 10:00:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (212,'software-libero-e-pubblica-amministrazione-la-proposta-di-mozione-nel-comune-di-torino','Software Libero e Pubblica Amministrazione: la proposta di mozione nel Comune di Torino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 10:00:00','2002-11-23 11:00:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (213,'cluster-linux-per-il-calcolo-ad-alte-prestazioni-in-ambito-automotive','Cluster Linux per il calcolo ad alte prestazioni in ambito Automotive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 10:15:00','2002-11-23 11:00:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (214,'informatica-solidale-perche-conviene-cooperare','Informatica solidale: perchè conviene cooperare?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 10:45:00','2002-11-23 11:45:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (215,'il-passaggio-del-liases-allopen-source','Il passaggio del LIASES all\'Open Source',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 11:30:00','2002-11-23 12:00:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (216,'un-sistema-webmail-per-lintegrazione-della-comunicazione-aziendale','Un sistema webmail per l\'integrazione della comunicazione aziendale',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 12:00:00','2002-11-23 13:00:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (217,'gnulinux-una-piattaforma-flessibile-per-lazienda','GNU/Linux: una piattaforma flessibile per l\'azienda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 12:30:00','2002-11-23 13:30:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (218,'procedura-di-gestione-interventi-tecnici','Procedura di gestione interventi tecnici',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 14:00:00','2002-11-23 15:00:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (219,'watch-penguin-affrontare-la-sicurezza-aziendale','Watch-Penguin: affrontare la sicurezza aziendale',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 14:30:00','2002-11-23 15:30:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (220,'soluzioni-gnulinux-dal-mercato-enterprise-alla-pmi','Soluzioni GNU/Linux: dal mercato enterprise alla PMI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2002-11-23 15:00:00','2002-11-23 16:00:00',NULL,0,11,NULL,NULL,1);
INSERT INTO `ldto_event` VALUES (221,'first-steps-with-gnu-linux','Primi passi con GNU/Linux','','50 minuti per sapere tutto ciò che serve per entrare nel mondo del software libero senza pentimento. Domande accette.','50 minutes to learn all your needs to jump in the Free Software world without regretting nothing. Questions allowed.','50 minute për savèj tut lòn ch\'a venta për intré ant ël mond dël software duvert con gnun rëngret. Question possìbile.',NULL,NULL,NULL,NULL,NULL,NULL,'it','2019-10-26 14:00:00','2019-10-26 15:00:00',NULL,0,14,31,1,1);
INSERT INTO `ldto_event` VALUES (222,'dont-touch-my-data','Don\'t Touch My Data','','Grazie a qualche volontario dimostreremo attraverso quali modalità, ogni giorno, la nostra privacy viene completamente compromessa e con quali strumenti possiamo difenderci, oltre a nascondersi come un eremita.\r\n\r\nPortate l\'amico «non ho niente da nascondere».','Thanks to some volunteer we will demonstrate how, in our everyday, our privacy is completely compromised, and how to defend ourselves.\r\n\r\nBring your \"[I have nothing to hide](https://en.wikipedia.org/wiki/Nothing_to_hide_argument)\" friend.','Mersì a quaich volontari i mostreroma coma, ant la vita ëd tuit ij di, nòsta privacy (la confidensialità ëd nòste informassion), a l\'é completament compromëttùa, e lòn ch\'i podoma fé për dësfend-se.','Ci sono parecchi modi con cui tu, ogni giorno, mandi la tua privacy a farsi friggere, anche se magari... dici che \"non ho niente da nascondere\".\r\n\r\nIntanto perchè chi \"non ha niente da nascondere\" in realtà mente. Sempre. E poi, le tue abitudini compromettono anche gli altri, e questo dovresti evitarlo.\r\n\r\nInsieme, cercheremo di capire cosa stiamo sbagliando, chi ne sta approfittando e come difenderci, smantellando anche qualche luogo comune.\r\n\r\nSpoiler: la cura non è il tuo antivirus o un client VPN.','There are a lot of ways, every day, to put your privacy in a trash bin. Even if you say that \"I\'ve nothing to hide\".\r\n\r\nFirst of all because \"I\'ve nothing to hide\" people indeed care about it. A lot. Moreover, your habits compromise also other people, and you should stop it.\r\n\r\nToghether, we will find what\'s wrong, who is the Muster of Puppets, and how to defend ourself, fighting some commonplaces.\r\n\r\nSpoiler: your antivirus or your VPN client is not the cure.','An vaire manere, vira di, it peule mandé toa privacy a baron. Bele s\'it pense ch\'it l\'has nen da stërmé. Për anandié, chi ch\'a dis ch\'a l\'ha nen da stërmé, an realità a stërma pro. Peui, esse dësdeuit con tò dait a peul ëdcò mnassé la privacy \'d autre person-e.\r\n\r\nAnsem, i sercheroma ëd comprende ij eror, treuvé chi ch\'a na profita e com fé për dësfend-se, e ëdcò eliminé quaich leu comun.','L\'[immagine delle videocamere di sorveglianza](https://commons.wikimedia.org/wiki/File:%C3%9Cberwachungskameras_Autohof_in_Th%C3%BCringen_an_A9_03.06.2013_10-07-08.JPG) scattata da Dirk Ingo Franke e rilasciata in licenza [CC BY-SA 3.0](https://creativecommons.org/licenses/by/3.0/deed.it) da Wikimedia Commons.','The [image with the security cameras](https://commons.wikimedia.org/wiki/File:%C3%9Cberwachungskameras_Autohof_in_Th%C3%BCringen_an_A9_03.06.2013_10-07-08.JPG) was taken from Dirk Ingo Franke and released with the [CC BY-SA 3.0](https://creativecommons.org/licenses/by/3.0/deed.en) license from Wikimedia Commons.','La [mistà ëd le camera ëd survejansa](https://commons.wikimedia.org/wiki/File:%C3%9Cberwachungskameras_Autohof_in_Th%C3%BCringen_an_A9_03.06.2013_10-07-08.JPG) a l\'é staita pijà da Dirk Ingo Franke spantià sota la licensa [CC BY-SA 3.0](https://creativecommons.org/licenses/by/3.0/deed.en) ëd Wikimedia Commons.','it','2019-10-26 15:00:00','2019-10-26 16:00:00','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/%C3%9Cberwachungskameras_Autohof_in_Th%C3%BCringen_an_A9_03.06.2013_10-07-08.JPG/640px-%C3%9Cberwachungskameras_Autohof_in_Th%C3%BCringen_an_A9_03.06.2013_10-07-08.JPG',0,14,31,1,1);
INSERT INTO `ldto_event` VALUES (223,'private-cloud','Private Cloud','','Posta elettronica, contatti, calendari, foto, video e documenti: tutto condiviso e sempre accessibile, grazie al cloud.\r\n\r\nQuale cloud? Il tuo.\r\n\r\nDove? A casa tua, sul tuo computer.\r\n\r\nAnche per aziende? Certo.','E-mail, contacts, calendars, photos, videos and documents: all shared and accessible, in The Cloud.\r\n\r\nWhich cloud? Yours.\r\n\r\nWhere? At home, on your PC.\r\n\r\nFor business too? Sure.','E-mail, adrëssari, calendari, fòto, video e document: tut partagià e sèmper acessìbil via ël Cloud.','Il talk si prefigge di illustrare le tecnologie e le metodologie per la creazione e configurazione di un proprio server privato.\r\n\r\nLa prima parte si focalizza sulla storia recente di internet e descrive come esso sia completamente cambiato. Il software libero ed open source e le risorse quasi illimitate dei grandi colossi del web (Google, Microsoft, Apple, ecc.) hanno permesso la creazione di innumerevoli servizi: dalla posta elettronica alla gestione dei contatti e calendari, dal backup automatico sul cloud alla condivisione di video e documenti.\r\n\r\nDopo la definizione (e l\'interpretazione) del termine \"cloud\" vengono presentate le tecnologie necessarie ad ottenere l\'indipendenza tecnologica: la configurazione di un proprio server. Sono elencati in dettaglio i software, gli strumenti e le soluzioni da utilizzare.\r\n\r\nL\'ultima parte è dedicata alla descrizione di un caso pratico e reale, ovvero la configurazione di tre macchine ad uso aziendale dal 2010 ad oggi.','The talk illustrates technologies and methodologies for creating a\r\nprivate server.\r\n\r\nThe first part focuses on internet\'s recent history and describes how it changed. Free and open source software togheder with the (quite unlimited) resources of web tech giants (Google, Microsoft, Apple, etc ...) allowed the creation of countless services: from e-mail to contacts and calendars management, from automatic cloud backup to\r\nshared videos and documents.\r\n\r\nAfter definition and interpretation of the \"cloud\" term, tools needed for obtaining technological independence (own server configuration) are presented. Software, tools and solutions are listed and describled in detail.\r\n\r\nThe last part is dedicated to description of a real world case: configuration, from 2010 onwards, of three business server.','La presentassion a mostra le tecnologìe e le metodologìe për creé e configure un serveur privà. La prima part a l\'é focalisà ant la stòria recenta \'d Internet e soa evolussion. Ël software liber e duvert, ansem a j\'arsorse squasi illimità ëd mastodont tan-me Google, Microsoft e Apple, a l\'han përmëttù la creassion ëd milanta servisse: e-mail, gestion ëd contat e calendari, backup automàtich ant la Nìvola (ël Cloud), partage ëd video e document.\r\n\r\nApress definì e interpreté ël term \"cloud\", I presenteroma ij utiss necessari për l\'independensa tecnologìca (visadì la configurassion ëd sò serveur). I listeroma e descriveroma an detail ij software, ij utiss e le solussion dovràbile.\r\n\r\nLa tersa part a l\'é la presentassion \'d un cas real, visadì la configurassion, da 2010 a ancheuj, ëd tre serveur professionaj.\r\n','L\'[immagine della nuvola](https://www.flickr.com/photos/xzjw/15300590514/) è stata scattata da [Davide Mainardi](https://www.flickr.com/photos/xzjw/) ed è liberamente fruibile in licenza [CC BY SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/deed.it) da Flickr.','The [cloud image](https://www.flickr.com/photos/xzjw/15300590514/) was taken by [Davide Mainardi](https://www.flickr.com/photos/xzjw/) and its Freely available under the [CC BY SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/deed.en) license from Flickr.','La [mistà ëd la nìvola](https://www.flickr.com/photos/xzjw/15300590514/) a l\'e staita pijà [Davide Mainardi](https://www.flickr.com/photos/xzjw/) e a l\'e disponìbila liberament sota la licensa [CC BY SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/deed.en) ëd Flickr.','','2019-10-26 16:00:00','2019-10-26 17:00:00','2019/images/event-private-cloud.jpg',0,14,31,1,1);
INSERT INTO `ldto_event` VALUES (224,'big-data','Velocizzare le query con Dremio','','Dremio è una piattaforma Data-as-a-Service che permette di accelerare i processi dei tools di Business Intelligence, machine learning, data science e client SQL, partendo da data source differenti, qualsiasi sia la grandezza della tua azienda. Vieni a scoprirlo!','Dremio is the Data-as-a-Service Platform. It allows to accelarate data on demand, from any data source, for BI tools, machine learning, data science, and SQL clients for whatever business level. Come to discover it!','Dremio a l\'e na piataforma Data-as-a-Service (dait tan-me servisse). A fassilita ij process ëd data-on-demand për ij utiss ëd Business Intelligence, anprendiment automàtich, siensa dij dait e client SQL, an partand da ëd sors ëd dait diferente, e për tute le dimension ëd la sossietà. Ven a dëscheuvr-lo!','Dremio è una piattaforma Data-as-a-Service. Permette alle aziende di gestire dati on demand, in modo accurato, partendo da un qualsiasi data source, fino ad accellerare i processi dei tools di BI, machine learning, data science e client SQL.\r\nDremio ha un approccio diverso da qualsiasi strumento di data analitycs, permettendo di integrare i vari processi in una soluzione all in one, scalabile da 1-1000+ server.\r\n\r\nDremio può essere utilizzato per:\r\n\r\n * Data discovery\r\n * Accelerazione sulla fruibilità del dato\r\n * Distribuzione computazionale delle query SQL\r\n * Query native ed ottimizzate per i database relazionali, NoSQL, Hadoop e file system\r\n * Visione generale ottimizzata riguardo il lineage dei dati\r\n * Data governance\r\n * Accesso dinamico riga/colonna, oltre che data masking, su qualsiasi sorgente.','Dremio is the Data-as-a-Service Platform. It empowers companies to provision data on demand, allowing business users to curate precisely the data they need, from any data source, then accelerate analytical processing for BI tools, machine learning, data science, and SQL clients. Dremio is a fundamentally different approach to data analytics that integrates your analytical processing into a single solution that scales from 1-1000+ servers.\r\n\r\nYou can use Dremio to perform:\r\n\r\n* Data discovery, curation, and collaboration.\r\n* Data acceleration, using Data Reflections and Apache Arrow.\r\n* Distributed SQL query execution on any data source.\r\n* Native, optimized query push downs into relational databases, Hadoop, NoSQL, and file systems.\r\n* Powerful insights on data lineage and data governance.\r\n* Dynamic row & column access controls, as well as data masking, on any source.','Dremio a l\'e na piataforma Data-as-a-Service (dait tan-me servisse). A giuta a masenté data-on-demand an përmetand ëd susté precisament ij dait necessary andrinta ëd sors basta ch\'a sia. Sòn a acelera ij utiss ëd Business Intelligence, anprendiment automatic, siensa dij dait e client SQL.\r\n\r\nDremio a l\'é radicalment diferent da \'d autre piataforme ëd data analytics, për che a integra tuit ij process ant n\'ùnica solussion, scalàbila da 1 fin-a 1000+ serveur. I peule dovre Dremio për:\r\n\r\n* Data discovery e curation\r\n* Acelerassion dij dait, an dovrand Data Reflections e Apache Arrow\r\n* Execussion spantià \'d arceste SQL ansima ëd sors ëd dait basta ch\'a sia\r\n* Arceste native e optimisà për database relassional, NoSQL, Hadoop e file system\r\n* Visibilità complete ansima data lineage e data governance\r\n* Acess dinàmich fila e colòna, e data masking ansima na sors basta ch\'a sia.',NULL,NULL,NULL,'it','2019-10-26 15:00:00','2019-10-26 16:00:00',NULL,0,14,33,3,1);
INSERT INTO `ldto_event` VALUES (225,'rasa-ml','Rasa ML framework','AI assistants and chatbots','Costruiamo assieme il nostro assistente utilizzando la tecnologia open source e scritta in Python: Rasa!\r\n\r\nAlla fine del tutorial ci risponderà dal nostro smartphone.','We will build toghether our assistance using an open source technology written in Python: Rasa!\r\n\r\nAt the end of the tutorial it will reply from our smartphone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'it','2019-10-26 16:00:00','2019-10-26 17:00:00',NULL,0,14,32,2,1);
INSERT INTO `ldto_event` VALUES (226,'arduino','Workshop Arduino','Costruire una Command Line multi-output in Go','[Arduino-CLI](https://blog.arduino.cc/2018/08/24/announcing-the-arduino-command-line-interface-cli/) è una _command line interface scritta_ in [Go](https://it.wikipedia.org/wiki/Go_(linguaggio_di_programmazione)) che supporta tutte le architetture Linux piú popolari, incluso ARM v7. Esploreremo la command line, l\'ouput di testo e in JSON, la sua funzionalitá GRPC e come viene usata in ambienti di test e CI con le GitHub Actions in vari progetti, incluso TensorFlow Lite.','[Arduino-CLI](https://blog.arduino.cc/2018/08/24/announcing-the-arduino-command-line-interface-cli/) is a command line interface written in [Go](https://en.wikipedia.org/wiki/Go_(programming_language)) and supporting the most famous Linux architectures, including ARM v7. We will explore the command line, the raw text output and the JSON one, the GRPC feature and how its tested in CI environments with the GitHub Actions in various projects, including TensorFlow Lite.','[Arduino-CLI](https://blog.arduino.cc/2018/08/24/announcing-the-arduino-command-line-interface-cli/) a l\'e na interfassa a linea ëd command (command line interface) scrivùa an [Go](https://en.wikipedia.org/wiki/Go_(language_ëd_programassion)), ch\'a supòrta j\'architecture Linux pì avosà, ARM v7 comprèis. I tarabascheroma con la linea ëd comand, la seurtìa an text brut e an JSON, la fonsionalità GRPC e com a l\'e testà ant ij anvironament CI con le GitHub Actions an vaire proget, do\'t TensorFlow Lite.',NULL,NULL,NULL,NULL,NULL,NULL,'it','2019-10-26 15:00:00','2019-10-26 16:00:00',NULL,0,14,34,4,1);
INSERT INTO `ldto_event` VALUES (227,'offensive-security','From Zer0 t0 R00t','Offensive Security Workshop','Abbiamo poco tempo per simulare un ambiente vulnerabile e poter testare insieme, uno ad uno, le più famose tecniche di penetration testing.\r\n\r\nSì, questo è lo spazio adatto se ti senti un po\' lamer.','We have few minutes to simulate a vulnerable environment to test, all toghether, step by step, the most famous penetration testing techniques.\r\n\r\nYes, this is the right place if you feel a bit lamer.','Quaich minute për simulé un anvironament vulneràbil për preuvé, ansem e pass-a-pass, le técniche pì avosà ëd test ëd penetrassion (penetration testing).','Scopriamo insieme quali sono gli errori più imperdonabili che un programmatore può commettere e cavalchiamo insieme queste vulnerabilità per raggiungere i più alti privilegi in un sistema informatico.\r\n\r\nL\'obiettivo sarà di aumentare la consapevolezza su quanto sia importante il tema della protezione dei dati.\r\n\r\nBenvenuti a _da zero a root_. Ci divertiremo.\r\n\r\nNon rifatelo a casa.','We will discover the most unforgivable errors that a programmer can commit and we will ride all toghether these vulnerabilities to reach the most deep privileges in a system.\r\n\r\nThe target will be to increase the awareness about the importance of the data protection.\r\n\r\nWelcome in _from zero to root_. Have fun!\r\n\r\nDo not repeat this at home.','I dëscheuvriroma ansem ij eror pì amperdonabij che un programeur a peul fé, e i dovreroma se vulnerabilitá si për accede ai privilege pì aut \'d un system informàtich.','Lo [screenshot con Kali Linux](https://commons.wikimedia.org/wiki/File:Kali_Linux.png) è distribuito in licenza [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/deed.it).','The [screenshot of Kali Linux](https://commons.wikimedia.org/wiki/File:Kali_Linux.png) is distributed with the [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/deed.en) license.','Ël [screenshot of Kali Linux](https://commons.wikimedia.org/wiki/File:Kali_Linux.png) a l\'é distribuì sota la licensa [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/deed.en).','it','2019-10-26 14:00:00','2019-10-26 15:00:00','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Kali_Linux.png/640px-Kali_Linux.png',0,14,33,3,1);
INSERT INTO `ldto_event` VALUES (230,'read-the-docs','ReadTheDocs','Quando il tuo paese finanzia software Open Source','Un consulente per il Team per la Trasformazione Digitale del governo italiano parlerà di [Docs Italia](https://docs.italia.it), una piattaforma Open Source per collezionare e condividere la documentazione della Pubblica Amministrazione.','A consultant for the Digital Transformation Team of the Italian government will talk about [Docs Italia](https://docs.italia.it), an Open Source platform to collect and share Public Administration documentation.','Un consejé për l\'Echip ëd Transformassion Digital dël goern Italian a parlerà ëd [Docs Italia](https://docs.italia.it), na piataforma Sors Duverta për cheuje e partagé la documentassion ëd l\'Administrassion Pùblica.','Durante il 2018 sono stato un consulente per il Team per la Trasformazione Digitale del governo italiano per lavorare su [Docs Italia](https://docs.italia.it), una piattaforma Open Source per collezionare e condividere la documentazione della Pubblica Amministrazione.\r\n\r\nNon abbiamo scritto Docs Italia da zero, ma lo abbiamo costruito sopra a Read The Docs: la piattaforma di riferimento la documentazione di pacchetti Python.\r\nQuesto ci ha permesso di risparmiare un bel po\' di lavoro! Ma il software Open Source non si scrive da solo e abbiamo fatto la nostra parte contribuendo a Read The Docs. In questo talk racconterò cosa abbiamo fatto e cosa abbiamo imparato.','During 2018 I was a consultant for the Digital Transformation Team of the Italian government to work on [Docs Italia](https://docs.italia.it), an Open Source platform to collect and share Public Administration documentation.\r\n\r\nWe have not written Docs Italy from scratch, but we have built it on top of Read The Docs: the reference platform for documentation of Python packages.\r\nThis has allowed us to save a lot of work! But Open Source software does not write itself and we did our part by contributing to Read The Docs. In this talk I will tell you what we did and what we learned.','An 2018 i son stait consejé për l\'Echip ëd Transformassion Digital dël goern Italian për travajé ansima [Docs Italia](https://docs.italia.it), na piataforma Sors Duverta për cheuje e partagé la documentassion ëd l\'Administrassion Pùblica.\r\n\r\nI l\'oma pa scrivù Docs Italy da zero, ma i l\'oma construvù ansima Read the Docs, ch\'a l\'é la piataforma ëd referensa për documenté ij pachèt Python. Sòn a l\'ha fa-ne vanse motobin ëd travaj! Mach che ël software duvert a së scriv pa daspërchiel, e i l\'oma fait nòsta part an contribuand a Read The Docs. I vë parlerai ëd lòn ch\'i l\'oma fait, e lòn ch\'i l\'oma anprendù.',NULL,NULL,NULL,'it','2019-10-26 14:00:00','2019-10-26 15:00:00',NULL,0,14,32,2,1);
INSERT INTO `ldto_event` VALUES (232,'rust','Rust','','Vi parleremo di Rust, il linguaggio di programmazione usato da Cloudflare, Microsoft, Mozilla e molti altri per le sue performance e sicurezza inerente.','We will talk about Rust, the programming language used by Cloudflare, Microsoft, Mozilla and various other big companies for its related great performances and security.','Iv parleroma ëd Rust, ël langage ëd programassion dovrà da Cloudflare, Microsoft, Mozilla e vaire \'d autre për soe performance e soa sicurëssa.',NULL,NULL,NULL,NULL,NULL,NULL,'it','2019-10-26 15:00:00','2019-10-26 16:00:00','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Rust_programming_language_black_logo.svg/240px-Rust_programming_language_black_logo.svg.png',0,14,32,2,1);
INSERT INTO `ldto_event` VALUES (233,'mqtt','MQTT','','MQTT è un protocollo di comunicazione con basso overhead di dati, molto veloce e molto semplice da gestire. Viene usato per le reti degli oggetti e anche per cose un po\' più impegnative come Facebook Messenger. Vedremo come si può usare in modo semplice e immediato.','MQTT is a communication protocol with low transfer overhead, somehow very fast and simple to be handled. It\'s used in the Internet of Things but also for something more complex like in the Facebook Messenger implementation. We wil see how it can be used in a simple and quick way.',NULL,NULL,NULL,NULL,'L\'immagine proviene da [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:MQTT_autenticacion.png) ed è liberamente fruibile in licenza [CC BY SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.it).','The image is taken from [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:MQTT_autenticacion.png) and its Freely available under the [CC BY SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.it) license.',NULL,'it','2019-10-26 17:00:00','2019-10-26 18:00:00','https://upload.wikimedia.org/wikipedia/commons/9/93/MQTT_autenticacion.png',0,14,33,3,1);
INSERT INTO `ldto_event` VALUES (234,'deep-speech','DeepSpeech','Riconoscimento vocale','Come funziona una rete neurale per la decodifica della voce umana? E come contribuire? Lo scopriremo insieme ad una volontaria di Mozilla Foundation.','How does a neural network for the human voice recognition work? nd how to contribute? We will learn it, together with a Mozilla Foundation volunteer.','Coma che a funssion-a na rej neural për la decodifica dla vos uman-a? E coma che i podoma giuté? I lo dëscherbëroma ansema a na volontaria ëd Mozilla Foundation.',NULL,NULL,NULL,NULL,NULL,NULL,'it','2019-10-26 16:00:00','2019-10-26 17:00:00','2019/images/deep-speech.svg',0,14,34,4,1);
INSERT INTO `ldto_event` VALUES (235,'apache-spark','Running Spark','Machine Learning pipelines on Kubernetes','Se avete mai sentito parlare di \"calcolo distribuito\", ora ve lo mostreremo, e si fa sul serio.\r\n\r\nUn sistemista ci mostrerà alcuni dettagli di questo strumento per il data analytics e machine learning algorithms, con un occhio di riguardo al deploy della soluzione su Kubernetes.','If you ever heard about \"distributed computation\", now it\'s the time to show it, and things get serious.\r\n\r\nA sysadmin will show us some details about this tool for data analytics and machine learning algorithms, somehow detailing the deploying of the solution with Kubernetes.','Se miraco i l\'eve sentù parlé ëd \"calcul distribuvù\", adess iv lo foma vëdde, e as dësmora nen.','[Apache Spark](\r\nhttp://spark.apache.org/) è un framework open source per l\'elaborazione dei big data con API per Scala, Python e Java. Dalla versione 2.3 è stata introdotta la possibilità di eseguire cluster Spark su Kubernetes\r\n\r\n[Delta Lake](https://docs.delta.io/) è uno storage layer reso open source da Databricks nel 2019, che permette di utilizzare transazioni ACID su tabelle create da Spark. Può utilizzare come backend qualunque filesystem compatibile con Hadoop e i principali object storage presenti sul mercato\r\n\r\nhttps://databricks.com/blog/2019/04/24/open-sourcing-delta-lake.html\r\n\r\nIl talk verterà non solo sulla parte infrastrutturale e sistemistica (configurazione di Kubernetes, pod necessari, configurazioni Spark), ma anche e soprattutto su come scrivere codice Spark per sfruttare le potenzialità della soluzione.',NULL,'[Apache Spark](\r\nhttp://spark.apache.org/) a l\'é un framework open source për l\'elaborassion dij big data con API për Scala, Python e Java. A parte da la versione 2.3 a l\'é staita giontà la possibilità di eseguire cluster Spark su Kubernetes\r\n\r\n[Delta Lake](https://docs.delta.io/) a l\'é në storage layer fait an open source da Databricks nel 2019 che a përmet ëd dovré transassion ACID ansima a tabele creà da Spark. A peul dovré an tant che backend un filesystem comsëssia compatibil con Hadoop e j\'object storage pì spantià an sël mercà.\r\n\r\nhttps://databricks.com/blog/2019/04/24/open-sourcing-delta-lake.html\r\nËl talk a sarà nen mach an sla part infrastrutural e sistemistica (configurassion ëd Kubernetes, pod necessari, configurassion Spark), ma ëdcò e dzortut an sla manera dë scrive an codes Spark për nen sgairé le potenssialità dla solussion.','Il [logo di Apache Spark](https://commons.wikimedia.org/wiki/File:Apache_Spark_logo.svg) è distribuito con licenza [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0) da Wikimedia Commons.','The [Apache Spark logo](https://commons.wikimedia.org/wiki/File:Apache_Spark_logo.svg) is distributed with the [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0) license from Wikimedia Commons.','Ël [logh d\'Apache Spark](https://commons.wikimedia.org/wiki/File:Apache_Spark_logo.svg) a l\'é distribuvù con licensa [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0) da Wikimedia Commons.','it','2019-10-26 16:00:00','2019-10-26 17:00:00','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Apache_Spark_logo.svg/640px-Apache_Spark_logo.svg.png',0,14,33,3,1);
INSERT INTO `ldto_event` VALUES (236,'android','50 sfumature di native','Android','Uno dei punti di forza di GNU/Linux, dal punto di vista degli sviluppatori, è l\'immensa libertà di scelta per quanto riguarda linguaggi, librerie e tool di sviluppo. E visto che Android, sotto sotto, è Linux (abbastanza vero) e che Android, sotto sotto, è software libero (relativamente vero), sviluppare su Android sarà un piacere, no?','One of the strengths of GNU/Linux, from the point of view of developers, is the immense freedom of choice as regards languages, libraries and development tools. And since Android, below, it\'s Linux (quite true) and that Android, below, is software free (relatively true), developing on Android will be a pleasure, right?','Un dij pont fòrt ëd GNU/Linux, da la mira dij dësvelupador, a l\'é la libertà imensa ëd sernia për lòn che a rësguarda lengagi, librarie e tool ëd desanvlup. Dait che Android a foson-a, a la bon-a mira, an tant che Linux (bastansa vera) e che Android, an bon-a sostansa, a l\'é un software liber (pitòst vera), dësanvlupé ansima a Android a sarà pròpi un piasì, é-lo vera?','In effetti, no...\r\n\r\nPurtroppo in Android gli strumenti a disposizione per lo sviluppo sono \r\nestremamente limitati e distribuiti su di un arco che va dal \"nativo\" \r\n(C, Java, Kotlin) fino all\'applicazione \"web\" HTML/CSS/JavaScript \r\npassando per una serie di sfumature intermedie non sempre facili da \r\ndistinguere.\r\n\r\nLo scopo del talk è di rendere chiari i limiti, i vantaggi e gli \r\nsvantaggi dei vari approcci mostrando infine come combinare le varie \r\ntecniche (codice nativo + applicazione \"web\") per produrre un \r\nmicro-react-native fatto in casa in 200 righe di Java.',NULL,'Nen pròpi, nò...\r\n\r\nDarmage: an Android j\'utiss a disposission për ël desvanvlup a son franch limità  e spantià ans n\'arch che a men-a dal \"nativ\" (C, Java, Kotlin) fin-a a l\'aplicassion \"web\" HTML/CSS/JavaScript an passand për tuta na serie ëd nuanse antrames che a l\'é nen sempe belfé distingue.\r\n\r\nËl but dël talk a l\'é col ëd fé s-ciairé le limitassion, ij vantagi e ij dësavantagi ëd diferent  solussion e ëd mostré a la bon-a fincom a venta fé a combiné vaire tecniche (codes nativ + applicassion \"web\") për produve un micro-react-native fait an ca an 200 righe ëd Java.',NULL,NULL,NULL,'it','2019-10-26 17:00:00','2019-10-26 18:00:00',NULL,0,14,32,2,1);
INSERT INTO `ldto_event` VALUES (237,'quantum-computing','Quantum Computing','','In cosa differisce un computer classico da un computer quantistico? Lo scopriremo, finalmente in una maniera semplice ma accurata, grazie ad un professore di Fisica dell\'Università di Torino.','What are the differences between a classic computer and a quantum computer? We will find out, finally in a simple but accurate way, thanks to a physics professor from the University of Turin.','Cola che a l\'é la diferensa antra d\'un computer classich e un computer quantistich? I lo vëddroma ansema, e a la bon-a fin an manera sempia ma con deuit grassie a un professor ëd Fisica dl\'Università ëd Turin.','Oltre a scoprire le differenze fra un computer \"normale\" e un computer quantistico, si parlerà delle parole magiche della meccanica quantistica: sovrapposizione ed entanglement.\r\n\r\nVedremo il più semplice algoritmo Deutsch, con un caso classica e la parte quantistica.','In addition to discovering the differences between a \"normal\" computer and a quantum computer, we will talk about the magic words of quantum mechanics: overlapping and entanglement.\r\n\r\nWe will see the simpler Deutsch algorithm, with a classical case and the quantum part.',' I dëscherveroma nen mach le diferense antra d\'un computer \"normal\" e un computer quantistich, ma i parleroma ëdcò ëd le \"paròle magiche\" dla mecanica quantistica: sovraposission e entanglement.\r\n\r\nI veddroma l\'algoritm Deutsch pì sempi, con un cas classich e la part quantistica.','La [fotografia di un chip quantistico](https://commons.wikimedia.org/wiki/File:DWave_128chip.jpg) è fornita da D-Wave Systems, Inc. con licenza [CC BY 3.0 Unported](https://creativecommons.org/licenses/by/3.0/deed.it), da Wikimedia Commons.',NULL,'La [fotografia d\'un chip quantistich](https://commons.wikimedia.org/wiki/File:DWave_128chip.jpg) a l\'é smonua da D-Wave Systems, Inc. con licensa [CC BY 3.0 Unported](https://creativecommons.org/licenses/by/3.0/deed.it), da Wikimedia Commons.','it','2019-10-26 17:00:00','2019-10-26 18:00:00','https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/DWave_128chip.jpg/640px-DWave_128chip.jpg',0,14,34,4,1);
INSERT INTO `ldto_event` VALUES (238,'bim2gml','GIS - BIM2GML','','Parleremo in ambito [GIS](https://it.wikipedia.org/wiki/Geographic_information_system) degli strumenti a disposizione per la conversione di formati per la rappresentazione 3D.','We\'ll talk about the [GIS](https://it.wikipedia.org/wiki/Geographic_information_system) tools available to convert formats for 3D representation.','I parleroma dij utiss [GIS](https://it.wikipedia.org/wiki/Geographic_information_system) disponibij për converte ij format për la rëpresentassion 3D.',NULL,NULL,NULL,NULL,NULL,NULL,'it','2019-10-26 14:00:00','2019-10-26 15:00:00',NULL,0,14,34,4,1);
INSERT INTO `ldto_event` VALUES (239,'copyright','70 anni dopo la morte','La nuova direttiva sul copyright','Dopo le recenti variazioni alle direttive europee sul copyright, cosa è cambiato? Che impatto hanno queste scelte? Ce lo dirà il presidente di Wikimedia Italia.','What is changing with the new European copyright directive? What will be the impact of the new rules? The president of Wikimedia Italia will discuss the topic.','Còs che a cambia dòp ëd la neuva lej europenga an sij drit d\'autor? Còs ch\'a produvran ste decision? An lo dirà ël Pressident ëd Wikimedia Italia.','Le leggi sul diritto d\'autore, un tempo di interesse solo per chi lavorava nell\'editoria e in poche altre industrie, sono entrate nella vita di tutti con la diffusione di Internet: ognuno di noi quotidianamente non solo fruisce, ma crea e riproduce opere creative, dalle foto su Instagram alle voci di Wikipedia.\r\n\r\nNon stupisce quindi che la nuova direttiva europea sul diritto d\'autore, approvata lo scorso marzo, sia stata una di quelle dal percorso più difficile dell\'intera legislatura.\r\n\r\nParticolarmente criticati sono stati l\'articolo 15, la cosiddetta \"link tax\", che introduce restrizioni nella possibilità di citare gli articoli di giornale, e l\'articolo 17, gli \"upload filter\", che spinge verso un filtraggio preventivo dei contenuti prodotti dagli utenti, ma la direttiva contiene anche molte altre norme - alcune anche positive!\r\n\r\nDurante l\'intervento parleremo di cosa dice (o non dice) davvero la direttiva, quali conseguenze avrà sul nostro uso della rete, e cosa deve ancora essere deciso.','Some years ago, copyright laws used to affect mostly the publishing industry and few others. Since Internet became widespread, however, they entered our everyday lives. Every day, we all not only use, but also produce and share creative works, from Instagram pictures to Wikipedia articles.\r\n\r\nIt is no surprise then that the new European copyright directive, approved in March 2019, has been one of the most controversial in the whole term.\r\n\r\nThe two most criticized parts are article 15, the so-called \"link tax\", introducing new restrictions on quoting news articles; and article 17, the \"upload filter\", paving the way for a preemtive filtering of user generated contents. The directive, however, says much more - including something good!\r\n\r\nDuring the talk we will discuss what is really written - or not written - in the directive; how it will impact the way in which we use the net; and what still has to be decided.','Na vira, le lej an sël drit d\'autor a l\'avio un peis dzortut o bele mach ant l\'industria dle publicassion e quaich d\'autra. Da quand che la ragnà – Internet – a l\'é spantiasse, ste lej a son vintrà ant la vita ëd mincadun ëd noi, che tuti ij dì nen mach a dòvra, ma a produv e a re-produv travaj creativ, mistà ansima a Insagramm o vos ëd la Wikipedia.\r\n\r\nA fa nen fòra-via che la neuva  diretiva europenga an sij drit d\'autor che a l\'é staita aprovà ël mars passà a sia staita un-a dle pì combatue ëd tuta la legisladura.\r\n\r\nPì che tut a son stait fòrt criticà l\'articol 15 (che a l\'avù lë stranòm ëd \"link tax\" e che a introduv ëd limitassion a la possibilità ëd cité d\'articoj ëd giornal, e l\'articol 17 (stranòm: \"upload filter\") che a possa anvers an filtragi preventiv djij contnù spinge verso un filtraggio preventivo dei contenuti prodovà da j\'utilisador. Tutun, la diretiva a dis motobin ëd pì - e a conten fin-a qaicòs ëd bon!\r\n\r\nAnt l\'antervent i parlëroma ëd lòn che a dis (e ëd lòn che a dis nen) dabon la diretiva, ëd lòn che a vorërà dì për la manera che i dovreroma la ragnà, e ëd lòn che a deuv ancora esse dessidù.','L\'[immagine della presentazione](https://commons.wikimedia.org/wiki/File:Settant%27anni_dopo_la_morte._Il_diritto_d%27autore_in_Unione_europea_-_Linux_day_2018.pdf) è disponibile in licenza [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.it) grazie a [Laurentius](https://commons.wikimedia.org/wiki/User:Laurentius) da Wikimedia Commons.','The [presentation image](https://commons.wikimedia.org/wiki/File:Settant%27anni_dopo_la_morte._Il_diritto_d%27autore_in_Unione_europea_-_Linux_day_2018.pdf) is available with the [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en) license thanks to [Laurentius](https://commons.wikimedia.org/wiki/User:Laurentius) from Wikimedia Commons.','La [mistà dla presentassion](https://commons.wikimedia.org/wiki/File:Settant%27anni_dopo_la_morte._Il_diritto_d%27autore_in_Unione_europea_-_Linux_day_2018.pdf)  al \'é disponibila con la licensa [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.it) grassie a [Laurentius](https://commons.wikimedia.org/wiki/User:Laurentius) da Wikimedia Commons.','it','2019-10-26 17:00:00','2019-10-26 18:00:00','https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Settant%27anni_dopo_la_morte._Il_diritto_d%27autore_in_Unione_europea_-_Linux_day_2018.pdf/page1-800px-Settant%27anni_dopo_la_morte._Il_diritto_d%27autore_in_Unione_europea_-_Linux_day_2018.pdf.jpg',0,14,31,1,1);
/*!40000 ALTER TABLE `ldto_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_event_user`
--

DROP TABLE IF EXISTS `ldto_event_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_event_user` (
  `event_ID` int(10) unsigned NOT NULL,
  `user_ID` int(10) unsigned NOT NULL,
  `event_user_order` int(11) NOT NULL,
  UNIQUE KEY `user_ID_event_ID` (`event_ID`,`user_ID`),
  KEY `user_ID` (`user_ID`),
  KEY `event_ID` (`event_ID`),
  KEY `order` (`event_user_order`),
  CONSTRAINT `ldto_event_user_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `ldto_user` (`user_ID`) ON DELETE CASCADE,
  CONSTRAINT `ldto_event_user_ibfk_2` FOREIGN KEY (`event_ID`) REFERENCES `ldto_event` (`event_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_event_user`
--

LOCK TABLES `ldto_event_user` WRITE;
/*!40000 ALTER TABLE `ldto_event_user` DISABLE KEYS */;
INSERT INTO `ldto_event_user` VALUES (17,3,0);
INSERT INTO `ldto_event_user` VALUES (21,8,0);
INSERT INTO `ldto_event_user` VALUES (22,13,0);
INSERT INTO `ldto_event_user` VALUES (23,18,0);
INSERT INTO `ldto_event_user` VALUES (23,25,0);
INSERT INTO `ldto_event_user` VALUES (23,26,0);
INSERT INTO `ldto_event_user` VALUES (24,7,0);
INSERT INTO `ldto_event_user` VALUES (25,1,0);
INSERT INTO `ldto_event_user` VALUES (26,27,0);
INSERT INTO `ldto_event_user` VALUES (27,10,0);
INSERT INTO `ldto_event_user` VALUES (28,11,0);
INSERT INTO `ldto_event_user` VALUES (29,12,0);
INSERT INTO `ldto_event_user` VALUES (30,14,0);
INSERT INTO `ldto_event_user` VALUES (31,15,0);
INSERT INTO `ldto_event_user` VALUES (31,16,0);
INSERT INTO `ldto_event_user` VALUES (32,17,0);
INSERT INTO `ldto_event_user` VALUES (33,20,0);
INSERT INTO `ldto_event_user` VALUES (34,23,0);
INSERT INTO `ldto_event_user` VALUES (35,21,0);
INSERT INTO `ldto_event_user` VALUES (45,1,0);
INSERT INTO `ldto_event_user` VALUES (46,28,0);
INSERT INTO `ldto_event_user` VALUES (47,1,0);
INSERT INTO `ldto_event_user` VALUES (48,29,0);
INSERT INTO `ldto_event_user` VALUES (49,2,0);
INSERT INTO `ldto_event_user` VALUES (221,144,0);
INSERT INTO `ldto_event_user` VALUES (222,1,0);
INSERT INTO `ldto_event_user` VALUES (223,17,0);
INSERT INTO `ldto_event_user` VALUES (224,2,0);
INSERT INTO `ldto_event_user` VALUES (225,154,0);
INSERT INTO `ldto_event_user` VALUES (226,60,0);
INSERT INTO `ldto_event_user` VALUES (227,153,0);
INSERT INTO `ldto_event_user` VALUES (230,123,0);
INSERT INTO `ldto_event_user` VALUES (232,124,0);
INSERT INTO `ldto_event_user` VALUES (233,12,0);
INSERT INTO `ldto_event_user` VALUES (234,148,0);
INSERT INTO `ldto_event_user` VALUES (235,16,0);
INSERT INTO `ldto_event_user` VALUES (236,57,0);
INSERT INTO `ldto_event_user` VALUES (237,58,0);
INSERT INTO `ldto_event_user` VALUES (238,155,0);
INSERT INTO `ldto_event_user` VALUES (239,156,0);
INSERT INTO `ldto_event_user` VALUES (33,24,1);
INSERT INTO `ldto_event_user` VALUES (51,31,1);
INSERT INTO `ldto_event_user` VALUES (52,32,1);
INSERT INTO `ldto_event_user` VALUES (53,33,1);
INSERT INTO `ldto_event_user` VALUES (54,143,1);
INSERT INTO `ldto_event_user` VALUES (55,8,1);
INSERT INTO `ldto_event_user` VALUES (56,34,1);
INSERT INTO `ldto_event_user` VALUES (57,32,1);
INSERT INTO `ldto_event_user` VALUES (58,35,1);
INSERT INTO `ldto_event_user` VALUES (59,36,1);
INSERT INTO `ldto_event_user` VALUES (60,31,1);
INSERT INTO `ldto_event_user` VALUES (61,37,1);
INSERT INTO `ldto_event_user` VALUES (62,38,1);
INSERT INTO `ldto_event_user` VALUES (63,39,1);
INSERT INTO `ldto_event_user` VALUES (64,40,1);
INSERT INTO `ldto_event_user` VALUES (65,41,1);
INSERT INTO `ldto_event_user` VALUES (66,42,1);
INSERT INTO `ldto_event_user` VALUES (67,43,1);
INSERT INTO `ldto_event_user` VALUES (68,44,1);
INSERT INTO `ldto_event_user` VALUES (69,46,1);
INSERT INTO `ldto_event_user` VALUES (70,47,1);
INSERT INTO `ldto_event_user` VALUES (71,48,1);
INSERT INTO `ldto_event_user` VALUES (72,35,1);
INSERT INTO `ldto_event_user` VALUES (73,36,1);
INSERT INTO `ldto_event_user` VALUES (74,36,1);
INSERT INTO `ldto_event_user` VALUES (75,44,1);
INSERT INTO `ldto_event_user` VALUES (76,54,1);
INSERT INTO `ldto_event_user` VALUES (77,57,1);
INSERT INTO `ldto_event_user` VALUES (78,41,1);
INSERT INTO `ldto_event_user` VALUES (79,8,1);
INSERT INTO `ldto_event_user` VALUES (80,58,1);
INSERT INTO `ldto_event_user` VALUES (81,59,1);
INSERT INTO `ldto_event_user` VALUES (82,143,1);
INSERT INTO `ldto_event_user` VALUES (83,143,1);
INSERT INTO `ldto_event_user` VALUES (84,47,1);
INSERT INTO `ldto_event_user` VALUES (85,60,1);
INSERT INTO `ldto_event_user` VALUES (86,46,1);
INSERT INTO `ldto_event_user` VALUES (87,49,1);
INSERT INTO `ldto_event_user` VALUES (88,47,1);
INSERT INTO `ldto_event_user` VALUES (89,61,1);
INSERT INTO `ldto_event_user` VALUES (90,62,1);
INSERT INTO `ldto_event_user` VALUES (91,27,1);
INSERT INTO `ldto_event_user` VALUES (92,63,1);
INSERT INTO `ldto_event_user` VALUES (93,18,1);
INSERT INTO `ldto_event_user` VALUES (94,64,1);
INSERT INTO `ldto_event_user` VALUES (95,62,1);
INSERT INTO `ldto_event_user` VALUES (96,65,1);
INSERT INTO `ldto_event_user` VALUES (97,66,1);
INSERT INTO `ldto_event_user` VALUES (98,73,1);
INSERT INTO `ldto_event_user` VALUES (99,8,1);
INSERT INTO `ldto_event_user` VALUES (100,74,1);
INSERT INTO `ldto_event_user` VALUES (101,75,1);
INSERT INTO `ldto_event_user` VALUES (102,76,1);
INSERT INTO `ldto_event_user` VALUES (103,77,1);
INSERT INTO `ldto_event_user` VALUES (104,143,1);
INSERT INTO `ldto_event_user` VALUES (105,143,1);
INSERT INTO `ldto_event_user` VALUES (106,79,1);
INSERT INTO `ldto_event_user` VALUES (107,80,1);
INSERT INTO `ldto_event_user` VALUES (108,82,1);
INSERT INTO `ldto_event_user` VALUES (109,83,1);
INSERT INTO `ldto_event_user` VALUES (110,84,1);
INSERT INTO `ldto_event_user` VALUES (111,85,1);
INSERT INTO `ldto_event_user` VALUES (112,86,1);
INSERT INTO `ldto_event_user` VALUES (113,87,1);
INSERT INTO `ldto_event_user` VALUES (114,143,1);
INSERT INTO `ldto_event_user` VALUES (115,8,1);
INSERT INTO `ldto_event_user` VALUES (116,51,1);
INSERT INTO `ldto_event_user` VALUES (117,88,1);
INSERT INTO `ldto_event_user` VALUES (118,89,1);
INSERT INTO `ldto_event_user` VALUES (119,90,1);
INSERT INTO `ldto_event_user` VALUES (120,91,1);
INSERT INTO `ldto_event_user` VALUES (121,92,1);
INSERT INTO `ldto_event_user` VALUES (122,93,1);
INSERT INTO `ldto_event_user` VALUES (123,94,1);
INSERT INTO `ldto_event_user` VALUES (124,8,1);
INSERT INTO `ldto_event_user` VALUES (125,60,1);
INSERT INTO `ldto_event_user` VALUES (126,75,1);
INSERT INTO `ldto_event_user` VALUES (127,143,1);
INSERT INTO `ldto_event_user` VALUES (128,41,1);
INSERT INTO `ldto_event_user` VALUES (129,18,1);
INSERT INTO `ldto_event_user` VALUES (130,36,1);
INSERT INTO `ldto_event_user` VALUES (131,95,1);
INSERT INTO `ldto_event_user` VALUES (132,73,1);
INSERT INTO `ldto_event_user` VALUES (133,88,1);
INSERT INTO `ldto_event_user` VALUES (134,13,1);
INSERT INTO `ldto_event_user` VALUES (135,96,1);
INSERT INTO `ldto_event_user` VALUES (136,98,1);
INSERT INTO `ldto_event_user` VALUES (137,99,1);
INSERT INTO `ldto_event_user` VALUES (138,100,1);
INSERT INTO `ldto_event_user` VALUES (139,77,1);
INSERT INTO `ldto_event_user` VALUES (140,17,1);
INSERT INTO `ldto_event_user` VALUES (141,101,1);
INSERT INTO `ldto_event_user` VALUES (142,102,1);
INSERT INTO `ldto_event_user` VALUES (143,103,1);
INSERT INTO `ldto_event_user` VALUES (144,143,1);
INSERT INTO `ldto_event_user` VALUES (145,105,1);
INSERT INTO `ldto_event_user` VALUES (146,106,1);
INSERT INTO `ldto_event_user` VALUES (147,108,1);
INSERT INTO `ldto_event_user` VALUES (148,109,1);
INSERT INTO `ldto_event_user` VALUES (149,60,1);
INSERT INTO `ldto_event_user` VALUES (150,8,1);
INSERT INTO `ldto_event_user` VALUES (151,111,1);
INSERT INTO `ldto_event_user` VALUES (152,77,1);
INSERT INTO `ldto_event_user` VALUES (153,27,1);
INSERT INTO `ldto_event_user` VALUES (154,112,1);
INSERT INTO `ldto_event_user` VALUES (155,58,1);
INSERT INTO `ldto_event_user` VALUES (156,143,1);
INSERT INTO `ldto_event_user` VALUES (157,17,1);
INSERT INTO `ldto_event_user` VALUES (158,77,1);
INSERT INTO `ldto_event_user` VALUES (159,114,1);
INSERT INTO `ldto_event_user` VALUES (160,8,1);
INSERT INTO `ldto_event_user` VALUES (161,53,1);
INSERT INTO `ldto_event_user` VALUES (162,115,1);
INSERT INTO `ldto_event_user` VALUES (163,116,1);
INSERT INTO `ldto_event_user` VALUES (164,12,1);
INSERT INTO `ldto_event_user` VALUES (165,118,1);
INSERT INTO `ldto_event_user` VALUES (166,18,1);
INSERT INTO `ldto_event_user` VALUES (167,119,1);
INSERT INTO `ldto_event_user` VALUES (168,13,1);
INSERT INTO `ldto_event_user` VALUES (169,120,1);
INSERT INTO `ldto_event_user` VALUES (170,102,1);
INSERT INTO `ldto_event_user` VALUES (171,2,1);
INSERT INTO `ldto_event_user` VALUES (172,121,1);
INSERT INTO `ldto_event_user` VALUES (173,13,1);
INSERT INTO `ldto_event_user` VALUES (174,1,1);
INSERT INTO `ldto_event_user` VALUES (175,122,1);
INSERT INTO `ldto_event_user` VALUES (176,123,1);
INSERT INTO `ldto_event_user` VALUES (177,102,1);
INSERT INTO `ldto_event_user` VALUES (178,8,1);
INSERT INTO `ldto_event_user` VALUES (179,99,1);
INSERT INTO `ldto_event_user` VALUES (180,124,1);
INSERT INTO `ldto_event_user` VALUES (181,125,1);
INSERT INTO `ldto_event_user` VALUES (182,17,1);
INSERT INTO `ldto_event_user` VALUES (183,12,1);
INSERT INTO `ldto_event_user` VALUES (184,126,1);
INSERT INTO `ldto_event_user` VALUES (185,143,1);
INSERT INTO `ldto_event_user` VALUES (186,127,1);
INSERT INTO `ldto_event_user` VALUES (190,128,1);
INSERT INTO `ldto_event_user` VALUES (200,130,1);
INSERT INTO `ldto_event_user` VALUES (203,131,1);
INSERT INTO `ldto_event_user` VALUES (204,57,1);
INSERT INTO `ldto_event_user` VALUES (205,132,1);
INSERT INTO `ldto_event_user` VALUES (206,133,1);
INSERT INTO `ldto_event_user` VALUES (207,134,1);
INSERT INTO `ldto_event_user` VALUES (208,131,1);
INSERT INTO `ldto_event_user` VALUES (209,52,1);
INSERT INTO `ldto_event_user` VALUES (211,52,1);
INSERT INTO `ldto_event_user` VALUES (212,135,1);
INSERT INTO `ldto_event_user` VALUES (213,136,1);
INSERT INTO `ldto_event_user` VALUES (214,89,1);
INSERT INTO `ldto_event_user` VALUES (215,137,1);
INSERT INTO `ldto_event_user` VALUES (216,138,1);
INSERT INTO `ldto_event_user` VALUES (217,139,1);
INSERT INTO `ldto_event_user` VALUES (218,140,1);
INSERT INTO `ldto_event_user` VALUES (219,141,1);
INSERT INTO `ldto_event_user` VALUES (220,142,1);
INSERT INTO `ldto_event_user` VALUES (227,147,1);
INSERT INTO `ldto_event_user` VALUES (68,45,2);
INSERT INTO `ldto_event_user` VALUES (71,49,2);
INSERT INTO `ldto_event_user` VALUES (72,50,2);
INSERT INTO `ldto_event_user` VALUES (76,55,2);
INSERT INTO `ldto_event_user` VALUES (89,40,2);
INSERT INTO `ldto_event_user` VALUES (97,67,2);
INSERT INTO `ldto_event_user` VALUES (105,78,2);
INSERT INTO `ldto_event_user` VALUES (107,63,2);
INSERT INTO `ldto_event_user` VALUES (135,97,2);
INSERT INTO `ldto_event_user` VALUES (139,15,2);
INSERT INTO `ldto_event_user` VALUES (143,104,2);
INSERT INTO `ldto_event_user` VALUES (146,107,2);
INSERT INTO `ldto_event_user` VALUES (147,78,2);
INSERT INTO `ldto_event_user` VALUES (148,110,2);
INSERT INTO `ldto_event_user` VALUES (158,15,2);
INSERT INTO `ldto_event_user` VALUES (163,117,2);
INSERT INTO `ldto_event_user` VALUES (167,104,2);
INSERT INTO `ldto_event_user` VALUES (190,129,2);
INSERT INTO `ldto_event_user` VALUES (72,51,3);
INSERT INTO `ldto_event_user` VALUES (76,56,3);
INSERT INTO `ldto_event_user` VALUES (97,35,3);
INSERT INTO `ldto_event_user` VALUES (107,81,3);
INSERT INTO `ldto_event_user` VALUES (72,52,4);
INSERT INTO `ldto_event_user` VALUES (97,68,4);
INSERT INTO `ldto_event_user` VALUES (107,27,4);
INSERT INTO `ldto_event_user` VALUES (72,53,5);
INSERT INTO `ldto_event_user` VALUES (97,69,5);
INSERT INTO `ldto_event_user` VALUES (97,70,6);
INSERT INTO `ldto_event_user` VALUES (97,71,7);
INSERT INTO `ldto_event_user` VALUES (97,72,8);
/*!40000 ALTER TABLE `ldto_event_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_location`
--

DROP TABLE IF EXISTS `ldto_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_location` (
  `location_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location_uid` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_note` text COLLATE utf8mb4_unicode_ci,
  `location_geothumb` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_lat` float NOT NULL,
  `location_lng` float NOT NULL,
  `location_zoom` int(1) DEFAULT NULL,
  PRIMARY KEY (`location_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_location`
--

LOCK TABLES `ldto_location` WRITE;
/*!40000 ALTER TABLE `ldto_location` DISABLE KEYS */;
INSERT INTO `ldto_location` VALUES (1,'dipartimento-di-informatica-di-torino','Dipartimento di Informatica','Via Pessinetto 12, Torino','Puoi prendere il tram n°**9** e n°**3**, scendendo alla fermata *Ospedale Amedeo di Savoia / Dipartimento di Informatica*.\n\nDalla fermata della metropolitana *XVIII Dicembre* puoi prendere il pullman n°**59** e n°**59/** scendendo alla fermata *Svizzera*.','/2016/static/openstreetmap-unito.svg',45.09,7.65917,NULL);
INSERT INTO `ldto_location` VALUES (2,'dipartimento-di-biotecnologie','Dipartimento di Biotecnologie','Via Nizza 52, Torino','La fermata **Nizza** della metropolitana è a 50 metri dal Dipartimento di Biotecnologie.','http://linuxdaytorino.org/2015/images/biotech.jpg',45.0499,7.67328,NULL);
INSERT INTO `ldto_location` VALUES (3,'politecnico-di-torino-sede-centrale','Politecnico di Torino (sede centrale)','Corso Duca degli Abruzzi 24, Torino',NULL,NULL,45.0624,7.66164,NULL);
INSERT INTO `ldto_location` VALUES (4,'politecnico-di-torino-cittadella','Politecnico di Torino (cittadella)','Corso Castelfidardo 34, Torino',NULL,NULL,45.065,7.65818,NULL);
INSERT INTO `ldto_location` VALUES (5,'cascina-roccafranca','Cascina Roccafranca','Via Edoardo Rubino 45, Torino',NULL,NULL,45.0409,7.62376,NULL);
INSERT INTO `ldto_location` VALUES (6,'cortile-del-maglio','Cortile del Maglio','Via Vittorio Andreis 18, Torino',NULL,NULL,45.0808,7.68108,NULL);
INSERT INTO `ldto_location` VALUES (7,'sala-consiglieri-della-provincia-di-torino','Sala Consiglieri della Provincia di Torino','Via Maria Vittoria 12, Torino','Palazzo Cisterna',NULL,45.0671,7.68531,NULL);
INSERT INTO `ldto_location` VALUES (8,'cdq','Casa del Quartiere','Via Oddino Morgari 14, Torino',NULL,NULL,45.0542,7.67816,NULL);
INSERT INTO `ldto_location` VALUES (9,'torino-incontra','Torino Incontra','Via Nino Costa 8, Torino',NULL,NULL,45.0648,7.68596,NULL);
INSERT INTO `ldto_location` VALUES (10,'toolbox-coworking','Toolbox Coworking','Via Agostino da Montefeltro 2, Torino',NULL,NULL,45.0503,7.66913,NULL);
INSERT INTO `ldto_location` VALUES (11,'fablab','Fablab','Via Egeo 16, Torino',NULL,NULL,45.0501,7.66605,NULL);
/*!40000 ALTER TABLE `ldto_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_room`
--

DROP TABLE IF EXISTS `ldto_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_room` (
  `room_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location_ID` int(10) unsigned NOT NULL,
  `room_uid` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`room_ID`),
  UNIQUE KEY `room_uid` (`room_uid`),
  KEY `location_ID` (`location_ID`),
  CONSTRAINT `ldto_room_ibfk_1` FOREIGN KEY (`location_ID`) REFERENCES `ldto_location` (`location_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_room`
--

LOCK TABLES `ldto_room` WRITE;
/*!40000 ALTER TABLE `ldto_room` DISABLE KEYS */;
INSERT INTO `ldto_room` VALUES (1,1,'a','Aula B');
INSERT INTO `ldto_room` VALUES (2,1,'b','Aula A');
INSERT INTO `ldto_room` VALUES (3,1,'c','Aula D');
INSERT INTO `ldto_room` VALUES (4,1,'d','Aula C');
INSERT INTO `ldto_room` VALUES (5,1,'lab-1','Spazio Coderdojo');
INSERT INTO `ldto_room` VALUES (6,1,'lab-2','Spazio Restart');
INSERT INTO `ldto_room` VALUES (8,2,'first-floor','Primo piano');
INSERT INTO `ldto_room` VALUES (9,1,'lab-turing','Laboratorio Turing');
INSERT INTO `ldto_room` VALUES (10,1,'lab-dijkstra','Laboratorio Dijkstra');
INSERT INTO `ldto_room` VALUES (11,1,'f','Aula F');
INSERT INTO `ldto_room` VALUES (12,1,'lab-von-neumann','Laboratorio von Neumann');
INSERT INTO `ldto_room` VALUES (13,4,'aula-1i','Aula 1I');
INSERT INTO `ldto_room` VALUES (14,4,'aula-3i','Aula 3I');
INSERT INTO `ldto_room` VALUES (15,4,'aula-5i','Aula 5I');
INSERT INTO `ldto_room` VALUES (16,4,'aula-2i','Aula 2I');
INSERT INTO `ldto_room` VALUES (17,4,'aula-4i','Aula 4I');
INSERT INTO `ldto_room` VALUES (18,3,'aula-2','Aula 2');
INSERT INTO `ldto_room` VALUES (19,3,'aula-4','Aula 4');
INSERT INTO `ldto_room` VALUES (20,3,'aula-6','Aula 6');
INSERT INTO `ldto_room` VALUES (21,3,'aula-8','Aula 8');
INSERT INTO `ldto_room` VALUES (22,3,'aula-7','Aula 7');
INSERT INTO `ldto_room` VALUES (23,4,'aula-7i','Aula 7I');
INSERT INTO `ldto_room` VALUES (24,5,'aula-corsi-1','Aula corsi 1');
INSERT INTO `ldto_room` VALUES (25,5,'aula-corsi-2','Aula corsi 2');
INSERT INTO `ldto_room` VALUES (26,5,'incubatore','Incubatore');
INSERT INTO `ldto_room` VALUES (27,5,'bottega','Bottega');
INSERT INTO `ldto_room` VALUES (28,5,'salone','Salone');
INSERT INTO `ldto_room` VALUES (29,3,'sala-consiglio-di-facolta','Sala Consiglio di Facoltà');
INSERT INTO `ldto_room` VALUES (30,9,'sala-einaudi','Sala Einaudi');
INSERT INTO `ldto_room` VALUES (31,10,'base','Aula Base');
INSERT INTO `ldto_room` VALUES (32,10,'dev','Aula Dev');
INSERT INTO `ldto_room` VALUES (33,10,'sys','Aula Sys');
INSERT INTO `ldto_room` VALUES (34,10,'misc','Aula Misc');
/*!40000 ALTER TABLE `ldto_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_sharable`
--

DROP TABLE IF EXISTS `ldto_sharable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_sharable` (
  `sharable_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sharable_title` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Is this useful?',
  `sharable_path` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sharable_type` enum('video','image','document','youtube') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sharable_mimetype` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Must be set for videos',
  `sharable_license` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sharable_ID`),
  KEY `event_ID` (`event_ID`),
  CONSTRAINT `ldto_sharable_ibfk_1` FOREIGN KEY (`event_ID`) REFERENCES `ldto_event` (`event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_sharable`
--

LOCK TABLES `ldto_sharable` WRITE;
/*!40000 ALTER TABLE `ldto_sharable` DISABLE KEYS */;
INSERT INTO `ldto_sharable` VALUES (1,NULL,'/2016/static/uploads/Telegram_bot.odp','document',NULL,'cc-by-sa-4.0',29);
INSERT INTO `ldto_sharable` VALUES (2,NULL,'/2016/static/uploads/FidoCadJ.pdf','document',NULL,'cc-by-sa-4.0',28);
INSERT INTO `ldto_sharable` VALUES (3,NULL,'/2016/static/uploads/Utilizzi_di_GNU_Linux.odp','document',NULL,'cc-by-sa-4.0',25);
INSERT INTO `ldto_sharable` VALUES (4,NULL,'3V2mhlOce6E','youtube',NULL,'cc-by-sa-4.0',24);
INSERT INTO `ldto_sharable` VALUES (6,NULL,'dCMvkmztdjk','youtube',NULL,'cc-by-sa-4.0',25);
INSERT INTO `ldto_sharable` VALUES (7,NULL,'//static.reyboz.it/2016/linux-day-torino/dieci-anni-FidoCadJ.mp4','video','video/mp4','cc-by-sa-4.0',28);
INSERT INTO `ldto_sharable` VALUES (8,NULL,'/2016/static/uploads/intro-programmazione-js.pdf','document',NULL,'cc-by-sa-4.0',21);
INSERT INTO `ldto_sharable` VALUES (9,NULL,'//static.reyboz.it/2016/linux-day-torino/telegram-bot-python.mp4','video','video/mp4','cc-by-sa-4.0',29);
INSERT INTO `ldto_sharable` VALUES (10,NULL,'//static.reyboz.it/2016/linux-day-torino/yocto-project.mp4','video','video/mp4','cc-by-sa-4.0',27);
INSERT INTO `ldto_sharable` VALUES (11,NULL,'ftp://ftp.koansoftware.com/public/talks/LinuxDay2016/LinuxDay-2016-Yocto-Koan.pdf','document','','cc-by-sa-3.0',27);
INSERT INTO `ldto_sharable` VALUES (12,NULL,'/2016/static/uploads/Docker.odp','document','','cc-by-nc-sa-4.0',30);
INSERT INTO `ldto_sharable` VALUES (13,NULL,'/2016/static/learning/unito/terminale.html','document',NULL,'cc-by-sa-4.0',48);
INSERT INTO `ldto_sharable` VALUES (14,NULL,'//static.reyboz.it/2016/linux-day-torino/corsi-unito-dip-info/glossario-del-software-libero.odp','document',NULL,'cc-by-sa-4.0',45);
INSERT INTO `ldto_sharable` VALUES (15,NULL,'//static.reyboz.it/2016/linux-day-torino/corsi-unito-dip-info/glossario-del-software-libero.pdf','document',NULL,'cc-by-sa-4.0',45);
INSERT INTO `ldto_sharable` VALUES (16,NULL,'//static.reyboz.it/2016/linux-day-torino/corsi-unito-dip-info/debian-gnu-linux-installation.pdf','document',NULL,'wtfpl',46);
INSERT INTO `ldto_sharable` VALUES (17,NULL,'//static.reyboz.it/2016/linux-day-torino/corsi-unito-dip-info/debian-gnu-linux-installation.odp','document',NULL,'wtfpl',46);
INSERT INTO `ldto_sharable` VALUES (18,NULL,'/2016/static/learning/unito/debian-base.md','document',NULL,'cc-by-nc-sa-4.0',47);
INSERT INTO `ldto_sharable` VALUES (19,'Settant\'anni dopo la morte.pdf','https://commons.wikimedia.org/wiki/File:Settant%27anni_dopo_la_morte._Il_diritto_d%27autore_in_Unione_europea_-_Linux_day_2018.pdf','document',NULL,'cc-by-sa-4.0',239);
/*!40000 ALTER TABLE `ldto_sharable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_skill`
--

DROP TABLE IF EXISTS `ldto_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_skill` (
  `skill_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `skill_uid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_type` enum('programming','subject') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`skill_ID`),
  UNIQUE KEY `skill_uid` (`skill_uid`),
  KEY `skill_type` (`skill_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_skill`
--

LOCK TABLES `ldto_skill` WRITE;
/*!40000 ALTER TABLE `ldto_skill` DISABLE KEYS */;
INSERT INTO `ldto_skill` VALUES (1,'asd','asd','subject');
INSERT INTO `ldto_skill` VALUES (2,'php','PHP','programming');
INSERT INTO `ldto_skill` VALUES (3,'js','JavaScript','programming');
INSERT INTO `ldto_skill` VALUES (4,'microsoft-windows','Microsoft Windows','subject');
INSERT INTO `ldto_skill` VALUES (5,'node-js','NodeJS','programming');
INSERT INTO `ldto_skill` VALUES (6,'apple','Apple','subject');
INSERT INTO `ldto_skill` VALUES (7,'java','Java','programming');
INSERT INTO `ldto_skill` VALUES (8,'cpp','C++','programming');
INSERT INTO `ldto_skill` VALUES (9,'ubuntu','Ubuntu','subject');
INSERT INTO `ldto_skill` VALUES (10,'gnu-linux','GNU/Linux','subject');
INSERT INTO `ldto_skill` VALUES (11,'turbo-pascal','Turbo Pascal','programming');
INSERT INTO `ldto_skill` VALUES (12,'free-software','Software Libero','subject');
INSERT INTO `ldto_skill` VALUES (13,'debian','Debian','subject');
INSERT INTO `ldto_skill` VALUES (14,'inkscape','Inkscape','subject');
INSERT INTO `ldto_skill` VALUES (15,'adobe-illustrator','Adobe Illustrator','subject');
INSERT INTO `ldto_skill` VALUES (16,'svg','Immagini vettoriali','subject');
INSERT INTO `ldto_skill` VALUES (17,'teach','Insegnare','subject');
INSERT INTO `ldto_skill` VALUES (18,'raee','Recupero del RAEE','subject');
INSERT INTO `ldto_skill` VALUES (19,'blender','Blender','subject');
INSERT INTO `ldto_skill` VALUES (20,'c','C','programming');
INSERT INTO `ldto_skill` VALUES (21,'wiki','Wikipedia','subject');
INSERT INTO `ldto_skill` VALUES (22,'embedded','Embedded','subject');
INSERT INTO `ldto_skill` VALUES (23,'haskell','Haskell','programming');
INSERT INTO `ldto_skill` VALUES (24,'javaee','JavaEE','programming');
INSERT INTO `ldto_skill` VALUES (25,'jsf','JSF','programming');
INSERT INTO `ldto_skill` VALUES (26,'primefaces','PrimeFaces','programming');
INSERT INTO `ldto_skill` VALUES (27,'maven','Maven','programming');
INSERT INTO `ldto_skill` VALUES (28,'engineering','Engineering','');
INSERT INTO `ldto_skill` VALUES (29,'html','HTML','');
INSERT INTO `ldto_skill` VALUES (30,'css','CSS','');
INSERT INTO `ldto_skill` VALUES (31,'javascript','JavaScript','programming');
INSERT INTO `ldto_skill` VALUES (32,'artificial-intelligence','Artificial Intelligence','');
INSERT INTO `ldto_skill` VALUES (33,'machine-learning','Machine Learning','');
INSERT INTO `ldto_skill` VALUES (34,'mozilla','Mozilla','');
INSERT INTO `ldto_skill` VALUES (35,'effective-altruism','Effective Altruism','');
INSERT INTO `ldto_skill` VALUES (36,'python','Python','programming');
INSERT INTO `ldto_skill` VALUES (37,'data-science','Data Science','');
INSERT INTO `ldto_skill` VALUES (38,'jazz','Jazz','');
INSERT INTO `ldto_skill` VALUES (39,'lucid-dreaming','lucid dreaming','');
INSERT INTO `ldto_skill` VALUES (40,'berlin','Berlin','');
INSERT INTO `ldto_skill` VALUES (41,'london','London','');
INSERT INTO `ldto_skill` VALUES (42,'physics','physics','programming');
INSERT INTO `ldto_skill` VALUES (43,'phisics','phisics','');
INSERT INTO `ldto_skill` VALUES (44,'consciousness','consciousness','');
INSERT INTO `ldto_skill` VALUES (45,'vegan','vegan','');
INSERT INTO `ldto_skill` VALUES (46,'rust','Rust','');
INSERT INTO `ldto_skill` VALUES (47,'curiosity','Curiosity','');
INSERT INTO `ldto_skill` VALUES (48,'creativity','creativity','');
INSERT INTO `ldto_skill` VALUES (49,'teamwork','teamwork','');
INSERT INTO `ldto_skill` VALUES (50,'laziness','laziness','');
INSERT INTO `ldto_skill` VALUES (51,'linux','Linux','');
INSERT INTO `ldto_skill` VALUES (52,'big-data','Big Data','');
INSERT INTO `ldto_skill` VALUES (53,'kubernetes','Kubernetes','');
INSERT INTO `ldto_skill` VALUES (54,'devops','Devops','');
INSERT INTO `ldto_skill` VALUES (55,'azure','Azure','');
INSERT INTO `ldto_skill` VALUES (56,'developer','developer','');
/*!40000 ALTER TABLE `ldto_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_subscription`
--

DROP TABLE IF EXISTS `ldto_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_subscription` (
  `subscription_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `subscription_date` datetime NOT NULL,
  `subscription_token` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`subscription_ID`),
  UNIQUE KEY `subscription_email` (`event_ID`,`subscription_email`),
  CONSTRAINT `ldto_subscription_ibfk_1` FOREIGN KEY (`event_ID`) REFERENCES `ldto_event` (`event_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_subscription`
--

LOCK TABLES `ldto_subscription` WRITE;
/*!40000 ALTER TABLE `ldto_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ldto_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_track`
--

DROP TABLE IF EXISTS `ldto_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_track` (
  `track_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `track_uid` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `track_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `track_order` smallint(1) NOT NULL,
  `track_label` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`track_ID`),
  UNIQUE KEY `track_uid` (`track_uid`),
  KEY `track_order` (`track_order`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_track`
--

LOCK TABLES `ldto_track` WRITE;
/*!40000 ALTER TABLE `ldto_track` DISABLE KEYS */;
INSERT INTO `ldto_track` VALUES (1,'base','Base',2,'Adatto ad un pubblico senza pre-conoscenze particolari');
INSERT INTO `ldto_track` VALUES (2,'dev','Dev',3,'Area sviluppatori');
INSERT INTO `ldto_track` VALUES (3,'sys','Sys',4,'Area sistemisti');
INSERT INTO `ldto_track` VALUES (4,'misc','Misc',1,'Argomenti relativi alla conoscenza e alla libertà digitale.');
INSERT INTO `ldto_track` VALUES (5,'altro','Altro',5,'Di tutto un po\'');
INSERT INTO `ldto_track` VALUES (6,'intermediate','Intermedio',6,'Adatto ad un pubblico abbastanza smanettone');
INSERT INTO `ldto_track` VALUES (7,'advanced','Avanzato',7,'Adatto ad un pubblico di nerd disperati');
INSERT INTO `ldto_track` VALUES (8,'sikurezza','Sikurezza',3,NULL);
INSERT INTO `ldto_track` VALUES (9,'sicurezza','Sicurezza',3,NULL);
/*!40000 ALTER TABLE `ldto_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_user`
--

DROP TABLE IF EXISTS `ldto_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_user` (
  `user_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` enum('admin','user','translator') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `user_public` tinyint(1) NOT NULL DEFAULT '1',
  `user_active` tinyint(4) NOT NULL DEFAULT '0',
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_title` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_gravatar` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Gravatar when NULL',
  `user_password` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_site` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_lovelicense` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_bio_it` text COLLATE utf8mb4_unicode_ci,
  `user_bio_en` text COLLATE utf8mb4_unicode_ci,
  `user_bio_pms` text COLLATE utf8mb4_unicode_ci,
  `user_rss` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_twtr` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_fb` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_lnkd` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_googl` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_github` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_ID`),
  UNIQUE KEY `user_uid` (`user_uid`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_user`
--

LOCK TABLES `ldto_user` WRITE;
/*!40000 ALTER TABLE `ldto_user` DISABLE KEYS */;
INSERT INTO `ldto_user` VALUES (1,'boz','admin',1,1,'Valerio','Bozzolan',NULL,NULL,'93f0cce15047436217cd3dfc8a73dadc',NULL,NULL,'https://boz.reyboz.it','gnu-gpl-v3','Mi presento: faccio pochissimo.. di un sacco di cose! mi piace automatizzare cose per Wikidata e Wikipedia. Sviluppare backend e API. Mi piace suonare il sax, chitarra, pianoforte e basso. Ogni tanto mi piace anche organizzare qualche Linux Day, ma solo se riesco a nascondere qualche _easter egg_ nel codice.\r\n\r\nDi lavoro? Sviluppo e mantengo software libero per i miei committenti (e spero sempre che ci facciano qualcosa di buono poi...). Amo reinventare la ruota, ma purtroppo spesso evito.\r\n\r\nChe altro dire... uso solo software libero!',NULL,NULL,'https://blog.reyboz.it','ValerioBozzolan',NULL,NULL,NULL,'valerio-bozzolan');
INSERT INTO `ldto_user` VALUES (2,'oirasor','admin',1,1,'Rosario','Antoci',NULL,NULL,'3fe5e057f1207e609a93aa3796f63004',NULL,NULL,NULL,'gnu-gpl-v2','Appassionato di tante cose (forse troppe).\r\n\r\nNon mi piace la tecnologia che provoca il gadgettame, ma il suo continuo avanzare per migliorare le risorse e la conoscenza di tutti.\r\n\r\nMi è capitato di organizzare qualche Linux Day. =P\r\n\r\nSuonatore di Floppy, appassionato di Dama e Retrocomputing.','Enthusiast of many things (maybe too many).\r\n\r\nI don\'t like technology for the sake of gadgets, but I like its incessant progress to improve resources and knowledge for everyone.\r\n\r\nI ended up organizing some Linux Days. =P\r\n\r\nFloppy musician, checkers and Retrocomputing enthusiast.',NULL,NULL,'0iras0r',NULL,NULL,NULL,'0iras0r');
INSERT INTO `ldto_user` VALUES (3,'dario','user',1,0,'Dario','Sera',NULL,NULL,'4c1fcda45d79c0618bc91446e2009872',NULL,NULL,NULL,NULL,'Dario Sera, 22 anni, studente di Ingegneria Informatica con la passione per la didattica. Co-fondatore di [CoderDojo Torino2](http://www.coderdojotorino2.it) e di [Merende Digitali](http://www.merendedigitali.it).\r\n\r\nUtilizzo GNU/Linux da molti anni, e collaboro con il Linux Day Torino dal 2010.','Dario Sera, 22 years old, Computer engineering student with a fascination for didactics. Co-founder of [CoderDojo Turin2](http://www.coderdojotorino2.it) and of [Merende Digitali](http://www.merendedigitali.it).\r\n\r\nI\'ve been using GNU/Linux for many years, and I help out at the Linux Day since 2010.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (7,'renzo','user',1,0,'Renzo','Davoli',NULL,NULL,'32c8c9d7c965d23df604a56597540138','/2016/static/user/davoli.jpg',NULL,NULL,NULL,'Ricercatore, Maker, Insegnante, Sviluppatore...\r\nCinquantenne all\'anagrafe, continua a giocare e a pensare liberamente.\r\nIn realtà vuole salvare il mondo, ma non ditelo a nessuno.','Researcher, Maker, Teacher, Developer...\r\nFifty years old at the civil registry, but keeps on playing and thinking freely.\r\nActually he wants to save the world, but don\'t tell it to anybody.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (8,'luigi.maselli','user',1,0,'Luigi','Maselli',NULL,NULL,'e79a3fd6f28fc611c455e8ebc67a3080',NULL,NULL,NULL,'mit','Fondatore <http://corso-javascript.it> e TorinoJS, software developer freelance.','Founder of <http://corso-javascript.it> and TorinoJS, software developer freelance.',NULL,NULL,'grigi0',NULL,NULL,NULL,'grigio');
INSERT INTO `ldto_user` VALUES (10,'marco.cavallini','user',1,0,'Marco','Cavallini',NULL,NULL,'ff90f7c12341042f5227398edc1cf4e1','/2016/static/user/cavallini.jpg',NULL,NULL,NULL,'Marco Cavallini è un programmatore C/C++ sin dalla metà degli anni \'80. Inizia l\'attività di evangelizzazione all\'Open Source e Linux embedded nel 1999 con le prime schede StrongArm.\n\nÈ membro di OpenEmbedded dal 2009 e Yocto Project advocate dal 2012. Marco ha fondato KOAN nel 1996, una software house specializzata in software embedded con sede in Italia, che offre servizi di sviluppo del kernel e formazione per i sistemi Linux embedded. Quando non si utilizza i computer, è solitamente interessato a mescolare la Fisica con la Filosofia.',NULL,NULL,NULL,NULL,NULL,'marcocavallini',NULL,NULL);
INSERT INTO `ldto_user` VALUES (11,'davide','user',1,0,'Davide','Bucci',NULL,NULL,'4632994b4d358fe36b0ee14f84737dce',NULL,NULL,NULL,NULL,'Davide è viaggiatore transalpino, programmatore della domenica (se non fa bello, non c\'è neve e non si va a sciare) e qualche volta anche del sabato pomeriggio. Ogni tanto racconta a dei ragazzi e delle ragazze come si usano gli amplificatori operazionali, in altre occasioni canta a squarciagola con altre persone. Appassionato di vecchi computer e di elettronica analogica, si tiene in casa un numero imbarazzante di oscilloscopi, tracciacurve, una macchina da scrivere ed un pianoforte. Coordinatore del progetto open source FidoCadJ, Davide è sensibile al fascino delle automobili scoperte a due posti, soprattutto se a motore centrale.\r\n\r\nDavide pratica abbastanza spesso Java, il C ed il C++, sa costruire un generatore ad impulsi con diodi step recovery, ha un\'idea abbastanza precisa su cosa sia un intervallo di quarta eccedente, come funzioni lo scambio ionico su vetro e come calcolare un modo di propagazione in una guida d\'onda dielettrica.','Davide is a transalpine traveller, Sunday programmer (except when it\'s sunny and there\'s snow and he can go ski) and sometimes even of Saturday afternoon. Sometimes he tells boys and girls how to use operational amplifiers, some other times he sings to the top of his lungs with other people. Old computers and analogical electronics enthusiast, he has at home an embarrassing number of oscilloscopes, transistors, a typing machine and a piano. Coordinator of the open source project FidoCadj, Davide is sensitive to the charm of two seats convertibles, especially with mid-engine layout.\r\n\r\nDavide often uses Java, C and C++, he know how to build a impulse generator with step recovery diodes, he knows pretty well what is an augmented fourth interval, how does the ionic exchange work on glass and how to calculate movement of propagation in a dielectric waveguide.',NULL,NULL,'davbucci',NULL,NULL,NULL,'DarwinNE');
INSERT INTO `ldto_user` VALUES (12,'francesco','user',1,0,'Francesco','Tucci',NULL,NULL,'e93f71f84334e8aee586069ce0dd1ad2',NULL,NULL,NULL,NULL,'Si diverte quando ha a che fare con tutto ciò che ha dei bit o della corrente, sistemista di professione, maker per diletto, podcaster (<http://geekcookies.github.io> e <http://www.pilloledib.it>) almeno una volta al mese.\r\n\r\nMini CV delle mie passioni: sistemi Win/Linux/Mac, Arduino, Raspberry Pi e altre schedine embedded, basi di elettronica, programmatore a tempo perso (quali linguaggi? non è importante, impararne la sintassi non è la cosa che mi ostacola).','He has fun when he\'s dealing with bits and electrical current, professional systems analyst, maker for his own plesure, podcaster (<http://geekcookies.github.com> and <http://www.pilloledib.it>) at least once a month.\r\n\r\nShort résumé of my passions: Win/Linux/Mac systems, Arduino, Raspberry Pi and other embedded boards, electronics fundamentals, programmer as a pastime (what languages? It\'s not important, learning their syntax is not preclusive).',NULL,NULL,'cesco_78',NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (13,'massimo','user',1,0,'Massimo','Nuvoli',NULL,NULL,'5f4846fa67388fd5a92638407ed501a8','/2016/static/user/massimo.jpg',NULL,NULL,NULL,'Architetto di Sistemi presso Progetto Archivio SRL e Dicobit.','System Architect at Project Archivio SRL and Dicobit.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (14,'elia','user',1,0,'Elia','Bellussi',NULL,NULL,'8b0e2f9c8927ae8527071f82e9ba8eb0',NULL,NULL,NULL,NULL,'Elia Bellussi, 35 anni, è fondatore del Museo Internazionale dell\'Informatica (già Museo Piemontese dell\'Informatica) e di CoderDojo Torino. Socio di AICA, Stati Generali dell\'Innovazione e di Nord Est Digitale. Consulente informatico si occupa di system engineering.','Elia Bellussi, 35 years old, is the founder of the \"Museo Internazionale dell\'Informatica\" (previously known as \"Museo Piemontese dell\'Informatica\") and of CoderDojo Torino. Associate of AICA, \"Stati Generali dell\'Innovazione\" and \"Nord Est Digitale\". IT Consultant, specialized in system engineering. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (15,'davide.isoardi','user',1,0,'Davide','Isoardi',NULL,NULL,'1e6f2656299bbe943ca1cf27f2cd06b1',NULL,NULL,NULL,NULL,'Big Data System Architect e sysadmin.','Big Data System Architect and sysadmin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (16,'davide.vergari','user',1,0,'Davide','Vergari',NULL,NULL,NULL,'2019/images/user-davidevergari.jpg',NULL,NULL,NULL,'Sistemista Linux di nascita, _data architect_ per vocazione. Amo l\'open source, la tecnologia, il cloud, il devops, i big data e la birra.','Linux sysadmin since the Unix epoch, data architect by vocation. I love the open source, the technology, the cloud, the devops, the big data and the beer.',NULL,NULL,'DavideVergari',NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (17,'davide.mainardi','user',1,0,'Davide','Mainardi',NULL,NULL,'7ef27702d814de74e153d7a6fa125b6e','2019/images/user-davidemainardi.jpeg',NULL,NULL,'gnu-agpl','Computer science engineer, open source enthusiast, pragmatic Java EE developer.','Ingegnere informatico, open source addicted, pragmatico sviluppatore grazie a Java EE.',NULL,NULL,'ingmainardi',NULL,NULL,NULL,'dmainardi');
INSERT INTO `ldto_user` VALUES (18,'gianfranco.poncini','user',1,0,'Gianfranco','Poncini',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (20,'marco.signoretto','user',1,0,'Marco','Signoretto',NULL,NULL,'19fb231f51568df3a2a3cd63626f41ca','/2016/static/user/signoretto.jpg',NULL,NULL,NULL,'The trash king!\r\n\r\nNato e cresciuto a Torino, Marco ha speso i suoi ultimi anni di Politecnico a studiare l\'ultima parte della filiera ovvero l’immondizia. Nel 2015 si è laureato in Ecodesign con una tesi sulla gestione dei RAEE a livello aziendale.\r\n\r\nOggi ha aperto il piccolo studio creativo Olive Creative Lab intenzionato a muoversi in tutti i campi della creatività: dal product design alla grafica, dall\'interaction design alla sostenibilità.','The trash king!\r\n\r\nBorn and raised in Turin, Marco has spent the last few years at Politecnico, studying the last ring of the productive chain: garbage. In 2015 he graduated in Ecodesign with a thesis about RAEE management at a business level.\r\n\r\nToday, he has opened the little creative studio \"Olive Creative Lab\" inclined to move around every field possible to creativity: from product design to graphics, from interaction design to sustainability.',NULL,NULL,'MarcoSignorett','marco.signoretto.9','marco-signoretto-326003a7',NULL,NULL);
INSERT INTO `ldto_user` VALUES (21,'simone','user',1,0,'Simone','Massi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (23,'alessio','user',1,0,'Alessio','Melandri',NULL,NULL,NULL,'/2016/static/user/alessio.jpg',NULL,NULL,NULL,'Appassionato di troppe cose, ho costretto il mio entusiasmo per la conoscenza e per la tecnologia ad incontrarsi nell\'informatica. Lavoro ogni giorno coi dati presso Synapta, ne aggiungo di nuovi su Wikipedia, Wikidata e OpenStreetMap e non vedo l\'ora di poter navigare in un Web semantico. Mi piace giocare a scacchi e bere aranciata. Anche non contemporaneamente.','Aficionado of many things, I forced my passion for knowledge and technology to meet in computer science. I work with data everyday at Synapta, adding new ones to Wikipedia, Wikidata and OpenStreetMap and I can\'t wait to surf a semantic Web. I love to play chess and drink orange soda. Even not together.',NULL,NULL,NULL,NULL,'alessiomelandri',NULL,'alemela');
INSERT INTO `ldto_user` VALUES (24,'mario.lacaj','user',1,0,'Mario','Lacaj',NULL,NULL,'6e1344b291eecd75d0dab6ce0fa64b6a','/2016/static/user/mario_lacaj.jpg',NULL,NULL,NULL,'Piacere di conoscerti! Sono uno dei rappresentanti degli studenti del Dipartimento di Informatica di Torino.\r\n\r\nCosa c\'entro? Te lo dico subito in questa intervista:\r\n\r\n<https://blog.linuxdaytorino.org/2016/10/04/intervista-e-sopralluogo-al-dipartimento/>','Nice to meet you! I\'m one of the Students\' Union Representative of the Computer Science Department of Turin.\r\n\r\nWhat do I do? Know more about it in this interview:\r\n\r\n<https://blog.linuxdaytorino.org/2016/10/04/intervista-e-sopralluogo-al-dipartimento/>',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (25,'valerio.sacchetto','user',1,0,'Valerio','Sacchetto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (26,'gloria.puppi','user',1,0,'Gloria','Puppi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (27,'madbob','user',1,0,'Roberto','Guido',NULL,NULL,'3d2b05e0cb8dac9f22072a3e40b6483b',NULL,NULL,'https://madbob.wordpress.com/',NULL,'Presidente [Italian Linux Society](http://www.ils.org/).','[Italian Linux Society](http://www.ils.org/)\'s president.',NULL,'http://blog.madbob.org','madbob',NULL,NULL,NULL,'madbob');
INSERT INTO `ldto_user` VALUES (28,'silux','user',1,0,'Valerio','Cietto',NULL,NULL,'773c7e55047cf650c68c03446548211a',NULL,NULL,'https://siluxmedia.wordpress.com','gnu-gpl','Vivo fin dal lontano \'92, la mia vocazione è di fare il mago.\n\nVisto che non è possibile, ho iniziato a scrivere incantesimi, demoni, scrivere in un antico linguaggio per incantare oggetti e materializzare oggetti dalla plastica, e mi diverto tantissimo a farlo.\n\nL’Open source e l’open hardware è quello di cui c\'è bisogno per usare al meglio la meravigliosa tecnologia intorno a noi.\n\nAmo usare la licenza [WTFPL](https://it.wikipedia.org/wiki/WTFPL) per esempi e per chi non legge mai i testi delle licenze.',NULL,NULL,NULL,NULL,'valerio.cietto','valerio-cietto-2ba01958',NULL,'ValerioCietto');
INSERT INTO `ldto_user` VALUES (29,'tinytanic','user',1,0,'Luca','Aguzzoli',NULL,NULL,'4ae444c7e81d97da4f8340d50c375aed',NULL,NULL,'http://aguzzoliluca.it','gnu-gpl','Linux user dal 2010 iniziato da una Ubuntu con GNOME 2 (<3) su un muletto che neanche nel 1983 sarebbe stato un buon computer.\n\nOra cerco di sviluppare il mio futuro libero... e tu?',NULL,NULL,NULL,NULL,'luka.agu','lucaaguzzoli',NULL,'TinyTanic');
INSERT INTO `ldto_user` VALUES (31,'fox','user',1,0,'Giuseppe','Treccarichi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (32,'hox','user',1,0,'Andrea','Carron',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (33,'giuseppe-castagno','user',1,0,'Giuseppe','Castagno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (34,'karletto','user',1,0,'Carlo','Camarda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (35,'sophia-danesino','user',1,0,'Sophia','Danesino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (36,'fabrizio-reale','user',1,0,'Fabrizio','Reale',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (37,'michele-di-serio','user',1,0,'Michele','di Serio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (38,'alessandro-peppino','user',1,0,'Alessandro','Peppino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (39,'luca-zamboni','user',1,0,'Luca','Zamboni',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (40,'rodolfo-boraso','user',1,0,'Rodolfo','Boraso',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (41,'maurizio-lupo','user',1,0,'Maurizio','Lupo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (42,'proto','user',1,0,'Mirco','Chinelli',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (43,'diego-feruglio','user',1,0,'Diego','Feruglio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (44,'davide-gomba','user',1,0,'Davide','Gomba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (45,'vittorio-zuccala','user',1,0,'Vittorio','Zuccalà',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (46,'leso','user',1,0,'Simone','Martina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (47,'francio','user',1,0,'Francesco','Golia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (48,'andrea-chiarottino','user',1,0,'Andrea','Chiarottino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (49,'francesco-ronchi','user',1,0,'Francesco','Ronchi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (50,'maria-aliberti','user',1,0,'Maria','Aliberti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (51,'alessandro-rabbone','user',1,0,'Alessandro','Rabbone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (52,'angelo-raffaele-meo','user',1,0,'Angelo Raffaele','Meo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (53,'davide-moro','user',1,0,'Davide','Moro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (54,'tommaso-marino','user',1,0,'Tommaso','Marino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (55,'alessio-drivet','user',1,0,'Alessio','Drivet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (56,'emanuela-re','user',1,0,'Emanuela','Re',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (57,'federico-di-gregorio','user',1,0,'Federico','Di Gregorio',NULL,NULL,'44cb0394e2e6ca48a902fe3607b95afe',NULL,NULL,NULL,'gnu-gpl-v3','Federico Di Gregorio si laurea in fisica nel 1996 ed in seguito dedica qualche\r\nanno alla biofisica per poi tendere decisamente verso la computer science e la\r\nprogrammazione. Oppure scopre la Debian (sempre nel 1996) e ne diventa\r\nsviluppatore l\'anno seguente per esserlo ancora oggi (anche se a tempo ridotto).\r\nOppure abbandona perl per il Python (sempre nel 1996) e qualche anno dopo si\r\nritrova a scrivere uno dei driver per PostgreSQL più usati al mondo.\r\nOppure fa qualche lavoretto in campo informatico (sempre nel 1996) e qualche\r\nanno dopo si ritrova socio di una delle poche aziende ad avere il termine\r\n\"software libero\" nell\'atto costitutivo. Se bazzicate nella comunità del\r\nsoftware libero (che come sappiamo non esiste) potreste averlo incontrato\r\nmentre tiene qualche lezione di programmazione oppure mentre vende cocktail\r\nper raccogliere fondi per qualche progetto. Oppure potreste aver litigato con\r\nlui. Ultimamente tenta di convincere il mondo che il C# è un linguaggio\r\nassolutamente Pythonico...','Federico Di Gregorio (that\'s me) graduates in physics in 1996 and then\r\ndedicates some years to biophysics slowly shifting toward computer science\r\nand programming. Or he discovers Debian (again in 1996) and becomes a DD\r\nin 1997. Or he leaves Perl for Python (again in 1996!) and some years later\r\nreleases the most used Python-PostgreSQL driver. Or does some programyming\r\npart-time work (guess what? starting from 1996) and after some years founds\r\nthe first italian company to have the term \"free software\" in its charter.\r\nNowdays you can meet him (that\'s me) teaching programming, selling cocktails\r\nto gather founds for some free software project or trying to convince its\r\nfriends that C# is an extremely Pythonic language and Mono \"rulez!\" ...',NULL,NULL,NULL,NULL,NULL,NULL,'fogzot');
INSERT INTO `ldto_user` VALUES (58,'igor-pesando','user',1,0,'Igor','Pesando',NULL,NULL,NULL,'2019/images/user-igor-pesando.png',NULL,'http://personalpages.to.infn.it/~ipesando/',NULL,'Insegno al Dipartimento di Fisica dell\'Università di Torino.\r\n\r\nNei miei interessi di ricerca vi è la [teoria quantistica dei campi](https://it.wikipedia.org/wiki/Teoria_quantistica_dei_campi) e [_Critical Phenomena_](https://en.wikipedia.org/wiki/Critical_phenomena).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (59,'parantido','user',1,0,'Danilo','Santoro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (60,'luca-cipriani','user',1,0,'Luca','Cipriani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (61,'diego-guenzi','user',1,0,'Diego','Guenzi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (62,'dario-lombardo','user',1,0,'Dario','Lombardo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (63,'francesco-daluisio','user',1,0,'Francesco','D\'Aluisio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (64,'lorenzo-bassi','user',1,0,'Lorenzo','Bassi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (65,'michele-tameni','user',1,0,'Michele','Tameni',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (66,'p-ballauri','user',1,0,'P.','Ballauri',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (67,'r-di-giorgio','user',1,0,'R.','Di Giorgio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (68,'l-galassi','user',1,0,'L.','Galassi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (69,'i-lazorec','user',1,0,'I.','Lazorec',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (70,'a-pellegrinelli','user',1,0,'A.','Pellegrinelli',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (71,'g-salvagno','user',1,0,'G.','Salvagno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (72,'r-russo','user',1,0,'R.','Russo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (73,'marco-dorigo','user',1,0,'Marco','Dorigo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (74,'alessandro-ugo','user',1,0,'Alessandro','Ugo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (75,'nicolo-zubbini','user',1,0,'Nicolò','Zubbini',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (76,'roberto-preziusi','user',1,0,'Roberto','Preziusi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (77,'ironbishop','user',1,0,'Flavio','Pastore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (78,'eagle1753','user',1,0,'Matteo','Collura',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (79,'marco-martin','user',1,0,'Marco','Martin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (80,'fabio-erculiani','user',1,0,'Fabio','Erculiani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (81,'silvan-calarco','user',1,0,'Silvan','Calarco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (82,'luigi-massa','user',1,0,'Luigi','Massa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (83,'nicola-ambrosino','user',1,0,'Nicola','Ambrosino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (84,'fabrizio-ferrari','user',1,0,'Fabrizio','Ferrari',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (85,'pier-carlo-devoti','user',1,0,'Pier Carlo','Devoti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (86,'italo-vignoli','user',1,0,'Italo','Vignoli',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (87,'stefano-cannillo','user',1,0,'Stefano','Cannillo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (88,'guido-audino','user',1,0,'Guido','Audino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (89,'mariella-berra','user',1,0,'Mariella','Berra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (90,'gino-nuzzi','user',1,0,'Gino','Nuzzi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (91,'alessandro-sciullo','user',1,0,'Alessandro','Sciullo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (92,'carlo-chiama','user',1,0,'Carlo','Chiama',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (93,'andrea-ratto','user',1,0,'Andrea','Ratto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (94,'iacopo-benesperi','user',1,0,'Iacopo','Benesperi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (95,'marco-ciurcina','user',1,0,'Marco','Ciurcina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (96,'marco-bodrato','user',1,0,'Marco','Bodrato',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (97,'nicola-franzese','user',1,0,'Nicola','Franzese',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (98,'giorgio-ferrero','user',1,0,'Giorgio','Ferrero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (99,'simone-capodicasa','user',1,0,'Simone','Capodicasa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (100,'federico-fissore','user',1,0,'Federico','Fissore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (101,'marco-zanasso','user',1,0,'Marco','Zanasso',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (102,'dimitri-bellini','user',1,0,'Dimitri','Bellini',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (103,'paolo-doz','user',1,0,'Paolo','Doz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (104,'ilario-pittau','user',1,0,'Ilario','Pittau',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (105,'keivan-motavalli','user',1,0,'Keivan','Motavalli',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (106,'paolo-stagno','user',1,0,'Paolo','Stagno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (107,'luca-poletti','user',1,0,'Luca','Poletti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (108,'bughardy','user',1,0,'Matteo','Beccaro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (109,'andrea-negro','user',1,0,'Andrea','Negro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (110,'mariano-fiorentino','user',1,0,'Mariano','Fiorentino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (111,'andrea-deste','user',1,0,'Andrea','D\'Este',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (112,'federico-morando','user',1,0,'Federico','Morando',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (114,'flavio-giobergia','user',1,0,'Flavio','Giobergia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (115,'alessandro-rubini','user',1,0,'Alessandro','Rubini',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (116,'walter-dal-mut','user',1,0,'Walter','Dal Mut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'walterdalmut',NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (117,'francesco-ficili','user',1,0,'Francesco','Ficili',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (118,'federico-vanzati','user',1,0,'Federico','Vanzati',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (119,'gianfranco-costamagn','user',1,0,'Gianfranco','Costamagna',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (120,'gilberto-conti','user',1,0,'Gilberto','Conti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (121,'davide-gianforte','user',1,0,'Davide','Gianforte',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (122,'mariagrazia-pellerin','user',1,0,'Mariagrazia','Pellerino','assessore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (123,'riccardo-magliocchetti','user',1,0,'Riccardo','Magliocchetti',NULL,NULL,'61ba6f6b1fb82707b9344259f74a81b3',NULL,NULL,'http://menodizero.it/',NULL,NULL,'Riccardo Magliocchetti is a Pythonista and a software developer. He’s a long time Free Software developer and has contributed to dozens of projects. In Turin he co-organizes [Torino Hacknight](http://torino.hacknight.it/), to remember people that Free Software won’t write itself and Coding Gym Torino, where people solve puzzles doing pair programming. He likes going to the movies and should read more books.','Riccardo Magliocchetti è un pythonista ed uno sviluppatore. Sviluppa software libero da un po\' e nel tempo ha contribuito a dozzine di progetti. A Torino organizza [Torino Hacknight](http://torino.hacknight.it/), per ricordare alle persone che il software libero non si scrive da solo e Coding Gym Torino, dove le persone risolvono esercizi di programmazione in pair programming. Gli piace andare al cinema e dovrebbe leggere più libri.',NULL,'rmistaken',NULL,NULL,NULL,'xrmx');
INSERT INTO `ldto_user` VALUES (124,'luca-barbato','user',1,0,'Luca','Barbato',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (125,'greta-boffi','user',1,0,'Greta','Boffi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (126,'timothy-b-terriberry','user',1,0,'Timothy','B. Terriberry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (127,'carlo-blengino','user',1,0,'Carlo','Blengino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (128,'ludovico-pavesi','user',1,0,'Ludovico','Pavesi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (129,'stefano-enrico-mendo','user',1,0,'Stefano Enrico','Mendola',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (130,'giacomo-grasso','user',1,0,'Giacomo','Grasso',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (131,'carlo-perassi','user',1,0,'Carlo','Perassi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (132,'marco-delaurenti','user',1,0,'Marco','Delaurenti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (133,'vittorio-pasteris','user',1,0,'Vittorio','Pasteris',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (134,'davide-quaglia','user',1,0,'Davide','Quaglia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (135,'marco-steffenino','user',1,0,'Marco','Steffenino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (136,'roberto-strano','user',1,0,'Roberto','Strano',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (137,'sergio-margarita','user',1,0,'Sergio','Margarita',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (138,'michele-lionetti','user',1,0,'Michele','Lionetti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (139,'gianpaolo-perego','user',1,0,'Gianpaolo','Perego',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (140,'dario-guerrieri','user',1,0,'Dario','Guerrieri',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (141,'jean-francois-panico','user',1,0,'Jean François','Panico',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (142,'marco-musso','user',1,0,'Marco','Musso',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (143,'admin','admin',1,1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (144,'g1bot','user',1,0,'Emanuele','Guido',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (145,'virginia','user',1,0,'Virginia','Hyd3l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (146,'pau','user',1,0,'Alberto','Pau',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (147,'uncle-fra','user',1,0,'Francesco','Bergesio',NULL,NULL,NULL,'2019/images/user-uncle-fra.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (148,'astrastefania','user',1,0,'Stefania','Delprete',NULL,NULL,NULL,'2019/images/user-astrastefania.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'astrastefania',NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (153,'not_a_numb3r','user',1,0,'Mauro','Foti',NULL,'maurofoti1900@gmail.com','1c009e95f5878fc6884e802a24cf356a','2019/images/user-not-a-numb3r.jpg',NULL,NULL,NULL,'Iscritto a ingegneria elettronica, appassionato da sempre di tecnologia e computer. Sono entrato nel mondo della sicurezza informatica con il programma CyberChallengeIT 2018. Mi diverto in competizioni nel campo, inclusa la European Cyber Security Challenge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (154,'fabio-di-ninno','user',1,0,'Fabio','Di Ninno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ingegnere informatico. Da un anno lavoro nel mondo dell\'AI, di questi tempi sembra molto _cool_ dirlo!\r\n\r\nLa verità è che vorrei portare questa tecnologia ai cittadini, nella\r\nvita di tutti i giorni.\r\n\r\nMi piace tutto ciò che è nuovo e rompe gli schemi con il passato soprattutto se è fatto di zeri e uno.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (155,'fabrizio-massara','user',1,0,'Fabrizio','Massara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (156,'lorenzo.losa','user',1,0,'Lorenzo','Losa',NULL,NULL,NULL,'2019/images/user-lorenzo-losa.jpg',NULL,'https://wiki.wikimedia.it/wiki/Utente:Laurentius','gnu-gpl-v3','Presidente di [Wikimedia Italia](https://www.wikimedia.it). Credo nel software libero e nella conoscenza libera. Da quindici anni contribuisco a Wikipedia e agli altri progetti collaborativi che si sono affiancati all\'enciclopedia, e mi interesso in particolare di diritto d\'autore e licenze libere.','President of [Wikimedia Italia](https://www.wikimedia.it). I believe in free software and free knowledge. Since fifteen years ago, I edit Wikipedia and other collaborative projects, and I focus especially on copyright and free licenses.',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ldto_user` VALUES (157,'admin-piemonteis','translator',1,1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ldto_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldto_user_skill`
--

DROP TABLE IF EXISTS `ldto_user_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldto_user_skill` (
  `user_ID` int(10) unsigned NOT NULL,
  `skill_ID` int(10) unsigned NOT NULL,
  `skill_score` int(11) NOT NULL,
  PRIMARY KEY (`user_ID`,`skill_ID`),
  KEY `skill_ID` (`skill_ID`),
  KEY `skill_score` (`skill_score`),
  CONSTRAINT `ldto_user_skill_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `ldto_user` (`user_ID`) ON DELETE CASCADE,
  CONSTRAINT `ldto_user_skill_ibfk_2` FOREIGN KEY (`skill_ID`) REFERENCES `ldto_skill` (`skill_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldto_user_skill`
--

LOCK TABLES `ldto_user_skill` WRITE;
/*!40000 ALTER TABLE `ldto_user_skill` DISABLE KEYS */;
INSERT INTO `ldto_user_skill` VALUES (1,11,-4);
INSERT INTO `ldto_user_skill` VALUES (17,31,-4);
INSERT INTO `ldto_user_skill` VALUES (17,32,-4);
INSERT INTO `ldto_user_skill` VALUES (17,33,-4);
INSERT INTO `ldto_user_skill` VALUES (20,15,-4);
INSERT INTO `ldto_user_skill` VALUES (16,55,-3);
INSERT INTO `ldto_user_skill` VALUES (153,50,-3);
INSERT INTO `ldto_user_skill` VALUES (1,4,-2);
INSERT INTO `ldto_user_skill` VALUES (1,6,-2);
INSERT INTO `ldto_user_skill` VALUES (16,56,-2);
INSERT INTO `ldto_user_skill` VALUES (17,2,-2);
INSERT INTO `ldto_user_skill` VALUES (1,5,-1);
INSERT INTO `ldto_user_skill` VALUES (17,30,-1);
INSERT INTO `ldto_user_skill` VALUES (1,7,0);
INSERT INTO `ldto_user_skill` VALUES (11,7,0);
INSERT INTO `ldto_user_skill` VALUES (16,54,1);
INSERT INTO `ldto_user_skill` VALUES (17,29,1);
INSERT INTO `ldto_user_skill` VALUES (148,40,1);
INSERT INTO `ldto_user_skill` VALUES (148,41,1);
INSERT INTO `ldto_user_skill` VALUES (1,3,2);
INSERT INTO `ldto_user_skill` VALUES (1,8,2);
INSERT INTO `ldto_user_skill` VALUES (1,13,2);
INSERT INTO `ldto_user_skill` VALUES (16,51,2);
INSERT INTO `ldto_user_skill` VALUES (16,53,2);
INSERT INTO `ldto_user_skill` VALUES (20,14,2);
INSERT INTO `ldto_user_skill` VALUES (20,19,2);
INSERT INTO `ldto_user_skill` VALUES (24,2,2);
INSERT INTO `ldto_user_skill` VALUES (24,3,2);
INSERT INTO `ldto_user_skill` VALUES (24,20,2);
INSERT INTO `ldto_user_skill` VALUES (24,23,2);
INSERT INTO `ldto_user_skill` VALUES (148,38,2);
INSERT INTO `ldto_user_skill` VALUES (148,39,2);
INSERT INTO `ldto_user_skill` VALUES (148,46,2);
INSERT INTO `ldto_user_skill` VALUES (1,2,3);
INSERT INTO `ldto_user_skill` VALUES (8,5,3);
INSERT INTO `ldto_user_skill` VALUES (10,8,3);
INSERT INTO `ldto_user_skill` VALUES (10,20,3);
INSERT INTO `ldto_user_skill` VALUES (10,22,3);
INSERT INTO `ldto_user_skill` VALUES (11,8,3);
INSERT INTO `ldto_user_skill` VALUES (11,20,3);
INSERT INTO `ldto_user_skill` VALUES (16,52,3);
INSERT INTO `ldto_user_skill` VALUES (17,7,3);
INSERT INTO `ldto_user_skill` VALUES (17,27,3);
INSERT INTO `ldto_user_skill` VALUES (17,28,3);
INSERT INTO `ldto_user_skill` VALUES (20,16,3);
INSERT INTO `ldto_user_skill` VALUES (20,17,3);
INSERT INTO `ldto_user_skill` VALUES (20,18,3);
INSERT INTO `ldto_user_skill` VALUES (23,5,3);
INSERT INTO `ldto_user_skill` VALUES (23,13,3);
INSERT INTO `ldto_user_skill` VALUES (23,21,3);
INSERT INTO `ldto_user_skill` VALUES (24,7,3);
INSERT INTO `ldto_user_skill` VALUES (148,34,3);
INSERT INTO `ldto_user_skill` VALUES (148,35,3);
INSERT INTO `ldto_user_skill` VALUES (148,36,3);
INSERT INTO `ldto_user_skill` VALUES (148,37,3);
INSERT INTO `ldto_user_skill` VALUES (153,49,3);
INSERT INTO `ldto_user_skill` VALUES (1,12,4);
INSERT INTO `ldto_user_skill` VALUES (7,12,4);
INSERT INTO `ldto_user_skill` VALUES (8,3,4);
INSERT INTO `ldto_user_skill` VALUES (8,12,4);
INSERT INTO `ldto_user_skill` VALUES (17,24,4);
INSERT INTO `ldto_user_skill` VALUES (17,25,4);
INSERT INTO `ldto_user_skill` VALUES (17,26,4);
INSERT INTO `ldto_user_skill` VALUES (148,42,4);
INSERT INTO `ldto_user_skill` VALUES (148,44,4);
INSERT INTO `ldto_user_skill` VALUES (148,45,4);
INSERT INTO `ldto_user_skill` VALUES (153,47,4);
INSERT INTO `ldto_user_skill` VALUES (153,48,4);
/*!40000 ALTER TABLE `ldto_user_skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-25  5:39:50
