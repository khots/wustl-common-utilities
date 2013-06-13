/*L
   Copyright Washington University in St. Louis
   Copyright SemanticBits
   Copyright Persistent Systems
   Copyright Krishagni

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/wustl-common-utilities/LICENSE.txt for details.
L*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cacoresdk
--

CREATE DATABASE IF NOT EXISTS cacoresdk;
USE cacoresdk;

--
-- Definition of table `ADDRESS`
--

DROP TABLE IF EXISTS `ADDRESS`;
CREATE TABLE `ADDRESS` (
  `ID` int(8) NOT NULL,
  `ZIP` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ADDRESS`
--

/*!40000 ALTER TABLE `ADDRESS` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ADDRESS` (`ID`,`ZIP`) VALUES 
 (1,'Zip1'),
 (2,'Zip2'),
 (3,'Zip3'),
 (4,'Zip4'),
 (5,'Zip5');
COMMIT;
/*!40000 ALTER TABLE `ADDRESS` ENABLE KEYS */;


--
-- Definition of table `ALBUM`
--

DROP TABLE IF EXISTS `ALBUM`;
CREATE TABLE `ALBUM` (
  `ID` decimal(8,2) NOT NULL,
  `TITLE` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ALBUM`
--

/*!40000 ALTER TABLE `ALBUM` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ALBUM` (`ID`,`TITLE`) VALUES 
 ('1.00','Venetian Oboe Concertos'),
 ('2.00','The Cello');
COMMIT;
/*!40000 ALTER TABLE `ALBUM` ENABLE KEYS */;


--
-- Definition of table `ALBUM_SONG`
--

DROP TABLE IF EXISTS `ALBUM_SONG`;
CREATE TABLE `ALBUM_SONG` (
  `ALBUM_ID` int(8) NOT NULL,
  `SONG_ID` int(8) NOT NULL,
  PRIMARY KEY  (`ALBUM_ID`,`SONG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ALBUM_SONG`
--

/*!40000 ALTER TABLE `ALBUM_SONG` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ALBUM_SONG` (`ALBUM_ID`,`SONG_ID`) VALUES 
 (1,1),
 (1,2),
 (1,3),
 (1,4),
 (1,5),
 (1,6),
 (2,7),
 (2,8),
 (2,9),
 (2,10),
 (2,11),
 (3,14),
 (4,15),
 (6,17),
 (7,18);
COMMIT;
/*!40000 ALTER TABLE `ALBUM_SONG` ENABLE KEYS */;


--
-- Definition of table `ALL_DATA_TYPE`
--

DROP TABLE IF EXISTS `ALL_DATA_TYPE`;
CREATE TABLE `ALL_DATA_TYPE` (
  `ID` int(8) NOT NULL,
  `INT_VALUE` int(8) default NULL,
  `STRING_VALUE` varchar(50) default NULL,
  `DOUBLE_VALUE` decimal(8,2) default NULL,
  `FLOAT_VALUE` decimal(8,2) default NULL,
  `DATE_VALUE` datetime default NULL,
  `BOOLEAN_VALUE` varchar(1) default NULL,
  `CLOB_VALUE` longtext,
  `CHARACTER_VALUE` char(1) default NULL,
  `LONG_VALUE` decimal(38,0) default NULL,
  `DOUBLE_PRIMITIVE_VALUE` decimal(8,2) default NULL,
  `INT_PRIMITIVE_VALUE` int(8) default NULL,
  `DATE_PRIMITIVE_VALUE` datetime default NULL,
  `STRING_PRIMITIVE_VALUE` varchar(50) default NULL,
  `FLOAT_PRIMITIVE_VALUE` decimal(8,2) default NULL,
  `BOOLEAN_PRIMITIVE_VALUE` varchar(1) default NULL,
  `CHARACTER_PRIMITIVE_VALUE` char(1) default NULL,
  `LONG_PRIMITIVE_VALUE` decimal(38,0) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ALL_DATA_TYPE`
--

/*!40000 ALTER TABLE `ALL_DATA_TYPE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ALL_DATA_TYPE` (`ID`,`INT_VALUE`,`STRING_VALUE`,`DOUBLE_VALUE`,`FLOAT_VALUE`,`DATE_VALUE`,`BOOLEAN_VALUE`,`CLOB_VALUE`,`CHARACTER_VALUE`,`LONG_VALUE`,`DOUBLE_PRIMITIVE_VALUE`,`INT_PRIMITIVE_VALUE`,`DATE_PRIMITIVE_VALUE`,`STRING_PRIMITIVE_VALUE`,`FLOAT_PRIMITIVE_VALUE`,`BOOLEAN_PRIMITIVE_VALUE`,`CHARACTER_PRIMITIVE_VALUE`,`LONG_PRIMITIVE_VALUE`) VALUES 
 (1,-1,',./-+/*&&()||==\'\"%\"!\\','-1.10','1.10','2011-11-11 00:00:00','1','0123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340112340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012','a','1000001','10001.00',11,'2007-10-01 00:00:00','abc','10.01','1','a','1000001'),
 (2,0,'\'Steve\'s Test\'','0.00','222.22','2012-12-12 00:00:00','0','0123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340112340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012','b','1000002','10002.00',12,'2007-10-02 00:00:00','def','10.02','0','b','1000002'),
 (3,1,'~!@#$%^&*()_+-={}|:\"<>?[]\\;\',./-+/*&&()||==\'\"%\"!\\\'','1.10','333.33','2003-03-03 00:00:00','1','0123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340112340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012','c','1000003','10003.00',13,'2007-10-03 00:00:00','ghi','10.03','1','c','1000003'),
 (4,10000,'01234567890123456789012345678901234567890123456789','10000.00','444.44','2004-04-04 00:00:00','0','0123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340112340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012','d','1000004','10004.00',14,'2007-10-04 00:00:00','jkl','10.04','0','d','1000004'),
 (5,5,'String_Value5','555.55','555.55','2005-05-05 00:00:00','1','0123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340112340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012340123456789012','e','1000005','10005.00',15,'2007-10-05 00:00:00','mno','10.05','1','e','1000005');
COMMIT;
/*!40000 ALTER TABLE `ALL_DATA_TYPE` ENABLE KEYS */;


--
-- Definition of table `ALL_DATA_TYPE_STRING_COLL`
--

DROP TABLE IF EXISTS `ALL_DATA_TYPE_STRING_COLL`;
CREATE TABLE `ALL_DATA_TYPE_STRING_COLL` (
  `ALL_DATA_TYPE_ID` int(8) NOT NULL,
  `STRING_VALUE` varchar(50) default NULL,
  KEY `FK_ALL_DATA_TYPE_ALL_DATA_TYPE` (`ALL_DATA_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ALL_DATA_TYPE_STRING_COLL`
--

/*!40000 ALTER TABLE `ALL_DATA_TYPE_STRING_COLL` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ALL_DATA_TYPE_STRING_COLL` (`ALL_DATA_TYPE_ID`,`STRING_VALUE`) VALUES 
 (1,'String_Collection 1'),
 (1,'String_Collection 2'),
 (1,'String_Collection 3');
COMMIT;
/*!40000 ALTER TABLE `ALL_DATA_TYPE_STRING_COLL` ENABLE KEYS */;


--
-- Definition of table `ALL_VALIDATION_TYPE`
--

DROP TABLE IF EXISTS `ALL_VALIDATION_TYPE`;
CREATE TABLE `ALL_VALIDATION_TYPE` (
  `ID` int(8) NOT NULL,
  `EMAIL` varchar(50) default NULL,
  `FUTURE` datetime default NULL,
  `LENGTH` varchar(50) default NULL,
  `MAX_NUMERIC` decimal(22,0) default NULL,
  `PAST` datetime default NULL,
  `MAX_STRING` varchar(50) default NULL,
  `MIN_NUMERIC` decimal(22,0) default NULL,
  `MIN_STRING` varchar(50) default NULL,
  `NOT_EMPTY` varchar(50) default NULL,
  `NOT_NULL` varchar(50) default NULL,
  `RANGE_STRING` varchar(50) default NULL,
  `RANGE_NUMERIC` decimal(22,0) default NULL,
  `PATTERN` varchar(50) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `sys_c0068335` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ALL_VALIDATION_TYPE`
--

/*!40000 ALTER TABLE `ALL_VALIDATION_TYPE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ALL_VALIDATION_TYPE` (`ID`,`EMAIL`,`FUTURE`,`LENGTH`,`MAX_NUMERIC`,`PAST`,`MAX_STRING`,`MIN_NUMERIC`,`MIN_STRING`,`NOT_EMPTY`,`NOT_NULL`,`RANGE_STRING`,`RANGE_NUMERIC`,`PATTERN`) VALUES 
 (1,'name@mail.nih.gov','2008-05-15 00:00:00','123','999',NULL,'999','1','1','abc','abc','3','3','cat'),
 (10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asfdasdf'),
 (11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asfdasdf',NULL,'asfdasdf'),
 (12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Invalid Value',NULL,'DEPT');
COMMIT;
/*!40000 ALTER TABLE `ALL_VALIDATION_TYPE` ENABLE KEYS */;


--
-- Definition of table `ASSISTANT`
--

DROP TABLE IF EXISTS `ASSISTANT`;
CREATE TABLE `ASSISTANT` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `PROFESSOR_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_ASSISTANT_PROFESSOR` (`PROFESSOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ASSISTANT`
--

/*!40000 ALTER TABLE `ASSISTANT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ASSISTANT` (`ID`,`NAME`,`PROFESSOR_ID`) VALUES 
 (1,'Assistant_Name1',1),
 (2,'Assistant_Name2',2),
 (3,'Assistant_Name3',3),
 (4,'Assistant_Name4',6),
 (5,'Assistant_Name5',7),
 (6,'Assistant_Name6',7),
 (7,'Assistant_Name7',11),
 (8,'Assistant_Name8',12),
 (9,'Assistant_Name9',12);
COMMIT;
/*!40000 ALTER TABLE `ASSISTANT` ENABLE KEYS */;


--
-- Definition of table `ASSISTANT_PROFESSOR`
--

DROP TABLE IF EXISTS `ASSISTANT_PROFESSOR`;
CREATE TABLE `ASSISTANT_PROFESSOR` (
  `PROFESSOR_ID` int(4) NOT NULL,
  `JOINING_YEAR` int(4) default NULL,
  PRIMARY KEY  (`PROFESSOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ASSISTANT_PROFESSOR`
--

/*!40000 ALTER TABLE `ASSISTANT_PROFESSOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ASSISTANT_PROFESSOR` (`PROFESSOR_ID`,`JOINING_YEAR`) VALUES 
 (11,11),
 (12,12),
 (13,13),
 (14,14),
 (15,15);
COMMIT;
/*!40000 ALTER TABLE `ASSISTANT_PROFESSOR` ENABLE KEYS */;


--
-- Definition of table `ASSOCIATE_PROFESSOR`
--

DROP TABLE IF EXISTS `ASSOCIATE_PROFESSOR`;
CREATE TABLE `ASSOCIATE_PROFESSOR` (
  `PROFESSOR_ID` int(8) NOT NULL,
  `YEARS_SERVED` int(4) default NULL,
  PRIMARY KEY  (`PROFESSOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ASSOCIATE_PROFESSOR`
--

/*!40000 ALTER TABLE `ASSOCIATE_PROFESSOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ASSOCIATE_PROFESSOR` (`PROFESSOR_ID`,`YEARS_SERVED`) VALUES 
 (6,6),
 (7,7),
 (8,8),
 (9,9),
 (10,10);
COMMIT;
/*!40000 ALTER TABLE `ASSOCIATE_PROFESSOR` ENABLE KEYS */;


--
-- Definition of table `AUTHOR`
--

DROP TABLE IF EXISTS `AUTHOR`;
CREATE TABLE `AUTHOR` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AUTHOR`
--

/*!40000 ALTER TABLE `AUTHOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `AUTHOR` (`ID`,`NAME`) VALUES 
 (1,'Author1'),
 (2,'Author2'),
 (3,'Author3'),
 (4,'Author4'),
 (5,'Author5');
COMMIT;
/*!40000 ALTER TABLE `AUTHOR` ENABLE KEYS */;


--
-- Definition of table `AUTHOR_BOOK`
--

DROP TABLE IF EXISTS `AUTHOR_BOOK`;
CREATE TABLE `AUTHOR_BOOK` (
  `AUTHOR_ID` int(8) NOT NULL,
  `BOOK_ID` int(8) NOT NULL,
  PRIMARY KEY  (`AUTHOR_ID`,`BOOK_ID`),
  KEY `FK_AUTHOR_BOOK_BOOK` (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AUTHOR_BOOK`
--

/*!40000 ALTER TABLE `AUTHOR_BOOK` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `AUTHOR_BOOK` (`AUTHOR_ID`,`BOOK_ID`) VALUES 
 (1,1),
 (2,2),
 (3,3);
COMMIT;
/*!40000 ALTER TABLE `AUTHOR_BOOK` ENABLE KEYS */;


--
-- Definition of table `BAG`
--

DROP TABLE IF EXISTS `BAG`;
CREATE TABLE `BAG` (
  `ID` int(8) NOT NULL,
  `STYLE` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BAG`
--

/*!40000 ALTER TABLE `BAG` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `BAG` (`ID`,`STYLE`) VALUES 
 (1,'Baguettes'),
 (2,'Barrel'),
 (3,'Beach'),
 (4,'Bowler'),
 (5,'Bucket'),
 (6,'Duffel'),
 (7,'Evening'),
 (8,'Flap'),
 (9,'Hobos'),
 (10,'Pochettes'),
 (11,'Satchel');
COMMIT;
/*!40000 ALTER TABLE `BAG` ENABLE KEYS */;


--
-- Definition of table `BAG_HANDLE`
--

DROP TABLE IF EXISTS `BAG_HANDLE`;
CREATE TABLE `BAG_HANDLE` (
  `BAG_ID` int(8) NOT NULL,
  `HANDLE_ID` int(8) NOT NULL,
  PRIMARY KEY  (`BAG_ID`,`HANDLE_ID`),
  UNIQUE KEY `UQ_BAG_HANDLE_BAG_ID` (`BAG_ID`),
  UNIQUE KEY `UQ_BAG_HANDLE_HANDLE_ID` (`HANDLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BAG_HANDLE`
--

/*!40000 ALTER TABLE `BAG_HANDLE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `BAG_HANDLE` (`BAG_ID`,`HANDLE_ID`) VALUES 
 (1,1),
 (2,2),
 (3,3),
 (4,4),
 (5,5),
 (6,6),
 (7,7),
 (8,8),
 (9,9),
 (10,10);
COMMIT;
/*!40000 ALTER TABLE `BAG_HANDLE` ENABLE KEYS */;


--
-- Definition of table `BANK`
--

DROP TABLE IF EXISTS `BANK`;
CREATE TABLE `BANK` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BANK`
--

/*!40000 ALTER TABLE `BANK` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `BANK` (`ID`,`NAME`) VALUES 
 (1,'Bank1'),
 (2,'Bank2'),
 (3,'Bank3'),
 (4,'Bank4');
COMMIT;
/*!40000 ALTER TABLE `BANK` ENABLE KEYS */;


--
-- Definition of table `BOOK`
--

DROP TABLE IF EXISTS `BOOK`;
CREATE TABLE `BOOK` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BOOK`
--

/*!40000 ALTER TABLE `BOOK` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `BOOK` (`ID`,`NAME`) VALUES 
 (1,'Book1'),
 (2,'Book2'),
 (3,'Book3'),
 (4,'Book4'),
 (5,'Book5');
COMMIT;
/*!40000 ALTER TABLE `BOOK` ENABLE KEYS */;


--
-- Definition of table `BRIDE`
--

DROP TABLE IF EXISTS `BRIDE`;
CREATE TABLE `BRIDE` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BRIDE`
--

/*!40000 ALTER TABLE `BRIDE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `BRIDE` (`ID`,`NAME`) VALUES 
 (1,'Bride 1'),
 (2,'Bride 2'),
 (3,'Bride 3'),
 (4,'Bride 4');
COMMIT;
/*!40000 ALTER TABLE `BRIDE` ENABLE KEYS */;


--
-- Definition of table `BRIDE_FATHER_IN_LAW`
--

DROP TABLE IF EXISTS `BRIDE_FATHER_IN_LAW`;
CREATE TABLE `BRIDE_FATHER_IN_LAW` (
  `BRIDE_ID` int(8) NOT NULL,
  `IN_LAW_ID` int(8) NOT NULL,
  PRIMARY KEY  (`BRIDE_ID`,`IN_LAW_ID`),
  UNIQUE KEY `UQ_BRIDE_FATHER_IN_L_BRIDE_ID` (`BRIDE_ID`),
  UNIQUE KEY `UQ_BRIDE_FATHER_IN__IN_LAW_ID` (`IN_LAW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BRIDE_FATHER_IN_LAW`
--

/*!40000 ALTER TABLE `BRIDE_FATHER_IN_LAW` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `BRIDE_FATHER_IN_LAW` (`BRIDE_ID`,`IN_LAW_ID`) VALUES 
 (1,1),
 (2,3);
COMMIT;
/*!40000 ALTER TABLE `BRIDE_FATHER_IN_LAW` ENABLE KEYS */;


--
-- Definition of table `BRIDE_MOTHER_IN_LAW`
--

DROP TABLE IF EXISTS `BRIDE_MOTHER_IN_LAW`;
CREATE TABLE `BRIDE_MOTHER_IN_LAW` (
  `BRIDE_D` int(8) NOT NULL,
  `IN_LAW_ID` int(8) NOT NULL,
  PRIMARY KEY  (`BRIDE_D`,`IN_LAW_ID`),
  UNIQUE KEY `UQ_BRIDE_MOTHER_IN_LA_BRIDE_D` (`BRIDE_D`),
  UNIQUE KEY `UQ_BRIDE_MOTHER_IN__IN_LAW_ID` (`IN_LAW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BRIDE_MOTHER_IN_LAW`
--

/*!40000 ALTER TABLE `BRIDE_MOTHER_IN_LAW` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `BRIDE_MOTHER_IN_LAW` (`BRIDE_D`,`IN_LAW_ID`) VALUES 
 (1,2),
 (3,5);
COMMIT;
/*!40000 ALTER TABLE `BRIDE_MOTHER_IN_LAW` ENABLE KEYS */;


--
-- Definition of table `BUTTON`
--

DROP TABLE IF EXISTS `BUTTON`;
CREATE TABLE `BUTTON` (
  `ID` int(8) NOT NULL,
  `HOLES` int(8) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BUTTON`
--

/*!40000 ALTER TABLE `BUTTON` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `BUTTON` (`ID`,`HOLES`) VALUES 
 (1,2),
 (2,4);
COMMIT;
/*!40000 ALTER TABLE `BUTTON` ENABLE KEYS */;


--
-- Definition of table `CALCULATOR`
--

DROP TABLE IF EXISTS `CALCULATOR`;
CREATE TABLE `CALCULATOR` (
  `ID` int(8) NOT NULL,
  `DISCRIMINATOR` varchar(50) default NULL,
  `BRAND` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CALCULATOR`
--

/*!40000 ALTER TABLE `CALCULATOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CALCULATOR` (`ID`,`DISCRIMINATOR`,`BRAND`) VALUES 
 (1,'financial','NCR'),
 (2,'scientific','Texas Instruments'),
 (3,'graphics','HP');
COMMIT;
/*!40000 ALTER TABLE `CALCULATOR` ENABLE KEYS */;


--
-- Definition of table `CARD`
--

DROP TABLE IF EXISTS `CARD`;
CREATE TABLE `CARD` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `SUIT_ID` int(8) default NULL,
  `IMAGE` longtext,
  PRIMARY KEY  (`ID`),
  KEY `FK_CARD_SUIT` (`SUIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CARD`
--

/*!40000 ALTER TABLE `CARD` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CARD` (`ID`,`NAME`,`SUIT_ID`,`IMAGE`) VALUES 
 (1,'Ace',1,'My Ace'),
 (2,'Two',1,NULL),
 (3,'Three',1,NULL),
 (4,'Four',1,NULL),
 (5,'Five',1,NULL),
 (6,'Six',1,NULL),
 (7,'Seven',1,NULL),
 (8,'Eight',1,NULL),
 (9,'Nine',1,NULL),
 (10,'Ten',1,NULL),
 (11,'Jack',1,NULL),
 (12,'Queen',1,NULL),
 (13,'King',1,NULL),
 (14,'Ace',2,NULL),
 (15,'Two',2,NULL),
 (16,'Three',2,NULL),
 (17,'Four',2,NULL),
 (18,'Five',2,NULL),
 (19,'Six',2,NULL),
 (20,'Seven',2,NULL),
 (21,'Eight',2,NULL),
 (22,'Nine',2,NULL),
 (23,'Ten',2,NULL),
 (24,'Jack',2,NULL),
 (25,'Queen',2,NULL),
 (26,'King',2,NULL),
 (27,'Ace',3,NULL),
 (28,'Two',3,NULL),
 (29,'Three',3,NULL),
 (30,'Four',3,NULL),
 (31,'Five',3,NULL),
 (32,'Six',3,NULL),
 (33,'Seven',3,NULL),
 (34,'Eight',3,NULL),
 (35,'Nine',3,NULL),
 (36,'Ten',3,NULL),
 (37,'Jack',3,NULL),
 (38,'Queen',3,NULL),
 (39,'King',3,NULL),
 (40,'Ace',4,NULL),
 (41,'Two',4,NULL),
 (42,'Three',4,NULL),
 (43,'Four',4,NULL),
 (44,'Five',4,NULL),
 (45,'Six',4,NULL),
 (46,'Seven',4,NULL),
 (47,'Eight',4,NULL),
 (48,'Nine',4,NULL),
 (49,'Ten',4,NULL),
 (50,'Jack',4,NULL),
 (51,'Queen',4,NULL),
 (52,'King',4,NULL),
 (53,'Joker',NULL,NULL);
COMMIT;
/*!40000 ALTER TABLE `CARD` ENABLE KEYS */;


--
-- Definition of table `CASH`
--

DROP TABLE IF EXISTS `CASH`;
CREATE TABLE `CASH` (
  `PAYMENT_ID` int(8) NOT NULL,
  PRIMARY KEY  (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CASH`
--

/*!40000 ALTER TABLE `CASH` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CASH` (`PAYMENT_ID`) VALUES 
 (1),
 (2);
COMMIT;
/*!40000 ALTER TABLE `CASH` ENABLE KEYS */;


--
-- Definition of table `CHAIN`
--

DROP TABLE IF EXISTS `CHAIN`;
CREATE TABLE `CHAIN` (
  `ID` int(8) NOT NULL,
  `METAL` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHAIN`
--

/*!40000 ALTER TABLE `CHAIN` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CHAIN` (`ID`,`METAL`) VALUES 
 (1,'Gold'),
 (2,'Silver'),
 (3,'Bronze');
COMMIT;
/*!40000 ALTER TABLE `CHAIN` ENABLE KEYS */;


--
-- Definition of table `CHAIN_PENDANT`
--

DROP TABLE IF EXISTS `CHAIN_PENDANT`;
CREATE TABLE `CHAIN_PENDANT` (
  `CHAIN_ID` int(8) NOT NULL,
  `PENDANT_ID` int(8) NOT NULL,
  PRIMARY KEY  (`CHAIN_ID`,`PENDANT_ID`),
  UNIQUE KEY `UQ_CHAIN_PENDANT_CHAIN_ID` (`CHAIN_ID`),
  UNIQUE KEY `UQ_CHAIN_PENDANT_PENDANT_ID` (`PENDANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHAIN_PENDANT`
--

/*!40000 ALTER TABLE `CHAIN_PENDANT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CHAIN_PENDANT` (`CHAIN_ID`,`PENDANT_ID`) VALUES 
 (1,1),
 (2,2);
COMMIT;
/*!40000 ALTER TABLE `CHAIN_PENDANT` ENABLE KEYS */;


--
-- Definition of table `CHARACTER_KEY`
--

DROP TABLE IF EXISTS `CHARACTER_KEY`;
CREATE TABLE `CHARACTER_KEY` (
  `ID` char(1) NOT NULL default '',
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHARACTER_KEY`
--

/*!40000 ALTER TABLE `CHARACTER_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CHARACTER_KEY` (`ID`,`NAME`) VALUES 
 ('9','CharacterKey_Name 9'),
 (';','CharacterKey _Name;'),
 ('a','CharacterKey_Name a'),
 ('B','CharacterKey_Name B');
COMMIT;
/*!40000 ALTER TABLE `CHARACTER_KEY` ENABLE KEYS */;


--
-- Definition of table `CHARACTER_PRIMITIVE_KEY`
--

DROP TABLE IF EXISTS `CHARACTER_PRIMITIVE_KEY`;
CREATE TABLE `CHARACTER_PRIMITIVE_KEY` (
  `ID` char(1) NOT NULL default '',
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHARACTER_PRIMITIVE_KEY`
--

/*!40000 ALTER TABLE `CHARACTER_PRIMITIVE_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CHARACTER_PRIMITIVE_KEY` (`ID`,`NAME`) VALUES 
 ('6','Character_Primitive_Key_Name 6'),
 ('d','Character_Primitive_Key_Name d'),
 ('L','Character_Primitive_Key_Name L'),
 ('[','Character_Primitive_Key_Name [');
COMMIT;
/*!40000 ALTER TABLE `CHARACTER_PRIMITIVE_KEY` ENABLE KEYS */;


--
-- Definition of table `CHEF`
--

DROP TABLE IF EXISTS `CHEF`;
CREATE TABLE `CHEF` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `RESTAURANT_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_CHEF_RESTAURANT` (`RESTAURANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHEF`
--

/*!40000 ALTER TABLE `CHEF` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CHEF` (`ID`,`NAME`,`RESTAURANT_ID`) VALUES 
 (1,'Chef1',1),
 (2,'Chef2',2),
 (3,'Chef3',2),
 (4,'Chef4',NULL);
COMMIT;
/*!40000 ALTER TABLE `CHEF` ENABLE KEYS */;


--
-- Definition of table `CHILD`
--

DROP TABLE IF EXISTS `CHILD`;
CREATE TABLE `CHILD` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `FATHER_ID` int(8) default NULL,
  `MOTHER_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `UQ_CHILD_FATHER_ID` (`FATHER_ID`),
  UNIQUE KEY `UQ_CHILD_MOTHER_ID` (`MOTHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHILD`
--

/*!40000 ALTER TABLE `CHILD` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CHILD` (`ID`,`NAME`,`FATHER_ID`,`MOTHER_ID`) VALUES 
 (1,'Child_Name1',1,2),
 (2,'Child_Name2',3,4),
 (3,'Child_Name3',5,NULL),
 (4,'Child_Name4',NULL,6),
 (5,'Child_Name5',NULL,NULL);
COMMIT;
/*!40000 ALTER TABLE `CHILD` ENABLE KEYS */;


--
-- Definition of table `COMPUTER`
--

DROP TABLE IF EXISTS `COMPUTER`;
CREATE TABLE `COMPUTER` (
  `ID` int(8) NOT NULL,
  `TYPE` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COMPUTER`
--

/*!40000 ALTER TABLE `COMPUTER` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `COMPUTER` (`ID`,`TYPE`) VALUES 
 (1,'Computer_Type1'),
 (2,'Computer_Type2'),
 (3,'Computer_Type3'),
 (4,'Computer_Type4'),
 (5,'Computer_Type5');
COMMIT;
/*!40000 ALTER TABLE `COMPUTER` ENABLE KEYS */;


--
-- Definition of table `CREDIT`
--

DROP TABLE IF EXISTS `CREDIT`;
CREATE TABLE `CREDIT` (
  `PAYMENT_ID` int(8) NOT NULL,
  `CARD_NUMBER` varchar(50) default NULL,
  `BANK_ID` int(8) default NULL,
  PRIMARY KEY  (`PAYMENT_ID`),
  KEY `FK_CREDIT_BANK` (`BANK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CREDIT`
--

/*!40000 ALTER TABLE `CREDIT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CREDIT` (`PAYMENT_ID`,`CARD_NUMBER`,`BANK_ID`) VALUES 
 (3,'3',3),
 (4,'4',4);
COMMIT;
/*!40000 ALTER TABLE `CREDIT` ENABLE KEYS */;


--
-- Definition of table `CRT_MONITOR`
--

DROP TABLE IF EXISTS `CRT_MONITOR`;
CREATE TABLE `CRT_MONITOR` (
  `MONITOR_ID` int(8) NOT NULL,
  `REFRESH_RATE` int(8) default NULL,
  PRIMARY KEY  (`MONITOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CRT_MONITOR`
--

/*!40000 ALTER TABLE `CRT_MONITOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CRT_MONITOR` (`MONITOR_ID`,`REFRESH_RATE`) VALUES 
 (1,45);
COMMIT;
/*!40000 ALTER TABLE `CRT_MONITOR` ENABLE KEYS */;

--
-- Definition of table `CURRENCY`
--

DROP TABLE IF EXISTS `CURRENCY`;
CREATE TABLE `CURRENCY` (
  `ID` int(8) NOT NULL,
  `DISCRIMINATOR` varchar(50) default NULL,
  `COUNTRY` varchar(50) default NULL,
  `VALUE` int(8) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CURRENCY`
--

/*!40000 ALTER TABLE `CURRENCY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CURRENCY` (`ID`,`DISCRIMINATOR`,`COUNTRY`,`VALUE`) VALUES 
 (1,'Note','USA',1),
 (2,'Note','Germany',2),
 (3,'Note','Spain',3);
COMMIT;
/*!40000 ALTER TABLE `CURRENCY` ENABLE KEYS */;


--
-- Definition of table `DECK`
--

DROP TABLE IF EXISTS `DECK`;
CREATE TABLE `DECK` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DECK`
--

/*!40000 ALTER TABLE `DECK` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `DECK` (`ID`,`NAME`) VALUES 
 (1,'My Deck 1');
COMMIT;
/*!40000 ALTER TABLE `DECK` ENABLE KEYS */;


--
-- Definition of table `DESIGNER`
--

DROP TABLE IF EXISTS `DESIGNER`;
CREATE TABLE `DESIGNER` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DESIGNER`
--

/*!40000 ALTER TABLE `DESIGNER` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `DESIGNER` (`ID`,`NAME`) VALUES 
 (1,'Gucci'),
 (2,'Prada'),
 (3,'Sergio Rossi');
COMMIT;
/*!40000 ALTER TABLE `DESIGNER` ENABLE KEYS */;


--
-- Definition of table `DESSERT`
--

DROP TABLE IF EXISTS `DESSERT`;
CREATE TABLE `DESSERT` (
  `ID` int(8) NOT NULL,
  `TOPPING` varchar(50) default NULL,
  `FILLING` varchar(50) default NULL,
  `DISCRIMINATOR` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DESSERT`
--

/*!40000 ALTER TABLE `DESSERT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `DESSERT` (`ID`,`TOPPING`,`FILLING`,`DISCRIMINATOR`) VALUES 
 (1,'Peanuts',NULL,'IceCream'),
 (2,'Sprinkles',NULL,'IceCream'),
 (3,NULL,'Apples','Pie'),
 (4,NULL,'Cherries','Pie');
COMMIT;
/*!40000 ALTER TABLE `DESSERT` ENABLE KEYS */;


--
-- Definition of table `DESSERT_UTENSIL`
--

DROP TABLE IF EXISTS `DESSERT_UTENSIL`;
CREATE TABLE `DESSERT_UTENSIL` (
  `DESSERT_ID` int(8) NOT NULL,
  `UTENSIL_ID` int(8) NOT NULL,
  PRIMARY KEY  (`DESSERT_ID`,`UTENSIL_ID`),
  KEY `FK_DESSERT_UTENSIL_UTENSIL` (`UTENSIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DESSERT_UTENSIL`
--

/*!40000 ALTER TABLE `DESSERT_UTENSIL` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `DESSERT_UTENSIL` (`DESSERT_ID`,`UTENSIL_ID`) VALUES 
 (1,1),
 (3,1),
 (2,2),
 (3,2),
 (4,2),
 (1,3),
 (4,3);
COMMIT;
/*!40000 ALTER TABLE `DESSERT_UTENSIL` ENABLE KEYS */;


--
-- Definition of table `DISPLAY`
--

DROP TABLE IF EXISTS `DISPLAY`;
CREATE TABLE `DISPLAY` (
  `ID` int(8) NOT NULL,
  `WIDTH` int(8) default NULL,
  `HEIGHT` int(8) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DISPLAY`
--

/*!40000 ALTER TABLE `DISPLAY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `DISPLAY` (`ID`,`WIDTH`,`HEIGHT`) VALUES 
 (1,1,1),
 (2,2,2),
 (3,3,3),
 (4,4,4),
 (5,5,5);
COMMIT;
/*!40000 ALTER TABLE `DISPLAY` ENABLE KEYS */;


--
-- Definition of table `DOG`
--

DROP TABLE IF EXISTS `DOG`;
CREATE TABLE `DOG` (
  `ID` int(8) NOT NULL,
  `BREED` varchar(50) default NULL,
  `GENDER` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DOG`
--

/*!40000 ALTER TABLE `DOG` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `DOG` (`ID`,`BREED`,`GENDER`) VALUES 
 (1,'Poodle','Male'),
 (2,'Chihuahua','Female'),
 (3,'St. Bernard','Male');
COMMIT;
/*!40000 ALTER TABLE `DOG` ENABLE KEYS */;


--
-- Definition of table `DOUBLE_KEY`
--

DROP TABLE IF EXISTS `DOUBLE_KEY`;
CREATE TABLE `DOUBLE_KEY` (
  `ID` decimal(8,2) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DOUBLE_KEY`
--

/*!40000 ALTER TABLE `DOUBLE_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `DOUBLE_KEY` (`ID`,`NAME`) VALUES 
 ('1.10','Double_Key_Name1.1'),
 ('2.20','Double_Key_Name2.2'),
 ('3.30','Double_Key_Name3.3'),
 ('4.40','Double_Key_Name4.4'),
 ('5.50','Double_Key_Name5.5');
COMMIT;
/*!40000 ALTER TABLE `DOUBLE_KEY` ENABLE KEYS */;


--
-- Definition of table `DOUBLE_PRIMITIVE_KEY`
--

DROP TABLE IF EXISTS `DOUBLE_PRIMITIVE_KEY`;
CREATE TABLE `DOUBLE_PRIMITIVE_KEY` (
  `ID` decimal(8,2) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DOUBLE_PRIMITIVE_KEY`
--

/*!40000 ALTER TABLE `DOUBLE_PRIMITIVE_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `DOUBLE_PRIMITIVE_KEY` (`ID`,`NAME`) VALUES 
 ('1.10','Double_Primitive_Key 1.1'),
 ('2.20','Double_Primitive_Key 2.2');
COMMIT;
/*!40000 ALTER TABLE `DOUBLE_PRIMITIVE_KEY` ENABLE KEYS */;


--
-- Definition of table `ELEMENT`
--

DROP TABLE IF EXISTS `ELEMENT`;
CREATE TABLE `ELEMENT` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `PARENT_ELEMENT_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `UQ_ELEMENT_PARENT_ELEMENT_ID` (`PARENT_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ELEMENT`
--

/*!40000 ALTER TABLE `ELEMENT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ELEMENT` (`ID`,`NAME`,`PARENT_ELEMENT_ID`) VALUES 
 (1,'Name1',NULL),
 (2,'Name2',1),
 (3,'Element',NULL),
 (4,'Element',NULL);
COMMIT;
/*!40000 ALTER TABLE `ELEMENT` ENABLE KEYS */;


--
-- Definition of table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
CREATE TABLE `EMPLOYEE` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EMPLOYEE`
--

/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `EMPLOYEE` (`ID`,`NAME`) VALUES 
 (1,'Employee_Name1'),
 (2,'Employee_Name2'),
 (3,'Employee_Name3'),
 (4,'Employee_Name4'),
 (5,'Employee_Name5'),
 (6,'Employee_Name6'),
 (7,'Employee_Name7'),
 (8,'Employee_Name8'),
 (9,'Employee_Name9'),
 (10,'Employee_Name10');
COMMIT;
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;


--
-- Definition of table `EMPLOYEE_PROJECT`
--

DROP TABLE IF EXISTS `EMPLOYEE_PROJECT`;
CREATE TABLE `EMPLOYEE_PROJECT` (
  `EMPLOYEE_ID` int(8) NOT NULL,
  `PROJECT_ID` int(8) NOT NULL,
  PRIMARY KEY  (`EMPLOYEE_ID`,`PROJECT_ID`),
  KEY `FK_EMPLOYEE_PROJECT_PROJECT` (`PROJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EMPLOYEE_PROJECT`
--

/*!40000 ALTER TABLE `EMPLOYEE_PROJECT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `EMPLOYEE_PROJECT` (`EMPLOYEE_ID`,`PROJECT_ID`) VALUES 
 (1,1),
 (2,2),
 (3,2),
 (4,4),
 (4,5),
 (6,5);
COMMIT;
/*!40000 ALTER TABLE `EMPLOYEE_PROJECT` ENABLE KEYS */;


--
-- Definition of table `FISH`
--

DROP TABLE IF EXISTS `FISH`;
CREATE TABLE `FISH` (
  `ID` int(8) NOT NULL,
  `GENERA` varchar(50) default NULL,
  `PRIMARY_COLOR` varchar(50) default NULL,
  `FIN_SIZE` int(8) default NULL,
  `DISCRIMINATOR` varchar(50) default NULL,
  `TANK_ID` int(8) default NULL,
  `TANK_DISCRIMINATOR` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FISH`
--

/*!40000 ALTER TABLE `FISH` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `FISH` (`ID`,`GENERA`,`PRIMARY_COLOR`,`FIN_SIZE`,`DISCRIMINATOR`,`TANK_ID`,`TANK_DISCRIMINATOR`) VALUES 
 (1,'Hemichromis','blue',NULL,'DiscusFish',1,'FreshwaterFishTank'),
 (2,'Hemichromis','red',NULL,'DiscusFish',2,'FreshwaterFishTank'),
 (3,'Pterophyllum',NULL,3,'AngelFish',3,'SaltwaterFishTank'),
 (4,'Pterophyllum',NULL,5,'AngelFish',4,'SaltwaterFishTank');
COMMIT;
/*!40000 ALTER TABLE `FISH` ENABLE KEYS */;


--
-- Definition of table `FLIGHT`
--

DROP TABLE IF EXISTS `FLIGHT`;
CREATE TABLE `FLIGHT` (
  `ID` int(8) NOT NULL,
  `DESTINATION` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FLIGHT`
--

/*!40000 ALTER TABLE `FLIGHT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `FLIGHT` (`ID`,`DESTINATION`) VALUES 
 (1,'Baltimore, MD'),
 (2,'San Francisco, CA'),
 (3,'Maui, HI');
COMMIT;
/*!40000 ALTER TABLE `FLIGHT` ENABLE KEYS */;


--
-- Definition of table `FLIGHT_PASSANGER`
--

DROP TABLE IF EXISTS `FLIGHT_PASSANGER`;
CREATE TABLE `FLIGHT_PASSANGER` (
  `FLIGHT_ID` int(8) NOT NULL,
  `PASSANGER_ID` int(8) NOT NULL,
  PRIMARY KEY  (`FLIGHT_ID`,`PASSANGER_ID`),
  KEY `FK_FLIGHT_PASSANGER_PASSANGER` (`PASSANGER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FLIGHT_PASSANGER`
--

/*!40000 ALTER TABLE `FLIGHT_PASSANGER` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `FLIGHT_PASSANGER` (`FLIGHT_ID`,`PASSANGER_ID`) VALUES 
 (1,1),
 (1,2);
COMMIT;
/*!40000 ALTER TABLE `FLIGHT_PASSANGER` ENABLE KEYS */;


--
-- Definition of table `FLOAT_KEY`
--

DROP TABLE IF EXISTS `FLOAT_KEY`;
CREATE TABLE `FLOAT_KEY` (
  `ID` decimal(8,2) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FLOAT_KEY`
--

/*!40000 ALTER TABLE `FLOAT_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `FLOAT_KEY` (`ID`,`NAME`) VALUES 
 ('1.10','Float_Key_Name1.1'),
 ('2.20','Float_Key_Name2.2'),
 ('3.30','Float_Key_Name3.3'),
 ('4.40','Float_Key_Name4.4'),
 ('5.50','Float_Key_Name5.5');
COMMIT;
/*!40000 ALTER TABLE `FLOAT_KEY` ENABLE KEYS */;


--
-- Definition of table `FLOAT_PRIMITIVE_KEY`
--

DROP TABLE IF EXISTS `FLOAT_PRIMITIVE_KEY`;
CREATE TABLE `FLOAT_PRIMITIVE_KEY` (
  `ID` decimal(8,2) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FLOAT_PRIMITIVE_KEY`
--

/*!40000 ALTER TABLE `FLOAT_PRIMITIVE_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `FLOAT_PRIMITIVE_KEY` (`ID`,`NAME`) VALUES 
 ('1.10','Float_Key_Name 1.1'),
 ('2.20','Float_Key_Name 2.2'),
 ('3.30','Float_Key_Name 3.3');
COMMIT;
/*!40000 ALTER TABLE `FLOAT_PRIMITIVE_KEY` ENABLE KEYS */;


--
-- Definition of table `FRESHWATER_FISH_TANK`
--

DROP TABLE IF EXISTS `FRESHWATER_FISH_TANK`;
CREATE TABLE `FRESHWATER_FISH_TANK` (
  `ID` int(8) NOT NULL,
  `SHAPE` varchar(50) default NULL,
  `NUM_GALLONS` int(8) default NULL,
  `FILTER_MODEL` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FRESHWATER_FISH_TANK`
--

/*!40000 ALTER TABLE `FRESHWATER_FISH_TANK` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `FRESHWATER_FISH_TANK` (`ID`,`SHAPE`,`NUM_GALLONS`,`FILTER_MODEL`) VALUES 
 (1,'Rectangular',10,'350B Penguin Bio-Wheel Filter'),
 (2,'Hexagonal',7,'200B Penguin Bio-Wheel Filter');
COMMIT;
/*!40000 ALTER TABLE `FRESHWATER_FISH_TANK` ENABLE KEYS */;


--
-- Definition of table `GOVERMENT`
--

DROP TABLE IF EXISTS `GOVERMENT`;
CREATE TABLE `GOVERMENT` (
  `ID` int(8) NOT NULL,
  `DISCRIMINATOR` varchar(50) default NULL,
  `COUNTRY` varchar(50) default NULL,
  `PRIME_MINISTER` varchar(50) default NULL,
  `PRESIDENT` varchar(50) default NULL,
  `DEMOCRATIC_DISCRIMINATOR` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GOVERMENT`
--

/*!40000 ALTER TABLE `GOVERMENT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `GOVERMENT` (`ID`,`DISCRIMINATOR`,`COUNTRY`,`PRIME_MINISTER`,`PRESIDENT`,`DEMOCRATIC_DISCRIMINATOR`) VALUES 
 (1,'PresidentialGovt','USA',NULL,'George W. Bush',NULL),
 (2,'ParliamantaryGovt','England','Tony Blair',NULL,NULL),
 (3,'CommunistGovt','Cuba',NULL,NULL,NULL);
COMMIT;
/*!40000 ALTER TABLE `GOVERMENT` ENABLE KEYS */;


--
-- Definition of table `GRADUATE_STUDENT`
--

DROP TABLE IF EXISTS `GRADUATE_STUDENT`;
CREATE TABLE `GRADUATE_STUDENT` (
  `STUDENT_ID` int(8) NOT NULL,
  `PROJECT_NAME` varchar(50) default NULL,
  PRIMARY KEY  (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GRADUATE_STUDENT`
--

/*!40000 ALTER TABLE `GRADUATE_STUDENT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `GRADUATE_STUDENT` (`STUDENT_ID`,`PROJECT_NAME`) VALUES 
 (6,'Project_Name6'),
 (7,'Project_Name7'),
 (8,'Project_Name8'),
 (9,'Project_Name9'),
 (10,'Project_Name10');
COMMIT;
/*!40000 ALTER TABLE `GRADUATE_STUDENT` ENABLE KEYS */;


--
-- Definition of table `GRAPHIC_CALCULATOR`
--

DROP TABLE IF EXISTS `GRAPHIC_CALCULATOR`;
CREATE TABLE `GRAPHIC_CALCULATOR` (
  `CALCULATOR_ID` int(8) NOT NULL,
  PRIMARY KEY  (`CALCULATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GRAPHIC_CALCULATOR`
--

/*!40000 ALTER TABLE `GRAPHIC_CALCULATOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `GRAPHIC_CALCULATOR` (`CALCULATOR_ID`) VALUES 
 (3);
COMMIT;
/*!40000 ALTER TABLE `GRAPHIC_CALCULATOR` ENABLE KEYS */;


--
-- Definition of table `HAND`
--

DROP TABLE IF EXISTS `HAND`;
CREATE TABLE `HAND` (
  `ID` int(8) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HAND`
--

/*!40000 ALTER TABLE `HAND` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `HAND` (`ID`) VALUES 
 (1),
 (2),
 (3),
 (4),
 (5);
COMMIT;
/*!40000 ALTER TABLE `HAND` ENABLE KEYS */;


--
-- Definition of table `HAND_CARD`
--

DROP TABLE IF EXISTS `HAND_CARD`;
CREATE TABLE `HAND_CARD` (
  `HAND_ID` int(8) NOT NULL,
  `CARD_ID` int(8) NOT NULL,
  PRIMARY KEY  (`HAND_ID`,`CARD_ID`),
  KEY `FK_HAND_CARD_CARD` (`CARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HAND_CARD`
--

/*!40000 ALTER TABLE `HAND_CARD` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `HAND_CARD` (`HAND_ID`,`CARD_ID`) VALUES 
 (1,1),
 (2,2),
 (2,3),
 (2,5),
 (3,6),
 (3,14),
 (3,15),
 (1,25),
 (4,26),
 (4,27),
 (4,30),
 (5,39),
 (5,40),
 (5,41),
 (1,52);
COMMIT;
/*!40000 ALTER TABLE `HAND_CARD` ENABLE KEYS */;


--
-- Definition of table `HANDLE`
--

DROP TABLE IF EXISTS `HANDLE`;
CREATE TABLE `HANDLE` (
  `ID` int(8) NOT NULL,
  `COLOR` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HANDLE`
--

/*!40000 ALTER TABLE `HANDLE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `HANDLE` (`ID`,`COLOR`) VALUES 
 (1,'Black'),
 (2,'Brown'),
 (3,'Blue'),
 (4,'White'),
 (5,'Red'),
 (6,'Yellow'),
 (7,'Green'),
 (8,'Beige'),
 (9,'Purple'),
 (10,'Orange'),
 (11,'Teal'),
 (12,'Burgundy');
COMMIT;
/*!40000 ALTER TABLE `HANDLE` ENABLE KEYS */;


--
-- Definition of table `HARD_DRIVE`
--

DROP TABLE IF EXISTS `HARD_DRIVE`;
CREATE TABLE `HARD_DRIVE` (
  `ID` int(8) NOT NULL,
  `DRIVE_SIZE` int(8) default NULL,
  `COMPUTER_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_HARD_DRIVE_COMPUTER` (`COMPUTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HARD_DRIVE`
--

/*!40000 ALTER TABLE `HARD_DRIVE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `HARD_DRIVE` (`ID`,`DRIVE_SIZE`,`COMPUTER_ID`) VALUES 
 (1,1,1),
 (2,2,2),
 (3,3,2);
COMMIT;
/*!40000 ALTER TABLE `HARD_DRIVE` ENABLE KEYS */;


--
-- Definition of table `HI_VALUE`
--

DROP TABLE IF EXISTS `HI_VALUE`;
CREATE TABLE `HI_VALUE` (
  `NEXT_VALUE` decimal(22,0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HI_VALUE`
--

/*!40000 ALTER TABLE `HI_VALUE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `HI_VALUE` (`NEXT_VALUE`) VALUES 
 ('8');
COMMIT;
/*!40000 ALTER TABLE `HI_VALUE` ENABLE KEYS */;


--
-- Definition of table `HL7_DATA_TYPE`
--

DROP TABLE IF EXISTS `HL7_DATA_TYPE`;
CREATE TABLE `HL7_DATA_TYPE` (
  `ID` int(8) NOT NULL,
  `ROOT` varchar(50) default NULL,
  `EXTENSION` varchar(50) default NULL,
  `XML` varchar(512) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HL7_DATA_TYPE`
--

/*!40000 ALTER TABLE `HL7_DATA_TYPE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `HL7_DATA_TYPE` (`ID`,`ROOT`,`EXTENSION`,`XML`) VALUES 
 (1,'My Root','My Ext',NULL),
 (2,'My Root 2','My Ext 2',NULL);
COMMIT;
/*!40000 ALTER TABLE `HL7_DATA_TYPE` ENABLE KEYS */;


--
-- Definition of table `HUMAN`
--

DROP TABLE IF EXISTS `HUMAN`;
CREATE TABLE `HUMAN` (
  `MAMMAL_ID` int(8) NOT NULL,
  `DIET` varchar(50) default NULL,
  PRIMARY KEY  (`MAMMAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HUMAN`
--

/*!40000 ALTER TABLE `HUMAN` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `HUMAN` (`MAMMAL_ID`,`DIET`) VALUES 
 (1,'DIET1'),
 (2,'DIET2'),
 (3,'DIET3'),
 (4,'DIET4');
COMMIT;
/*!40000 ALTER TABLE `HUMAN` ENABLE KEYS */;


--
-- Definition of table `IN_LAW`
--

DROP TABLE IF EXISTS `IN_LAW`;
CREATE TABLE `IN_LAW` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `IN_LAW`
--

/*!40000 ALTER TABLE `IN_LAW` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `IN_LAW` (`ID`,`NAME`) VALUES 
 (1,' Father-in-Law Bride 1'),
 (2,'Mother-in-Law Bride 1'),
 (3,'Father-in-Law Bride 2'),
 (5,'Mother-in-Law Bride 3');
COMMIT;
/*!40000 ALTER TABLE `IN_LAW` ENABLE KEYS */;


--
-- Definition of table `INTEGER_KEY`
--

DROP TABLE IF EXISTS `INTEGER_KEY`;
CREATE TABLE `INTEGER_KEY` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `INTEGER_KEY`
--

/*!40000 ALTER TABLE `INTEGER_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `INTEGER_KEY` (`ID`,`NAME`) VALUES 
 (1,'Integer_Key_Name1'),
 (2,'Integer_Key_Name2'),
 (3,'Integer_Key_Name3'),
 (4,'Integer_Key_Name4'),
 (5,'Integer_Key_Name5');
COMMIT;
/*!40000 ALTER TABLE `INTEGER_KEY` ENABLE KEYS */;


--
-- Definition of table `INTEGER_PRIMITIVE_KEY`
--

DROP TABLE IF EXISTS `INTEGER_PRIMITIVE_KEY`;
CREATE TABLE `INTEGER_PRIMITIVE_KEY` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `INTEGER_PRIMITIVE_KEY`
--

/*!40000 ALTER TABLE `INTEGER_PRIMITIVE_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `INTEGER_PRIMITIVE_KEY` (`ID`,`NAME`) VALUES 
 (1,'Integer_Primitive_Key_Name 1'),
 (2,'Integer_Primitive_Key_Name 2');
COMMIT;
/*!40000 ALTER TABLE `INTEGER_PRIMITIVE_KEY` ENABLE KEYS */;

--
-- Definition of table `KEYCHAIN`
--

DROP TABLE IF EXISTS `KEYCHAIN`;
CREATE TABLE `KEYCHAIN` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `KEYCHAIN`
--

/*!40000 ALTER TABLE `KEYCHAIN` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `KEYCHAIN` (`ID`,`NAME`) VALUES 
 (1,'Keychain_Name1'),
 (2,'Keychain_Name2'),
 (3,'Keychain_Name3'),
 (4,'Keychain_Name4'),
 (5,'Keychain_Name5');
COMMIT;
/*!40000 ALTER TABLE `KEYCHAIN` ENABLE KEYS */;

--
-- Definition of table `LATCH_KEY`
--

DROP TABLE IF EXISTS `LATCH_KEY`;
CREATE TABLE `LATCH_KEY` (
  `ID` int(8) NOT NULL,
  `TYPE` varchar(50) default NULL,
  `KEYCHAIN_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_LATCH_KEY_KEYCHAIN` (`KEYCHAIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LATCH_KEY`
--

/*!40000 ALTER TABLE `LATCH_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `LATCH_KEY` (`ID`,`TYPE`,`KEYCHAIN_ID`) VALUES 
 (1,'Key_Type1',1),
 (2,'Key_Type2',2),
 (3,'Key_Type3',2);
COMMIT;
/*!40000 ALTER TABLE `LATCH_KEY` ENABLE KEYS */;


--
-- Definition of table `LCD_MONITOR`
--

DROP TABLE IF EXISTS `LCD_MONITOR`;
CREATE TABLE `LCD_MONITOR` (
  `MONITOR_ID` int(8) NOT NULL,
  `DPI_SUPPORTED` int(8) default NULL,
  PRIMARY KEY  (`MONITOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LCD_MONITOR`
--

/*!40000 ALTER TABLE `LCD_MONITOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `LCD_MONITOR` (`MONITOR_ID`,`DPI_SUPPORTED`) VALUES 
 (2,2323),
 (3,1212);
COMMIT;
/*!40000 ALTER TABLE `LCD_MONITOR` ENABLE KEYS */;


--
-- Definition of table `LOG_MESSAGE`
--

DROP TABLE IF EXISTS `LOG_MESSAGE`;
CREATE TABLE `LOG_MESSAGE` (
  `LOG_ID` bigint(200) NOT NULL auto_increment,
  `APPLICATION` varchar(25) default NULL,
  `SERVER` varchar(50) default NULL,
  `CATEGORY` varchar(255) default NULL,
  `THREAD` varchar(255) default NULL,
  `USERNAME` varchar(255) default NULL,
  `SESSION_ID` varchar(255) default NULL,
  `MSG` text,
  `THROWABLE` text,
  `NDC` text,
  `CREATED_ON` bigint(20) NOT NULL default '0',
  `OBJECT_ID` varchar(255) default NULL,
  `OBJECT_NAME` varchar(255) default NULL,
  `ORGANIZATION` varchar(255) default NULL,
  `OPERATION` varchar(50) default NULL,
  PRIMARY KEY  (`LOG_ID`),
  KEY `APPLICATION_LOGTAB_INDX` (`APPLICATION`),
  KEY `SERVER_LOGTAB_INDX` (`SERVER`),
  KEY `THREAD_LOGTAB_INDX` (`THREAD`),
  KEY `CREATED_ON_LOGTAB_INDX` (`CREATED_ON`),
  KEY `LOGID_LOGTAB_INDX` (`LOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1883 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LOG_MESSAGE`
--

/*!40000 ALTER TABLE `LOG_MESSAGE` DISABLE KEYS */;
-- SET AUTOCOMMIT=0;
-- INSERT INTO `LOG_MESSAGE` (`LOG_ID`,`APPLICATION`,`SERVER`,`CATEGORY`,`THREAD`,`USERNAME`,`SESSION_ID`,`MSG`,`THROWABLE`,`NDC`,`CREATED_ON`,`OBJECT_ID`,`OBJECT_NAME`,`ORGANIZATION`,`OPERATION`) VALUES 
-- (1357,'example','Dan-PC','INFO','http-8080-Processor22','user1','','Successful Login attempt for user user1','','',1214592986727,'','','','');
-- COMMIT;
/*!40000 ALTER TABLE `LOG_MESSAGE` ENABLE KEYS */;


--
-- Definition of table `LONG_KEY`
--

DROP TABLE IF EXISTS `LONG_KEY`;
CREATE TABLE `LONG_KEY` (
  `ID` decimal(38,0) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LONG_KEY`
--

/*!40000 ALTER TABLE `LONG_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `LONG_KEY` (`ID`,`NAME`) VALUES 
 ('1234567890987650000','Long_Key_NAME 1234567890987654321');
COMMIT;
/*!40000 ALTER TABLE `LONG_KEY` ENABLE KEYS */;


--
-- Definition of table `LONG_PRIMITIVE_KEY`
--

DROP TABLE IF EXISTS `LONG_PRIMITIVE_KEY`;
CREATE TABLE `LONG_PRIMITIVE_KEY` (
  `ID` decimal(38,0) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LONG_PRIMITIVE_KEY`
--

/*!40000 ALTER TABLE `LONG_PRIMITIVE_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `LONG_PRIMITIVE_KEY` (`ID`,`NAME`) VALUES 
 ('987654321234568000','Long_Primitive_Key_NAME 987654321234567890');
COMMIT;
/*!40000 ALTER TABLE `LONG_PRIMITIVE_KEY` ENABLE KEYS */;


--
-- Definition of table `LUGGAGE`
--

DROP TABLE IF EXISTS `LUGGAGE`;
CREATE TABLE `LUGGAGE` (
  `ID` int(8) NOT NULL,
  `DISCRIMINATOR` varchar(50) default NULL,
  `CAPACITY` int(8) default NULL,
  `KEY_CODE` int(8) default NULL,
  `EXPANDABLE` varchar(1) default NULL,
  `WHEEL_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_LUGGAGE_WHEEL` (`WHEEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LUGGAGE`
--

/*!40000 ALTER TABLE `LUGGAGE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `LUGGAGE` (`ID`,`DISCRIMINATOR`,`CAPACITY`,`KEY_CODE`,`EXPANDABLE`,`WHEEL_ID`) VALUES 
 (1,'HardTop',75,627,NULL,1),
 (2,'HardTop',75,985,NULL,3),
 (3,'SoftTop',55,NULL,'1',1),
 (4,'SoftTop',35,NULL,'0',2),
 (5,'HardTopType',100,890,NULL,1);
COMMIT;
/*!40000 ALTER TABLE `LUGGAGE` ENABLE KEYS */;


--
-- Definition of table `MAMMAL`
--

DROP TABLE IF EXISTS `MAMMAL`;
CREATE TABLE `MAMMAL` (
  `ID` int(8) NOT NULL,
  `HAIR_COLOR` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MAMMAL`
--

/*!40000 ALTER TABLE `MAMMAL` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `MAMMAL` (`ID`,`HAIR_COLOR`) VALUES 
 (1,'Hair_Color1'),
 (2,'Hair_Color2'),
 (3,'Hair_Color3'),
 (4,'Hair_Color4'),
 (5,'Hair_Color5');
COMMIT;
/*!40000 ALTER TABLE `MAMMAL` ENABLE KEYS */;


--
-- Definition of table `MONITOR`
--

DROP TABLE IF EXISTS `MONITOR`;
CREATE TABLE `MONITOR` (
  `DISPLAY_ID` int(8) NOT NULL,
  `BRAND` varchar(50) default NULL,
  PRIMARY KEY  (`DISPLAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MONITOR`
--

/*!40000 ALTER TABLE `MONITOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `MONITOR` (`DISPLAY_ID`,`BRAND`) VALUES 
 (1,'A'),
 (2,'B'),
 (3,'C'),
 (4,'D');
COMMIT;
/*!40000 ALTER TABLE `MONITOR` ENABLE KEYS */;


--
-- Definition of table `NO_ID_KEY`
--

DROP TABLE IF EXISTS `NO_ID_KEY`;
CREATE TABLE `NO_ID_KEY` (
  `MY_KEY` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`MY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NO_ID_KEY`
--

/*!40000 ALTER TABLE `NO_ID_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `NO_ID_KEY` (`MY_KEY`,`NAME`) VALUES 
 (1,'NoIdKey 1'),
 (2,'NoIdKey 2');
COMMIT;
/*!40000 ALTER TABLE `NO_ID_KEY` ENABLE KEYS */;


--
-- Definition of table `OBJECT_ATTRIBUTE`
--

DROP TABLE IF EXISTS `OBJECT_ATTRIBUTE`;
CREATE TABLE `OBJECT_ATTRIBUTE` (
  `OBJECT_ATTRIBUTE_ID` bigint(200) NOT NULL auto_increment,
  `CURRENT_VALUE` varchar(255) default NULL,
  `PREVIOUS_VALUE` varchar(255) default NULL,
  `ATTRIBUTE` varchar(255) NOT NULL,
  PRIMARY KEY  (`OBJECT_ATTRIBUTE_ID`),
  KEY `OAID_INDX` (`OBJECT_ATTRIBUTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OBJECT_ATTRIBUTE`
--

/*!40000 ALTER TABLE `OBJECT_ATTRIBUTE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
COMMIT;
/*!40000 ALTER TABLE `OBJECT_ATTRIBUTE` ENABLE KEYS */;


--
-- Definition of table `OBJECTATTRIBUTES`
--

DROP TABLE IF EXISTS `OBJECTATTRIBUTES`;
CREATE TABLE `OBJECTATTRIBUTES` (
  `LOG_ID` bigint(200) NOT NULL default '0',
  `OBJECT_ATTRIBUTE_ID` bigint(200) NOT NULL default '0',
  KEY `Index_2` (`LOG_ID`),
  KEY `FK_OBJECTATTRIBUTES_2` (`OBJECT_ATTRIBUTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OBJECTATTRIBUTES`
--

/*!40000 ALTER TABLE `OBJECTATTRIBUTES` DISABLE KEYS */;
SET AUTOCOMMIT=0;
COMMIT;
/*!40000 ALTER TABLE `OBJECTATTRIBUTES` ENABLE KEYS */;


--
-- Definition of table `ORDERLINE`
--

DROP TABLE IF EXISTS `ORDERLINE`;
CREATE TABLE `ORDERLINE` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ORDERLINE`
--

/*!40000 ALTER TABLE `ORDERLINE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ORDERLINE` (`ID`,`NAME`) VALUES 
 (1,'Orderline_Name1'),
 (2,'Orderline_Name2'),
 (3,'Orderline_Name3'),
 (4,'Orderline_Name4'),
 (5,'Orderline_Name5');
COMMIT;
/*!40000 ALTER TABLE `ORDERLINE` ENABLE KEYS */;


--
-- Definition of table `ORGANIZATION`
--

DROP TABLE IF EXISTS `ORGANIZATION`;
CREATE TABLE `ORGANIZATION` (
  `ID` int(8) NOT NULL,
  `DISCRIMINATOR` varchar(50) default NULL,
  `NAME` varchar(50) default NULL,
  `AGENCY_BUDGET` int(8) default NULL,
  `CEO` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ORGANIZATION`
--

/*!40000 ALTER TABLE `ORGANIZATION` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `ORGANIZATION` (`ID`,`DISCRIMINATOR`,`NAME`,`AGENCY_BUDGET`,`CEO`) VALUES 
 (1,'govt','Public Org Name',1000,NULL),
 (2,'pvt','Private Org Name',NULL,'Private CEO Name');
COMMIT;
/*!40000 ALTER TABLE `ORGANIZATION` ENABLE KEYS */;


--
-- Definition of table `PARENT`
--

DROP TABLE IF EXISTS `PARENT`;
CREATE TABLE `PARENT` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PARENT`
--

/*!40000 ALTER TABLE `PARENT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PARENT` (`ID`,`NAME`) VALUES 
 (1,'Parent_Name1'),
 (2,'Parent_Name2'),
 (3,'Parent_Name3'),
 (4,'Parent_Name4'),
 (5,'Parent_Name5'),
 (6,'Parent_Name6'),
 (7,'Parent_Name7'),
 (8,'Parent_Name8'),
 (9,'Parent_Name9'),
 (10,'Parent_Name10');
COMMIT;
/*!40000 ALTER TABLE `PARENT` ENABLE KEYS */;


--
-- Definition of table `PASSANGER`
--

DROP TABLE IF EXISTS `PASSANGER`;
CREATE TABLE `PASSANGER` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PASSANGER`
--

/*!40000 ALTER TABLE `PASSANGER` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PASSANGER` (`ID`,`NAME`) VALUES 
 (1,'John Doe'),
 (2,'Jane Doe');
COMMIT;
/*!40000 ALTER TABLE `PASSANGER` ENABLE KEYS */;


--
-- Definition of table `PAYMENT`
--

DROP TABLE IF EXISTS `PAYMENT`;
CREATE TABLE `PAYMENT` (
  `ID` int(8) NOT NULL,
  `AMOUNT` int(8) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PAYMENT`
--

/*!40000 ALTER TABLE `PAYMENT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PAYMENT` (`ID`,`AMOUNT`) VALUES 
 (1,1),
 (2,2),
 (3,3),
 (4,4),
 (5,5);
COMMIT;
/*!40000 ALTER TABLE `PAYMENT` ENABLE KEYS */;


--
-- Definition of table `PENDANT`
--

DROP TABLE IF EXISTS `PENDANT`;
CREATE TABLE `PENDANT` (
  `ID` int(8) NOT NULL,
  `SHAPE` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PENDANT`
--

/*!40000 ALTER TABLE `PENDANT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PENDANT` (`ID`,`SHAPE`) VALUES 
 (1,'Circle Pearl'),
 (2,'Heart Opal'),
 (3,'Oval Carnelian Shell Cameo');
COMMIT;
/*!40000 ALTER TABLE `PENDANT` ENABLE KEYS */;


--
-- Definition of table `PERSON`
--

DROP TABLE IF EXISTS `PERSON`;
CREATE TABLE `PERSON` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `ADDRESS_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `UQ_PERSON_ADDRESS_ID` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PERSON`
--

/*!40000 ALTER TABLE `PERSON` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PERSON` (`ID`,`NAME`,`ADDRESS_ID`) VALUES 
 (1,'Person_Name1',1),
 (2,'Person_Name2',2),
 (3,'Person_Name3',3),
 (4,'Person_Name4',NULL),
 (5,'Person_Name5',NULL);
COMMIT;
/*!40000 ALTER TABLE `PERSON` ENABLE KEYS */;

--
-- Definition of table `PRIVATE_TEACHER`
--

DROP TABLE IF EXISTS `PRIVATE_TEACHER`;
CREATE TABLE `PRIVATE_TEACHER` (
  `TEACHER_ID` int(4) NOT NULL,
  `YEARS_EXPERIENCE` int(4) default NULL,
  PRIMARY KEY  (`TEACHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PRIVATE_TEACHER`
--

/*!40000 ALTER TABLE `PRIVATE_TEACHER` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PRIVATE_TEACHER` (`TEACHER_ID`,`YEARS_EXPERIENCE`) VALUES 
 (1,5),
 (2,10),
 (3,15);
COMMIT;
/*!40000 ALTER TABLE `PRIVATE_TEACHER` ENABLE KEYS */;


--
-- Definition of table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
CREATE TABLE `PRODUCT` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `ORDERLINE_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `UQ_PRODUCT_ORDERLINE_ID` (`ORDERLINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PRODUCT`
--

/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PRODUCT` (`ID`,`NAME`,`ORDERLINE_ID`) VALUES 
 (1,'Product_Name1',1),
 (2,'Product_Name2',2),
 (3,'Product_Name3',NULL);
COMMIT;
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;


--
-- Definition of table `PROFESSOR`
--

DROP TABLE IF EXISTS `PROFESSOR`;
CREATE TABLE `PROFESSOR` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PROFESSOR`
--

/*!40000 ALTER TABLE `PROFESSOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PROFESSOR` (`ID`,`NAME`) VALUES 
 (1,'Professor_Name1'),
 (2,'Professor_Name2'),
 (3,'Professor_Name3'),
 (4,'Professor_Name4'),
 (5,'Professor_Name5'),
 (6,'Professor_Name6'),
 (7,'Professor_Name7'),
 (8,'Professor_Name8'),
 (9,'Professor_Name9'),
 (10,'Professor_Name10'),
 (11,'Professor_Name11'),
 (12,'Professor_Name12'),
 (13,'Professor_Name13'),
 (14,'Professor_Name14'),
 (15,'Professor_Name15');
COMMIT;
/*!40000 ALTER TABLE `PROFESSOR` ENABLE KEYS */;


--
-- Definition of table `PROJECT`
--

DROP TABLE IF EXISTS `PROJECT`;
CREATE TABLE `PROJECT` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PROJECT`
--

/*!40000 ALTER TABLE `PROJECT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PROJECT` (`ID`,`NAME`) VALUES 
 (1,'Project_Name1'),
 (2,'Project_Name2'),
 (3,'Project_Name3'),
 (4,'Project_Name4'),
 (5,'Project_Name5'),
 (6,'Project_Name6'),
 (7,'Project_Name7'),
 (8,'Project_Name8'),
 (9,'Project_Name9'),
 (10,'Project_Name10');
COMMIT;
/*!40000 ALTER TABLE `PROJECT` ENABLE KEYS */;


--
-- Definition of table `PUPIL`
--

DROP TABLE IF EXISTS `PUPIL`;
CREATE TABLE `PUPIL` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `TEACHER_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_PUPIL_TEACHER` (`TEACHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PUPIL`
--

/*!40000 ALTER TABLE `PUPIL` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `PUPIL` (`ID`,`NAME`,`TEACHER_ID`) VALUES 
 (1,'Pupil_Name_1',1),
 (2,'Pupil_Name_2',1),
 (3,'Pupil_Name_3',3),
 (4,'Pupil_Name_4',3);
COMMIT;
/*!40000 ALTER TABLE `PUPIL` ENABLE KEYS */;

--
-- Definition of table `RESTAURANT`
--

DROP TABLE IF EXISTS `RESTAURANT`;
CREATE TABLE `RESTAURANT` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RESTAURANT`
--

/*!40000 ALTER TABLE `RESTAURANT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `RESTAURANT` (`ID`,`NAME`) VALUES 
 (1,'Rest1'),
 (2,'Rest2'),
 (3,'Rest3'),
 (4,'Rest4'),
 (5,'Rest5');
COMMIT;
/*!40000 ALTER TABLE `RESTAURANT` ENABLE KEYS */;


--
-- Definition of table `SALTWATER_FISH_TANK`
--

DROP TABLE IF EXISTS `SALTWATER_FISH_TANK`;
CREATE TABLE `SALTWATER_FISH_TANK` (
  `ID` int(8) NOT NULL,
  `SHAPE` varchar(50) default NULL,
  `NUM_GALLONS` int(8) default NULL,
  `PROTEIN_SKIMMER_MODEL` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SALTWATER_FISH_TANK`
--

/*!40000 ALTER TABLE `SALTWATER_FISH_TANK` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `SALTWATER_FISH_TANK` (`ID`,`SHAPE`,`NUM_GALLONS`,`PROTEIN_SKIMMER_MODEL`) VALUES 
 (3,'Rectangular',60,'Berlin X2 Turbo Skimmer'),
 (4,'Hexagonal',20,'Prizm Pro Deluxe Skimmer');
COMMIT;
/*!40000 ALTER TABLE `SALTWATER_FISH_TANK` ENABLE KEYS */;


--
-- Definition of table `SALTWATER_FISH_TANK_SUBSTRATE`
--

DROP TABLE IF EXISTS `SALTWATER_FISH_TANK_SUBSTRATE`;
CREATE TABLE `SALTWATER_FISH_TANK_SUBSTRATE` (
  `SALTWATER_FISH_TANK_ID` int(8) NOT NULL,
  `SUBSTRATE_ID` int(8) NOT NULL,
  PRIMARY KEY  (`SALTWATER_FISH_TANK_ID`,`SUBSTRATE_ID`),
  KEY `FK_SWFT_SUBSTRATE_SUBSTRATE` (`SUBSTRATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SALTWATER_FISH_TANK_SUBSTRATE`
--

/*!40000 ALTER TABLE `SALTWATER_FISH_TANK_SUBSTRATE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `SALTWATER_FISH_TANK_SUBSTRATE` (`SALTWATER_FISH_TANK_ID`,`SUBSTRATE_ID`) VALUES 
 (3,1),
 (3,2),
 (4,3),
 (4,4);
COMMIT;
/*!40000 ALTER TABLE `SALTWATER_FISH_TANK_SUBSTRATE` ENABLE KEYS */;


--
-- Definition of table `SHIRT`
--

DROP TABLE IF EXISTS `SHIRT`;
CREATE TABLE `SHIRT` (
  `ID` int(8) NOT NULL,
  `STYLE` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SHIRT`
--

/*!40000 ALTER TABLE `SHIRT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `SHIRT` (`ID`,`STYLE`) VALUES 
 (1,'Collar'),
 (2,'Western'),
 (3,'T-Shirt');
COMMIT;
/*!40000 ALTER TABLE `SHIRT` ENABLE KEYS */;


--
-- Definition of table `SHIRT_BUTTON`
--

DROP TABLE IF EXISTS `SHIRT_BUTTON`;
CREATE TABLE `SHIRT_BUTTON` (
  `SHIRT_ID` int(8) NOT NULL,
  `BUTTON_ID` int(8) NOT NULL,
  PRIMARY KEY  (`SHIRT_ID`,`BUTTON_ID`),
  UNIQUE KEY `UQ_SHIRT_BUTTON_SHIRT_ID` (`SHIRT_ID`),
  KEY `FK_SHIRT_BUTTON_BUTTON` (`BUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SHIRT_BUTTON`
--

/*!40000 ALTER TABLE `SHIRT_BUTTON` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `SHIRT_BUTTON` (`SHIRT_ID`,`BUTTON_ID`) VALUES 
 (1,1),
 (2,2);
COMMIT;
/*!40000 ALTER TABLE `SHIRT_BUTTON` ENABLE KEYS */;


--
-- Definition of table `SHOES`
--

DROP TABLE IF EXISTS `SHOES`;
CREATE TABLE `SHOES` (
  `ID` int(8) NOT NULL,
  `DISCRIMINATOR` varchar(50) default NULL,
  `COLOR` varchar(50) default NULL,
  `SPORTS_TYPE` varchar(50) default NULL,
  `DESIGNER_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_SHOES_DESIGNER` (`DESIGNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SHOES`
--

/*!40000 ALTER TABLE `SHOES` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `SHOES` (`ID`,`DISCRIMINATOR`,`COLOR`,`SPORTS_TYPE`,`DESIGNER_ID`) VALUES 
 (1,'DesignerShoes','White',NULL,2),
 (2,'SportsShoes','Red','BasketBall',NULL),
 (3,'DesignerShoes','Black',NULL,3);
COMMIT;
/*!40000 ALTER TABLE `SHOES` ENABLE KEYS */;


--
-- Definition of table `SONG`
--

DROP TABLE IF EXISTS `SONG`;
CREATE TABLE `SONG` (
  `ID` int(8) NOT NULL,
  `TITLE` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SONG`
--

/*!40000 ALTER TABLE `SONG` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `SONG` (`ID`,`TITLE`) VALUES 
 (1,'Albinoni:  Concerto in B Flat, OP. 7 No. 3'),
 (2,'Albinoni:  Concerto in D Major, Op. 7 No. 6'),
 (3,'Marcello:  Concerto in D Minor'),
 (4,'Vivaldi:  Concerto in F Major F VII 2'),
 (5,'Vivaldi:  Concerto in A Minor F VII 5'),
 (6,'Cimarosa/Benjamin:  Concerto in C Minor'),
 (7,'Rubenstein: Melody in F, Op. 3 No. 1'),
 (8,'Schubert: Ave Maria'),
 (9,'Rimsky-Korsakov:  The Flight of the Bumble Bee'),
 (10,'Schumann:  Traumerei'),
 (11,'Dvorak:  Songs My Mother Taught Me'),
 (12,'Saint-Seans:  The Swan');
COMMIT;
/*!40000 ALTER TABLE `SONG` ENABLE KEYS */;


--
-- Definition of table `STRING_KEY`
--

DROP TABLE IF EXISTS `STRING_KEY`;
CREATE TABLE `STRING_KEY` (
  `ID` varchar(50) NOT NULL default '',
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STRING_KEY`
--

/*!40000 ALTER TABLE `STRING_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `STRING_KEY` (`ID`,`NAME`) VALUES 
 ('ID1','String_Key_Name1'),
 ('ID2','String_Key_Name2'),
 ('ID3','String_Key_Name3'),
 ('ID4','String_Key_Name4'),
 ('ID5','String_Key_Name5');
COMMIT;
/*!40000 ALTER TABLE `STRING_KEY` ENABLE KEYS */;


--
-- Definition of table `STRING_PRIMITIVE_KEY`
--

DROP TABLE IF EXISTS `STRING_PRIMITIVE_KEY`;
CREATE TABLE `STRING_PRIMITIVE_KEY` (
  `ID` varchar(50) NOT NULL default '',
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STRING_PRIMITIVE_KEY`
--

/*!40000 ALTER TABLE `STRING_PRIMITIVE_KEY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `STRING_PRIMITIVE_KEY` (`ID`,`NAME`) VALUES 
 ('id1','String_Primitive_Key id1'),
 ('id2','String_Primitive_Key id2');
COMMIT;
/*!40000 ALTER TABLE `STRING_PRIMITIVE_KEY` ENABLE KEYS */;


--
-- Definition of table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
CREATE TABLE `STUDENT` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT`
--

/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `STUDENT` (`ID`,`NAME`) VALUES 
 (1,'Student_Name1'),
 (2,'Student_Name2'),
 (3,'Student_Name3'),
 (4,'Student_Name4'),
 (5,'Student_Name5'),
 (6,'Student_Name6'),
 (7,'Student_Name7'),
 (8,'Student_Name8'),
 (9,'Student_Name9'),
 (10,'Student_Name10');
COMMIT;
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;


--
-- Definition of table `SUBSTRATE`
--

DROP TABLE IF EXISTS `SUBSTRATE`;
CREATE TABLE `SUBSTRATE` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SUBSTRATE`
--

/*!40000 ALTER TABLE `SUBSTRATE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `SUBSTRATE` (`ID`,`NAME`) VALUES 
 (1,'Live Rock'),
 (2,'Sand'),
 (3,'Crushed Coral'),
 (4,'River Pebbles');
COMMIT;
/*!40000 ALTER TABLE `SUBSTRATE` ENABLE KEYS */;

--
-- Definition of table `SUIT`
--

DROP TABLE IF EXISTS `SUIT`;
CREATE TABLE `SUIT` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  `DECK_ID` int(8) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_SUIT_DECK` (`DECK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SUIT`
--

/*!40000 ALTER TABLE `SUIT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `SUIT` (`ID`,`NAME`,`DECK_ID`) VALUES 
 (1,'Spade',1),
 (2,'Flower',1),
 (3,'Diamond',1),
 (4,'Heart',1);
COMMIT;
/*!40000 ALTER TABLE `SUIT` ENABLE KEYS */;


--
-- Definition of table `TANK_ACCESSORY`
--

DROP TABLE IF EXISTS `TANK_ACCESSORY`;
CREATE TABLE `TANK_ACCESSORY` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TANK_ACCESSORY`
--

/*!40000 ALTER TABLE `TANK_ACCESSORY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `TANK_ACCESSORY` (`ID`,`NAME`) VALUES 
 (1,'Filter'),
 (2,'Heater'),
 (3,'Lighting'),
 (4,'Protein Skimmer');
COMMIT;
/*!40000 ALTER TABLE `TANK_ACCESSORY` ENABLE KEYS */;


--
-- Definition of table `TANK_TANK_ACCESSORY`
--

DROP TABLE IF EXISTS `TANK_TANK_ACCESSORY`;
CREATE TABLE `TANK_TANK_ACCESSORY` (
  `TANK_ID` int(8) NOT NULL,
  `TANK_ACCESSORY_ID` int(8) NOT NULL,
  `TANK_DISCRIMINATOR` varchar(50) NOT NULL,
  PRIMARY KEY  (`TANK_ID`,`TANK_ACCESSORY_ID`),
  KEY `FK_TANK_TANK_ACCESSORY` (`TANK_ACCESSORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TANK_TANK_ACCESSORY`
--

/*!40000 ALTER TABLE `TANK_TANK_ACCESSORY` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `TANK_TANK_ACCESSORY` (`TANK_ID`,`TANK_ACCESSORY_ID`,`TANK_DISCRIMINATOR`) VALUES 
 (1,1,'FreshwaterFishTank'),
 (1,2,'FreshwaterFishTank'),
 (2,2,'FreshwaterFishTank'),
 (2,3,'FreshwaterFishTank'),
 (3,1,'SaltwaterFishTank'),
 (3,4,'SaltwaterFishTank'),
 (4,1,'SaltwaterFishTank'),
 (4,2,'SaltwaterFishTank'),
 (4,4,'SaltwaterFishTank');
COMMIT;
/*!40000 ALTER TABLE `TANK_TANK_ACCESSORY` ENABLE KEYS */;


--
-- Definition of table `TEACHER`
--

DROP TABLE IF EXISTS `TEACHER`;
CREATE TABLE `TEACHER` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TEACHER`
--

/*!40000 ALTER TABLE `TEACHER` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `TEACHER` (`ID`,`NAME`) VALUES 
 (1,'Teacher_Name1'),
 (2,'Teacher_Name2'),
 (3,'Teacher_Name3');
COMMIT;
/*!40000 ALTER TABLE `TEACHER` ENABLE KEYS */;


--
-- Definition of table `TENURED_PROFESSOR`
--

DROP TABLE IF EXISTS `TENURED_PROFESSOR`;
CREATE TABLE `TENURED_PROFESSOR` (
  `PROFESSOR_ID` int(8) NOT NULL,
  `TENURED_YEAR` int(4) default NULL,
  PRIMARY KEY  (`PROFESSOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TENURED_PROFESSOR`
--

/*!40000 ALTER TABLE `TENURED_PROFESSOR` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `TENURED_PROFESSOR` (`PROFESSOR_ID`,`TENURED_YEAR`) VALUES 
 (1,1),
 (2,2),
 (3,3),
 (4,4),
 (5,5);
COMMIT;
/*!40000 ALTER TABLE `TENURED_PROFESSOR` ENABLE KEYS */;


--
-- Definition of table `UNDERGRADUATE_STUDENT`
--

DROP TABLE IF EXISTS `UNDERGRADUATE_STUDENT`;
CREATE TABLE `UNDERGRADUATE_STUDENT` (
  `STUDENT_ID` int(8) NOT NULL,
  PRIMARY KEY  (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UNDERGRADUATE_STUDENT`
--

/*!40000 ALTER TABLE `UNDERGRADUATE_STUDENT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `UNDERGRADUATE_STUDENT` (`STUDENT_ID`) VALUES 
 (1),
 (2),
 (3),
 (4),
 (5);
COMMIT;
/*!40000 ALTER TABLE `UNDERGRADUATE_STUDENT` ENABLE KEYS */;


--
-- Definition of table `UTENSIL`
--

DROP TABLE IF EXISTS `UTENSIL`;
CREATE TABLE `UTENSIL` (
  `ID` int(8) NOT NULL,
  `NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UTENSIL`
--

/*!40000 ALTER TABLE `UTENSIL` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `UTENSIL` (`ID`,`NAME`) VALUES 
 (1,'Spoon'),
 (2,'Knife'),
 (3,'Fork');
COMMIT;
/*!40000 ALTER TABLE `UTENSIL` ENABLE KEYS */;


--
-- Definition of table `WHEEL`
--

DROP TABLE IF EXISTS `WHEEL`;
CREATE TABLE `WHEEL` (
  `ID` int(8) NOT NULL,
  `RADIUS` int(8) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `WHEEL`
--

/*!40000 ALTER TABLE `WHEEL` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `WHEEL` (`ID`,`RADIUS`) VALUES 
 (1,1),
 (2,5),
 (3,10);
COMMIT;
/*!40000 ALTER TABLE `WHEEL` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

--
-- Definition of table `CSM_APPLICATION`
--

DROP TABLE IF EXISTS `CSM_APPLICATION`;
CREATE TABLE CSM_APPLICATION ( 
	APPLICATION_ID BIGINT AUTO_INCREMENT  NOT NULL,
	APPLICATION_NAME VARCHAR(255) NOT NULL,
	APPLICATION_DESCRIPTION VARCHAR(200) NOT NULL,
	DECLARATIVE_FLAG BOOL NOT NULL DEFAULT 0,
	ACTIVE_FLAG BOOL NOT NULL DEFAULT 0,
	UPDATE_DATE DATE DEFAULT '0000-00-00',
	DATABASE_URL VARCHAR(100),
	DATABASE_USER_NAME VARCHAR(100),
	DATABASE_PASSWORD VARCHAR(100),
	DATABASE_DIALECT VARCHAR(100),
	DATABASE_DRIVER VARCHAR(100),
	PRIMARY KEY(APPLICATION_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_APPLICATION`
--

/*!40000 ALTER TABLE `CSM_APPLICATION` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_APPLICATION` (`APPLICATION_ID`,`APPLICATION_NAME`,`APPLICATION_DESCRIPTION`,`DECLARATIVE_FLAG`,`ACTIVE_FLAG`,`UPDATE_DATE`,`DATABASE_URL`,`DATABASE_USER_NAME`,`DATABASE_PASSWORD`,`DATABASE_DIALECT`,`DATABASE_DRIVER`) VALUES 
 ('1','csmupt','UPT Super Admin Application',0,0,'2007-02-28 13:03:02',NULL,NULL,NULL,NULL,NULL),
 ('2','sdk','sdk',1,1,'2008-04-02 00:00:00','@CSM_DB_CONNECTION_URL@','@CSM_DB_USERNAME@','2+crCBHCPUC8j2uyHEABIQ==','org.hibernate.dialect.MySQLDialect','org.gjt.mm.mysql.Driver');
COMMIT;
/*!40000 ALTER TABLE `CSM_APPLICATION` ENABLE KEYS */;


--
-- Definition of table `CSM_FILTER_CLAUSE`
--

DROP TABLE IF EXISTS CSM_FILTER_CLAUSE;
CREATE TABLE CSM_FILTER_CLAUSE ( 
	FILTER_CLAUSE_ID BIGINT AUTO_INCREMENT  NOT NULL,
	CLASS_NAME VARCHAR(100) NOT NULL,
	FILTER_CHAIN VARCHAR(2000) NOT NULL,
	TARGET_CLASS_NAME VARCHAR (100) NOT NULL,
	TARGET_CLASS_ATTRIBUTE_NAME VARCHAR (100) NOT NULL,
	TARGET_CLASS_ATTRIBUTE_TYPE VARCHAR (100) NOT NULL,
	TARGET_CLASS_ALIAS VARCHAR (100),
	TARGET_CLASS_ATTRIBUTE_ALIAS VARCHAR (100),
	GENERATED_SQL_USER VARCHAR (4000) NOT NULL,
	GENERATED_SQL_GROUP VARCHAR (4000) NOT NULL,
	APPLICATION_ID BIGINT NOT NULL,
	UPDATE_DATE DATE NOT NULL DEFAULT '0000-00-00',
	PRIMARY KEY(FILTER_CLAUSE_ID)	
)Type=InnoDB 
;

--
-- Dumping data for table `CSM_FILTER_CLAUSE`
--

/*!40000 ALTER TABLE `CSM_FILTER_CLAUSE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_FILTER_CLAUSE` (`FILTER_CLAUSE_ID`,`CLASS_NAME`,`FILTER_CHAIN`,`TARGET_CLASS_NAME`,`TARGET_CLASS_ATTRIBUTE_NAME`,`TARGET_CLASS_ATTRIBUTE_TYPE`,`TARGET_CLASS_ALIAS`,`TARGET_CLASS_ATTRIBUTE_ALIAS`,`GENERATED_SQL_USER`,`APPLICATION_ID`,`UPDATE_DATE`,`GENERATED_SQL_GROUP`) VALUES 
 ('17','gov.nih.nci.cacoresdk.domain.other.levelassociation.Card','suit, deck','gov.nih.nci.cacoresdk.domain.other.levelassociation.Deck - deck','id','java.lang.Integer',NULL,NULL,'ID in (select table_name_csm_.ID   from CARD table_name_csm_, SUIT suit1_, DECK deck2_ where table_name_csm_.SUIT_ID=suit1_.ID and suit1_.DECK_ID=deck2_.ID and deck2_.ID in ( select pe.attribute_value from csm_protection_group pg, csm_protection_element pe, csm_pg_pe pgpe, csm_user_group_role_pg ugrpg, csm_user u, csm_role_privilege rp, csm_role r, csm_privilege p where ugrpg.role_id = r.role_id and ugrpg.user_id = u.user_id and ugrpg.protection_group_id = ANY (select pg1.protection_group_id from csm_protection_group pg1 where pg1.protection_group_id = pg.protection_group_id or pg1.protection_group_id = (select pg2.parent_protection_group_id from csm_protection_group pg2 where pg2.protection_group_id = pg.protection_group_id)) and pg.protection_group_id = pgpe.protection_group_id and pgpe.protection_element_id = pe.protection_element_id and r.role_id = rp.role_id and rp.privilege_id = p.privilege_id and pe.object_id= \'gov.nih.nci.cacoresdk.domain.other.levelassociation.Deck\' and pe.attribute=\'id\' and p.privilege_name=\'READ\' and u.login_name=:USER_NAME and pe.application_id=:APPLICATION_ID))','2','2008-06-30 00:00:00','ID in (select table_name_csm_.ID   from CARD table_name_csm_, SUIT suit1_, DECK deck2_ where table_name_csm_.SUIT_ID=suit1_.ID and suit1_.DECK_ID=deck2_.ID and deck2_.ID in ( select distinct pe.attribute_value from csm_protection_group pg, 	csm_protection_element pe, 	csm_pg_pe pgpe,	csm_user_group_role_pg ugrpg, 	csm_group g, 	csm_role_privilege rp, 	csm_role r, 	csm_privilege p where ugrpg.role_id = r.role_id and ugrpg.group_id = g.group_id and ugrpg.protection_group_id = any ( select pg1.protection_group_id from csm_protection_group pg1  where pg1.protection_group_id = pg.protection_group_id or pg1.protection_group_id =  (select pg2.parent_protection_group_id from csm_protection_group pg2 where pg2.protection_group_id = pg.protection_group_id) ) and pg.protection_group_id = pgpe.protection_group_id and pgpe.protection_element_id = pe.protection_element_id and r.role_id = rp.role_id and rp.privilege_id = p.privilege_id and pe.object_id= \'gov.nih.nci.cacoresdk.domain.other.levelassociation.Deck\' and pe.attribute=\'id\' and p.privilege_name=\'READ\' and g.group_name IN (:GROUP_NAMES ) and pe.application_id=:APPLICATION_ID))');
COMMIT;
/*!40000 ALTER TABLE `CSM_FILTER_CLAUSE` ENABLE KEYS */;


--
-- Definition of table `CSM_GROUP`
--

DROP TABLE IF EXISTS CSM_GROUP;
CREATE TABLE CSM_GROUP ( 
	GROUP_ID BIGINT AUTO_INCREMENT  NOT NULL,
	GROUP_NAME VARCHAR(255) NOT NULL,
	GROUP_DESC VARCHAR(200),
	UPDATE_DATE DATE NOT NULL DEFAULT '0000-00-00',
	APPLICATION_ID BIGINT NOT NULL,
	PRIMARY KEY(GROUP_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_GROUP`
--

/*!40000 ALTER TABLE `CSM_GROUP` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_GROUP` (`GROUP_ID`,`GROUP_NAME`,`GROUP_DESC`,`UPDATE_DATE`,`APPLICATION_ID`) VALUES 
 ('2','Group1','Group 1 - Access to All PE\'s.  Same as user1','2008-06-30 00:00:00','2'),
 ('3','Group2','Group 2 - Same limited access as user2','2008-06-30 00:00:00','2'),
 ('4','Group3','Group3 - No access','2008-06-30 00:00:00','2');
COMMIT;
/*!40000 ALTER TABLE `CSM_GROUP` ENABLE KEYS */;


--
-- Definition of table `CSM_PG_PE`
--

DROP TABLE IF EXISTS CSM_PG_PE;
CREATE TABLE CSM_PG_PE ( 
	PG_PE_ID BIGINT AUTO_INCREMENT  NOT NULL,
	PROTECTION_GROUP_ID BIGINT NOT NULL,
	PROTECTION_ELEMENT_ID BIGINT NOT NULL,
	UPDATE_DATE DATE DEFAULT '0000-00-00',
	PRIMARY KEY(PG_PE_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_PG_PE`
--

/*!40000 ALTER TABLE `CSM_PG_PE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_PG_PE` (`PG_PE_ID`,`PROTECTION_GROUP_ID`,`PROTECTION_ELEMENT_ID`,`UPDATE_DATE`) VALUES 
 ('107','2','11','2007-07-17 15:30:19'),
 ('108','2','24','2007-07-17 15:30:19'),
 ('110','2','8','2007-07-17 15:30:19'),
 ('111','3','37','2007-07-17 15:30:19'),
 ('670','1','100','2007-12-19 16:40:11'),
 ('671','1','33','2007-12-19 16:40:11'),
 ('672','1','81','2007-12-19 16:40:11'),
 ('673','1','108','2007-12-19 16:40:11'),
 ('674','1','88','2007-12-19 16:40:11'),
 ('675','1','83','2007-12-19 16:40:11'),
 ('676','1','77','2007-12-19 16:40:11'),
 ('677','1','4','2007-12-19 16:40:11'),
 ('678','1','113','2007-12-19 16:40:11'),
 ('679','1','17','2007-12-19 16:40:11'),
 ('680','1','15','2007-12-19 16:40:11'),
 ('681','1','65','2007-12-19 16:40:11'),
 ('682','1','95','2007-12-19 16:40:11'),
 ('683','1','93','2007-12-19 16:40:11'),
 ('684','1','90','2007-12-19 16:40:11'),
 ('685','1','103','2007-12-19 16:40:11'),
 ('686','1','20','2007-12-19 16:40:11'),
 ('687','1','101','2007-12-19 16:40:11'),
 ('688','1','18','2007-12-19 16:40:11'),
 ('689','1','67','2007-12-19 16:40:11'),
 ('690','1','76','2007-12-19 16:40:11'),
 ('691','1','92','2007-12-19 16:40:11'),
 ('692','1','80','2007-12-19 16:40:11'),
 ('693','1','82','2007-12-19 16:40:11'),
 ('694','1','116','2007-12-19 16:40:11'),
 ('695','1','24','2007-12-19 16:40:11'),
 ('696','1','91','2007-12-19 16:40:11'),
 ('697','1','98','2007-12-19 16:40:11'),
 ('698','1','32','2007-12-19 16:40:11'),
 ('699','1','14','2007-12-19 16:40:11'),
 ('700','1','23','2007-12-19 16:40:11'),
 ('701','1','75','2007-12-19 16:40:11'),
 ('702','1','99','2007-12-19 16:40:11'),
 ('703','1','16','2007-12-19 16:40:11'),
 ('704','1','38','2007-12-19 16:40:11'),
 ('705','1','66','2007-12-19 16:40:11'),
 ('706','1','37','2007-12-19 16:40:11'),
 ('708','1','30','2007-12-19 16:40:11'),
 ('709','1','45','2007-12-19 16:40:11'),
 ('710','1','35','2007-12-19 16:40:11'),
 ('711','1','94','2007-12-19 16:40:11'),
 ('712','1','41','2007-12-19 16:40:11'),
 ('713','1','86','2007-12-19 16:40:11'),
 ('714','1','79','2007-12-19 16:40:11'),
 ('715','1','27','2007-12-19 16:40:11'),
 ('716','1','13','2007-12-19 16:40:11'),
 ('717','1','68','2007-12-19 16:40:11'),
 ('718','1','71','2007-12-19 16:40:11'),
 ('719','1','26','2007-12-19 16:40:11'),
 ('720','1','7','2007-12-19 16:40:11'),
 ('721','1','25','2007-12-19 16:40:11'),
 ('722','1','115','2007-12-19 16:40:11'),
 ('723','1','85','2007-12-19 16:40:11'),
 ('724','1','110','2007-12-19 16:40:11'),
 ('725','1','36','2007-12-19 16:40:11'),
 ('726','1','31','2007-12-19 16:40:11'),
 ('727','1','11','2007-12-19 16:40:11'),
 ('728','1','74','2007-12-19 16:40:11'),
 ('729','1','84','2007-12-19 16:40:11'),
 ('730','1','102','2007-12-19 16:40:11'),
 ('731','1','97','2007-12-19 16:40:11'),
 ('732','1','8','2007-12-19 16:40:11'),
 ('733','1','43','2007-12-19 16:40:11'),
 ('734','1','42','2007-12-19 16:40:11'),
 ('735','1','28','2007-12-19 16:40:11'),
 ('736','1','70','2007-12-19 16:40:11'),
 ('737','1','12','2007-12-19 16:40:11'),
 ('738','1','29','2007-12-19 16:40:11'),
 ('739','1','72','2007-12-19 16:40:11'),
 ('740','1','44','2007-12-19 16:40:11'),
 ('741','1','114','2007-12-19 16:40:11'),
 ('742','1','22','2007-12-19 16:40:11'),
 ('743','1','40','2007-12-19 16:40:11'),
 ('744','1','6','2007-12-19 16:40:11'),
 ('745','1','87','2007-12-19 16:40:11'),
 ('746','1','21','2007-12-19 16:40:11'),
 ('747','1','9','2007-12-19 16:40:11'),
 ('748','1','34','2007-12-19 16:40:11'),
 ('749','1','104','2007-12-19 16:40:11'),
 ('750','1','89','2007-12-19 16:40:11'),
 ('751','1','107','2007-12-19 16:40:11'),
 ('752','1','19','2007-12-19 16:40:11'),
 ('753','1','5','2007-12-19 16:40:11'),
 ('754','1','96','2007-12-19 16:40:11'),
 ('755','1','73','2007-12-19 16:40:11'),
 ('765','1','39','2007-12-27 12:41:17'),
 ('766','4','24','2008-05-26 16:33:58'),
 ('773','7','40','2008-06-30 15:14:32'),
 ('774','7','5','2008-06-30 15:14:32'),
 ('775','7','39','2008-06-30 15:14:32'),
 ('776','7','41','2008-06-30 15:14:32'),
 ('777','7','114','2008-06-30 15:14:32'),
 ('778','7','38','2008-06-30 15:14:32'),
 ('779','1','117','2008-09-05 12:27:56');
COMMIT;
/*!40000 ALTER TABLE `CSM_PG_PE` ENABLE KEYS */;


--
-- Definition of table `CSM_PRIVILEGE`
--

DROP TABLE IF EXISTS CSM_PRIVILEGE;
CREATE TABLE CSM_PRIVILEGE ( 
	PRIVILEGE_ID BIGINT AUTO_INCREMENT  NOT NULL,
	PRIVILEGE_NAME VARCHAR(100) NOT NULL,
	PRIVILEGE_DESCRIPTION VARCHAR(200),
	UPDATE_DATE DATE NOT NULL DEFAULT '0000-00-00',
	PRIMARY KEY(PRIVILEGE_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_PRIVILEGE`
--

/*!40000 ALTER TABLE `CSM_PRIVILEGE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_PRIVILEGE` (`PRIVILEGE_ID`,`PRIVILEGE_NAME`,`PRIVILEGE_DESCRIPTION`,`UPDATE_DATE`) VALUES 
 ('1','CREATE','This privilege grants permission to a user to create an entity. This entity can be an object, a database entry, or a resource such as a network connection','2007-02-28 13:03:03'),
 ('2','ACCESS','This privilege allows a user to access a particular resource.  ','2007-02-28 13:03:04'),
 ('3','READ','This privilege permits the user to read data from a file, URL, socket, database, or an object. ','2007-02-28 13:03:04'),
 ('4','WRITE','This privilege allows a user to write data to a file, URL, socket, database, or object. ','2007-02-28 13:03:04'),
 ('5','UPDATE','This privilege grants permission at an entity level and signifies that the user is allowed to update and modify data for a particular entity.','2007-02-28 13:03:04'),
 ('6','DELETE','This privilege permits a user to delete a logical entity.','2007-02-28 13:03:04'),
 ('7','EXECUTE','This privilege allows a user to execute a particular resource.','2007-02-28 13:03:04');
COMMIT;
/*!40000 ALTER TABLE `CSM_PRIVILEGE` ENABLE KEYS */;


--
-- Definition of table `CSM_PROTECTION_ELEMENT`
--

DROP TABLE IF EXISTS CSM_PROTECTION_ELEMENT;
CREATE TABLE CSM_PROTECTION_ELEMENT ( 
	PROTECTION_ELEMENT_ID BIGINT AUTO_INCREMENT  NOT NULL,
	PROTECTION_ELEMENT_NAME VARCHAR(100) NOT NULL,
	PROTECTION_ELEMENT_DESCRIPTION VARCHAR(200),
	OBJECT_ID VARCHAR(100) NOT NULL,
	ATTRIBUTE VARCHAR(100) ,
	ATTRIBUTE_VALUE VARCHAR(100) ,
	PROTECTION_ELEMENT_TYPE VARCHAR(100),
	APPLICATION_ID BIGINT NOT NULL,
	UPDATE_DATE DATE NOT NULL DEFAULT '0000-00-00',
	PRIMARY KEY(PROTECTION_ELEMENT_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_PROTECTION_ELEMENT`
--

/*!40000 ALTER TABLE `CSM_PROTECTION_ELEMENT` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_PROTECTION_ELEMENT` (`PROTECTION_ELEMENT_ID`,`protection_element_name`,`protection_element_description`,`object_id`,`attribute`,`protection_element_type`,`APPLICATION_ID`,`UPDATE_DATE`,`attribute_value`) VALUES 
 ('1','csmupt','UPT Super Admin Application','csmupt',NULL,NULL,'1','2007-02-28 13:03:03',NULL),
 ('2','sdk','sdk Application','sdk',NULL,NULL,'1','2008-04-02 00:00:00',NULL),
 ('4','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Cash','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Cash','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Cash',NULL,NULL,'2','2007-03-01 15:03:24',NULL),
 ('5','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Credit','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Credit','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Credit','issuingBank',NULL,'2','2007-12-17 00:00:00',NULL),
 ('6','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Payment','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Payment','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Payment',NULL,NULL,'2','2007-03-01 15:03:24',NULL),
 ('7','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.GraduateStudent','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.GraduateStudent','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.GraduateStudent',NULL,NULL,'2','2007-03-01 15:03:24',NULL),
 ('8','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.Student','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.Student','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.Student',NULL,NULL,'2','2007-03-01 15:03:24',NULL),
 ('9','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.UndergraduateStudent','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.UndergraduateStudent','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.UndergraduateStudent',NULL,NULL,'2','2007-03-01 15:03:24',NULL),
 ('11','gov.nih.nci.cacoresdk.domain.inheritance.onechild.Mammal','gov.nih.nci.cacoresdk.domain.inheritance.onechild.Mammal','gov.nih.nci.cacoresdk.domain.inheritance.onechild.Mammal',NULL,NULL,'2','2007-03-01 15:03:24',NULL),
 ('12','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.Assistant','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.Assistant','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.Assistant',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('13','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.AssistantProfessor','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.AssistantProfessor','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.AssistantProfessor',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('14','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.AssociateProfessor','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.AssociateProfessor','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.AssociateProfessor',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('15','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.Professor','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.Professor','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.Professor',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('16','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.TenuredProfessor','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.TenuredProfessor','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.TenuredProfessor',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('17','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.CRTMonitor','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.CRTMonitor','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.CRTMonitor',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('18','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.Display','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.Display','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.Display',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('19','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.LCDMonitor','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.LCDMonitor','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.LCDMonitor',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('20','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.Monitor','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.Monitor','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.Monitor',NULL,NULL,'2','2007-03-01 15:03:25',NULL),
 ('21','gov.nih.nci.cacoresdk.domain.manytomany.bidirectional.Employee','gov.nih.nci.cacoresdk.domain.manytomany.bidirectional.Employee','gov.nih.nci.cacoresdk.domain.manytomany.bidirectional.Employee',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('22','gov.nih.nci.cacoresdk.domain.manytomany.bidirectional.Project','gov.nih.nci.cacoresdk.domain.manytomany.bidirectional.Project','gov.nih.nci.cacoresdk.domain.manytomany.bidirectional.Project',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('23','gov.nih.nci.cacoresdk.domain.manytomany.unidirectional.Author','gov.nih.nci.cacoresdk.domain.manytomany.unidirectional.Author','gov.nih.nci.cacoresdk.domain.manytomany.unidirectional.Author',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('24','gov.nih.nci.cacoresdk.domain.manytomany.unidirectional.Book','gov.nih.nci.cacoresdk.domain.manytomany.unidirectional.Book','gov.nih.nci.cacoresdk.domain.manytomany.unidirectional.Book',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('25','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.Chef','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.Chef','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.Chef',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('26','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.Restaurant','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.Restaurant','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.Restaurant',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('27','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.Computer','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.Computer','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.Computer',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('28','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.HardDrive','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.HardDrive','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.HardDrive',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('29','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.Key','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.Key','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.Key',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('30','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.KeyChain','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.KeyChain','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.KeyChain',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('31','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.OrderLine','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.OrderLine','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.OrderLine',NULL,NULL,'2','2007-03-01 15:03:26',NULL),
 ('32','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.Product','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.Product','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.Product',NULL,NULL,'2','2007-03-01 15:03:27',NULL),
 ('33','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.Child','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.Child','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.Child',NULL,NULL,'2','2007-03-01 15:03:27',NULL),
 ('34','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.Parent','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.Parent','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.Parent',NULL,NULL,'2','2007-03-01 15:03:27',NULL),
 ('35','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.Address','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.Address','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.Address',NULL,NULL,'2','2007-03-01 15:03:27',NULL),
 ('36','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.Person','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.Person','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.Person',NULL,NULL,'2','2007-03-01 15:03:27',NULL),
 ('37','gov.nih.nci.cacoresdk.domain.other.datatype.AllDataType','gov.nih.nci.cacoresdk.domain.other.datatype.AllDataType','gov.nih.nci.cacoresdk.domain.other.datatype.AllDataType',NULL,NULL,'2','2007-03-01 15:03:27',NULL),
 ('38','gov.nih.nci.cacoresdk.domain.other.levelassociation.Card','gov.nih.nci.cacoresdk.domain.other.levelassociation.Card','gov.nih.nci.cacoresdk.domain.other.levelassociation.Card','Name',NULL,'2','2007-12-21 00:00:00','Ace'),
 ('39','gov.nih.nci.cacoresdk.domain.other.levelassociation.Deck','gov.nih.nci.cacoresdk.domain.other.levelassociation.Deck','gov.nih.nci.cacoresdk.domain.other.levelassociation.Deck','id',NULL,'2','2008-06-30 00:00:00','1'),
 ('40','gov.nih.nci.cacoresdk.domain.other.levelassociation.Hand','gov.nih.nci.cacoresdk.domain.other.levelassociation.Hand','gov.nih.nci.cacoresdk.domain.other.levelassociation.Hand',NULL,NULL,'2','2007-03-01 15:03:27',NULL),
 ('41','gov.nih.nci.cacoresdk.domain.other.levelassociation.Suit','gov.nih.nci.cacoresdk.domain.other.levelassociation.Suit','gov.nih.nci.cacoresdk.domain.other.levelassociation.Suit','cardCollection',NULL,'2','2007-12-27 00:00:00',NULL),
 ('42','gov.nih.nci.cacoresdk.domain.other.primarykey.DoubleKey','gov.nih.nci.cacoresdk.domain.other.primarykey.DoubleKey','gov.nih.nci.cacoresdk.domain.other.primarykey.DoubleKey',NULL,NULL,'2','2007-03-01 15:03:28',NULL),
 ('43','gov.nih.nci.cacoresdk.domain.other.primarykey.FloatKey','gov.nih.nci.cacoresdk.domain.other.primarykey.FloatKey','gov.nih.nci.cacoresdk.domain.other.primarykey.FloatKey',NULL,NULL,'2','2007-03-01 15:03:28',NULL),
 ('44','gov.nih.nci.cacoresdk.domain.other.primarykey.IntegerKey','gov.nih.nci.cacoresdk.domain.other.primarykey.IntegerKey','gov.nih.nci.cacoresdk.domain.other.primarykey.IntegerKey',NULL,NULL,'2','2007-03-01 15:03:28',NULL),
 ('45','gov.nih.nci.cacoresdk.domain.other.primarykey.StringKey','gov.nih.nci.cacoresdk.domain.other.primarykey.StringKey','gov.nih.nci.cacoresdk.domain.other.primarykey.StringKey',NULL,NULL,'2','2007-03-01 15:03:28',NULL),
 ('65','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.DesignerShoes','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.DesignerShoes','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.DesignerShoes',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('66','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.Designer','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.Designer','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.Designer',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('67','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.Shoes','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.Shoes','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.Shoes',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('68','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.SportsShoes','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.SportsShoes','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.sametable.SportsShoes',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('70','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.GovtOrganization','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.GovtOrganization','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.GovtOrganization',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('71','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.Organization','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.Organization','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.Organization',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('72','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.PvtOrganization','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.PvtOrganization','gov.nih.nci.cacoresdk.domain.inheritance.multiplechild.sametable.PvtOrganization',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('73','gov.nih.nci.cacoresdk.domain.inheritance.onechild.sametable.Currency','gov.nih.nci.cacoresdk.domain.inheritance.onechild.sametable.Currency','gov.nih.nci.cacoresdk.domain.inheritance.onechild.sametable.Currency',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('74','gov.nih.nci.cacoresdk.domain.inheritance.onechild.sametable.Note','gov.nih.nci.cacoresdk.domain.inheritance.onechild.sametable.Note','gov.nih.nci.cacoresdk.domain.inheritance.onechild.sametable.Note',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('75','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.HardTop','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.HardTop','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.HardTop',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('76','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.Luggage','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.Luggage','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.Luggage',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('77','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.SoftTop','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.SoftTop','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.SoftTop',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('79','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.Wheel','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.Wheel','gov.nih.nci.cacoresdk.domain.inheritance.parentwithassociation.sametable.Wheel',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('80','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.CommunistGovt','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.CommunistGovt','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.CommunistGovt',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('81','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.DemocraticGovt','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.DemocraticGovt','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.DemocraticGovt',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('82','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.Goverment','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.Goverment','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.Goverment',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('83','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.ParliamantaryGovt','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.ParliamantaryGovt','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.ParliamantaryGovt',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('84','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.PresidentialGovt','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.PresidentialGovt','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametable.PresidentialGovt',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('85','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.Calculator','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.Calculator','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.Calculator',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('86','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.FinancialCalculator','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.FinancialCalculator','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.FinancialCalculator',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('87','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.GraphicCalculator','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.GraphicCalculator','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.GraphicCalculator',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('88','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.ScientificCalculator','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.ScientificCalculator','gov.nih.nci.cacoresdk.domain.inheritance.twolevelinheritance.sametablerootlevel.ScientificCalculator',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('89','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.withjoin.Album','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.withjoin.Album','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.withjoin.Album',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('90','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.withjoin.Song','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.withjoin.Song','gov.nih.nci.cacoresdk.domain.manytoone.unidirectional.withjoin.Song',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('91','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.withjoin.Flight','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.withjoin.Flight','gov.nih.nci.cacoresdk.domain.onetomany.bidirectional.withjoin.Flight',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('92','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.withjoin.Shirt','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.withjoin.Shirt','gov.nih.nci.cacoresdk.domain.onetomany.unidirectional.withjoin.Shirt',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('93','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.withjoin.Chain','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.withjoin.Chain','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.withjoin.Chain',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('94','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.withjoin.Pendant','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.withjoin.Pendant','gov.nih.nci.cacoresdk.domain.onetoone.bidirectional.withjoin.Pendant',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('95','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.withjoin.Bride','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.withjoin.Bride','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.withjoin.Bride',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('96','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.withjoin.InLaw','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.withjoin.InLaw','gov.nih.nci.cacoresdk.domain.onetoone.multipleassociation.withjoin.InLaw',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('97','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.withjoin.Bag','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.withjoin.Bag','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.withjoin.Bag',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('98','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.withjoin.Handle','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.withjoin.Handle','gov.nih.nci.cacoresdk.domain.onetoone.unidirectional.withjoin.Handle',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('99','gov.nih.nci.cacoresdk.domain.other.primarykey.CharacterKey','gov.nih.nci.cacoresdk.domain.other.primarykey.CharacterKey','gov.nih.nci.cacoresdk.domain.other.primarykey.CharacterKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('100','gov.nih.nci.cacoresdk.domain.other.primarykey.CharacterPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.CharacterPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.CharacterPrimitiveKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('101','gov.nih.nci.cacoresdk.domain.other.primarykey.DoublePrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.DoublePrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.DoublePrimitiveKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('102','gov.nih.nci.cacoresdk.domain.other.primarykey.FloatPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.FloatPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.FloatPrimitiveKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('103','gov.nih.nci.cacoresdk.domain.other.primarykey.IntegerPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.IntegerPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.IntegerPrimitiveKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('104','gov.nih.nci.cacoresdk.domain.other.primarykey.LongKey','gov.nih.nci.cacoresdk.domain.other.primarykey.LongKey','gov.nih.nci.cacoresdk.domain.other.primarykey.LongKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('107','gov.nih.nci.cacoresdk.domain.other.primarykey.LongPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.LongPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.LongPrimitiveKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('108','gov.nih.nci.cacoresdk.domain.other.primarykey.NoIdKey','gov.nih.nci.cacoresdk.domain.other.primarykey.NoIdKey','gov.nih.nci.cacoresdk.domain.other.primarykey.NoIdKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('110','gov.nih.nci.cacoresdk.domain.other.primarykey.StringPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.StringPrimitiveKey','gov.nih.nci.cacoresdk.domain.other.primarykey.StringPrimitiveKey',NULL,NULL,'2','2007-12-13 00:00:00',NULL),
 ('113','gov.nih.nci.cacoresdk.domain.inheritance.onechild.Human','gov.nih.nci.cacoresdk.domain.inheritance.onechild.Human','gov.nih.nci.cacoresdk.domain.inheritance.onechild.Human',NULL,NULL,'2','2007-12-17 00:00:00',NULL),
 ('114','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Bank','PE for \'name\' attribute of Bank object','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Bank','name',NULL,'2','2007-12-17 00:00:00',NULL),
 ('115','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Credit.amount','PE for Credit.amount attribute','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Credit','amount',NULL,'2','2007-12-19 00:00:00',NULL),
 ('116','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Credit.cardNumber','PE for Credit.cardNumber attribute','gov.nih.nci.cacoresdk.domain.inheritance.childwithassociation.Credit','cardNumber',NULL,'2','2007-12-19 00:00:00',NULL),
 ('117','gov.nih.nci.cacoresdk.domain.other.validationtype.AllValidationType','gov.nih.nci.cacoresdk.domain.other.validationtype.AllValidationType','gov.nih.nci.cacoresdk.domain.other.validationtype.AllValidationType',NULL,NULL,'2','2008-09-05 12:07:28',NULL);
COMMIT;
/*!40000 ALTER TABLE `CSM_PROTECTION_ELEMENT` ENABLE KEYS */;


--
-- Definition of table `CSM_PROTECTION_GROUP`
--

DROP TABLE IF EXISTS CSM_PROTECTION_GROUP;
CREATE TABLE CSM_PROTECTION_GROUP ( 
	PROTECTION_GROUP_ID BIGINT AUTO_INCREMENT  NOT NULL,
	PROTECTION_GROUP_NAME VARCHAR(100) NOT NULL,
	PROTECTION_GROUP_DESCRIPTION VARCHAR(200),
	APPLICATION_ID BIGINT NOT NULL,
	LARGE_ELEMENT_COUNT_FLAG BOOL NOT NULL,
	UPDATE_DATE DATE NOT NULL DEFAULT '0000-00-00',
	PARENT_PROTECTION_GROUP_ID BIGINT,
	PRIMARY KEY(PROTECTION_GROUP_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_PROTECTION_GROUP`
--

/*!40000 ALTER TABLE `CSM_PROTECTION_GROUP` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_PROTECTION_GROUP` (`PROTECTION_GROUP_ID`,`PROTECTION_GROUP_NAME`,`PROTECTION_GROUP_DESCRIPTION`,`APPLICATION_ID`,`LARGE_ELEMENT_COUNT_FLAG`,`UPDATE_DATE`,`PARENT_PROTECTION_GROUP_ID`) VALUES 
 ('1','All PEs','Contains all of the PEs in the entire test sdk system','2',0,'2007-12-19 00:00:00',NULL),
 ('2','Bank',NULL,'2',0,'2007-03-01 00:00:00',NULL),
 ('3','AllDataType',NULL,'2',0,'2007-03-23 00:00:00',NULL),
 ('4','Book',NULL,'2',0,'2007-03-23 00:00:00',NULL),
 ('7','Limited Access','JUnit Security Test Group with limited access to a handful of Classes and Attributes','2',0,'2007-12-19 00:00:00',NULL);
COMMIT;
/*!40000 ALTER TABLE `CSM_PROTECTION_GROUP` ENABLE KEYS */;


--
-- Definition of table `CSM_ROLE`
--

DROP TABLE IF EXISTS CSM_ROLE;
CREATE TABLE CSM_ROLE ( 
	ROLE_ID BIGINT AUTO_INCREMENT  NOT NULL,
	ROLE_NAME VARCHAR(100) NOT NULL,
	ROLE_DESCRIPTION VARCHAR(200),
	APPLICATION_ID BIGINT NOT NULL,
	ACTIVE_FLAG BOOL NOT NULL,
	UPDATE_DATE DATE NOT NULL DEFAULT '0000-00-00',
	PRIMARY KEY(ROLE_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_ROLE`
--

/*!40000 ALTER TABLE `CSM_ROLE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_ROLE` (`ROLE_ID`,`ROLE_NAME`,`ROLE_DESCRIPTION`,`APPLICATION_ID`,`ACTIVE_FLAG`,`UPDATE_DATE`) VALUES 
 ('1','SuperAdmin','SuperAdmin','2',1,'2007-03-01 00:00:00'),
 ('2','Read',NULL,'2',1,'2007-03-01 00:00:00'),
 ('3','Create',NULL,'2',1,'2007-03-23 00:00:00'),
 ('5','Update',NULL,'2',1,'2008-06-30 00:00:00'),
 ('6','Delete',NULL,'2',1,'2008-06-30 00:00:00');
COMMIT;
/*!40000 ALTER TABLE `CSM_ROLE` ENABLE KEYS */;


--
-- Definition of table `CSM_ROLE_PRIVILEGE`
--

DROP TABLE IF EXISTS CSM_ROLE_PRIVILEGE;
CREATE TABLE CSM_ROLE_PRIVILEGE ( 
	ROLE_PRIVILEGE_ID BIGINT AUTO_INCREMENT  NOT NULL,
	ROLE_ID BIGINT NOT NULL,
	PRIVILEGE_ID BIGINT NOT NULL,
	PRIMARY KEY(ROLE_PRIVILEGE_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_ROLE_PRIVILEGE`
--

/*!40000 ALTER TABLE `CSM_ROLE_PRIVILEGE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_ROLE_PRIVILEGE` (`ROLE_PRIVILEGE_ID`,`ROLE_ID`,`PRIVILEGE_ID`) VALUES 
 ('1','2','3'),
 ('2','1','5'),
 ('3','1','1'),
 ('4','1','2'),
 ('5','1','7'),
 ('6','1','4'),
 ('7','1','3'),
 ('8','1','6'),
 ('9','3','1'),
 ('14','5','5'),
 ('15','6','6');
COMMIT;
/*!40000 ALTER TABLE `CSM_ROLE_PRIVILEGE` ENABLE KEYS */;


--
-- Definition of table `CSM_USER`
--

DROP TABLE IF EXISTS CSM_USER;
CREATE TABLE CSM_USER ( 
	USER_ID BIGINT AUTO_INCREMENT  NOT NULL,
	LOGIN_NAME VARCHAR(500) NOT NULL,
	MIGRATED_FLAG BOOL NOT NULL DEFAULT 0,
	FIRST_NAME VARCHAR(100) NOT NULL,
	LAST_NAME VARCHAR(100) NOT NULL,
	ORGANIZATION VARCHAR(100),
	DEPARTMENT VARCHAR(100),
	TITLE VARCHAR(100),
	PHONE_NUMBER VARCHAR(15),
	PASSWORD VARCHAR(100),
	EMAIL_ID VARCHAR(100),
	START_DATE DATE,
	END_DATE DATE,
	UPDATE_DATE DATE NOT NULL DEFAULT '0000-00-00',
	PREMGRT_LOGIN_NAME VARCHAR(100),
	PRIMARY KEY(USER_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_USER`
--

/*!40000 ALTER TABLE `CSM_USER` DISABLE KEYS */;
/* SuperAdmin password is set to 'changeme'.  The user1 and user2 passwords are set to 'password'.*/
SET AUTOCOMMIT=0;
INSERT INTO `CSM_USER` (`USER_ID`,`LOGIN_NAME`,`FIRST_NAME`,`LAST_NAME`,`ORGANIZATION`,`department`,`TITLE`,`PHONE_NUMBER`,`PASSWORD`,`EMAIL_ID`,`START_DATE`,`END_DATE`,`UPDATE_DATE`) VALUES 
 ('1','SuperAdmin','Super','Admin',NULL,NULL,NULL,NULL,'zJPWCwDeSgG8j2uyHEABIQ==',NULL,NULL,NULL,'2008-05-23 00:00:00'),
 ('13','user1','user1','junit',NULL,NULL,NULL,NULL,'qN+MnXquuqO8j2uyHEABIQ==',NULL,NULL,NULL,'2008-06-30 00:00:00'),
 ('14','user2','user2','junit',NULL,NULL,NULL,NULL,'qN+MnXquuqO8j2uyHEABIQ==',NULL,NULL,NULL,'2008-06-30 00:00:00');
COMMIT;
/*!40000 ALTER TABLE `CSM_USER` ENABLE KEYS */;


--
-- Definition of table `CSM_USER_GROUP`
--

DROP TABLE IF EXISTS CSM_USER_GROUP;
CREATE TABLE CSM_USER_GROUP ( 
	USER_GROUP_ID BIGINT AUTO_INCREMENT  NOT NULL,
	USER_ID BIGINT NOT NULL,
	GROUP_ID BIGINT NOT NULL,
	PRIMARY KEY(USER_GROUP_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_USER_GROUP`
--

/*!40000 ALTER TABLE `CSM_USER_GROUP` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_USER_GROUP` (`USER_GROUP_ID`,`USER_ID`,`GROUP_ID`) VALUES 
 ('2','13','2'),
 ('3','14','3');
COMMIT;
/*!40000 ALTER TABLE `CSM_USER_GROUP` ENABLE KEYS */;


--
-- Definition of table `CSM_USER_GROUP_ROLE_PG`
--

DROP TABLE IF EXISTS CSM_USER_GROUP_ROLE_PG;
CREATE TABLE CSM_USER_GROUP_ROLE_PG ( 
	USER_GROUP_ROLE_PG_ID BIGINT AUTO_INCREMENT  NOT NULL,
	USER_ID BIGINT,
	GROUP_ID BIGINT,
	ROLE_ID BIGINT NOT NULL,
	PROTECTION_GROUP_ID BIGINT NOT NULL,
	UPDATE_DATE DATE NOT NULL DEFAULT '0000-00-00',
	PRIMARY KEY(USER_GROUP_ROLE_PG_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_USER_GROUP_ROLE_PG`
--

/*!40000 ALTER TABLE `CSM_USER_GROUP_ROLE_PG` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_USER_GROUP_ROLE_PG` (`USER_GROUP_ROLE_PG_ID`,`USER_ID`,`GROUP_ID`,`ROLE_ID`,`PROTECTION_GROUP_ID`,`UPDATE_DATE`) VALUES 
 ('1','1',NULL,'1','1','2007-03-01 00:00:00'),
 ('10','9',NULL,'1','1','2007-03-23 00:00:00'),
 ('16','12',NULL,'1','1','2007-12-12 00:00:00'),
 ('17','13',NULL,'3','1','2007-12-19 00:00:00'),
 ('18','13',NULL,'2','1','2007-12-19 00:00:00'),
 ('23',NULL,'2','3','1','2008-06-30 00:00:00'),
 ('24',NULL,'2','2','1','2008-06-30 00:00:00'),
 ('34','13',NULL,'6','1','2008-06-30 00:00:00'),
 ('35','13',NULL,'5','1','2008-06-30 00:00:00'),
 ('38','14',NULL,'3','7','2008-06-30 00:00:00'),
 ('39','14',NULL,'2','7','2008-06-30 00:00:00'),
 ('40',NULL,'3','3','7','2008-06-30 00:00:00'),
 ('41',NULL,'3','2','7','2008-06-30 00:00:00');
COMMIT;
/*!40000 ALTER TABLE `CSM_USER_GROUP_ROLE_PG` ENABLE KEYS */;


--
-- Definition of table `CSM_USER_PE`
--

DROP TABLE IF EXISTS CSM_USER_PE;
CREATE TABLE CSM_USER_PE ( 
	USER_PROTECTION_ELEMENT_ID BIGINT AUTO_INCREMENT  NOT NULL,
	PROTECTION_ELEMENT_ID BIGINT NOT NULL,
	USER_ID BIGINT NOT NULL,
	PRIMARY KEY(USER_PROTECTION_ELEMENT_ID)
)Type=InnoDB
;

--
-- Dumping data for table `CSM_USER_PE`
--

/*!40000 ALTER TABLE `CSM_USER_PE` DISABLE KEYS */;
SET AUTOCOMMIT=0;
INSERT INTO `CSM_USER_PE` (`USER_PROTECTION_ELEMENT_ID`,`PROTECTION_ELEMENT_ID`,`USER_ID`) VALUES 
 ('3','1','1'),
 ('7','2','9'),
 ('8','2','1');
COMMIT;
/*!40000 ALTER TABLE `CSM_USER_PE` ENABLE KEYS */;
