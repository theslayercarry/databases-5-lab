-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: games_v4
-- ------------------------------------------------------
-- Server version	8.0.32
create database games_v4;
use games_v4;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `idaccounts` int NOT NULL AUTO_INCREMENT,
  `email` char(100) NOT NULL,
  `login` char(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nickname` char(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `form_of_payment` varchar(100) DEFAULT NULL,
  `phone` varchar(16) NOT NULL,
  `account_creation_date` datetime NOT NULL,
  `account_deletion_date` datetime DEFAULT NULL,
  `id_recommend_list` int DEFAULT NULL,
  PRIMARY KEY (`idaccounts`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `id_recommend_list_UNIQUE` (`id_recommend_list`),
  KEY `fk_recommend_list_idrecommend_list_accounts_idx` (`id_recommend_list`),
  CONSTRAINT `fk_recommend_list_idrecommend_list_accounts` FOREIGN KEY (`id_recommend_list`) REFERENCES `recommendation_lists` (`id_account`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Sl666vamp@gmail.com','Sleeping666','_H5udf4yjdfz666_','Sleeping','Russia','9633213987074345','79034789902','2014-07-06 13:35:12',NULL,NULL),(2,'SeatherS@yahoo.com','Seather_343','_S%kre432d2Klk-','Nacho','Australia','4313987074345','61480050217','2014-07-06 13:40:27',NULL,NULL),(3,'slayer@gmail.com','theslayercarry_','DM%#923lkkj_3021l','TheSlayerCarry','Russia','7812357222412','79060932851','2015-02-18 06:02:11',NULL,NULL),(4,'samurai@yandex.ru','V1rus','XMGA{n0w1o|~ox','samurai','Russia','5496198584584769','79057666894','2015-07-04 18:19:45',NULL,NULL),(5,'Al4kis@gmail.com','Deadlight_666','lYg8?hf9VFw5C9@b|Z{f','Kisik666','Belarus','4111111111100023','375255642170','2015-07-04 20:59:23',NULL,NULL),(6,'Inevlattes@mail.ru','Molllaleli','e0VRdUTdA*?Y','NosferatU','Kazakhstan','5496111100588669','77142931777','2015-07-05 00:00:39',NULL,NULL),(7,'badsapphire@gmail.com','badsapphire_','_#qA~JBcPwh9fyV|6_','badsapphire','Belarus','9631213666074345','375257834111','2016-04-14 16:31:19',NULL,NULL),(8,'fg7gfjgf@mail.ru','Dmtyfj411','~MhOuiD1R*','DUKAPb','Russia',NULL,'79038044661','2016-12-31 02:48:04',NULL,NULL),(9,'Zocker@GMX.com','Newinecalb','_eBGxIsFc1e%','BerufsZocker','Germany','0532013000','4917645890033','2017-01-01 03:44:17',NULL,NULL),(10,'K-miK@correo.mae.es','mierdatonta','sAg2kABFHP%%%#$','K-miK','Spain',NULL,'34603934666','2017-01-02 19:37:00',NULL,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_to_supports`
--

DROP TABLE IF EXISTS `accounts_to_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_to_supports` (
  `idaccounts_to_supports` int NOT NULL AUTO_INCREMENT,
  `time_of_appeal` datetime NOT NULL,
  `data_of_appeal` longtext NOT NULL,
  `id_support` int NOT NULL,
  `id_staff` int NOT NULL,
  `id_account` int NOT NULL,
  `id_game` int DEFAULT NULL,
  PRIMARY KEY (`idaccounts_to_supports`),
  KEY `fk_accounts_idaccounts_communication_tech_supp_idx` (`id_account`),
  KEY `fk_technical_supports_idtechnical_supports_communication_te_idx` (`id_support`),
  KEY `fk_staff_idstaff__acc_to_supp_idx` (`id_staff`),
  KEY `fk_games_idgames_acc_to_supp_idx` (`id_game`),
  CONSTRAINT `fk_accounts_idaccounts_acc_to_supp` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`idaccounts`),
  CONSTRAINT `fk_games_idgames_acc_to_supp` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`),
  CONSTRAINT `fk_staff_idstaff__acc_to_supp` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`idstaff`),
  CONSTRAINT `fk_supports_idsupports__acc_to_supp` FOREIGN KEY (`id_support`) REFERENCES `supports` (`idsupports`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_to_supports`
--

LOCK TABLES `accounts_to_supports` WRITE;
/*!40000 ALTER TABLE `accounts_to_supports` DISABLE KEYS */;
INSERT INTO `accounts_to_supports` VALUES (1,'2022-08-12 05:00:09','Dota 2: In the match with the number 485842392392, there was a cheater on Techies at 30:23, his cursor moved without moving the card',1,1,1,1),(2,'2022-08-12 22:30:23','Dota 2: I met a cheater again) This time with an autohex on the tinker 32:04, 38:03. Ban it **** Match number 485842492794',1,1,1,1),(3,'2022-08-20 18:22:45','Hello, I have changed my country of residence and now I need to change my payment details.',2,6,4,NULL),(4,'2022-08-21 10:27:30','CS:GO: I hope you die!!!',1,1,3,2),(5,'2022-09-24 06:04:18','The Forest: Hello, I have fulfilled all the conditions, but for some reason I am not given the achievement of Bad father (Survive 100 days without finding your son). Please check and help me',2,6,7,11),(6,'2022-10-05 19:46:51','Skyrim: I reached level 80, but Ebony Warrior never appeared (I was at all locations, rebooted several times and tried to change the quest code in the txt document, nothing helps( please help',3,10,5,27),(7,'2022-10-14 00:00:15','I deposited money into my account yesterday at about 16:35 - 17:00, but they still haven`t reached, probably this is your mistake, because I received a notification that the payment was successful. Return my money',3,10,6,NULL),(8,'2022-12-30 21:58:11','GWENT the card game: the Nilfgaard faction is an unbalanced ****, tell the fools on the developers to remove it',2,6,1,3),(9,'2023-01-07 17:40:06','During my online session at 17:24, a cheater with the nickname Cray joined me, killed me, broke all the armor, weapons and threw endless flasks of estus. I attach a video recording',1,1,4,8);
/*!40000 ALTER TABLE `accounts_to_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `iddevelopers` int NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `rating` float NOT NULL,
  `number_of_products` int NOT NULL,
  `location` char(200) NOT NULL,
  `number_of_employees` int NOT NULL,
  PRIMARY KEY (`iddevelopers`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` VALUES (1,'Valve',4.6,32,'Kirkland, Washington, US',360),(2,'Bandai Namco Entertainment',3.8,85,'Minato-ku, Tokyo, Japan',900),(3,'Kinetic Games',4.5,1,'Southampton, Hampshire, United Kingdom',85),(4,'Endnight Games',3.6,2,'Vancouver, Canada',20),(5,'Red Barrels',3.95,3,'Montreal, Quebec, Canada',40),(6,'Hinterland Studio',5,1,'Vancouver, British Columbia, Canada',133),(7,'Bethesda Game Studios',3.4,12,'Rockville, Maryland, US',420),(8,'CD PROJEKT RED',4,11,'Warsaw, Poland',859),(9,'Capcom',4,100,'Chūō-ku, Osaka, Japan',3206),(10,'4A Games',3.7,5,'Sliema, Malta',146),(11,'GSC Game World',4,19,'Prague, Czech Republic',300),(12,'Rockstar Games',4.2,30,'New York City, US',2300),(13,'Santa Monica Studio',4.4,7,'Los Angeles, US',400),(14,'Radical Entertainment',3.85,17,'Vancouver, British Columbia, Canada',118),(15,'Techland',3.55,39,'Wrocław, Poland',450),(16,'Telltale Games',3.75,13,'San Rafael, California, US',230);
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_awards`
--

DROP TABLE IF EXISTS `game_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_awards` (
  `idgame_awards` int NOT NULL AUTO_INCREMENT,
  `title` char(200) NOT NULL,
  PRIMARY KEY (`idgame_awards`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_awards`
--

LOCK TABLES `game_awards` WRITE;
/*!40000 ALTER TABLE `game_awards` DISABLE KEYS */;
INSERT INTO `game_awards` VALUES (1,'Most Anticipated Game'),(2,'Game of the Year'),(3,'Best Gaming Moment'),(4,'Best Storytelling'),(5,'Best Visual Design'),(6,'Best RPG'),(7,'The best survival games on PC'),(8,'Ultimate Game of the Year'),(9,'Outstanding Action/Adventure Game'),(10,'Role-Playing/Massively Multiplayer Game of the Year'),(11,'Golden Joystick Awards'),(12,'Best Soundtrack'),(13,'Best Technology'),(14,'Best International Game'),(15,'Special Commendation for Graphics'),(16,'Special Commendation for Innovation'),(17,'Most Wanted Game'),(18,'Best PC Game'),(19,'Critics Choice Award'),(20,'Best Audio'),(21,'Herman Melville Award for Best Writing'),(22,'Statue of Liberty Award for Best World'),(23,'Best of Show'),(24,'Award for Excellence'),(25,'Best Writing'),(26,'Best Story'),(27,'Artistic Achievement'),(28,'Best Game Design'),(29,'Esports Game of the Year'),(30,'The Game Award for Best ESports Game'),(31,'Most Promising New eSports Game'),(32,'Best Polish Game Art'),(33,'Downloadable Game of the Year'),(34,'Outstanding Character Performance'),(35,'Original Music'),(36,'The Game Award for Best Debut Indie Game'),(37,'Best Strategy Game'),(38,'Ultimate Game of All Time'),(39,'Outstanding Role Playing Game'),(40,'Best PC Game of 2013'),(41,'Best PC Strategy & Tactics Game'),(42,'Best PC Multiplayer Game'),(43,'Best PC Exclusive'),(44,'Best Competitive Multiplayer'),(45,'Best Strategy of 2013'),(46,'Love/Hate Relationship'),(47,'Best MOBA'),(48,'Best Adapted Video Game'),(49,'Best Performance By a Human Female'),(50,'Best Performance by a Human Male'),(51,'Best Character Design'),(52,'Best Multi-Platform Game'),(53,'Best Digitally Distributed Game'),(54,'Adventure Game of the Year'),(55,'Outstanding Achievement in Story'),(56,'Best Narrative'),(57,'Best Online Multiplayer'),(58,'Best Female Lead Vocal Performance in a Video Game'),(59,'Best Male Vocal Performance in a Video Game in a Supporting Role'),(60,'Best Female Vocal Performance in a Video Game in a Supporting Role'),(61,'Best Vocal Ensemble in a Video Game'),(62,'Outstanding Platform Action/Adventure Game'),(63,'Best Role Playing Game'),(64,'Best Online Experience'),(65,'Original Dramatic Score, Franchise'),(66,'Best Indie Game'),(67,'Fans` Choice'),(68,'Outstanding Performance in a Video Game'),(69,'Best Male Lead Vocal Performance in a Video Game'),(70,'Best Video Game'),(71,'Best Art Direction'),(72,'Best Strategy/Simulation'),(73,'Audio Achievement'),(74,'Best Game'),(75,'Best Performer'),(76,'Outstanding Achievement for Character Animation in a Video Game'),(77,'Best Video Game'),(78,'Best Achievement in Directing'),(79,'Best Original Soundtrack'),(80,'Best Performance in an Animation or a Video Game'),(81,'Music of the Year'),(82,'PlayStation Game of the Year'),(83,'Best Original Score - Video Game'),(84,'Best Voice'),(85,'People`s Choice'),(86,'Outstanding Achievement in Sound Editing - Sound Effects, Foley, Music, Dialogue and ADR for Computer Interactive Game Play'),(87,'Outstanding Achievement in Sound Editing - Sound Effects, Foley, Music, Dialogue and ADR for Computer Cinematic'),(88,'Outstanding Performance in a Drama, Lead'),(89,'Original Dramatic Score, Franchise'),(90,'Outstanding Visual Effects in a Real-Time Project'),(91,'Lighting/Texturing'),(92,'Animation, Technical'),(93,'Xbox Game of the Year'),(94,'Best British Game'),(95,'Game Innovation'),(96,'Outstanding Achievement in Sound Design'),(97,'Best Male Lead Vocal Performance in a Video Game'),(98,'Innovation of the Year'),(99,'Best Music Supervision for a Video Game'),(100,'Video Game of the Year'),(101,'Song Collection'),(102,'Best Persistent Game'),(103,'Best Interactive Score'),(104,'Best of Show'),(105,'Best Console Game'),(106,'Best Song, Original or Adapted'),(107,'Song Collection'),(108,'Costume Design'),(109,'Art Direction, Contemporary'),(110,'Technical Achievement'),(111,'Best Action Game'),(112,'Best In-Game Cinematic'),(113,'Best New Character'),(114,'Fans` Choice'),(115,'Performer in a Leading Role'),(116,'Performer in a Supporting Role'),(117,'Video Game Score of the Year'),(118,'Most Wanted Award'),(119,'Best Score & Music'),(120,'Best Role Playing Game'),(121,'Advertising, Media & PR - Best Use of Animation or Motion Graphics'),(122,'Outstanding Visual Effects in a Real-Time Project'),(123,'Outstanding Created Environment in an Episode, Commercial, or Real-Time Project'),(124,'Outstanding Technical Achievement'),(125,'Best Soundtrack Album'),(126,'Original Light Mix Score, Franchise'),(127,'Trending Game of the Year'),(128,'Sound Effects'),(129,'Game, Classic Revival'),(130,'Sound Editing in a Game Cinema'),(131,'Game, Franchise Action'),(132,'Best Story'),(133,'Outstanding Achievement in Game Play Engineering'),(134,'Outstanding Innovation in Gaming'),(135,'Interactive Media'),(136,'Best Visual Arts'),(137,'Best VR/AR Game'),(138,'Best Video Game Trailer'),(139,'Studio of the Year');
/*!40000 ALTER TABLE `game_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `idgames` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `reviews` longtext NOT NULL,
  `age_restriction` int DEFAULT NULL,
  `date_of_creation` date NOT NULL,
  `id_developer` int NOT NULL,
  `id_publisher` int NOT NULL,
  `id_game_series` int DEFAULT NULL,
  PRIMARY KEY (`idgames`),
  KEY `fk_developers_iddevelopers_games_idx` (`id_developer`),
  KEY `fk_publishers_idpublishers_games_idx` (`id_publisher`),
  KEY `fk_games_series_id_games_series_games_idx` (`id_game_series`),
  CONSTRAINT `fk_developers_iddevelopers_games` FOREIGN KEY (`id_developer`) REFERENCES `developers` (`iddevelopers`),
  CONSTRAINT `fk_games_series_id_games_series_games` FOREIGN KEY (`id_game_series`) REFERENCES `games_series` (`idgames_series`),
  CONSTRAINT `fk_publishers_idpublishers_games` FOREIGN KEY (`id_publisher`) REFERENCES `publishers` (`idpublishers`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Dota 2','82 % of 1,936,812 reviews are positive',13,'2013-07-09',1,1,3),(2,'Counter-Strike: Global Offensive','88 % of 6,999,045 reviews are positive',17,'2012-08-21',1,1,13),(3,'GWENT: The Witcher Card Game','95 % of 19,745 reviews are positive',16,'2017-05-24',8,8,2),(4,'The Walking Dead','97 % of 36,497 reviews are positive',18,'2012-04-24',16,17,14),(5,'Phasmophobia','96 % of 437,204 reviews are positive',13,'2020-09-18',3,3,NULL),(6,'DARK SOULS™: REMASTERED','89 % of 49,195 reviews are positive',12,'2018-05-24',2,2,5),(7,'DARK SOULS™ II: Scholar of the First Sin','85 % of 57,514 reviews are positive',12,'2015-05-02',2,2,5),(8,'DARK SOULS™ III','94 % of 223,271 reviews are positive',16,'2016-04-11',2,2,5),(9,'Outlast','96 % of 69,719 reviews are positive',18,'2013-09-04',5,5,10),(10,'Outlast 2','91 % of 34,870 reviews are positive',18,'2017-04-25',5,5,10),(11,'The Forest','95 % of 398,737 reviews are positive',18,'2018-04-30',4,4,NULL),(12,'Sons Of The Forest','82 % of 94,898 reviews are positive',18,'2023-02-23',4,16,NULL),(13,'The Long Dark','91 % of 84,162 reviews are positive',16,'2017-08-01',6,6,NULL),(14,'God of War','98 % of 67,408 reviews are positive',18,'2018-04-20',13,13,11),(15,'Dying Light','98 % of ‎268,029 reviews are positive',18,'2015-01-26',15,15,15),(16,'Dying Light 2: Stay Human','79 % of 101,154 reviews are positive',18,'2022-02-04',15,15,15),(17,'Grand Theft Auto V','95 % of 1,379,891 reviews are positive',18,'2013-09-17',12,12,12),(18,'The Witcher 3: Wild Hunt','99 % of 644,607 reviews are positive',17,'2015-05-18',8,8,2),(19,'Fallout 4','95 % of 194,484 reviews are positive',18,'2015-11-09',7,7,6),(20,'Metro Exodus','96 % of ‎73,757 reviews are positive',18,'2019-02-15',10,10,7),(21,'Prototype','94 % of 8,337 reviews are positive',17,'2009-06-10',14,14,16),(22,'Prototype 2','79 % of ‎7,912 reviews are positive',17,'2012-04-24',14,14,16),(23,'Cyberpunk 2077','80 % of 524,380 reviews are positive',18,'2020-12-10',8,8,NULL),(24,'Red Dead Redemption 2','95 % of 346,847 reviews are positive',18,'2018-10-26',12,12,9),(25,'Resident Evil 2','98 % of 82,419 reviews are positive',17,'2019-01-25',9,9,4),(26,'Resident Evil 3','77 % of 42,739 reviews are positive',18,'2020-04-03',9,9,4),(27,'The Elder Scrolls V: Skyrim Special Edition','97 % of 125,484 reviews are positive',18,'2016-10-28',7,7,1),(28,'S.T.A.L.K.E.R.: Shadow of Chernobyl','98 % of 26,393 reviews are positive',17,'2007-03-20',11,11,8),(29,'S.T.A.L.K.E.R.: Clear Sky','97 % of 12,709 reviews are positive',17,'2008-08-22',11,11,8),(30,'S.T.A.L.K.E.R.: Call of Pripyat','99 % of 18,717 reviews are positive',17,'2009-10-02',11,11,8);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_purchase`
--

DROP TABLE IF EXISTS `games_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_purchase` (
  `idgames_purchase` int NOT NULL AUTO_INCREMENT,
  `id_account` int NOT NULL,
  `id_game` int NOT NULL,
  `time_of_purchase` datetime NOT NULL,
  PRIMARY KEY (`idgames_purchase`),
  KEY `fk_accounts_idaccounts_games_purchase_idx` (`id_account`),
  KEY `fk_games_idgames_games_purchase_idx` (`id_game`),
  CONSTRAINT `fk_accounts_idaccounts_games_purchase` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`idaccounts`),
  CONSTRAINT `fk_games_idgames_games_purchase` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_purchase`
--

LOCK TABLES `games_purchase` WRITE;
/*!40000 ALTER TABLE `games_purchase` DISABLE KEYS */;
INSERT INTO `games_purchase` VALUES (1,1,18,'2023-03-17 02:21:46'),(2,1,20,'2023-03-17 03:04:18'),(3,3,6,'2023-03-17 10:34:21'),(4,3,7,'2023-03-17 10:58:59'),(5,3,8,'2023-03-17 11:12:34'),(6,8,9,'2023-03-17 05:31:09'),(7,8,10,'2023-03-17 07:22:29'),(8,5,15,'2022-03-17 07:25:12'),(9,7,12,'2022-03-17 09:45:04'),(10,4,23,'2022-03-17 18:01:55');
/*!40000 ALTER TABLE `games_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_search`
--

DROP TABLE IF EXISTS `games_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_search` (
  `idgames_search` int NOT NULL AUTO_INCREMENT,
  `id_game` int NOT NULL,
  `id_account` int NOT NULL,
  `time_of_search` datetime NOT NULL,
  PRIMARY KEY (`idgames_search`),
  KEY `fk_games_idgames_games_search_idx` (`id_game`),
  KEY `fk_accounts_idaccounts_games_search_idx` (`id_account`),
  CONSTRAINT `fk_accounts_idaccounts_games_search` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`idaccounts`),
  CONSTRAINT `fk_games_idgames_games_search` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_search`
--

LOCK TABLES `games_search` WRITE;
/*!40000 ALTER TABLE `games_search` DISABLE KEYS */;
INSERT INTO `games_search` VALUES (1,18,1,'2023-03-17 02:19:21'),(2,20,1,'2023-03-17 03:01:30'),(3,6,3,'2023-03-17 10:33:00'),(4,7,3,'2023-03-17 10:54:15'),(5,8,3,'2023-03-17 10:58:06'),(6,9,8,'2023-03-17 05:24:59'),(7,10,8,'2023-03-17 07:09:04'),(8,15,5,'2022-03-17 07:14:37'),(9,12,7,'2022-03-17 09:33:13'),(10,23,4,'2022-03-17 17:41:19');
/*!40000 ALTER TABLE `games_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_series`
--

DROP TABLE IF EXISTS `games_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_series` (
  `idgames_series` int NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL,
  PRIMARY KEY (`idgames_series`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_series`
--

LOCK TABLES `games_series` WRITE;
/*!40000 ALTER TABLE `games_series` DISABLE KEYS */;
INSERT INTO `games_series` VALUES (1,'The Elder Scrolls'),(2,'The Witcher'),(3,'Dota'),(4,'Resident Evil'),(5,'Dark Souls'),(6,'Fallout'),(7,'Metro'),(8,'S.T.A.L.K.E.R.'),(9,'Red Dead'),(10,'Outlast'),(11,'God of War'),(12,'Grand Theft Auto'),(13,'Counter-Strike'),(14,'The Walking Dead'),(15,'Dying Light'),(16,'Prototype');
/*!40000 ALTER TABLE `games_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_to_awards`
--

DROP TABLE IF EXISTS `games_to_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_to_awards` (
  `id_game` int NOT NULL,
  `id_award` int NOT NULL,
  PRIMARY KEY (`id_game`,`id_award`),
  KEY `id_award` (`id_award`),
  CONSTRAINT `games_to_awards_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`),
  CONSTRAINT `games_to_awards_ibfk_2` FOREIGN KEY (`id_award`) REFERENCES `game_awards` (`idgame_awards`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_to_awards`
--

LOCK TABLES `games_to_awards` WRITE;
/*!40000 ALTER TABLE `games_to_awards` DISABLE KEYS */;
INSERT INTO `games_to_awards` VALUES (14,1),(17,1),(18,1),(24,1),(1,2),(4,2),(7,2),(8,2),(9,2),(14,2),(17,2),(18,2),(19,2),(24,2),(25,2),(27,2),(15,3),(18,3),(14,4),(18,4),(20,4),(18,5),(27,6),(11,7),(8,8),(18,8),(25,8),(14,9),(17,9),(24,9),(25,9),(27,10),(16,11),(17,12),(24,12),(14,13),(17,13),(21,13),(22,13),(24,13),(27,13),(8,14),(18,14),(19,14),(17,18),(19,18),(24,19),(14,20),(15,20),(17,20),(19,20),(24,20),(25,20),(27,20),(19,23),(27,23),(4,25),(13,25),(21,25),(17,26),(18,26),(27,26),(14,27),(18,27),(23,27),(24,27),(27,27),(4,28),(13,28),(14,28),(17,28),(18,28),(21,28),(24,28),(27,28),(1,29),(2,29),(2,30),(3,31),(3,32),(4,33),(9,33),(4,34),(4,35),(27,35),(5,36),(6,37),(6,38),(6,39),(27,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(4,48),(4,49),(4,50),(4,51),(14,51),(17,51),(19,51),(23,51),(4,52),(4,53),(4,54),(24,54),(4,55),(27,55),(4,56),(14,56),(23,56),(24,56),(6,57),(17,57),(7,58),(18,58),(19,58),(7,59),(7,60),(18,60),(19,60),(7,61),(17,61),(18,61),(19,61),(7,62),(7,63),(19,63),(23,63),(27,63),(7,64),(8,65),(18,65),(9,66),(9,67),(22,67),(9,68),(10,68),(10,69),(17,69),(19,69),(10,70),(14,70),(19,70),(25,70),(13,71),(14,71),(23,71),(24,71),(13,72),(14,73),(17,73),(26,73),(4,74),(14,74),(17,74),(18,74),(19,74),(24,74),(27,74),(14,75),(17,75),(18,75),(24,75),(14,76),(18,77),(24,77),(14,78),(14,79),(14,80),(14,81),(19,81),(27,81),(14,82),(17,82),(14,83),(18,83),(14,84),(25,84),(1,85),(14,85),(14,86),(14,87),(14,88),(18,88),(19,88),(24,88),(14,89),(14,90),(23,90),(14,91),(15,91),(24,91),(14,92),(15,92),(18,92),(20,92),(22,92),(16,93),(17,93),(17,94),(24,94),(17,95),(13,96),(17,96),(17,98),(17,99),(23,99),(24,99),(17,100),(18,100),(24,100),(17,101),(19,101),(18,102),(19,103),(19,105),(21,105),(27,105),(19,106),(25,106),(18,108),(19,108),(24,108),(19,109),(20,110),(20,111),(21,112),(22,113),(23,115),(23,116),(23,117),(8,118),(19,118),(23,118),(23,119),(23,121),(23,123),(24,124),(24,125),(27,125),(24,126),(24,127),(14,128),(19,128),(24,128),(25,129),(14,130),(18,130),(19,130),(25,130),(17,131),(26,131),(27,133),(27,134),(27,135),(27,136),(27,137),(27,138),(4,139),(17,139),(27,139);
/*!40000 ALTER TABLE `games_to_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_to_genres`
--

DROP TABLE IF EXISTS `games_to_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_to_genres` (
  `id_game` int NOT NULL,
  `id_genre` int NOT NULL,
  PRIMARY KEY (`id_game`,`id_genre`),
  KEY `id_genre` (`id_genre`),
  CONSTRAINT `games_to_genres_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`),
  CONSTRAINT `games_to_genres_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`idgenres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_to_genres`
--

LOCK TABLES `games_to_genres` WRITE;
/*!40000 ALTER TABLE `games_to_genres` DISABLE KEYS */;
INSERT INTO `games_to_genres` VALUES (1,1),(2,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(28,1),(29,1),(30,1),(6,2),(7,2),(8,2),(14,2),(15,2),(16,2),(18,2),(19,2),(21,2),(22,2),(23,2),(27,2),(1,3),(3,3),(13,3),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(11,5),(12,5),(13,5),(17,5),(2,7),(17,7),(19,7),(20,7),(24,7),(25,7),(26,7),(28,7),(29,7),(30,7),(1,8),(5,9),(9,9),(10,9),(11,9),(12,9),(15,9),(16,9),(25,9),(26,9),(28,9),(29,9),(30,9),(3,11);
/*!40000 ALTER TABLE `games_to_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_to_themes`
--

DROP TABLE IF EXISTS `games_to_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_to_themes` (
  `id_game` int NOT NULL,
  `id_theme` int NOT NULL,
  PRIMARY KEY (`id_game`,`id_theme`),
  KEY `id_theme` (`id_theme`),
  CONSTRAINT `games_to_themes_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`),
  CONSTRAINT `games_to_themes_ibfk_2` FOREIGN KEY (`id_theme`) REFERENCES `themes` (`idthemes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_to_themes`
--

LOCK TABLES `games_to_themes` WRITE;
/*!40000 ALTER TABLE `games_to_themes` DISABLE KEYS */;
INSERT INTO `games_to_themes` VALUES (4,1),(5,1),(9,1),(10,1),(11,1),(12,1),(13,1),(15,1),(16,1),(20,1),(21,1),(22,1),(25,1),(26,1),(28,1),(29,1),(30,1),(5,2),(8,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(27,3),(28,3),(29,3),(30,3),(4,4),(9,4),(10,4),(11,4),(12,4),(13,4),(15,4),(16,4),(19,4),(20,4),(25,4),(26,4),(28,4),(29,4),(30,4),(4,5),(11,5),(15,5),(16,5),(21,5),(22,5),(25,5),(26,5),(29,5),(30,5),(5,6),(6,7),(7,7),(8,7),(18,7),(3,9),(6,9),(8,9),(17,9),(18,9),(19,9),(20,9),(23,9),(24,9),(26,9),(27,9),(3,10),(4,10),(6,10),(7,10),(8,10),(9,10),(10,10),(11,10),(12,10),(13,10),(14,10),(17,10),(18,10),(19,10),(20,10),(21,10),(22,10),(23,10),(24,10),(25,10),(26,10),(27,10),(28,10),(29,10),(30,10),(4,11),(6,11),(7,11),(8,11),(10,11),(14,11),(15,11),(18,11),(19,11),(20,11),(21,11),(22,11),(23,11),(24,11),(25,11),(26,11),(27,11),(1,12),(3,12),(6,12),(7,12),(14,12),(18,12),(27,12),(11,13),(12,13),(13,13),(11,14),(12,14),(11,15),(12,15),(13,15),(17,15),(18,15),(19,15),(21,15),(22,15),(24,15),(29,15),(30,15),(1,16),(11,16),(12,16),(13,16),(17,16),(6,17),(8,17),(11,17),(12,17),(13,17),(14,17),(16,17),(19,17),(20,17),(23,17),(1,18),(2,18),(1,19),(2,19),(1,20),(1,21),(2,21),(3,21),(7,21),(8,21),(15,21),(2,22),(2,23),(5,23),(1,24),(2,24),(3,26),(9,27),(15,27),(20,27),(21,27),(22,27),(27,27),(2,28),(5,28),(9,28),(10,28),(11,28),(12,28),(13,28),(15,28),(16,28),(17,28),(19,28),(20,28),(23,28),(24,28),(27,28),(28,28),(29,28),(30,28),(5,29),(9,29),(10,29),(20,29),(3,30),(9,30),(10,30),(18,30),(23,30),(9,31),(10,31),(15,31),(16,31),(21,31),(22,31),(9,32),(19,32),(20,32),(21,32),(22,32),(23,32),(28,32),(29,32),(30,32),(10,33),(14,33),(16,33),(20,33),(21,33),(22,33),(23,33),(25,33),(26,33),(3,34),(10,34),(26,34),(14,35),(14,36),(16,36),(4,37),(6,37),(7,37),(8,37),(14,37),(17,37),(18,37),(19,37),(21,37),(22,37),(24,37),(25,37),(26,37),(27,37),(4,38),(14,38),(14,39),(15,39),(21,39),(22,39),(14,40),(15,40),(4,42),(13,42),(15,42),(16,42),(19,42),(20,42),(28,42),(29,42),(30,42),(4,43),(16,43),(18,43),(24,43),(17,44),(17,45),(17,46),(17,47),(17,48),(7,49),(18,49),(18,50),(27,50),(5,51),(6,51),(7,51),(9,51),(10,51),(18,51),(25,51),(1,52),(6,52),(7,52),(8,52),(17,52),(19,52),(23,52),(27,52),(21,53),(22,53),(23,54),(12,55),(23,55),(28,55),(29,55),(30,55),(24,56),(2,57),(11,57),(24,57),(24,58),(24,59),(25,60),(7,61),(25,61),(26,61),(27,61),(4,62),(4,64),(4,65),(4,66),(4,67),(27,68),(2,69),(17,69),(27,69),(28,69),(29,69),(30,69),(9,70),(13,70),(27,70),(18,71),(23,72),(3,73),(3,74),(3,75),(3,76),(28,77),(29,77),(30,77),(28,78),(29,78),(30,78),(28,79),(29,79),(30,79);
/*!40000 ALTER TABLE `games_to_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_to_types`
--

DROP TABLE IF EXISTS `games_to_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_to_types` (
  `id_game` int NOT NULL,
  `id_type` int NOT NULL,
  PRIMARY KEY (`id_game`,`id_type`),
  KEY `id_type` (`id_type`),
  CONSTRAINT `games_to_types_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`),
  CONSTRAINT `games_to_types_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `types` (`idtypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_to_types`
--

LOCK TABLES `games_to_types` WRITE;
/*!40000 ALTER TABLE `games_to_types` DISABLE KEYS */;
INSERT INTO `games_to_types` VALUES (4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(1,2),(2,2),(5,2),(6,2),(7,2),(8,2),(11,2),(12,2),(15,2),(16,2),(17,2),(11,3),(12,3),(17,3),(1,4),(2,4),(3,4),(15,4),(16,4),(17,4),(24,4),(1,5),(2,5),(17,6);
/*!40000 ALTER TABLE `games_to_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaming_news`
--

DROP TABLE IF EXISTS `gaming_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gaming_news` (
  `idgaming_news` int NOT NULL AUTO_INCREMENT,
  `type_of_news` char(100) NOT NULL,
  `heading` longtext NOT NULL,
  `date_of_creation` datetime NOT NULL,
  `id_developer` int NOT NULL,
  `id_game` int NOT NULL,
  PRIMARY KEY (`idgaming_news`),
  KEY `fk_developers_iddevelopers_gaming_news_idx` (`id_developer`),
  KEY `fk_games_idgames_gaming_news_idx` (`id_game`),
  CONSTRAINT `fk_developers_iddevelopers_gaming_news` FOREIGN KEY (`id_developer`) REFERENCES `developers` (`iddevelopers`),
  CONSTRAINT `fk_games_idgames_gaming_news` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaming_news`
--

LOCK TABLES `gaming_news` WRITE;
/*!40000 ALTER TABLE `gaming_news` DISABLE KEYS */;
INSERT INTO `gaming_news` VALUES (1,'Update','Fixed a bug that caused some players to be unable to open fantasy card sets. Since it was impossible to participate in the first week of the fantasy league because of this, we gave 2 fantasy levels to all players who faced this problem.','2023-03-15 20:58:36',1,1),(2,'News','Today we are pleased to present the case \"Revolution\", which contains 17 colorings of weapons from the community and rare awards in the form of gloves from the case \"Decisive Moment\". We also release a capsule with stickers \"Espionage\", which contains 21 unique stickers from the artists of the Steam Workshop.To top it off, we have also prepared a set of Denzel Curry — ULTIMATE music, which contains Walkin, ULTIMATE and other hits from Denzel`s album Melt My Eyez See Your Future 2022.All three new items are already available in the game!','2023-02-10 21:29:04',1,2),(3,'Simple update','Firstly we`d like to announce that Progression part 1; v9.0, will be the next major update, coming shortly after v8.1. The plan is to have this out as soon as possible and will include the new leveling system for players, as well as the long-awaited equipment upgrades for your investigations! We`ve seen a lot of players` concerns about why we`re doing a wipe, and what will happen to their current progression, so here are a few quick insights: The wipe is needed to make way for the new leveling system, including prestiges, and will fundamentally change how you progress through the game. You`ll unlock equipment and upgrades in a specific order, and that needs to work from the start. Sadly we cannot translate the new system to the current one, so a reset is the only way to go! Money and experience numbers will be adjusted, you will no longer level up every 100xp. Now, each level will require more XP as you progress and upon reaching the end of level 100, you will unlock the option to prestige and reset your progress, with the reward of a new badge and title for your ID card. Your current level will be saved and in the future, we will give you a unique badge for your player character to show off how far you made it pre-wipe. These will have different colors and materials depending on how high your level was. This will be the only way to unlock this specific badge, so get going!','2023-01-19 16:00:52',3,5),(4,'A small update','Online features for the PC version of Dark Souls: Remastered have been reactivated.','2022-11-09 16:20:00',2,6),(5,'In-game event','Good news! The airdrops are coming in with 2X drop bonuses. Inside, you will find rare weapons (any rarity, including gold), medkits, jewels and weapon upgrades. You can even get blades the likes of the Wolfclaw machete. There’s a catch, though. Rais’ goon squads have crawled out of their holes, and they’ll be looking to get their hands on the loot as well.','2022-12-09 18:16:45',15,15),(6,'Patch notes','A new update file for the PC version of \"DARK SOULS III\" has been released to fix some bugs. We apologize for the inconvenience, but please apply the latest update file before enjoying the game. Items included in the latest update Fixed some bugs in the recently released update file (1.15.1). The version number in the upper left corner of the title screen when this update file is applied is as follows.','2023-01-12 13:15:28',2,8),(7,'Discount','Experience Kratos and Arteus` journey as they venture into the brutal Norse wilds and fight to fulfill a deeply personal quest. With an emphasis on discovery and exploration, God of War™ invites you to discover a breathtaking but threatening landscape full of secrets, lore, and fearsome creatures. Engage in visceral combat with an over-the-shoulder camera that brings you closer to the action than ever before!','2022-09-15 20:30:58',13,14),(8,'A small update','Fixed an issue causing PC players (Steam and Microsoft Store) to crash when entering Kolbjorn Barrow and the Dawnstar Museum.','2022-01-06 18:04:13',7,27),(9,'A small update','Hey everyone, This patch updates The Forest VR to include support for the new index controllers as well as fixing and improving a ton of VR specific issues.','2019-09-10 23:04:17',4,11),(10,'Hotfix','The hotfix for the game \"The Witcher 3: Wild Hunt\" is already available! It is designed to fix performance issues that appeared after patch 4.01. The version of the game will not change.','2022-02-14 15:04:32',8,18);
/*!40000 ALTER TABLE `gaming_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `idgenres` int NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL,
  PRIMARY KEY (`idgenres`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Role-Playing'),(3,'Strategy'),(4,'Adventure'),(5,'Simulation'),(6,'Sports & Racing'),(7,'Shooters'),(8,'MOBA'),(9,'Survival & horror'),(10,'Platformer'),(11,'Card game');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `idpublishers` int NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `rating` float NOT NULL,
  `number_of_products` int NOT NULL,
  `location` char(200) NOT NULL,
  `number_of_employees` int NOT NULL,
  PRIMARY KEY (`idpublishers`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Valve',4.6,32,'Kirkland, Washington, US',360),(2,'Bandai Namco Entertainment',3.8,85,'Minato-ku, Tokyo, Japan',900),(3,'Kinetic Games',4.5,1,'Southampton, Hampshire, United Kingdom',85),(4,'Endnight Games',3.6,2,'Vancouver, Canada',20),(5,'Red Barrels',3.95,3,'Montreal, Quebec, Canada',40),(6,'Hinterland Studio',5,1,'Vancouver, British Columbia, Canada',133),(7,'Bethesda Softworks',3.7,102,'Rockville, Maryland, US',140),(8,'CD PROJEKT RED',4,11,'Warsaw, Poland',859),(9,'Capcom',4,100,'Chūō-ku, Osaka, Japan',3206),(10,'Deep Silver',3.35,200,'Höfen, Austria',172),(11,'GSC Game World',4,19,'Prague, Czech Republic',300),(12,'Rockstar Games',4.2,30,'New York City, US',2300),(13,'Sony Interactive Entertainment',4,550,'San Mateo, California, US',12000),(14,'Activision',3.55,753,'Santa Monica, California, US',9800),(15,'Techland',3.55,39,'Wrocław, Poland',450),(16,'Newnight',4.07,1,'Vancouver, Canada',28),(17,'Skybound Games',3.75,12,'Beverly Hills, California, United States',194);
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendation_lists`
--

DROP TABLE IF EXISTS `recommendation_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendation_lists` (
  `id_account` int NOT NULL AUTO_INCREMENT,
  `date_of_creation` datetime NOT NULL,
  `game_counter` int NOT NULL,
  `id_game_search` int NOT NULL,
  `id_prevailing_genre` int NOT NULL,
  `id_proposed_game` int NOT NULL,
  PRIMARY KEY (`id_account`),
  KEY `fk_games_search_idgames_search_recomm_lists_idx` (`id_game_search`),
  KEY `fk_genres_idgenres_recomm_lists_idx` (`id_prevailing_genre`),
  KEY `fk_games_idgames_recomm_lists_idx` (`id_proposed_game`),
  CONSTRAINT `fk_accounts_idaccounts_recomm_lists` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`idaccounts`),
  CONSTRAINT `fk_games_idgames_recomm_lists` FOREIGN KEY (`id_proposed_game`) REFERENCES `games` (`idgames`),
  CONSTRAINT `fk_games_search_idgames_search_recomm_lists` FOREIGN KEY (`id_game_search`) REFERENCES `games_search` (`idgames_search`),
  CONSTRAINT `fk_genres_idgenres_recomm_lists` FOREIGN KEY (`id_prevailing_genre`) REFERENCES `genres` (`idgenres`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendation_lists`
--

LOCK TABLES `recommendation_lists` WRITE;
/*!40000 ALTER TABLE `recommendation_lists` DISABLE KEYS */;
INSERT INTO `recommendation_lists` VALUES (1,'2023-03-17 03:01:30',2,2,4,24),(3,'2023-03-17 10:58:06',3,5,2,14),(4,'2022-03-17 17:41:19',1,10,4,18),(5,'2022-03-17 07:14:37',1,8,9,16),(7,'2022-03-17 09:33:13',1,9,5,13),(8,'2023-03-17 05:24:59',2,7,9,25);
/*!40000 ALTER TABLE `recommendation_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `idstaff` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `post` char(100) NOT NULL,
  `salary` float unsigned NOT NULL,
  `factor_of_utility` float NOT NULL,
  `work_schedule_from` time NOT NULL,
  `work_schedule_to` time NOT NULL,
  `number_of_working_days` int NOT NULL,
  `id_account` int DEFAULT NULL,
  `id_staff_account` int DEFAULT NULL,
  `date_of_admission` datetime NOT NULL,
  `date_of_dismissal` datetime DEFAULT NULL,
  PRIMARY KEY (`idstaff`),
  UNIQUE KEY `id_staff_account_UNIQUE` (`id_staff_account`),
  KEY `fk_accounts_idaccounts_idx` (`id_account`),
  CONSTRAINT `fk_accounts_idaccounts_staff` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`idaccounts`),
  CONSTRAINT `fk_staff_accounts_idstaff_accounts_staff` FOREIGN KEY (`id_staff_account`) REFERENCES `staff_accounts` (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Paul Smith','Support specialist',2100,1,'08:00:00','17:30:00',27,NULL,NULL,'2021-11-16 14:42:31',NULL),(2,'Sandra Hunter','Support specialist',2300,1.1,'08:00:00','18:35:00',27,NULL,NULL,'2021-01-26 15:45:09',NULL),(3,'Robert Ward','Effects Artist',2100,1.05,'10:20:00','16:30:00',28,NULL,NULL,'2019-12-08 19:07:23',NULL),(4,'Michelle Mcclure','Mechanical Engineer',6500,1.2,'11:00:00','19:35:00',24,NULL,NULL,'2017-06-13 17:02:14',NULL),(5,'Brenda Bridges','Industrial Designer',7300,1.4,'11:20:00','18:00:00',24,NULL,NULL,'2018-03-18 04:37:57',NULL),(6,'Jordan Nguyen','Support specialist',2350,1.32,'17:30:00','02:35:00',26,9,NULL,'2022-05-27 08:08:56',NULL),(7,'Judy Jacobson','Electrical Engineer',7900,1.35,'11:45:00','20:30:00',25,NULL,NULL,'2018-01-03 00:52:11',NULL),(8,'Candice Blackwell','Support specialist',2250,1.45,'18:30:00','03:35:00',26,NULL,NULL,'2022-06-08 18:19:15',NULL),(9,'Karla Buckley','Psychologist, Research/Experimental',5600,1.55,'10:00:00','19:30:00',28,NULL,NULL,'2019-09-14 11:28:36',NULL),(10,'Krystal Stevenson','Support specialist',2400,1.3,'02:30:00','11:30:00',27,NULL,NULL,'2022-04-13 02:18:05',NULL),(11,'Amanda Crawford','Game Development Software Engineer',7248,1.38,'10:30:00','19:30:00',24,NULL,NULL,'2018-01-16 06:34:14',NULL),(12,'Jeffrey Jones','Support specialist',2400,1.25,'03:30:00','12:30:00',26,2,NULL,'2021-09-28 08:01:58',NULL),(13,'Gregory Watson','Game Design',6166,1.44,'11:40:00','19:45:00',24,NULL,NULL,'2019-10-11 19:39:22',NULL),(14,'Tina Frederick','Level Designer',4860,1.36,'10:40:00','18:25:00',28,NULL,NULL,'2017-10-28 01:40:01',NULL),(15,'Crystal Davis','Audio Software Engineer',10442,1.25,'09:30:00','20:30:00',26,10,NULL,'2016-08-30 05:07:00',NULL),(16,'Robert Hall','Computer Vision Software Engineer',15030,1.42,'08:30:00','20:45:00',27,NULL,NULL,'2017-07-15 23:10:17',NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_accounts`
--

DROP TABLE IF EXISTS `staff_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_accounts` (
  `id_staff` int NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(16) NOT NULL,
  PRIMARY KEY (`id_staff`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  CONSTRAINT `staff_accounts_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`idstaff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_accounts`
--

LOCK TABLES `staff_accounts` WRITE;
/*!40000 ALTER TABLE `staff_accounts` DISABLE KEYS */;
INSERT INTO `staff_accounts` VALUES (1,'20721145','6C289VQ4IVJK','18103456532'),(2,'50297928','H1CHVGL4S1S2','18102756660'),(3,'17369058','54TR2VS2QJ4R','18101906531'),(4,'73625896','3CIXO0A93DOY','18106400034'),(5,'13280598','77TPE31X4ERM','18100426135'),(6,'90150926','11WF96HP5LV3','18103786535'),(7,'38324193','16RS9PDM6IGL','18106456996'),(8,'19262777','Y26PEL299MO6','18108458830'),(9,'70604646','Q7BALRQ6W087','18102117738'),(10,'33500326','XW8KYHTIS8G7','18102456539'),(11,'61514031','234EDVIW2VLZ','18103333537'),(12,'865270','804KXVM96EWU','18101456599'),(13,'24093097','012Z1X9UWDHB','18102161138'),(14,'61284593','T45CNBI5I5ZD','18102456009'),(15,'56133845','8GM1B3RIODMT','18103449137'),(16,'9568631','B2HYIYE6HQCB','18101457339');
/*!40000 ALTER TABLE `staff_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supports`
--

DROP TABLE IF EXISTS `supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supports` (
  `idsupports` int NOT NULL,
  `id_staff` int NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`idsupports`,`id_staff`),
  KEY `fk_staff_idstaff_idx` (`id_staff`),
  CONSTRAINT `fk_staff_idstaff_supports` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`idstaff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supports`
--

LOCK TABLES `supports` WRITE;
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
INSERT INTO `supports` VALUES (1,1,'receipt/verification of the application'),(1,2,'transfer of the application'),(2,6,'receipt/verification of the application'),(2,8,'transfer of the application'),(3,10,'receipt/verification of the application'),(3,12,'transfer of the application');
/*!40000 ALTER TABLE `supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supports_to_developers`
--

DROP TABLE IF EXISTS `supports_to_developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supports_to_developers` (
  `idsupports_to_developers` int NOT NULL AUTO_INCREMENT,
  `id_developer` int NOT NULL,
  `id_support` int NOT NULL,
  `id_staff` int NOT NULL,
  `id_game` int DEFAULT NULL,
  `time_of_appeal` datetime NOT NULL,
  `data_of_appeal` longtext NOT NULL,
  PRIMARY KEY (`idsupports_to_developers`),
  KEY `fk_supports_idsupports_supp_to_devel_idx` (`id_support`),
  KEY `fk_developers_iddevelopers_supp_to_devel_idx` (`id_developer`),
  KEY `fk_staff_idstaff_supp_to_devel_idx` (`id_staff`),
  KEY `fk_games_idgames_supp_to_devel_idx` (`id_game`),
  CONSTRAINT `fk_developers_iddevelopers_supp_to_devel` FOREIGN KEY (`id_developer`) REFERENCES `developers` (`iddevelopers`),
  CONSTRAINT `fk_games_idgames_supp_to_devel` FOREIGN KEY (`id_game`) REFERENCES `games` (`idgames`),
  CONSTRAINT `fk_staff_idstaff_supp_to_devel` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`idstaff`),
  CONSTRAINT `fk_supports_idsupports_supp_to_devel` FOREIGN KEY (`id_support`) REFERENCES `supports` (`idsupports`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supports_to_developers`
--

LOCK TABLES `supports_to_developers` WRITE;
/*!40000 ALTER TABLE `supports_to_developers` DISABLE KEYS */;
INSERT INTO `supports_to_developers` VALUES (1,1,1,2,1,'2022-08-12 07:22:13','id match: 485842392392, 30:23, Techies cheater'),(2,1,1,2,1,'2022-08-13 00:45:58','id match: 485842492794, 32:04, 38:03, Tinker cheater'),(3,4,2,8,11,'2022-09-24 07:15:34','The inability to get the Bad father achievement. The complaint was received from a player with an account id 7'),(4,7,3,12,27,'2022-10-05 21:28:06','No quest with ID:DLC2EbonyWarriorQuest, all conditions have been met, the problem is with a player with id 5.'),(5,2,1,2,8,'2023-01-07 20:54:29','A cheater with the nickname Cray was discovered during an online session of a player with id 4. After joining, he killed the session host until he left the game. He broke all the armor from the inventory, the weapons in the slots and gave endless flasks with ordinary estus and ashen estus. Video with proof:');
/*!40000 ALTER TABLE `supports_to_developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes` (
  `idthemes` int NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL,
  PRIMARY KEY (`idthemes`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'Horror'),(2,'Mystery & Detective'),(3,'Open World'),(4,'Survival'),(5,'Zombies'),(6,'Supernatural'),(7,'Dark Fantasy'),(8,'Detective'),(9,'Great Soundtrack'),(10,'Atmospheric'),(11,'Story Rich'),(12,'Fantasy'),(13,'Crafting'),(14,'Building'),(15,'Sandbox'),(16,'Simulation'),(17,'Exploration'),(18,'Competitive'),(19,'Team-Based'),(20,'Tower Defense'),(21,'PvP'),(22,'Military'),(23,'Tactical'),(24,'eSports'),(25,'Chess'),(26,'Casual'),(27,'Stealth'),(28,'First-Person'),(29,'Psychological Horror'),(30,'Nudity'),(31,'Parkour'),(32,'Sci-fi'),(33,'Violent'),(34,'Sexual Content'),(35,'Mythology'),(36,'Combat'),(37,'Third Person'),(38,'Emotional'),(39,'Hack and Slash'),(40,'PVE'),(41,'Parkour'),(42,'Post-apocalyptic'),(43,'Choices Matter'),(44,'Crime'),(45,'Funny'),(46,'Racing'),(47,'Comedy'),(48,'Automobile Sim'),(49,'Medieval'),(50,'Magic'),(51,'Dark'),(52,'Character Customization'),(53,'Superhero'),(54,'Futuristic'),(55,'Immersive Sim'),(56,'Western'),(57,'Realistic'),(58,'Horses'),(59,'Beautiful'),(60,'Puzzle'),(61,'Remake'),(62,'Drama'),(63,'Emotional'),(64,'Comic Book'),(65,'Quick-Time Events'),(66,'Episodic'),(67,'Point & Click'),(68,'Dragons'),(69,'Moddable'),(70,'Walking Simulator'),(71,'Multiple Endings'),(72,'Cyberpunk'),(73,'Deckbuilding'),(74,'Trading Card Game'),(75,'Turn-Based'),(76,'Board Game'),(77,'Based On A Novel'),(78,'Inventory Management'),(79,'Classic');
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `idtypes` int NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL,
  PRIMARY KEY (`idtypes`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Single-player'),(2,'Online Co-op'),(3,'LAN Co-op'),(4,'Multiplayer'),(5,'Online Competitive'),(6,'Online PvP');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `IPaddress` varchar(100) NOT NULL,
  `visit_time` datetime NOT NULL,
  `id_account` int DEFAULT NULL,
  `id_staff_account` int DEFAULT NULL,
  PRIMARY KEY (`idusers`),
  KEY `fk_accounts_idaccounts_idx` (`id_account`),
  KEY `fk_staff_idstaff_idx` (`id_staff_account`),
  CONSTRAINT `fk_accounts_idaccounts_users` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`idaccounts`),
  CONSTRAINT `fk_staff_account_idstaff_account_users` FOREIGN KEY (`id_staff_account`) REFERENCES `staff_accounts` (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'46.164.176.196','2021-07-04 04:21:39',8,NULL),(2,'8.57.99.219','2021-07-12 09:12:49',3,NULL),(3,'8.57.99.219','2021-07-12 16:03:21',1,NULL),(4,'8.57.99.219','2021-07-13 00:33:08',5,NULL),(5,'46.164.176.196','2022-08-06 10:27:41',4,NULL),(6,'25.171.119.139','2022-08-17 05:10:23',NULL,NULL),(7,'99.206.240.218','2023-09-04 13:24:59',9,6),(8,'62.2.254.5','2023-10-13 17:00:04',2,12),(9,'231.206.54.13','2023-10-13 19:21:47',10,15),(10,'8.57.99.219','2023-11-14 07:27:17',3,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-09 15:44:11
UPDATE `games_v4`.`staff` SET `salary` = '7100' WHERE (`idstaff` = '3');
-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Запрос 1 - вывести названия повторяющихся тем из таблицы themes
select title from themes group by title having count(*)>1;

-- Запрос 2 - вывести id повторяюшихся тем из таблицы themes для последующего удаления дубликатов
-- P.S. дубликатом является второе по счёту id
select idthemes , title from themes
where title = 'Parkour' or title = 'Emotional'
order by title asc;

-- Запрос 3 - проверка на нахождение лишних дубликатов тем в уже заполненной таблице games_to_themes
-- если таковые имеются, то мы произведём операцию update вместо delete, чтобы избежать ошибки потери данных
select id_game, id_theme, games.title from games_to_themes as g_t_t
join games on g_t_t.id_game = games.idgames
where 
id_theme = 63 or 
id_theme = 41 ;
-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Запрос 4-5 - удаление дубликатов из таблицы themes 
delete from themes where 
idthemes = 63 or idthemes = 41;
-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Запрос 6 - вывести названия повторяющихся игровых наград из таблицы game_awards
select title from game_awards group by title having count(*)>1;

-- Запрос 7 - вывести id повторяюшихся игровых наград из таблицы game_awards для последующего удаления дубликатов
-- P.S. дубликатом является второе по счёту id
select idgame_awards, title from game_awards
where 
title = 'Best of Show' or 
title = 'Best Story' or 
title = 'Best Role Playing Game' or 
title = 'Original Dramatic Score, Franchise' or 
title = 'Fans` Choice' or 
title = 'Best Male Lead Vocal Performance in a Video Game' or 
title = 'Best Video Game' or
title = 'Outstanding Visual Effects in a Real-Time Project' or 
title = 'Song Collection'
order by title asc;

-- Запрос 8 - проверка на нахождение лишних дубликатов игровых наград в уже заполненной таблице games_to_awards
-- если таковые имеются, то мы произведём операцию update вместо delete, чтобы избежать ошибки потери данных
select id_game, games.title, id_award from games_to_awards as g_t_a
join games on g_t_a.id_game = games.idgames
where 
id_award = 97 or 
id_award = 104 or 
id_award = 120 or 
id_award = 132 or 
id_award = 77 or 
id_award = 114 or 
id_award = 89 or 
id_award = 122 or 
id_award = 107 ;

-- Запрос 9-15 - удаление дубликатов из таблицы game_awards
delete from game_awards where 
idgame_awards = 97 or 
idgame_awards = 104 or
idgame_awards = 120 or
idgame_awards = 132 or
idgame_awards = 114 or
idgame_awards = 122 or
idgame_awards = 107 ;

-- Запрос 16-17 - обновление данных в таблице games_to_awards
update games_to_awards set id_award = 70 where id_award = 77;
update games_to_awards set id_award = 65 where id_award = 89;

-- Запрос 18-19 - повторное удаление дубликатов из таблицы game_awards
delete from game_awards where 
idgame_awards = 77 or
idgame_awards = 89 ;
-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Запрос 20 - вывести id, логин, страну и дату создания аккаунтов, зарегистрированных после 2015 года в России
select idaccounts, login, country, account_creation_date from accounts
where year(account_creation_date) > 2015 and country like concat ('%','Russ','%');

-- Запрос 21 - вывести id, логин, страну и дату создания аккаунтов, зарегистрированных в период с 2014 по 2020 год
select idaccounts, login, country, account_creation_date from accounts
where year(account_creation_date) between 2014 and 2020;

-- Запрос 22 - вывести id, логин, страну, способ оплаты и номер телефона аккаунтов, у которых имеется привязанный для оплаты счёт 
select idaccounts, login, country, phone, form_of_payment from accounts
where form_of_payment is not null;


-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Запрос 23 - вывести IP-адреса аккаунтов, с которых было произведено несколько авторизаций
select IPaddress, group_concat(id_account separator ',  ') as 'id аккаунтов, в которые была произведена авторизация' from users
group by IPaddress having count(*)>1;

-- Запрос 24 - вывести id, логин, никнейм и время последнего посещения аккаунтов, авторизированных с одного IP-адреса
select IPaddress, id_account, accounts.login, accounts.nickname, visit_time from users
join accounts on users.id_account = accounts.idaccounts
where IPaddress = '46.164.176.196' or IPaddress = '8.57.99.219'
order by IPaddress desc;
-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Запрос 25 - вывести IP-адрес, последнее время посещения, должности и имена сотрудников, которые авторизировались со своего аккаунта
select IPaddress, staff.`name`, staff.post, visit_time from users
join staff on users.id_staff_account = staff.idstaff;

-- Запрос 26 - вывести имена, должности, ставки и заработные платы сотрудников со ставкой от 1 до 1.3
select name, post, salary, factor_of_utility from staff
where factor_of_utility between 1 and '1.3'
order by post, salary;

-- Запрос 27 - вывести имена, должности, ставки, номера телефонов и заработные платы сотрудников, присоединившихся к команде после 2018
select name, post, salary, factor_of_utility, staff_accounts.phone, date_of_admission from staff
join staff_accounts on staff.idstaff = staff_accounts.id_staff
where year(date_of_admission) > 2018
order by date_of_admission;

-- Запрос 28 - вывести id и имена сотрудников, у которых есть свой игровой аккаунт
select idstaff, name, id_account from staff
where id_account is not null
order by name asc;

-- Запрос 29 - вывести id, имена и рабочий график сотрудников, с количеством рабочих дней больше 26
select idstaff, name, work_schedule_from, work_schedule_to, number_of_working_days from staff
where number_of_working_days > 26
order by idstaff,name asc;

-- Запрос 30 - вывести среднюю заработную плату сотрудников с должностью Support specialist
select post as 'Должность', avg(salary) as 'Средняя заработная плата'from staff
where post = 'Support specialist';

-- Запрос 31 - вывести должность с наивысшей заработной платой
select post, salary from staff
where salary=(select max(salary) FROM staff);

-- Запрос 32- вывести должности с заработной платой от $6000 до $10000
select post, salary from staff
where salary between 6000 and 10000
order by salary;

-- Запрос 33 - вывести должности с заработной платой от $2000 до $10000 (ограничение - 10)
select post, salary from staff
where salary between 2000 and 10000
order by salary
limit 10;

-- Запрос 34 - вывести id, имена и должности сотрудников, которые уволились
select idstaff, name, post, date_of_dismissal from staff
where date_of_dismissal is not null;

-- Запрос 35 - вывести информацию о разработчиках с количеством продуктов равным 1
select * from developers
where number_of_products = 1
order by rating desc;

-- Запрос 36 - вывести информацию о разработчиках с рейтингом большим или равным 4
select * from developers
where rating >= 4
order by rating desc;

-- Запрос 37 - вывести информацию о разработчиках из Японии
select * from developers
where location like concat ('%','Japan','%')
order by rating desc;

-- Запрос 38 - вывести информацию о разработчиках из Америки
select * from developers
where location like concat ('%','US','%')
order by rating desc;

-- Запрос 39 - вывести названия игр, у которых общий разработчик и издатель
select title from games
where id_developer = id_publisher
order by title;

-- Запрос 40 - вывести разработчиков, список их продуктов и рейтинг
select developers.name as 'developer', rating, group_concat(title separator ',  ') as 'products' from games
join developers on games.id_developer = developers.iddevelopers
group by id_developer
order by rating desc;

-- Запрос 41 - вывести названия игр из серии Souls и Resident evil
select games_series.title as 'Серия игр', group_concat(games.title separator ',  ') as 'Игры, входящие в серию' from games
join games_series on games.id_game_series = games_series.idgames_series
where games_series.title like concat ('%','Soul','%') or games_series.title like concat ('%','resid','%')
group by id_game_series;

-- Запрос 42 - вывести id технической поддержки и имена всех принадлежащих ей сотрудников
select idsupports as '№ технической поддержки', group_concat(name separator ',  ') as 'имена сотрудников' from supports
join staff on supports.id_staff = staff.idstaff
group by idsupports;

-- Запрос 43 - вывести игры и врученные им награды
select games.title, group_concat(game_awards.title separator ',  ') from games_to_awards
join games on games_to_awards.id_game = games.idgames
join game_awards on games_to_awards.id_award = game_awards.idgame_awards
group by id_game;

-- Запрос 44 - вывести игры без единой номинации на награду
select idgames, title from games
where not exists (
    select 1 
    from games_to_awards 
    where games_to_awards.id_game = games.idgames); 
    
-- Запрос 45 - вывести игры с количеством наград от 1 до 10 (также вывести сами награды)
select games.title as 'Название игры', count(id_award) as 'Количество наград', group_concat(game_awards.title separator ',  ') as 'Награды' from games_to_awards
join game_awards on games_to_awards.id_award = game_awards.idgame_awards
join games on games_to_awards.id_game = games.idgames
group by id_game having count(id_award) between 1 and 10
order by count(id_award);

-- Запрос 46 - вывести игры с жанром Role-playing и Action
select genres.title as 'Название жанра', group_concat(games.title separator ',  ') as 'Игры, соответствующие выбранному жанру' from games_to_genres
join games on games_to_genres.id_game = games.idgames
join genres on games_to_genres.id_genre = genres.idgenres
where genres.title like concat ('%','role','%') or genres.title like concat ('%','str','%')
group by genres.title;

-- Запрос 47 - вывести игры, которые являются многопользовательскими
select types.title as 'Тип', group_concat(games.title separator ',  ') as 'Игры, соответствующие выбранному типу' from games_to_types
join games on games_to_types.id_game = games.idgames
join types on games_to_types.id_type = types.idtypes
where types.title like concat ('%','mult','%')
group by types.title;


-- Запрос 48 - вывести название, издателя и дату выпуска игр, вышедших после 2016 года и ассоциирующихся с темами realistic и open world
select games.title as 'Название игры', games.date_of_creation as 'Дата выпуска', publishers.`name` as 'Издатель', group_concat(themes.title separator ',  ') as 'Темы' from games_to_themes as g_t_t
join games on g_t_t.id_game = games.idgames
join themes on g_t_t.id_theme = themes.idthemes
join publishers on games.id_publisher = publishers.idpublishers
where year(games.date_of_creation) > 2016 and (themes.title like concat ('%', 'real', '%') or themes.title like concat ('%', 'open', '%'))
group by id_game
order by games.title asc;

-- Запрос 49 - вывести игры и ассоциирующиеся с ними темы
select games.title as 'Название игры', group_concat(themes.title separator ',  ') as 'Темы' from games_to_themes as g_t_t
join games on g_t_t.id_game = games.idgames
join themes on g_t_t.id_theme = themes.idthemes
group by id_game
order by games.title asc;

-- Запрос 50-55 - обновление данных в таблице accounts (добавление списка рекомендаций аккаунтам, с которых был произведён хотя бы 1 поисковой запрос)
update accounts set id_recommend_list = 1 where idaccounts = 1;
update accounts set id_recommend_list = 3 where idaccounts = 3;
update accounts set id_recommend_list = 4 where idaccounts = 4;
update accounts set id_recommend_list = 5 where idaccounts = 5;
update accounts set id_recommend_list = 7 where idaccounts = 7;
update accounts set id_recommend_list = 8 where idaccounts = 8;

-- Запрос 56 - вывести список игр, введённых в поисковых запросах у каждого аккаунта за всё время
select accounts.idaccounts as 'id аккаунта', accounts.login as 'Логин', group_concat(games.title separator ',  ') as'Поисковые запросы' from games_search
join accounts on games_search.id_account = accounts.idaccounts
join games on games_search.id_game = games.idgames
group by games_search.id_account;

-- Запрос 57 - показать список рекомендаций у каждого аккаунта
select accounts.login as 'Логин', accounts.idaccounts as 'id списка рекомендаций (соответствует id аккаунта)',genres.title as 'Преобладающий жанр', games.title as 'Игра, рекомендуемая к приобретению',  recommendation_lists.date_of_creation as 'Последнее обновление' from recommendation_lists
join accounts on recommendation_lists.id_account = accounts.idaccounts
join games on recommendation_lists.id_proposed_game = games.idgames
join genres on recommendation_lists.id_prevailing_genre = genres.idgenres
group by recommendation_lists.id_account;

-- Запрос 58 - показать все обращения аккаунтов в техническую поддержку № 2 в период с 6:00 до 18:00
select distinct accounts.idaccounts, accounts.login, supports.idsupports, time_of_appeal, data_of_appeal, id_game from accounts_to_supports
join accounts on accounts_to_supports.id_account = accounts.idaccounts
join supports on accounts_to_supports.id_support = supports.idsupports
where accounts_to_supports.id_support = 2 and (hour(time_of_appeal) between 6 and 18);

-- Запрос 59 - показать все обращения аккаунтов в техническую поддержку № 1 в период с 00:00 до 12:00
select distinct accounts.idaccounts, accounts.login, supports.idsupports, time_of_appeal, data_of_appeal, id_game from accounts_to_supports
join accounts on accounts_to_supports.id_account = accounts.idaccounts
join supports on accounts_to_supports.id_support = supports.idsupports
where accounts_to_supports.id_support = 1 and (hour(time_of_appeal) between 0 and 12)
order by time_of_appeal;

-- Запрос 60 - показать все обращения аккаунтов в техническую поддержку, не связанные с внутриигровыми проблемами
select distinct accounts.idaccounts, accounts.login, supports.idsupports, time_of_appeal, data_of_appeal, id_game from accounts_to_supports
join accounts on accounts_to_supports.id_account = accounts.idaccounts
join supports on accounts_to_supports.id_support = supports.idsupports
where id_game is null
order by time_of_appeal;

-- Запрос 61 - вывести количество сотрудников с должностью Support specialist
select post, count(post) as 'Количество сотрудников' from staff
where post = 'Support specialist';

-- Запрос 62 - вывести основную информацию о сотруднике, чья заработная плата является самой низкой
select idstaff, name, post, salary, work_schedule_from, work_schedule_to, number_of_working_days from staff
where salary=(select min(salary) FROM staff);

-- Запрос 63 - вывести названия приобретённых игр у всех аккаунтов
select id_account, accounts.login, accounts.nickname, group_concat(games.title separator ',  ') as 'Названия игр' from games_purchase as g_p
join accounts on g_p.id_account = accounts.idaccounts
join games on g_p.id_game = games.idgames
group by g_p.id_account;

-- Запрос 64 - объединение результирующего набора select для двух таблиц (games_search и games_purchase - поиск и покупка игр соответственно)
select id_account, group_concat(id_game separator ',  ') as 'id просмотренных и купленных игр' from games_purchase group by id_account 
union 
select id_account, group_concat(id_game separator ',  ') from games_search group by id_account;

-- Запрос 65 - выборка между двумя таблицами (publishers и developers - издатели и разработчики игр соответственно). Запрос выводит имена разработчиков и издателей, которые являются общими для обеих таблиц
-- Данный запрос выведет крупные компании, которые являются одновременно и разработчиками и издателями своих игр
select publishers.`name` from publishers
right join developers using(`name`);

-- Запрос 66 - 93 - обновление данных в новом добавленном столбце в таблице games(price) - стоимость игр
UPDATE `games` SET `price` = '14.99' WHERE (`idgames` = '4');
UPDATE `games` SET `price` = '13.99' WHERE (`idgames` = '5');
UPDATE `games` SET `price` = '39.99' WHERE (`idgames` = '6');
UPDATE `games` SET `price` = '39.99' WHERE (`idgames` = '7');
UPDATE `games` SET `price` = '59.99' WHERE (`idgames` = '8');
UPDATE `games` SET `price` = '19.99' WHERE (`idgames` = '9');
UPDATE `games` SET `price` = '29.99' WHERE (`idgames` = '10');
UPDATE `games` SET `price` = '19.99' WHERE (`idgames` = '11');
UPDATE `games` SET `price` = '29.99' WHERE (`idgames` = '12');
UPDATE `games` SET `price` = '19.99' WHERE (`idgames` = '13');
UPDATE `games` SET `price` = '49.99' WHERE (`idgames` = '14');
UPDATE `games` SET `price` = '59.99' WHERE (`idgames` = '16');
UPDATE `games` SET `price` = '23.99' WHERE (`idgames` = '15');
UPDATE `games` SET `price` = '49.99' WHERE (`idgames` = '17');
UPDATE `games` SET `price` = '39.99' WHERE (`idgames` = '18');
UPDATE `games` SET `price` = '19.99' WHERE (`idgames` = '19');
UPDATE `games` SET `price` = '29.99' WHERE (`idgames` = '20');
UPDATE `games` SET `price` = '19.99' WHERE (`idgames` = '21');
UPDATE `games` SET `price` = '39.99' WHERE (`idgames` = '22');
UPDATE `games` SET `price` = '59.99' WHERE (`idgames` = '23');
UPDATE `games` SET `price` = '49.99' WHERE (`idgames` = '24');
UPDATE `games` SET `price` = '39.99' WHERE (`idgames` = '25');
UPDATE `games` SET `price` = '39.99' WHERE (`idgames` = '26');
UPDATE `games` SET `price` = '43.99' WHERE (`idgames` = '27');
UPDATE `games` SET `price` = '19.99' WHERE (`idgames` = '28');
UPDATE `games` SET `price` = '9.99' WHERE (`idgames` = '29');
UPDATE `games` SET `price` = '19.99' WHERE (`idgames` = '30');

/*///////////////////////////////////////////////////////////////////////////////////////////////*/ -- ДОБАВЛЕНИЕ ДАННЫХ В ТАБЛИЦУ accounts (аккаунты)
load data infile
'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\accounts.csv'
INTO TABLE accounts
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(email, login, `password`, nickname, country, form_of_payment, phone, account_creation_date);
/*///////////////////////////////////////////////////////////////////////////////////////////////*/
/*///////////////////////////////////////////////////////////////////////////////////////////////*/ -- ДОБАВЛЕНИЕ ДАННЫХ В ТАБЛИЦУ staff (сотрудники)
load data infile
'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\staff.csv'
INTO TABLE staff
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(`name`, post, salary, factor_of_utility, work_schedule_from, work_schedule_to, number_of_working_days, date_of_admission);
/*///////////////////////////////////////////////////////////////////////////////////////////////*/
/*///////////////////////////////////////////////////////////////////////////////////////////////*/ -- ДОБАВЛЕНИЕ ДАННЫХ В ТАБЛИЦУ staff_accounts (аккаунты сотрудников)
load data infile
'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\staff_accounts.csv'
INTO TABLE staff_accounts
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(id_staff, login, `password`, phone);
/*///////////////////////////////////////////////////////////////////////////////////////////////*/
/*///////////////////////////////////////////////////////////////////////////////////////////////*/ -- ДОБАВЛЕНИЕ ДАННЫХ В ТАБЛИЦУ users (неавторизированные пользователи)
load data infile
'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(IPaddress, visit_time, id_account);
/*///////////////////////////////////////////////////////////////////////////////////////////////*/
/*///////////////////////////////////////////////////////////////////////////////////////////////*/ -- ДОБАВЛЕНИЕ ДАННЫХ В ТАБЛИЦУ games_search (поисковые запросы игр)
load data infile
'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\games_search.csv'
INTO TABLE games_search
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(id_game, id_account, time_of_search);
/*///////////////////////////////////////////////////////////////////////////////////////////////*/
/*///////////////////////////////////////////////////////////////////////////////////////////////*/ -- ДОБАВЛЕНИЕ ДАННЫХ В ТАБЛИЦУ games_purchase (операции приобретения игр)
load data infile
'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\games_purchase.csv'
INTO TABLE games_purchase
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(id_account, id_game, time_of_purchase);
/*///////////////////////////////////////////////////////////////////////////////////////////////*/

-- Исправление некорректных данных, полученных путём автоматического генерирования
update accounts set form_of_payment = null 
where form_of_payment = '';

/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
-- Выбор 6 самых актуальных запросов для моей базы данных:

-- 1)
-- Запрос 46 - вывести игры с жанром Role-playing и Action
select genres.title as 'Название жанра', group_concat(games.title separator ',  ') as 'Игры, соответствующие выбранному жанру' from games_to_genres
join games on games_to_genres.id_game = games.idgames
join genres on games_to_genres.id_genre = genres.idgenres
where genres.title = 'Role-Playing' or genres.title = 'Action'
group by genres.title;

-- 2)
-- Запрос 47 - вывести игры, которые являются многопользовательскими
select types.title as 'Тип', group_concat(games.title separator ',  ') as 'Игры, соответствующие выбранному типу' from games_to_types
join games on games_to_types.id_game = games.idgames
join types on games_to_types.id_type = types.idtypes
where types.title = 'Multiplayer'
group by types.title;

-- 3)
-- Запрос 48 - вывести название, издателя и дату выпуска игр, вышедших после 2016 года и ассоциирующихся с темами realistic и open world
select games.title as 'Название игры', games.date_of_creation as 'Дата выпуска', publishers.`name` as 'Издатель', group_concat(themes.title separator ',  ') as 'Темы' from games_to_themes as g_t_t
join games on g_t_t.id_game = games.idgames
join themes on g_t_t.id_theme = themes.idthemes
join publishers on games.id_publisher = publishers.idpublishers
where year(games.date_of_creation) > 2016 and (themes.title = 'Realistic' or themes.title = 'Open World')
group by id_game
order by games.title asc;

-- 4)
-- Запрос 57 - показать список рекомендаций у каждого аккаунта
select accounts.login as 'Логин', genres.title as 'Преобладающий жанр', games.title as 'Игра, рекомендуемая к приобретению',  recommendation_lists.date_of_creation as 'Последнее обновление' from recommendation_lists
join accounts on recommendation_lists.id_account = accounts.idaccounts
join games on recommendation_lists.id_proposed_game = games.idgames
join genres on recommendation_lists.id_prevailing_genre = genres.idgenres
group by recommendation_lists.id_account;

-- 5)
-- Запрос 63 - вывести названия приобретённых игр у всех аккаунтов
select id_account, accounts.login, accounts.nickname, group_concat(games.title separator ',  ') as 'Названия игр' from games_purchase as g_p
join accounts on g_p.id_account = accounts.idaccounts
join games on g_p.id_game = games.idgames
group by g_p.id_account;

-- 6)
-- Запрос 40 - вывести разработчиков, список их продуктов и рейтинг
select developers.name as 'developer', rating, group_concat(title separator ',  ') as 'products' from games
join developers on games.id_developer = developers.iddevelopers
group by id_developer
order by rating desc;

-- Добавление индексов для оптимизации поисковых запросов
create index idx_genres on genres(title);
-- --------------------------------------
create index idx_types on types(title);
-- --------------------------------------
create index idx_themes on themes(title);
-- --------------------------------------
-- --------------------------------------
-- drop index idx_genres on genres;
-- --------------------------------------
-- drop index idx_types on types;
-- --------------------------------------
-- drop index idx_themes on themes;
-- --------------------------------------

--                               ПРОЦЕДУРЫ

-- Процедура №1 - Определение количества сотрудников с определённой должностью
DELIMITER  $$
create procedure employees (in in_post char(100))
begin
declare `number_of_employees` int default 0;
select count(*) into `number_of_employees` from staff
where post = in_post;

select in_post as 'Должность', `number_of_employees` as 'Количество сотрудников с найденной должностью';
end$$
DELIMITER ;

/*//////////////////////*/
call `employees` ('Support Specialist');
call `employees` ('Analyst Programmer');
/*//////////////////////*/
-- drop procedure `employees`;
/*//////////////////////*/

-- Процедура №2 - Анализ продаж определённой игры за полгода в период с `year1` года по `year2` год (к примеру, для предоставления на неё в дальнейшем скидки)
DELIMITER  $$
create procedure sales_analysis (in game_title char(100), in `year1` int, in `year2` int)
begin
select games.title as 'Название игры', count(*) as 'Количество проданных копий',
case 
when count(*) > 6 and count(*) <= 14 then 'Средняя продаваемость'
when count(*) <= 6 then 'Низкая продаваемость'
when count(*) > 14 then 'Лидеры продаж'
end as 'Категория'
from games_purchase as g_p
join accounts on g_p.id_account = accounts.idaccounts
join games on g_p.id_game = games.idgames
where games.title like concat ('%',game_title, '%') and year(g_p.time_of_purchase) between `year1` and `year2` and month(g_p.time_of_purchase) between 1 and 6
group by id_game;
end$$
DELIMITER ;

/*//////////////////////*/
call `sales_analysis`('resident', 2022, 2023); -- Resident evil
call `sales_analysis`('s.t.', 2019, 2022); -- S.t.a.l.k.e.r.
/*//////////////////////*/
-- drop procedure `sales_analysis`;
/*//////////////////////*/

-- Процедура №3 - Обычный поисковый запрос поиска игры по выбранному жанру и типу
DELIMITER  $$
create procedure search_games_by_genre_and_type (in genre char(100), in `type` char(100))
begin
select games.title as 'Название игры', games.price as 'Стоимость', genres.title as 'Жанр', types.title as 'Тип', developers.name as 'Разработчик', publishers.`name` as 'Издатель' from games
join games_to_genres on games.idgames = games_to_genres.id_game
join games_to_types on games.idgames = games_to_types.id_game
join genres on games_to_genres.id_genre = genres.idgenres
join `types` on games_to_types.id_type = `types`.idtypes
join publishers on games.id_publisher = publishers.idpublishers
join developers on games.id_developer = developers.iddevelopers
where genres.title = genre and `types`.title = `type`;
end$$
DELIMITER ;

/*//////////////////////*/
call search_games_by_genre_and_type('Action','Multiplayer');
call search_games_by_genre_and_type('Role-Playing','Single-player');
/*//////////////////////*/
drop procedure `search_games_by_genre_and_type`;
/*//////////////////////*/

--                                                                      ФУНКЦИИ

-- Функция №1 - Возвращение обновлённой цены на игру после скидки (во входных параметрах подаётся изначальная цена на игру и размер самой скидки в %, выходной параметр - обновленная цена)
DELIMITER $$
CREATE FUNCTION price_update (price float, discount int) 
RETURNS float
DETERMINISTIC
BEGIN
    DECLARE new_price float;
    set new_price = price - (price * (discount / 100));
	RETURN (new_price);
END$$
DELIMITER ;

/*//////////////////////*/
select title as 'Название игры', price as 'Стоимость', round(price_update(price, 25), 2) as 'Стоимость со скидкой' 
from games
where price is not null
limit 8;
/*//////////////////////*/
-- drop function `price_update`;
/*//////////////////////*/

-- Функция №2 - Изменение цены на игру в зависимости от её популярности (продаж за определённый период)
DELIMITER $$
CREATE FUNCTION price_update_from_quantity (price float, quantity int) 
RETURNS float
DETERMINISTIC
BEGIN
    DECLARE new_price float;
    DECLARE sale int;
    -- ----------------------
    if quantity <= 9 then
    set sale = 55;
    elseif quantity > 9 and quantity <= 16 then
    set sale = 38;
    else
    set sale = 20;
    end if;
    -- ---------------------
    set new_price = price - (price * (sale / 100));
	RETURN (new_price);
END$$
DELIMITER ;

/*//////////////////////*/
select games.title as 'Название игры', games.price as 'Стоимость', count(id_game) as 'Количество проданных копий', round(price_update_from_quantity(games.price, count(id_game)), 2) as 'Стоимость со скидкой', round((games.price - price_update_from_quantity(games.price, count(id_game))) / price * 100) as 'Размер скидки в %' 
from games
join games_purchase on games.idgames = games_purchase.id_game
where price is not null and year(games_purchase.time_of_purchase) in (2021,2022)
group by id_game
order by count(id_game);
/*//////////////////////*/
-- drop function `price_update_from_quantity`;
/*//////////////////////*/

-- Функция №3 - Расчёт заработной платы сотрудников с учётом их ставки
DELIMITER $$
CREATE FUNCTION salary_calculation (salary int, factor_of_utility float) 
RETURNS float
DETERMINISTIC
BEGIN
    DECLARE new_salary float;
    set new_salary = salary * factor_of_utility;
	RETURN new_salary;
END$$
DELIMITER ;

/*//////////////////////*/
select `name`, post, salary as 'salary without rate', factor_of_utility as 'rate', salary_calculation(salary, factor_of_utility) as 'salary with rate' from staff;
/*//////////////////////*/
-- drop function `games_on_account`;
/*//////////////////////*/

--                  Представления

-- Представление № 1 - список рекомендаций пользователя
create view view_recommendation_list as
select distinct accounts.login as 'Логин', genres.title as 'Преобладающий жанр', games.title as 'Игра, рекомендуемая к приобретению',  recommendation_lists.date_of_creation as 'Последнее обновление' 
from recommendation_lists
join accounts on recommendation_lists.id_account = accounts.idaccounts
join games on recommendation_lists.id_proposed_game = games.idgames
join genres on recommendation_lists.id_prevailing_genre = genres.idgenres;

/*//////////////////////*/
select * from view_recommendation_list;
/*//////////////////////*/
-- drop view view_recommendation_list;
/*//////////////////////*/

-- Представление № 2 - разработчики игр и список их продуктов
create view view_developers as
-- Запрос 40 - вывести разработчиков, список их продуктов и рейтинг
select developers.name as 'developer', rating, group_concat(title separator ',  ') as 'products' 
from games
join developers on games.id_developer = developers.iddevelopers
group by id_developer
order by rating desc;

/*//////////////////////*/
select * from view_developers;
/*//////////////////////*/
-- drop view view_developers;
/*//////////////////////*/

-- Представление № 3 - библиотека игр всех пользователей
create view view_games_on_accounts as
-- Запрос 63 - вывести названия приобретённых игр у всех аккаунтов
select id_account, accounts.login, accounts.nickname, group_concat(games.title separator ',  ') as 'Названия игр' 
from games_purchase as g_p
join accounts on g_p.id_account = accounts.idaccounts
join games on g_p.id_game = games.idgames
group by g_p.id_account;

/*//////////////////////*/
select * from view_games_on_accounts;
/*//////////////////////*/
-- drop view view_games_on_accounts;
/*//////////////////////*/

--                               Триггеры

-- Триггер № 1 - удаление сотрудника из системы вместе с его аккаунтом
DELIMITER $$
CREATE TRIGGER `employees_delete` after delete ON staff
FOR EACH ROW 
BEGIN
   delete from staff where staff_accounts.id_staff = staff.idstaff;
END$$
DELIMITER ;
DROP TRIGGER `employees_delete`;

delete from staff_accounts where id_staff = 20;