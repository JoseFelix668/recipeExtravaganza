CREATE DATABASE  IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sys`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sys
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '1edcc806-4999-11f1-9a6f-9e36215c8c65:1-84';

--
-- Table structure for table `Ingredients`
--

DROP TABLE IF EXISTS `Ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingredients` (
  `ingredientsID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `foodg` varchar(45) NOT NULL,
  `cal` int NOT NULL,
  PRIMARY KEY (`ingredientsID`),
  UNIQUE KEY `id_UNIQUE` (`ingredientsID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredients`
--

LOCK TABLES `Ingredients` WRITE;
/*!40000 ALTER TABLE `Ingredients` DISABLE KEYS */;
INSERT INTO `Ingredients` VALUES (1,'Green Plantain','Fruit',152),(2,'Sirloin Tip','Protein',140),(3,'Salt','Spice',0),(4,'Pepper','Spice',17),(5,'Garlic Powder','Spice',32),(6,'Onion Powder','Spice',24),(7,'Smoked Paprika','Spice',15),(8,'Mazola','Oil',120),(9,'Lemon Juice','Juice',3),(10,'Olive Oil','Oil',119),(11,'Garlic','Veg',4),(12,'Dried Oregano','Spice',5),(13,'Chili Powder','Spice',22),(14,'Chicken Breast','Protein',231);
/*!40000 ALTER TABLE `Ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recipes`
--

DROP TABLE IF EXISTS `Recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recipes` (
  `recipesID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `chef` varchar(45) NOT NULL,
  `des` varchar(255) NOT NULL,
  `protein` varchar(45) NOT NULL,
  PRIMARY KEY (`recipesID`),
  UNIQUE KEY `idRecipes_UNIQUE` (`recipesID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipes`
--

LOCK TABLES `Recipes` WRITE;
/*!40000 ALTER TABLE `Recipes` DISABLE KEYS */;
INSERT INTO `Recipes` VALUES (1,'Fried Plantains with Beef','JoseFelix','While not the most nutritious meal in the world, it\'s a simple meal that reminds him of home. The meal is made by slicing some unripe plantains and frying them in oil, usually served with a slice of Milanesa.','Beef'),(2,'Grilled Chicken ','JoseFelix','A nice and simple grilled chicken. This marinated chicken, while not the most complicated dish in the world, can open your doors to explore your culinary tastes.','Chicken');
/*!40000 ALTER TABLE `Recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecipesIngredients`
--

DROP TABLE IF EXISTS `RecipesIngredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecipesIngredients` (
  `riID` int NOT NULL AUTO_INCREMENT,
  `rID` int NOT NULL,
  `iID` int NOT NULL,
  PRIMARY KEY (`riID`),
  UNIQUE KEY `idR-I_UNIQUE` (`riID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipesIngredients`
--

LOCK TABLES `RecipesIngredients` WRITE;
/*!40000 ALTER TABLE `RecipesIngredients` DISABLE KEYS */;
INSERT INTO `RecipesIngredients` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,3),(10,2,4),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,2,14);
/*!40000 ALTER TABLE `RecipesIngredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Steps`
--

DROP TABLE IF EXISTS `Steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Steps` (
  `stepsID` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `step` varchar(255) NOT NULL,
  `rID` varchar(45) NOT NULL,
  PRIMARY KEY (`stepsID`),
  UNIQUE KEY `idSteps_UNIQUE` (`stepsID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Steps`
--

LOCK TABLES `Steps` WRITE;
/*!40000 ALTER TABLE `Steps` DISABLE KEYS */;
INSERT INTO `Steps` VALUES (1,1,'Fill your sink with water and leave plantains to soak for atleast 30 minutes, the longer the better.','1'),(2,2,'Use a meat mallet to make your beef into a ~1/4 inch thick slice. Cut as desired.','1'),(3,3,'Season meat with a tablespoon of salt, pepper, onion powder, garlic powder, and smoked paprika. Leave your meat to marinate.','1'),(4,4,'Fill a bowl with water and place it next to your sink. Pour oil into a medium-sized pot. (Make sure the oil is boiling before beginning the next step)','1'),(5,5,'Cut individual plantains carefully from the stem to the bottom and carefully take the fruit out and place it in the bowl. Once there are enough plantains to fill about half of your pot move to the next step.','1'),(6,6,'Cut the plantains into slices at an angle. Once all pieces are cut and placed on a cutting board, pour enough salt to slighlty cover them and mix.','1'),(7,7,'Carefully pour plantains into your pot of oil. Stir ocassionally to keep them from sticking to eachother. Take out when golden brown and place them on a paper towel.','1'),(8,8,'Repeat steps 5-7 until your desired number of plantains are cooked. Take your pot off of the heat.','1'),(9,9,'Heat up a pan on medium heat and pour a slight amount of oil into it.','1'),(10,10,'Cook meat on both sides until it reaches desired doneness.','1'),(11,11,'Serve with beef cut into bite-sized piece or enjoy as is.','1'),(12,1,'Mix together marinade ingredients in a small bowl.','2'),(13,2,'Put the chicken in a plastic bag and use a meat mallet to make your chicken about 1/2 inch thick.','2'),(14,3,'Pour the marinade into the bag and place it in the fridge to marinate for at least 30 minutes.','2'),(15,4,'Heat your grill to medium high.','2'),(16,5,'Grill the chicken for 5-8 minutes per side with the cover closed or until it\'s fully cooked.','2'),(17,6,'Serve and enjoy!','2');
/*!40000 ALTER TABLE `Steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2026-05-06 22:15:45',NULL),('diagnostics.include_raw','OFF','2026-05-06 22:15:45',NULL),('ps_thread_trx_info.max_length','65535','2026-05-06 22:15:45',NULL),('statement_performance_analyzer.limit','100','2026-05-06 22:15:45',NULL),('statement_performance_analyzer.view',NULL,'2026-05-06 22:15:45',NULL),('statement_truncate_len','64','2026-05-06 22:15:45',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-14  9:39:38
