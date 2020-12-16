# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.31)
# Database: home_brew
# Generation Time: 2020-12-16 23:10:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table beers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beers`;

CREATE TABLE `beers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brew_date` date DEFAULT NULL,
  `bottle_date` date DEFAULT NULL,
  `cold_condition_date` date DEFAULT NULL,
  `ready_date` date DEFAULT NULL,
  `age_in_days` int(11) DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottle_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fermenter_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intial_gravity` double(8,4) DEFAULT NULL,
  `final_gravity` double(8,4) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `beers` WRITE;
/*!40000 ALTER TABLE `beers` DISABLE KEYS */;

INSERT INTO `beers` (`id`, `name`, `brew_date`, `bottle_date`, `cold_condition_date`, `ready_date`, `age_in_days`, `color`, `bottle_type`, `fermenter_type`, `quantity`, `vendor`, `intial_gravity`, `final_gravity`, `notes`, `created_at`, `updated_at`)
VALUES
	(51,'MB Oktoberfest','2012-12-25','2013-01-10','2013-01-24','2013-02-14',NULL,'red','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tasted a bottle on 1/18/12 - still sweet; 2/20 - still yeasty','2020-12-16 18:10:05',NULL),
	(52,'Patriot Lager','2013-01-03','2013-01-24','2013-02-14','2013-03-07',NULL,'blue','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'3 wk LBK; 2/15 - First taste - great++','2020-12-16 18:10:05',NULL),
	(53,'Aztec','2013-01-10','2013-01-20','2013-02-10','2013-03-03',NULL,'n/a','12oz glass','',NULL,'Mr Beer',NULL,NULL,'LBK leak forced early bottling; 2/20 yeasty; very carbonated but ok at end','2020-12-16 18:10:05',NULL),
	(54,'Czech Pilsner','2013-01-24','2013-02-14','2013-03-07','2013-03-28',NULL,'black','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'3 wk LBK','2020-12-16 18:10:05',NULL),
	(55,'Oval Office Honey Amber','2013-01-29','2013-02-19','2013-03-12','2013-04-02',NULL,'green','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'spring water; 3wk LBK; great','2020-12-16 18:10:05',NULL),
	(56,'Aztec','2013-02-14','2013-03-07','2013-03-28','2013-04-18',NULL,'white','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'spring water / ok','2020-12-16 18:10:05',NULL),
	(57,'Czech Pilsner','2013-02-20','2013-03-13','2013-04-03','2013-04-24',NULL,'yellow','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water / ok','2020-12-16 18:10:05',NULL),
	(58,'Jamaica Mon','2013-03-06','2013-03-28','2013-04-18','2013-05-09',NULL,'red','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water / great','2020-12-16 18:10:05',NULL),
	(59,'Patriot Lager +','2013-03-07','2013-03-28','2013-04-18','2013-05-09',NULL,'blue','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water / good','2020-12-16 18:10:05',NULL),
	(60,'Diablo IPA','2013-03-23','2013-04-13','2013-05-04','2013-05-25',NULL,'green','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water / very hoppy - ok','2020-12-16 18:10:05',NULL),
	(61,'Bewitched Amber','2013-03-29','2013-04-19','2013-05-10','2013-05-31',NULL,'n/a','12oz glass','',NULL,'Mr Beer',NULL,NULL,'tap water / ok','2020-12-16 18:10:05',NULL),
	(62,'Honey Amber Ale','2013-04-20','2013-05-11','2013-06-01','2013-06-22',NULL,'n/a','1 lt pet','',NULL,'Midwest',NULL,NULL,'tap water / low carbonation / ok','2020-12-16 18:10:05',NULL),
	(63,'Jamaica Mon','2013-05-16','2013-06-06','2013-06-27','2013-07-18',NULL,'red','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water','2020-12-16 18:10:05',NULL),
	(64,'Bohemian Bronze','2013-05-18','2013-06-08','2013-06-29','2013-07-20',NULL,'yellow','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water','2020-12-16 18:10:05',NULL),
	(65,'White IPA','2013-05-22','2013-06-14','2013-07-05','2013-07-26',NULL,'','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water','2020-12-16 18:10:05',NULL),
	(66,'Patriot Lager','2013-09-19','2013-10-10','2013-10-31','2013-11-21',NULL,'red','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water','2020-12-16 18:10:05',NULL),
	(67,'American Light','2013-09-24','2013-10-17','2013-11-07','2013-11-28',NULL,'black','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water','2020-12-16 18:10:05',NULL),
	(68,'Honey Patriot Lager','2013-10-03','2013-10-27','2013-11-17','2013-12-08',NULL,'yellow','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water + 1/2 cup honey','2020-12-16 18:10:05',NULL),
	(69,'American Ale','2013-10-17','2013-11-12','2013-12-03','2013-12-24',NULL,'labels','1 lt pet','',NULL,'Mr Beer',NULL,NULL,'tap water + honey','2020-12-16 18:10:05',NULL),
	(70,'Jamaica Mon','2014-01-08','2014-01-29','2014-02-19','2014-03-12',NULL,'','12oz glass','Gary',NULL,'Mr Beer',NULL,NULL,'tap water - great!','2020-12-16 18:10:05',NULL),
	(71,'Amberosia Tripel','2014-01-16','2014-02-06','2014-02-27','2014-03-20',NULL,'red','1 lt pet','Faith',NULL,'Mr Beer',NULL,NULL,'tap water','2020-12-16 18:10:05',NULL),
	(72,'Cowgirl Honey Light','2014-01-18','2014-02-08','2014-03-01','2014-03-22',NULL,'blue','1 lt pet','Mustang',NULL,'Mr Beer',NULL,NULL,'tap water','2020-12-16 18:10:05',NULL),
	(73,'LBK IPA','2014-01-28','2014-02-18','2014-03-11','2014-04-01',NULL,'','1 lt pet','Gary',NULL,'Mr Beer',NULL,NULL,'tap water','2020-12-16 18:10:05',NULL),
	(74,'Jamaica Mon Hoppy','2014-03-26','2014-04-16','2014-05-07','2014-05-28',NULL,'','1 lt pet','Gary',NULL,'Mr Beer',NULL,NULL,'cenntenial pellet hops','2020-12-16 18:10:05',NULL),
	(75,'patriot ale Boosted hoppy','2014-03-29','2014-04-19','2014-05-10','2014-05-31',NULL,'yellow','1 lt pet','Faith',NULL,'Mr Beer',NULL,NULL,'goldings pellet hops','2020-12-16 18:10:05',NULL),
	(76,'Jamaica Mon Hoppy','2014-03-29','2014-04-19','2014-05-10','2014-05-31',NULL,'red','1 lt pet','Mustang',NULL,'Mr Beer',NULL,NULL,'cascade pellet hops','2020-12-16 18:10:05',NULL),
	(77,'California Steam','2014-08-23','2014-09-13','2014-10-04','2014-10-25',NULL,'n/a','22 oz glass','2 Phase',NULL,'Midwest',NULL,NULL,'alright at first but improving greatly with age.','2020-12-16 18:10:05',NULL),
	(78,'Hop Head Double IPA','2014-09-27','2014-12-20','2015-01-03','2015-01-10',NULL,'n/a','22 oz glass','2 Phase',NULL,'Midwest',NULL,NULL,'2 week primary / 10 week secondary : dry hop on 12/10/14','2020-12-16 18:10:05',NULL),
	(79,'Hanks Hefeweizen','2014-11-01','2014-11-15','2014-11-29','2014-12-06',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'First Batch in FastFermenter; low carbonation','2020-12-16 18:10:05',NULL),
	(80,'Belgian Pale Ale','2014-12-28','2015-01-11','2015-01-25','2015-02-01',NULL,'n/a','22 oz glass','FF',NULL,'MoreBeer',NULL,NULL,'Very good!','2020-12-16 18:10:05',NULL),
	(81,'Honey Bee Ale','2015-01-24','2015-02-14','2015-02-28','2015-03-07',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'Very good!','2020-12-16 18:10:05',NULL),
	(82,'Copper Ale','2015-04-03','2015-04-23','2015-05-07','2015-05-14',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'A bit heavy but good overall','2020-12-16 18:10:05',NULL),
	(83,'Liberty Cream Ale','2015-04-26','2015-05-10','2015-05-24','2015-05-31',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'Very good!','2020-12-16 18:10:05',NULL),
	(84,'Cologne Kölsch All Grain','2015-06-21','2015-07-11','2015-07-25','2015-08-01',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'first all grain kit -  light and good','2020-12-16 18:10:05',NULL),
	(85,'Blonde Ale','2015-10-04','2015-11-01','2015-11-15','2015-11-22',NULL,'n/a','22 oz glass','FF',NULL,'MoreBeer',NULL,NULL,'2nd All Grain Kit','2020-12-16 18:10:05',NULL),
	(86,'Fuggle IPA','2016-02-28','2016-03-20','2016-04-17','2016-04-24',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'3rd All Grain Kit','2020-12-16 18:10:05',NULL),
	(87,'Hop Head Double IPA','2016-03-26','2016-06-12','2016-07-24','2016-07-31',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'Extract Kit 2 week primary fermentation / 10 week secondary','2020-12-16 18:10:05',NULL),
	(88,'Cologne Kölsch All Grain','2016-07-23','2016-08-13','2016-09-03','2016-09-24',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'4th all grain kit','2020-12-16 18:10:05',NULL),
	(89,'White House Honey Ale','2016-12-31','2017-01-15','2017-02-05','2017-02-26',NULL,'n/a','22 oz glass','FF',NULL,'Midwest',NULL,NULL,'Sour finish , undrinkable','2020-12-16 18:10:05',NULL),
	(90,'90 Minute IPA','2017-02-04','2017-04-01','2017-04-15','2017-05-06',NULL,'n/a','22 oz glass','FF',NULL,'Cartel',NULL,NULL,'Excellent','2020-12-16 18:10:05',NULL),
	(91,'Vanilla Bourbon Porter','2017-02-26','2017-03-12','2017-03-26','2017-04-02',NULL,'n/a','22 oz glass','Carboy',NULL,'Cartel',NULL,NULL,'Excellent','2020-12-16 18:10:05',NULL),
	(92,'Vanilla Bourbon Porter','2017-04-09','2017-04-23','2017-05-05','2017-05-05',NULL,'n/a','22 oz glass','FF',NULL,'HomeBrew',NULL,NULL,'Sour finish , undrinkable','2020-12-16 18:10:05',NULL),
	(93,'Vanilla Bourbon Porter','2017-05-16','2017-05-30','2017-06-13','2017-06-20',NULL,'n/a','22 oz glass','Carboy',NULL,'HomeBrew',NULL,NULL,'Used new mash tun / excellent','2020-12-16 18:10:05',NULL),
	(94,'DunkelWeizen','2017-08-05','2017-08-26','2017-09-09','2017-06-20',NULL,'n/a','22 oz glass','Bucket/Carboy',NULL,'Northern',NULL,NULL,'secondary on day 11 (carboy)  Sour finish , undrinkable','2020-12-16 18:10:05',NULL),
	(95,'White House Honey Ale','2018-01-21','2018-02-04','2018-02-18','2018-02-20',NULL,'n/a','32 oz glass','Carboy',NULL,'Midwest',NULL,1.1000,'tasted okay pre-bottle; nice head and sweetness','2020-12-16 18:10:05',NULL),
	(96,'Smokey Old Fashion Porter','2018-05-25','2018-06-10','2018-06-24','2018-06-26',NULL,'n/a','32 oz glass','carboy/bmb',NULL,'Midwest',NULL,1.1600,'tasted good pre-bottle; good but unremarkable','2020-12-16 18:10:05',NULL),
	(97,'Hopswarm','2018-11-18','2018-12-15','2018-12-29','2018-12-31',NULL,'n/a','32 oz glass','carboy/bmb',NULL,'Midwest',NULL,1.2400,'sweet and tasty at bottling - high alcohol taste and flat; not drikable;','2020-12-16 18:10:05',NULL),
	(98,'Kolsch','2019-07-07','2019-07-21','2019-08-04','2019-08-06',NULL,'n/a','32 oz glass','carboy/bmb',NULL,'Midwest',NULL,1.1000,'Couple of flat bottle but most were very good. Light and smooth.','2020-12-16 18:10:05',NULL),
	(99,'Octoberfest (all grain)','2020-11-01','2020-11-15','2020-11-29','2020-12-01',NULL,'n/a','32 oz glass','carboy',NULL,'Midwest',NULL,1.1200,'','2020-12-16 18:10:05',NULL);

/*!40000 ALTER TABLE `beers` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
