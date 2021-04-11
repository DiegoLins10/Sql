CREATE DATABASE  IF NOT EXISTS `departamento` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `departamento`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: departamento
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departamento` (
  `IdDepto` int(11) NOT NULL,
  `NomeDepto` varchar(15) NOT NULL,
  `Gerente` int(11) NOT NULL,
  `Divisao` varchar(10) NOT NULL,
  `Local` varchar(15) NOT NULL,
  PRIMARY KEY (`IdDepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (10,'DIRETORIA',1,'SUDOESTE','SAO PAULO'),(20,'ESTOQUE',101,'SUDOESTE','CAMPINAS'),(30,'TI',2,'SUDOESTE','RIBEIRAO'),(40,'VENDAS',102,'SUDOESTE','JUNDIAI'),(50,'COMPRAS',3,'SUDOESTE','SAO PAULO'),(60,'RH',103,'SUDOESTE','COTIA');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado`
--

DROP TABLE IF EXISTS `empregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empregado` (
  `IdEmpregado` int(11) NOT NULL,
  `NomeEmpregado` varchar(20) NOT NULL,
  `IdDepto` int(11) DEFAULT NULL,
  `Cargo` varchar(6) NOT NULL,
  `Tempo_Emp` int(11) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Comissao` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`IdEmpregado`),
  KEY `FK_Depto` (`IdDepto`),
  CONSTRAINT `FK_Depto` FOREIGN KEY (`IdDepto`) REFERENCES `departamento` (`iddepto`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado`
--

LOCK TABLES `empregado` WRITE;
/*!40000 ALTER TABLE `empregado` DISABLE KEYS */;
INSERT INTO `empregado` VALUES (1,'Alice',10,'GER',5,15000.00,NULL),(2,'Sophia',20,'GER',6,15000.00,NULL),(3,'Helena',30,'GER',6,15000.00,NULL),(4,'Valentina',40,'GER',9,15000.00,NULL),(5,'Laura',50,'GER',5,15000.00,NULL),(6,'Isabella',60,'GER',8,15000.00,NULL),(7,'Manuela',10,'ADM',7,5000.00,NULL),(8,'Júlia',20,'ADM',5,5000.00,NULL),(9,'Heloísa',30,'ADM',7,5000.00,NULL),(10,'Luiza',40,'VEND',5,3500.00,1150.00),(11,'Maria Luiza',50,'ADM',11,5000.00,NULL),(12,'Lorena',60,'ADM',6,5000.00,NULL),(13,'Lívia',10,'ADM',5,5000.00,NULL),(14,'Giovanna',20,'ADM',8,5000.00,NULL),(15,'Maria Eduarda',30,'ADM',13,5000.00,NULL),(16,'Beatriz',40,'VEND',7,3500.00,1230.00),(17,'Maria Clara',50,'ADM',11,5000.00,NULL),(18,'Cecília',60,'ADM',7,5000.00,NULL),(19,'Eloá',10,'ADM',4,5000.00,NULL),(20,'Lara',20,'ADM',4,5000.00,NULL),(21,'Maria Júlia',30,'ADM',11,5000.00,NULL),(22,'Isadora',40,'VEND',7,3500.00,1290.00),(23,'Mariana',50,'AUX',7,3000.00,NULL),(24,'Emanuelly',60,'AUX',9,3000.00,NULL),(25,'Ana Júlia',10,'AUX',9,3000.00,NULL),(26,'Ana Luiza',20,'AUX',9,3000.00,NULL),(27,'Ana Clara',30,'AUX',9,3000.00,NULL),(28,'Melissa',40,'VEND',7,3500.00,1350.00),(29,'Yasmin',50,'ADM',6,5000.00,NULL),(30,'Maria Alice',60,'ATEND',11,2700.00,NULL),(31,'Isabelly',10,'ATEND',8,2700.00,NULL),(32,'Lavínia',20,'ATEND',7,2700.00,NULL),(33,'Esther',30,'ATEND',6,2700.00,NULL),(34,'Sarah',40,'ATEND',5,2700.00,NULL),(35,'Elisa',50,'ATEND',5,2700.00,NULL),(36,'Antonella',60,'ADM',9,5000.00,NULL),(37,'Rafaela',10,'AUX',7,3000.00,NULL),(38,'Maria Cecília',20,'AUX',13,3000.00,NULL),(39,'Liz',30,'ADM',3,5000.00,NULL),(40,'Marina',40,'VEND',6,3500.00,1460.00),(41,'Nicole',50,'AUX',6,3000.00,NULL),(42,'Maitê',60,'ADM',5,5000.00,NULL),(43,'Isis',10,'VEND',4,3500.00,1470.00),(44,'Alícia',20,'ATEND',6,2700.00,NULL),(45,'Luna',30,'ATEND',4,2700.00,NULL),(46,'Rebeca',40,'VEND',6,3500.00,1520.00),(47,'Agatha',50,'AUX',6,3000.00,NULL),(48,'Letícia',60,'AUX',7,3000.00,NULL),(49,'Maria-',10,'AUX',6,3000.00,NULL),(50,'Gabriela',20,'AUX',8,3000.00,NULL),(51,'Ana Laura',30,'ADM',9,5000.00,NULL),(52,'Catarina',40,'VEND',8,3500.00,1600.00),(53,'Clara',50,'ADM',5,5000.00,NULL),(54,'Ana Beatriz',60,'ADM',11,5000.00,NULL),(55,'Vitória',10,'ADM',7,5000.00,NULL),(56,'Olívia',20,'AUX',6,3000.00,NULL),(57,'Maria Fernanda',30,'AUX',14,3000.00,NULL),(58,'Emilly',40,'VEND',6,3500.00,1640.00),(59,'Maria Valentina',50,'ADM',15,5000.00,NULL),(60,'Milena',60,'ADM',6,5000.00,NULL),(61,'Maria Helena',10,'ADM',12,5000.00,NULL),(62,'Bianca',20,'ADM',6,5000.00,NULL),(63,'Larissa',30,'ADM',7,5000.00,NULL),(64,'Mirella',40,'VEND',7,3500.00,1710.00),(65,'Maria Flor',50,'AUX',10,3000.00,NULL),(66,'Allana',60,'ATEND',6,2700.00,NULL),(67,'Ana Sophia',10,'ATEND',10,2700.00,NULL),(68,'Clarice',20,'ATEND',7,2700.00,NULL),(69,'Pietra',30,'ATEND',6,2700.00,NULL),(70,'Maria Vitória',40,'VEND',13,3500.00,1830.00),(71,'Maya',50,'AUX',4,3000.00,NULL),(72,'Laís',60,'AUX',4,3000.00,NULL),(73,'Ayla',10,'AUX',4,3000.00,NULL),(74,'Ana Lívia',20,'AUX',9,3000.00,NULL),(75,'Eduarda',30,'AUX',7,3000.00,NULL),(76,'Mariah',40,'AUX',6,3000.00,NULL),(77,'Stella',50,'ATEND',6,2700.00,NULL),(78,'Ana',60,'ATEND',3,2700.00,NULL),(79,'Gabrielly',10,'AUX',9,3000.00,NULL),(80,'Sophie',20,'ADM',6,5000.00,NULL),(81,'Carolina',30,'AUX',8,3000.00,NULL),(82,'Maria Laura',40,'VEND',11,3500.00,1930.00),(83,'Maria Heloísa',50,'ATEND',13,2700.00,NULL),(84,'Maria Sophia',60,'ATEND',12,2700.00,NULL),(85,'Fernanda',10,'ATEND',8,2700.00,NULL),(86,'Malu',20,'ATEND',4,2700.00,NULL),(87,'Analu',30,'ADM',5,5000.00,NULL),(88,'Amanda',40,'AUX',6,3000.00,NULL),(89,'Aurora',50,'ATEND',6,2700.00,NULL),(90,'Maria Isis',60,'ATEND',10,2700.00,NULL),(91,'Louise',10,'ATEND',6,2700.00,NULL),(92,'Heloise',20,'ATEND',7,2700.00,NULL),(93,'Ana Vitória',30,'ADM',11,5000.00,NULL),(94,'Ana Cecília',40,'AUX',11,3000.00,NULL),(95,'Ana Liz',50,'ADM',7,5000.00,NULL),(96,'Joana',60,'AUX',5,3000.00,NULL),(97,'Luana',10,'ATEND',5,2700.00,NULL),(98,'Antônia',20,'AUX',7,3000.00,NULL),(99,'Isabel',30,'ADM',6,5000.00,NULL),(100,'Bruna',40,'VEND',5,3500.00,2050.00),(101,'Miguel',50,'GER',6,15000.00,NULL),(102,'Arthur',60,'GER',6,15000.00,NULL),(103,'Bernardo',10,'GER',8,15000.00,NULL),(104,'Heitor',20,'GER',6,15000.00,NULL),(105,'Davi',30,'GER',4,15000.00,NULL),(106,'Lorenzo',40,'GER',7,15000.00,NULL),(107,'Théo',50,'ADM',4,5000.00,NULL),(108,'Pedro',60,'ADM',5,5000.00,NULL),(109,'Gabriel',10,'ADM',7,5000.00,NULL),(110,'Enzo',20,'VEND',4,3500.00,2140.00),(111,'Matheus',30,'ADM',7,5000.00,NULL),(112,'Lucas',40,'ADM',5,5000.00,NULL),(113,'Benjamin',50,'ADM',8,5000.00,NULL),(114,'Nicolas',60,'ADM',7,5000.00,NULL),(115,'Guilherme',10,'ADM',9,5000.00,NULL),(116,'Rafael',20,'VEND',6,3500.00,2220.00),(117,'Joaquim',30,'ADM',7,5000.00,NULL),(118,'Samuel',40,'ADM',6,5000.00,NULL),(119,'Enzo Gabriel',50,'ADM',12,5000.00,NULL),(120,'João Miguel',60,'ADM',11,5000.00,NULL),(121,'Henrique',10,'ADM',8,5000.00,NULL),(122,'Gustavo',20,'VEND',7,3500.00,2290.00),(123,'Murilo',30,'AUX',6,3000.00,NULL),(124,'Pedro Henrique',40,'AUX',14,3000.00,NULL),(125,'Pietro',50,'AUX',6,3000.00,NULL),(126,'Lucca',60,'AUX',5,3000.00,NULL),(127,'Felipe',10,'AUX',6,3000.00,NULL),(128,'João Pedro',20,'VEND',10,3500.00,2380.00),(129,'Isaac',30,'ADM',5,5000.00,NULL),(130,'Benício',40,'ATEND',7,2700.00,NULL),(131,'Daniel',50,'ATEND',6,2700.00,NULL),(132,'Anthony',60,'ATEND',7,2700.00,NULL),(133,'Leonardo',10,'ATEND',8,2700.00,NULL),(134,'Davi Lucca',20,'ATEND',10,2700.00,NULL),(135,'Bryan',30,'ATEND',5,2700.00,NULL),(136,'Eduardo',40,'ADM',7,5000.00,NULL),(137,'João Lucas',50,'AUX',10,3000.00,NULL),(138,'Victor',60,'AUX',6,3000.00,NULL),(139,'João',10,'ADM',4,5000.00,NULL),(140,'Cauã',20,'VEND',4,3500.00,2440.00),(141,'Antônio',30,'AUX',7,3000.00,NULL),(142,'Vicente',40,'ADM',7,5000.00,NULL),(143,'Caleb',50,'VEND',5,3500.00,2480.00),(144,'Gael',60,'ATEND',4,2700.00,NULL),(145,'Bento',10,'ATEND',5,2700.00,NULL),(146,'Caio',20,'VEND',4,3500.00,2500.00),(147,'Emanuel',30,'AUX',7,3000.00,NULL),(148,'Vinícius',40,'AUX',8,3000.00,NULL),(149,'João Guilherme',50,'AUX',14,3000.00,NULL),(150,'Davi Lucas',60,'AUX',10,3000.00,NULL),(151,'Noah',10,'ADM',4,5000.00,NULL),(152,'João Gabriel',20,'VEND',12,3500.00,2640.00),(153,'João Victor',30,'ADM',11,5000.00,NULL),(154,'Luiz Miguel',40,'ADM',11,5000.00,NULL),(155,'Francisco',50,'ADM',9,5000.00,NULL),(156,'Kaique',60,'AUX',6,3000.00,NULL),(157,'Otávio',10,'AUX',6,3000.00,NULL),(158,'Augusto',20,'VEND',7,3500.00,2650.00),(159,'Levi',30,'ADM',4,5000.00,NULL),(160,'Yuri',40,'ADM',4,5000.00,NULL),(161,'Enrico',50,'ADM',6,5000.00,NULL),(162,'Thiago',60,'ADM',6,5000.00,NULL),(163,'Ian',10,'ADM',3,5000.00,NULL),(164,'Victor Hugo',20,'VEND',11,3500.00,2750.00),(165,'Thomas',30,'AUX',6,3000.00,NULL),(166,'Henry',40,'ATEND',5,2700.00,NULL),(167,'Luiz Felipe',50,'ATEND',11,2700.00,NULL),(168,'Ryan',60,'ATEND',4,2700.00,NULL),(169,'Arthur Miguel',10,'ATEND',13,2700.00,NULL),(170,'Davi Luiz',20,'VEND',9,3500.00,2790.00),(171,'Nathan',30,'AUX',6,3000.00,NULL),(172,'Pedro Lucas',40,'AUX',11,3000.00,NULL),(173,'Davi Miguel',50,'AUX',11,3000.00,NULL),(174,'Raul',60,'AUX',4,3000.00,NULL),(175,'Pedro Miguel',10,'AUX',12,3000.00,NULL),(176,'Luiz Henrique',20,'AUX',13,3000.00,NULL),(177,'Luan',30,'ATEND',4,2700.00,NULL),(178,'Erick',40,'ATEND',5,2700.00,NULL),(179,'Martin',50,'AUX',6,3000.00,NULL),(180,'Bruno',60,'ADM',5,5000.00,NULL),(181,'Rodrigo',10,'AUX',7,3000.00,NULL),(182,'Luiz Gustavo',20,'VEND',12,3500.00,2940.00),(183,'Arthur Gabriel',30,'ATEND',14,2700.00,NULL),(184,'Breno',40,'ATEND',5,2700.00,NULL),(185,'Kauê',50,'ATEND',4,2700.00,NULL),(186,'Enzo Miguel',60,'ATEND',11,2700.00,NULL),(187,'Fernando',10,'ADM',8,5000.00,NULL),(188,'Arthur Henrique',20,'AUX',15,3000.00,NULL),(189,'Luiz Otávio',30,'ATEND',11,2700.00,NULL),(190,'Carlos Eduardo',40,'ATEND',14,2700.00,NULL),(191,'Tomás',50,'ATEND',5,2700.00,NULL),(192,'Lucas Gabriel',60,'ATEND',13,2700.00,NULL),(193,'André',10,'ADM',5,5000.00,NULL),(194,'José',20,'AUX',4,3000.00,NULL),(195,'Yago',30,'ADM',4,5000.00,NULL),(196,'Danilo',40,'AUX',6,3000.00,NULL),(197,'Anthony Gabriel',50,'ATEND',15,2700.00,NULL),(198,'Ruan',60,'AUX',4,3000.00,NULL),(199,'Miguel Henrique',10,'ADM',15,5000.00,NULL),(200,'Oliver',20,'VEND',6,3500.00,3060.00);
/*!40000 ALTER TABLE `empregado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-11 13:16:55
