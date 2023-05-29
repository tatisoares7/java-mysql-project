-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dbvendas
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `tbvenda`
--

DROP TABLE IF EXISTS `tbvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbvenda` (
  `idvenda` int NOT NULL AUTO_INCREMENT,
  `valorvenda` varchar(50) DEFAULT NULL,
  `qtdvendida` int NOT NULL,
  `datavenda` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idpdt` int NOT NULL,
  `idcliente` int DEFAULT NULL,
  `nomeplat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idvenda`),
  KEY `idpdt` (`idpdt`),
  KEY `idcliente` (`idcliente`),
  KEY `fk_nomeplat` (`nomeplat`),
  CONSTRAINT `fk_nomeplat` FOREIGN KEY (`nomeplat`) REFERENCES `tbplataforma` (`nomeplat`),
  CONSTRAINT `tbvenda_ibfk_1` FOREIGN KEY (`idpdt`) REFERENCES `tbproduto` (`idpdt`),
  CONSTRAINT `tbvenda_ibfk_2` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbvenda`
--

LOCK TABLES `tbvenda` WRITE;
/*!40000 ALTER TABLE `tbvenda` DISABLE KEYS */;
INSERT INTO `tbvenda` VALUES (6,'9.000,00',3,'2023-04-10 02:51:29',4,1,'Mercado Livre'),(7,'3000,00',1,'2023-04-10 02:51:57',4,1,'Shopee');
/*!40000 ALTER TABLE `tbvenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10  0:07:30
