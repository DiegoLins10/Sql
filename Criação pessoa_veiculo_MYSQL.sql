CREATE DATABASE  IF NOT EXISTS `pessoa_veiculo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `pessoa_veiculo`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: pessoa_veiculo
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
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cidade` (
  `IdCidade` int(11) NOT NULL,
  `IdUF` char(2) DEFAULT NULL,
  `NomeCidade` varchar(30) NOT NULL,
  PRIMARY KEY (`IdCidade`),
  KEY `FK_UF` (`IdUF`),
  CONSTRAINT `FK_UF` FOREIGN KEY (`IdUF`) REFERENCES `uf` (`iduf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (103,'PR','CURITIBA'),(134,'SP','SAO PAULO'),(245,'RJ','RIO DE JANEIRO'),(356,'AL','MACEIO'),(412,'PE','RECIFE'),(423,'MG','BELO HORIZONTE'),(458,'BA','SALVADOR'),(471,'MG','OURO PRETO'),(479,'PR','LONDRINA'),(588,'SP','CAMPINAS'),(856,'SP','SOROCABA'),(912,'RJ','NITEROI');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fabricante` (
  `IdFabricante` int(11) NOT NULL,
  `NomeFabricante` char(7) DEFAULT NULL,
  PRIMARY KEY (`IdFabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'VW'),(2,'FIAT'),(3,'GM'),(4,'FORD');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pessoa` (
  `IdPessoa` int(11) NOT NULL,
  `NomePessoa` varchar(30) NOT NULL,
  `CidadeReside` int(11) DEFAULT NULL,
  `Nascimeto` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`IdPessoa`),
  KEY `FK_CIDADE` (`CidadeReside`),
  CONSTRAINT `FK_CIDADE` FOREIGN KEY (`CidadeReside`) REFERENCES `cidade` (`idcidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'JOSE DA SILVA',134,'1973-05-10 00:00:00.000000'),(2,'JOAO OLIVEIRA',856,'1973-05-21 00:00:00.000000'),(3,'MARIA DA SILVA',134,'1977-05-18 00:00:00.000000'),(4,'MARIA OLIVEIRA',912,'1983-09-10 00:00:00.000000'),(5,'JOSE OLIVERIA DA SILVA',588,'1978-04-20 00:00:00.000000'),(6,'JOAO OLIVEIRA DA SILVA',134,'1985-05-17 00:00:00.000000'),(7,'JOSE MARIA DA SILVA',245,'1973-01-14 00:00:00.000000'),(8,'MARIA JOSE DA SILVA',245,'1973-07-15 00:00:00.000000'),(9,'JOSEFA DA SILVA',103,'1974-05-12 00:00:00.000000'),(10,'JOSEFA OLIVEIRA',103,'1979-09-16 00:00:00.000000'),(11,'JOAO JOSE DA SILVA',356,'1982-06-11 00:00:00.000000');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `uf` (
  `IdUF` char(2) NOT NULL,
  `NomeUF` varchar(15) NOT NULL,
  PRIMARY KEY (`IdUF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES ('AL','ALAGOAS'),('BA','BAHIA'),('MG','MINAS GERAIS'),('PE','PERNAMBUCO'),('PR','PARANA'),('RJ','RIO DE JANEIRO'),('SP','SAO PAULO');
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `veiculo` (
  `Placa` char(7) NOT NULL,
  `Cidade` int(11) DEFAULT NULL,
  `Marca` int(11) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL,
  `Cor` char(10) DEFAULT NULL,
  `IdPessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`Placa`),
  KEY `FK_CIDADE_VEICULO` (`Cidade`),
  KEY `FK_MARCA` (`Marca`),
  KEY `FK_PESSOA` (`IdPessoa`),
  CONSTRAINT `FK_CIDADE_VEICULO` FOREIGN KEY (`Cidade`) REFERENCES `cidade` (`idcidade`),
  CONSTRAINT `FK_MARCA` FOREIGN KEY (`Marca`) REFERENCES `fabricante` (`idfabricante`),
  CONSTRAINT `FK_PESSOA` FOREIGN KEY (`IdPessoa`) REFERENCES `pessoa` (`idpessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES ('AAB4132',134,1,2005,'AZUL',1),('AAB9252',134,3,2006,'VERDE',1),('ACX4981',134,2,1997,'PRETO',3),('AZK1267',356,2,2000,'PRATA',11),('AZK3455',356,1,2004,'VINHO',5),('AZK5236',356,3,2003,'VERDE',5),('AZK5556',356,2,2003,'PRETO',11),('AZK5676',356,2,2001,'AZUL',4),('BAB7852',134,1,2002,'VERDE',3),('BAQ2178',245,3,2004,'PRATA',8),('BAQ2350',245,4,2005,'PRATA',7),('BAQ5418',245,1,2006,'BRANCO',7),('BAQ7351',245,2,2003,'VERDE',7),('DDY2156',103,2,2004,'VINHO',10),('DDY2198',103,3,2003,'PRETO',10),('DDY3218',103,1,2004,'PRATA',10),('DDY3321',103,1,2005,'VERMELHO',9),('DDY5716',103,4,2004,'AZUL',9);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-11 13:15:23
