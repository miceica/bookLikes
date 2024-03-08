CREATE DATABASE  IF NOT EXISTS `booklikes` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `booklikes`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: booklikes
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `idbook` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `author` varchar(45) DEFAULT NULL,
  `isbn` varchar(45) NOT NULL,
  `dateB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idbook`),
  UNIQUE KEY `isbn_UNIQUE` (`isbn`),
  KEY `fk_book_user1_idx` (`user_id`),
  CONSTRAINT `fk_book_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Angel Negro','Empiezan follando y se anemoran en un laberinto','V.C. Andrews','9788417968250','2024-03-04 18:31:54',5,NULL),(6,'Crepusculo','Va de adolescentes intensitos','Stephenie Meyer','9788420469287','2024-03-07 18:57:26',4,NULL),(7,'Dune','Gusanos macizos','Frank Herbert','4654687646315','2024-03-07 18:58:06',6,NULL),(8,'El señor de los anillos','Un anillo malo que hay que destruir','J.R.R. Tolkien','5875693254486','2024-03-07 19:25:09',6,NULL),(9,'Harry Potter','Instituto de magos intensitos','JK Rowling','1598745632147','2024-03-08 16:24:53',6,NULL),(10,'Una corte de rosas y espinas','Flipada y elfos muchos elfos','Intensita','15987463254','2024-03-08 16:30:15',4,NULL),(11,'Decameron','Ricos cuentacuentos','Bocaccio','6898462577','2024-03-08 16:32:13',5,NULL),(12,'La historia interminable','Un chaval que se lee un libro y luego es el libro','Michael Endel','5842684122','2024-03-08 16:36:37',6,NULL),(13,'Clean Code','Obseso del orden','Colega de Adri','4586324852','2024-03-08 16:43:40',9,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fav`
--

DROP TABLE IF EXISTS `fav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fav` (
  `idfav` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `dateL` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idfav`),
  KEY `fk_user_has_libro_libro1_idx` (`book_id`),
  KEY `fk_user_has_libro_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_book_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`idbook`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_has_book_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`iduser`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fav`
--

LOCK TABLES `fav` WRITE;
/*!40000 ALTER TABLE `fav` DISABLE KEYS */;
INSERT INTO `fav` VALUES (1,5,1,'2024-03-04 18:33:29'),(6,6,1,'2024-03-07 16:40:54'),(7,6,1,'2024-03-07 16:41:23'),(8,6,1,'2024-03-07 16:51:00'),(9,6,1,'2024-03-07 16:53:28'),(10,6,1,'2024-03-07 16:55:54'),(11,6,1,'2024-03-07 16:55:58'),(13,6,1,'2024-03-07 16:58:26'),(14,6,1,'2024-03-07 16:58:27'),(15,6,1,'2024-03-07 16:58:28'),(16,6,1,'2024-03-07 16:58:28'),(17,6,1,'2024-03-07 16:58:28');
/*!40000 ALTER TABLE `fav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `dateU` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'Sofia','1234','2024-03-04 18:22:46'),(5,'Arantxa','1234','2024-03-04 18:22:46'),(6,'Miguel','1234','2024-03-04 18:22:46'),(7,'Tomas','1234','2024-03-05 18:43:52'),(8,'Tomás','1234','2024-03-05 19:03:53'),(9,'Adri','1234','2024-03-08 16:42:36');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-08 19:00:08
