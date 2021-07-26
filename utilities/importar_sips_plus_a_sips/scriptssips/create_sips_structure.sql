CREATE DATABASE  IF NOT EXISTS `sip_v416` /*!40100 DEFAULT CHARACTER SET utf8 */;

-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: sip_v411
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `________version 415`
--

DROP TABLE IF EXISTS `________version 415`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `________version 415` (
  `dato` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `________version 415`
--

LOCK TABLES `________version 415` WRITE;
/*!40000 ALTER TABLE `________version 415` DISABLE KEYS */;
/*!40000 ALTER TABLE `________version 415` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_envio`
--

DROP TABLE IF EXISTS `aux_envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_envio` (
  `origen` varchar(255) DEFAULT NULL,
  `destino` varchar(255) DEFAULT NULL,
  `comentario` mediumtext  DEFAULT NULL ,
  `institucion` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_envio`
--

LOCK TABLES `aux_envio` WRITE;
/*!40000 ALTER TABLE `aux_envio` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_historial`
--

DROP TABLE IF EXISTS `aux_historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_historial` (
  `id` int(11) DEFAULT NULL,
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `sistema` varchar(10) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `fecha_consolidado` datetime DEFAULT NULL,
  `operacion` varchar(1) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(10) DEFAULT NULL,
  `LIBRE6` varchar(10) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_historial`
--

LOCK TABLES `aux_historial` WRITE;
/*!40000 ALTER TABLE `aux_historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_informacion`
--

DROP TABLE IF EXISTS `aux_informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_informacion` (
  `mensaje` mediumtext  DEFAULT NULL ,
  `fecha_mens` datetime DEFAULT NULL,
  `fecha_caduca` datetime DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(10) DEFAULT NULL,
  `LIBRE6` varchar(10) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_informacion`
--

LOCK TABLES `aux_informacion` WRITE;
/*!40000 ALTER TABLE `aux_informacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_instituciones_local`
--

DROP TABLE IF EXISTS `aux_instituciones_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_instituciones_local` (
  `Pais` varchar(50) DEFAULT NULL,
  `Codigo` varchar(15) DEFAULT NULL,
  `Nombre` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_instituciones_local`
--

LOCK TABLES `aux_instituciones_local` WRITE;
/*!40000 ALTER TABLE `aux_instituciones_local` DISABLE KEYS */;
/*!40000 ALTER TABLE `aux_instituciones_local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_movimientos`
--

DROP TABLE IF EXISTS `aux_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_movimientos` (
  `estado` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `computador` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `hora` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_movimientos`
--

LOCK TABLES `aux_movimientos` WRITE;
/*!40000 ALTER TABLE `aux_movimientos` DISABLE KEYS */;
INSERT INTO `aux_movimientos` VALUES ('ENTRADA','Mainerol','OPSCLP-907667','2015-10-07 00:00:00','9:02:25'),('ENTRADA','Mainerol','OPSCLP-907667','2015-10-07 00:00:00','9:03:03'),('ENTRADA','Mainerol','OPSCLP-907667','2015-10-07 00:00:00','9:03:18'),('ENTRADA','Mainerol','OPSCLP-907667','2015-10-07 00:00:00','9:03:42'),('ENTRADA','Rubinoma','OPSCLP-907640','2015-10-07 00:00:00','13:43:50'),('ENTRADA','Rubinoma','OPSCLP-907640','2015-10-07 00:00:00','13:45:24'),('ENTRADA','Rubinoma','OPSCLP-907640','2015-10-13 00:00:00','14:56:58'),('ENTRADA','Rubinoma','OPSCLP-907640','2015-10-20 00:00:00','16:20:01');
/*!40000 ALTER TABLE `aux_movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_usuarios`
--

DROP TABLE IF EXISTS `aux_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_usuarios` (
  `Nombre` varchar(50) DEFAULT NULL,
  `ClaveOriginal` varchar(50) DEFAULT NULL,
  `Libre1` varchar(50) DEFAULT NULL,
  `Libre2` varchar(50) DEFAULT NULL,
  `Libre3` varchar(50) DEFAULT NULL,
  `Usuario` varchar(30) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Hora` varchar(8) DEFAULT NULL,
  `CheckSum` varchar(50) DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_usuarios`
--

LOCK TABLES `aux_usuarios` WRITE;
/*!40000 ALTER TABLE `aux_usuarios` DISABLE KEYS */;
INSERT INTO `aux_usuarios` VALUES ('MSP','MSPMSP',NULL,NULL,NULL,'MSP',NULL,NULL,NULL,'\0');
/*!40000 ALTER TABLE `aux_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aux_version`
--

DROP TABLE IF EXISTS `aux_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aux_version` (
  `Version` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aux_version`
--

LOCK TABLES `aux_version` WRITE;
/*!40000 ALTER TABLE `aux_version` DISABLE KEYS */;
INSERT INTO `aux_version` VALUES ('4.1.1');
/*!40000 ALTER TABLE `aux_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_01`
--

DROP TABLE IF EXISTS `nivel_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_01` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(50) DEFAULT NULL,
  `VAR_0004` varchar(30) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0009` varchar(2) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0408` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0015` varchar(1) DEFAULT NULL,
  `VAR_0016` varchar(1) DEFAULT NULL,
  `VAR_0017` varchar(20) DEFAULT NULL,
  `VAR_0018` varchar(20) DEFAULT NULL,
  `VAR_0019` varchar(20) DEFAULT NULL,
  `VAR_0020` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(20) DEFAULT NULL,
  `VAR_0040` varchar(2) DEFAULT NULL,
  `VAR_0041` varchar(2) DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0046` varchar(2) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0039` varchar(1) DEFAULT NULL,
  `VAR_0042` varchar(2) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0043` varchar(2) DEFAULT NULL,
  `VAR_0044` varchar(2) DEFAULT NULL,
  `VAR_0048` varchar(1) DEFAULT NULL,
  `VAR_0049` varchar(1) DEFAULT NULL,
  `VAR_0050` varchar(1) DEFAULT NULL,
  `VAR_0051` datetime DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0054` varchar(1) DEFAULT NULL,
  `VAR_0055` varchar(3) DEFAULT NULL,
  `VAR_0056` varchar(2) DEFAULT NULL,
  `VAR_0057` datetime DEFAULT NULL,
  `VAR_0058` datetime DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0076` varchar(1) DEFAULT NULL,
  `VAR_0077` varchar(1) DEFAULT NULL,
  `VAR_0078` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0080` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(1) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(2) DEFAULT NULL,
  `VAR_0086` varchar(1) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0088` varchar(1) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(1) DEFAULT NULL,
  `VAR_0102` varchar(1) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(3) DEFAULT NULL,
  `VAR_0106` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(3) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(3) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(3) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0110` varchar(1) DEFAULT NULL,
  `VAR_0111` varchar(1) DEFAULT NULL,
  `VAR_0112` varchar(1) DEFAULT NULL,
  `VAR_0114` varchar(1) DEFAULT NULL,
  `VAR_0115` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` datetime DEFAULT NULL,
  `VAR_0184` varchar(1) DEFAULT NULL,
  `VAR_0185` varchar(2) DEFAULT NULL,
  `VAR_0186` varchar(1) DEFAULT NULL,
  `VAR_0187` varchar(2) DEFAULT NULL,
  `VAR_0188` varchar(1) DEFAULT NULL,
  `VAR_0189` varchar(2) DEFAULT NULL,
  `VAR_0190` varchar(1) DEFAULT NULL,
  `VAR_0191` varchar(1) DEFAULT NULL,
  `VAR_0192` datetime DEFAULT NULL,
  `VAR_0193` varchar(4) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0195` varchar(1) DEFAULT NULL,
  `VAR_0196` varchar(1) DEFAULT NULL,
  `VAR_0197` varchar(3) DEFAULT NULL,
  `VAR_0198` varchar(2) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0202` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0204` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0257` varchar(1) DEFAULT NULL,
  `VAR_0258` varchar(1) DEFAULT NULL,
  `VAR_0259` varchar(1) DEFAULT NULL,
  `VAR_0260` varchar(1) DEFAULT NULL,
  `VAR_0261` varchar(1) DEFAULT NULL,
  `VAR_0262` varchar(1) DEFAULT NULL,
  `VAR_0263` varchar(1) DEFAULT NULL,
  `VAR_0264` varchar(1) DEFAULT NULL,
  `VAR_0266` varchar(1) DEFAULT NULL,
  `VAR_0267` varchar(1) DEFAULT NULL,
  `VAR_0268` varchar(1) DEFAULT NULL,
  `VAR_0269` varchar(1) DEFAULT NULL,
  `VAR_0270` varchar(1) DEFAULT NULL,
  `VAR_0271` varchar(1) DEFAULT NULL,
  `VAR_0272` varchar(1) DEFAULT NULL,
  `VAR_0273` varchar(1) DEFAULT NULL,
  `VAR_0274` varchar(1) DEFAULT NULL,
  `VAR_0275` varchar(1) DEFAULT NULL,
  `VAR_0276` varchar(1) DEFAULT NULL,
  `VAR_0277` varchar(1) DEFAULT NULL,
  `VAR_0278` varchar(2) DEFAULT NULL,
  `VAR_0279` varchar(2) DEFAULT NULL,
  `VAR_0280` varchar(2) DEFAULT NULL,
  `VAR_0282` varchar(1) DEFAULT NULL,
  `VAR_0283` varchar(4) DEFAULT NULL,
  `VAR_0284` datetime DEFAULT NULL,
  `VAR_0285` varchar(1) DEFAULT NULL,
  `VAR_0286` varchar(1) DEFAULT NULL,
  `VAR_0287` varchar(1) DEFAULT NULL,
  `VAR_0288` varchar(100) DEFAULT NULL,
  `VAR_0289` varchar(2) DEFAULT NULL,
  `VAR_0290` varchar(2) DEFAULT NULL,
  `VAR_0291` varchar(1) DEFAULT NULL,
  `VAR_0292` varchar(1) DEFAULT NULL,
  `VAR_0293` varchar(1) DEFAULT NULL,
  `VAR_0294` varchar(1) DEFAULT NULL,
  `VAR_0295` varchar(1) DEFAULT NULL,
  `VAR_0296` varchar(1) DEFAULT NULL,
  `VAR_0297` varchar(1) DEFAULT NULL,
  `VAR_0298` varchar(1) DEFAULT NULL,
  `VAR_0299` varchar(1) DEFAULT NULL,
  `VAR_0300` varchar(1) DEFAULT NULL,
  `VAR_0301` varchar(1) DEFAULT NULL,
  `VAR_0302` varchar(1) DEFAULT NULL,
  `VAR_0303` varchar(1) DEFAULT NULL,
  `VAR_0304` varchar(1) DEFAULT NULL,
  `VAR_0305` varchar(1) DEFAULT NULL,
  `VAR_0306` varchar(1) DEFAULT NULL,
  `VAR_0307` varchar(1) DEFAULT NULL,
  `VAR_0308` varchar(2) DEFAULT NULL,
  `VAR_0309` varchar(2) DEFAULT NULL,
  `VAR_0310` varchar(1) DEFAULT NULL,
  `VAR_0311` varchar(4) DEFAULT NULL,
  `VAR_0312` varchar(1) DEFAULT NULL,
  `VAR_0313` varchar(3) DEFAULT NULL,
  `VAR_0314` varchar(3) DEFAULT NULL,
  `VAR_0315` varchar(2) DEFAULT NULL,
  `VAR_0316` varchar(1) DEFAULT NULL,
  `VAR_0319` varchar(1) DEFAULT NULL,
  `VAR_0317` varchar(1) DEFAULT NULL,
  `VAR_0318` varchar(1) DEFAULT NULL,
  `VAR_0320` varchar(1) DEFAULT NULL,
  `VAR_0321` varchar(2) DEFAULT NULL,
  `VAR_0322` varchar(2) DEFAULT NULL,
  `VAR_0323` varchar(1) DEFAULT NULL,
  `VAR_0324` varchar(1) DEFAULT NULL,
  `VAR_0325` varchar(1) DEFAULT NULL,
  `VAR_0326` varchar(1) DEFAULT NULL,
  `VAR_0327` varchar(1) DEFAULT NULL,
  `VAR_0328` varchar(1) DEFAULT NULL,
  `VAR_0329` varchar(1) DEFAULT NULL,
  `VAR_0330` varchar(1) DEFAULT NULL,
  `VAR_0331` varchar(1) DEFAULT NULL,
  `VAR_0333` varchar(1) DEFAULT NULL,
  `VAR_0332` varchar(50) DEFAULT NULL,
  `VAR_0334` varchar(50) DEFAULT NULL,
  `VAR_0335` varchar(1) DEFAULT NULL,
  `VAR_0368` varchar(3) DEFAULT NULL,
  `VAR_0336` varchar(1) DEFAULT NULL,
  `VAR_0337` varchar(2) DEFAULT NULL,
  `VAR_0338` varchar(50) DEFAULT NULL,
  `VAR_0339` varchar(2) DEFAULT NULL,
  `VAR_0340` varchar(50) DEFAULT NULL,
  `VAR_0341` varchar(2) DEFAULT NULL,
  `VAR_0342` varchar(50) DEFAULT NULL,
  `VAR_0343` varchar(1) DEFAULT NULL,
  `VAR_0344` varchar(1) DEFAULT NULL,
  `VAR_0345` varchar(1) DEFAULT NULL,
  `VAR_0346` varchar(1) DEFAULT NULL,
  `VAR_0347` varchar(1) DEFAULT NULL,
  `VAR_0348` varchar(1) DEFAULT NULL,
  `VAR_0367` varchar(1) DEFAULT NULL,
  `VAR_0425` datetime DEFAULT NULL,
  `VAR_0370` varchar(4) DEFAULT NULL,
  `VAR_0371` varchar(1) DEFAULT NULL,
  `VAR_0372` varchar(10) DEFAULT NULL,
  `VAR_0373` varchar(1) DEFAULT NULL,
  `VAR_0374` varchar(2) DEFAULT NULL,
  `VAR_0375` varchar(1) DEFAULT NULL,
  `VAR_0376` varchar(1) DEFAULT NULL,
  `VAR_0377` varchar(1) DEFAULT NULL,
  `VAR_0378` varchar(1) DEFAULT NULL,
  `VAR_0395` varchar(4) DEFAULT NULL,
  `VAR_0379` datetime DEFAULT NULL,
  `VAR_0380` varchar(1) DEFAULT NULL,
  `VAR_0381` varchar(10) DEFAULT NULL,
  `VAR_0382` varchar(1) DEFAULT NULL,
  `VAR_0383` varchar(1) DEFAULT NULL,
  `VAR_0384` varchar(3) DEFAULT NULL,
  `VAR_0385` varchar(1) DEFAULT NULL,
  `VAR_0386` varchar(1) DEFAULT NULL,
  `VAR_0388` varchar(30) DEFAULT NULL,
  `VAR_0389` varchar(50) DEFAULT NULL,
  `VAR_0390` varchar(50) DEFAULT NULL,
  `VAR_0391` varchar(50) DEFAULT NULL,
  `VAR_9000` varchar(3) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL,
  PRIMARY KEY (`ID01`),
  KEY `VAR_0311` (`VAR_0311`),
  KEY `VAR_0282` (`VAR_0282`),
  KEY `VAR_0198` (`VAR_0198`),
  KEY `VAR_0112` (`VAR_0112`),
  KEY `VAR_0114` (`VAR_0114`),
  KEY `VAR_0040` (`VAR_0040`),
  KEY `VAR_0009` (`VAR_0009`),
  KEY `VAR_0374` (`VAR_0374`),
  KEY `VAR_0287` (`VAR_0287`),
  KEY `VAR_0371` (`VAR_0371`),
  KEY `VAR_0343` (`VAR_0343`),
  KEY `VAR_0373` (`VAR_0373`),
  KEY `VAR_0042` (`VAR_0042`),
  KEY `VAR_0077` (`VAR_0077`),
  KEY `VAR_0185` (`VAR_0185`),
  KEY `VAR_0193` (`VAR_0193`),
  KEY `VAR_0053` (`VAR_0053`),
  KEY `VAR_0011` (`VAR_0011`),
  KEY `VAR_0322` (`VAR_0322`),
  KEY `VAR_0013` (`VAR_0013`),
  KEY `VAR_0331` (`VAR_0331`),
  KEY `VAR_0115` (`VAR_0115`),
  KEY `VAR_0099` (`VAR_0099`),
  KEY `VAR_0095` (`VAR_0095`),
  KEY `VAR_0274` (`VAR_0274`),
  KEY `VAR_0383` (`VAR_0383`),
  KEY `VAR_0382` (`VAR_0382`),
  KEY `VAR_0261` (`VAR_0261`),
  KEY `VAR_0273` (`VAR_0273`),
  KEY `VAR_0275` (`VAR_0275`),
  KEY `VAR_0329` (`VAR_0329`),
  KEY `VAR_0277` (`VAR_0277`),
  KEY `VAR_0276` (`VAR_0276`),
  KEY `VAR_0321` (`VAR_0321`),
  KEY `VAR_0190` (`VAR_0190`),
  KEY `VAR_0306` (`VAR_0306`),
  KEY `VAR_0205` (`VAR_0205`),
  KEY `VAR_0189` (`VAR_0189`),
  KEY `VAR_0097` (`VAR_0097`),
  KEY `VAR_0046` (`VAR_0046`),
  KEY `VAR_0188` (`VAR_0188`),
  KEY `VAR_0260` (`VAR_0260`),
  KEY `VAR_0202` (`VAR_0202`),
  KEY `VAR_0080` (`VAR_0080`),
  KEY `VAR_0284` (`VAR_0284`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_01`
--

LOCK TABLES `nivel_01` WRITE;
/*!40000 ALTER TABLE `nivel_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_02`
--

DROP TABLE IF EXISTS `nivel_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_02` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0116` varchar(2) DEFAULT NULL,
  `VAR_0117` varchar(2) DEFAULT NULL,
  `VAR_0118` varchar(2) DEFAULT NULL,
  `VAR_0119` varchar(2) DEFAULT NULL,
  `VAR_0120` varchar(4) DEFAULT NULL,
  `VAR_0121` varchar(3) DEFAULT NULL,
  `VAR_0394` varchar(3) DEFAULT NULL,
  `VAR_0122` varchar(2) DEFAULT NULL,
  `VAR_0123` varchar(5) DEFAULT NULL,
  `VAR_0124` varchar(3) DEFAULT NULL,
  `VAR_0125` varchar(1) DEFAULT NULL,
  `VAR_0393` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(100) DEFAULT NULL,
  `VAR_0127` varchar(6) DEFAULT NULL,
  `VAR_0128` varchar(2) DEFAULT NULL,
  `VAR_0129` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_02`
--

LOCK TABLES `nivel_02` WRITE;
/*!40000 ALTER TABLE `nivel_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_03`
--

DROP TABLE IF EXISTS `nivel_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_03` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0207` varchar(2) DEFAULT NULL,
  `VAR_0208` varchar(2) DEFAULT NULL,
  `VAR_0209` varchar(3) DEFAULT NULL,
  `VAR_0210` varchar(3) DEFAULT NULL,
  `VAR_0407` varchar(3) DEFAULT NULL,
  `VAR_0392` varchar(3) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(2) DEFAULT NULL,
  `VAR_0213` varchar(4) DEFAULT NULL,
  `VAR_0214` varchar(4) DEFAULT NULL,
  `VAR_0215` varchar(1) DEFAULT NULL,
  `VAR_0216` varchar(3) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_03`
--

LOCK TABLES `nivel_03` WRITE;
/*!40000 ALTER TABLE `nivel_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_04`
--

DROP TABLE IF EXISTS `nivel_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_04` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0349` varchar(2) DEFAULT NULL,
  `VAR_0350` varchar(2) DEFAULT NULL,
  `VAR_0351` varchar(3) DEFAULT NULL,
  `VAR_0352` varchar(3) DEFAULT NULL,
  `VAR_0406` varchar(3) DEFAULT NULL,
  `VAR_0353` varchar(3) DEFAULT NULL,
  `VAR_0354` varchar(4) DEFAULT NULL,
  `VAR_0355` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_04`
--

LOCK TABLES `nivel_04` WRITE;
/*!40000 ALTER TABLE `nivel_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_05`
--

DROP TABLE IF EXISTS `nivel_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_05` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0409` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(1) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(1) DEFAULT NULL,
  `VAR_0410` varchar(1) DEFAULT NULL,
  `VAR_0413` varchar(2) DEFAULT NULL,
  `VAR_0419` varchar(2) DEFAULT NULL,
  `VAR_0415` varchar(1) DEFAULT NULL,
  `VAR_0414` varchar(2) DEFAULT NULL,
  `VAR_0420` varchar(2) DEFAULT NULL,
  `VAR_0421` varchar(1) DEFAULT NULL,
  `VAR_0416` varchar(2) DEFAULT NULL,
  `VAR_0422` varchar(2) DEFAULT NULL,
  `VAR_0423` varchar(1) DEFAULT NULL,
  `VAR_0418` varchar(1) DEFAULT NULL,
  `VAR_0424` varchar(1) DEFAULT NULL,
  `VAR_0412` varchar(1) DEFAULT NULL,
  `VAR_0411` varchar(1) DEFAULT NULL,
  `VAR_0432` varchar(1) DEFAULT NULL,
  `VAR_0433` varchar(1) DEFAULT NULL,
  `VAR_0434` varchar(1) DEFAULT NULL,
  `VAR_0435` varchar(1) DEFAULT NULL,
  `VAR_0436` varchar(1) DEFAULT NULL,
  `VAR_0437` varchar(1) DEFAULT NULL,
  `VAR_0438` varchar(1) DEFAULT NULL,
  `VAR_0439` varchar(1) DEFAULT NULL,
  `VAR_0440` varchar(1) DEFAULT NULL,
  `VAR_0441` varchar(1) DEFAULT NULL,
  `VAR_0900` mediumtext  DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_05`
--

LOCK TABLES `nivel_05` WRITE;
/*!40000 ALTER TABLE `nivel_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_06`
--

DROP TABLE IF EXISTS `nivel_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_06` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0396` varchar(15) DEFAULT NULL,
  `VAR_0397` varchar(15) DEFAULT NULL,
  `VAR_0398` varchar(15) DEFAULT NULL,
  `VAR_0399` varchar(15) DEFAULT NULL,
  `VAR_0400` varchar(15) DEFAULT NULL,
  `VAR_0401` varchar(15) DEFAULT NULL,
  `VAR_0402` varchar(15) DEFAULT NULL,
  `VAR_0403` varchar(15) DEFAULT NULL,
  `VAR_0404` varchar(15) DEFAULT NULL,
  `VAR_0405` varchar(15) DEFAULT NULL,
  `VAR_0426` varchar(15) DEFAULT NULL,
  `VAR_0427` varchar(15) DEFAULT NULL,
  `VAR_0428` varchar(15) DEFAULT NULL,
  `VAR_0429` varchar(15) DEFAULT NULL,
  `VAR_0430` varchar(15) DEFAULT NULL,
  `VAR_0431` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_06`
--

LOCK TABLES `nivel_06` WRITE;
/*!40000 ALTER TABLE `nivel_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_11`
--

DROP TABLE IF EXISTS `nivel_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_11` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0300` varchar(20) DEFAULT NULL,
  `VAR_0301` varchar(20) DEFAULT NULL,
  `VAR_0001` varchar(50) DEFAULT NULL,
  `VAR_0416` varchar(15) DEFAULT NULL,
  `VAR_0002` varchar(100) DEFAULT NULL,
  `VAR_0003` varchar(100) DEFAULT NULL,
  `VAR_0004` varchar(20) DEFAULT NULL,
  `VAR_0006` varchar(20) DEFAULT NULL,
  `VAR_0005` varchar(15) DEFAULT NULL,
  `VAR_0215` varchar(1) DEFAULT NULL,
  `VAR_0007` datetime DEFAULT NULL,
  `VAR_0417` varchar(1) DEFAULT NULL,
  `VAR_0418` varchar(1) DEFAULT NULL,
  `VAR_0407` varchar(15) DEFAULT NULL,
  `VAR_0422` varchar(40) DEFAULT NULL,
  `VAR_0008` varchar(1) DEFAULT NULL,
  `VAR_0009` varchar(3) DEFAULT NULL,
  `VAR_0419` varchar(1) DEFAULT NULL,
  `VAR_0420` varchar(1) DEFAULT NULL,
  `VAR_0421` varchar(1) DEFAULT NULL,
  `VAR_0010` datetime DEFAULT NULL,
  `VAR_0011` varchar(2) DEFAULT NULL,
  `VAR_0012` varchar(2) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0423` varchar(1) DEFAULT NULL,
  `VAR_0318` mediumtext  DEFAULT NULL ,
  `VAR_0019` varchar(1) DEFAULT NULL,
  `VAR_0020` varchar(1) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0424` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0425` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0426` varchar(1) DEFAULT NULL,
  `VAR_0427` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0429` varchar(3) DEFAULT NULL,
  `VAR_0428` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0032` mediumtext  DEFAULT NULL ,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0334` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0430` varchar(1) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0039` varchar(1) DEFAULT NULL,
  `VAR_0040` varchar(1) DEFAULT NULL,
  `VAR_0041` varchar(1) DEFAULT NULL,
  `VAR_0042` varchar(1) DEFAULT NULL,
  `VAR_0043` varchar(1) DEFAULT NULL,
  `VAR_0044` mediumtext  DEFAULT NULL ,
  `VAR_0055` varchar(1) DEFAULT NULL,
  `VAR_0492` varchar(1) DEFAULT NULL,
  `VAR_0054` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0431` varchar(1) DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(1) DEFAULT NULL,
  `VAR_0049` varchar(1) DEFAULT NULL,
  `VAR_0401` varchar(1) DEFAULT NULL,
  `VAR_0402` varchar(1) DEFAULT NULL,
  `VAR_0432` varchar(1) DEFAULT NULL,
  `VAR_0050` varchar(1) DEFAULT NULL,
  `VAR_0051` varchar(1) DEFAULT NULL,
  `VAR_0403` varchar(1) DEFAULT NULL,
  `VAR_0404` varchar(1) DEFAULT NULL,
  `VAR_0433` varchar(1) DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0405` varchar(1) DEFAULT NULL,
  `VAR_0406` varchar(1) DEFAULT NULL,
  `VAR_0434` varchar(1) DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0436` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0437` varchar(1) DEFAULT NULL,
  `VAR_0435` varchar(1) DEFAULT NULL,
  `VAR_0438` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0439` varchar(1) DEFAULT NULL,
  `VAR_0440` varchar(50) DEFAULT NULL,
  `VAR_0398` varchar(50) DEFAULT NULL,
  `VAR_0441` varchar(1) DEFAULT NULL,
  `VAR_0442` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0062` mediumtext  DEFAULT NULL ,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0443` varchar(1) DEFAULT NULL,
  `VAR_0067` mediumtext  DEFAULT NULL ,
  `VAR_0080` varchar(1) DEFAULT NULL,
  `VAR_0445` mediumtext  DEFAULT NULL ,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(2) DEFAULT NULL,
  `VAR_0083` varchar(2) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(1) DEFAULT NULL,
  `VAR_0086` mediumtext  DEFAULT NULL ,
  `VAR_0444` varchar(1) DEFAULT NULL,
  `VAR_0500` varchar(1) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0088` mediumtext  DEFAULT NULL ,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` mediumtext  DEFAULT NULL ,
  `VAR_0332` mediumtext  DEFAULT NULL ,
  `VAR_0101` varchar(1) DEFAULT NULL,
  `VAR_0102` varchar(2) DEFAULT NULL,
  `VAR_0103` varchar(2) DEFAULT NULL,
  `VAR_0446` varchar(1) DEFAULT NULL,
  `VAR_0447` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(1) DEFAULT NULL,
  `VAR_0106` varchar(1) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0108` mediumtext  DEFAULT NULL ,
  `VAR_0333` mediumtext  DEFAULT NULL ,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0110` varchar(1) DEFAULT NULL,
  `VAR_0448` varchar(2) DEFAULT NULL,
  `VAR_0449` varchar(2) DEFAULT NULL,
  `VAR_0502` varchar(1) DEFAULT NULL,
  `VAR_0111` varchar(1) DEFAULT NULL,
  `VAR_0113` varchar(2) DEFAULT NULL,
  `VAR_0114` varchar(2) DEFAULT NULL,
  `VAR_0450` varchar(2) DEFAULT NULL,
  `VAR_0451` varchar(2) DEFAULT NULL,
  `VAR_0115` varchar(1) DEFAULT NULL,
  `VAR_0116` mediumtext  DEFAULT NULL ,
  `VAR_0117` mediumtext  DEFAULT NULL ,
  `VAR_0118` varchar(1) DEFAULT NULL,
  `VAR_0400` varchar(2) DEFAULT NULL,
  `VAR_0119` varchar(1) DEFAULT NULL,
  `VAR_0120` varchar(1) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0123` varchar(2) DEFAULT NULL,
  `VAR_0122` varchar(2) DEFAULT NULL,
  `VAR_0125` varchar(2) DEFAULT NULL,
  `VAR_0128` varchar(1) DEFAULT NULL,
  `VAR_0129` mediumtext  DEFAULT NULL ,
  `VAR_0330` mediumtext  DEFAULT NULL ,
  `VAR_0130` varchar(2) DEFAULT NULL,
  `VAR_0131` varchar(2) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0133` datetime DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0136` varchar(1) DEFAULT NULL,
  `VAR_0137` varchar(1) DEFAULT NULL,
  `VAR_0138` mediumtext  DEFAULT NULL ,
  `VAR_0452` varchar(1) DEFAULT NULL,
  `VAR_0463` varchar(1) DEFAULT NULL,
  `VAR_0501` varchar(1) DEFAULT NULL,
  `VAR_0139` varchar(1) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0141` varchar(1) DEFAULT NULL,
  `VAR_0142` mediumtext  DEFAULT NULL ,
  `VAR_0144` varchar(1) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(2) DEFAULT NULL,
  `VAR_0399` varchar(1) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0464` varchar(1) DEFAULT NULL,
  `VAR_0465` varchar(1) DEFAULT NULL,
  `VAR_0466` varchar(1) DEFAULT NULL,
  `VAR_0151` mediumtext  DEFAULT NULL ,
  `VAR_0170` varchar(1) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0408` varchar(1) DEFAULT NULL,
  `VAR_0409` varchar(1) DEFAULT NULL,
  `VAR_0411` varchar(1) DEFAULT NULL,
  `VAR_0410` varchar(1) DEFAULT NULL,
  `VAR_0485` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0412` varchar(1) DEFAULT NULL,
  `VAR_0414` varchar(1) DEFAULT NULL,
  `VAR_0413` varchar(1) DEFAULT NULL,
  `VAR_0415` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0487` varchar(1) DEFAULT NULL,
  `VAR_0488` mediumtext  DEFAULT NULL ,
  `VAR_0489` mediumtext  DEFAULT NULL ,
  `VAR_0174` mediumtext  DEFAULT NULL ,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(4) DEFAULT NULL,
  `VAR_0178` varchar(4) DEFAULT NULL,
  `VAR_0177` varchar(2) DEFAULT NULL,
  `VAR_0179` varchar(2) DEFAULT NULL,
  `VAR_0490` varchar(3) DEFAULT NULL,
  `VAR_0491` varchar(2) DEFAULT NULL,
  `VAR_0181` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(1) DEFAULT NULL,
  `VAR_0184` varchar(1) DEFAULT NULL,
  `VAR_0185` varchar(1) DEFAULT NULL,
  `VAR_0186` varchar(1) DEFAULT NULL,
  `VAR_0187` varchar(1) DEFAULT NULL,
  `VAR_0188` varchar(1) DEFAULT NULL,
  `VAR_0190` varchar(3) DEFAULT NULL,
  `VAR_0191` varchar(3) DEFAULT NULL,
  `VAR_0192` varchar(3) DEFAULT NULL,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0395` varchar(1) DEFAULT NULL,
  `VAR_0396` varchar(1) DEFAULT NULL,
  `VAR_0397` varchar(1) DEFAULT NULL,
  `VAR_0198` varchar(1) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` mediumtext  DEFAULT NULL ,
  `VAR_0202` mediumtext  DEFAULT NULL ,
  `VAR_0203` varchar(4) DEFAULT NULL,
  `VAR_0204` mediumtext  DEFAULT NULL ,
  `VAR_0205` varchar(200) DEFAULT NULL,
  `VAR_0206` mediumtext  DEFAULT NULL ,
  `VAR_0207` varchar(4) DEFAULT NULL,
  `VAR_0208` mediumtext  DEFAULT NULL ,
  `VAR_0209` varchar(4) DEFAULT NULL,
  `VAR_0210` varchar(4) DEFAULT NULL,
  `VAR_0211` varchar(4) DEFAULT NULL,
  `VAR_0212` mediumtext  DEFAULT NULL ,
  `VAR_0213` varchar(4) DEFAULT NULL,
  `VAR_0214` datetime DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_11`
--

LOCK TABLES `nivel_11` WRITE;
/*!40000 ALTER TABLE `nivel_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_12`
--

DROP TABLE IF EXISTS `nivel_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_12` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0015` mediumtext  DEFAULT NULL ,
  `VAR_0016` varchar(4) DEFAULT NULL,
  `VAR_0017` mediumtext  DEFAULT NULL ,
  `VAR_0018` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_12`
--

LOCK TABLES `nivel_12` WRITE;
/*!40000 ALTER TABLE `nivel_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_13`
--

DROP TABLE IF EXISTS `nivel_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_13` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0496` varchar(1) DEFAULT NULL,
  `VAR_0493` varchar(1) DEFAULT NULL,
  `VAR_0497` varchar(1) DEFAULT NULL,
  `VAR_0494` varchar(1) DEFAULT NULL,
  `VAR_0498` varchar(1) DEFAULT NULL,
  `VAR_0495` varchar(1) DEFAULT NULL,
  `VAR_0499` varchar(1) DEFAULT NULL,
  `VAR_0457` varchar(1) DEFAULT NULL,
  `VAR_0458` varchar(1) DEFAULT NULL,
  `VAR_0453` varchar(2) DEFAULT NULL,
  `VAR_0459` varchar(1) DEFAULT NULL,
  `VAR_0460` varchar(1) DEFAULT NULL,
  `VAR_0456` mediumtext  DEFAULT NULL ,
  `VAR_0454` varchar(2) DEFAULT NULL,
  `VAR_0455` varchar(2) DEFAULT NULL,
  `VAR_0461` varchar(1) DEFAULT NULL,
  `VAR_0462` varchar(1) DEFAULT NULL,
  `VAR_0467` varchar(1) DEFAULT NULL,
  `VAR_0469` varchar(1) DEFAULT NULL,
  `VAR_0471` varchar(1) DEFAULT NULL,
  `VAR_0468` varchar(1) DEFAULT NULL,
  `VAR_0470` varchar(1) DEFAULT NULL,
  `VAR_0472` varchar(1) DEFAULT NULL,
  `VAR_0473` varchar(1) DEFAULT NULL,
  `VAR_0475` varchar(1) DEFAULT NULL,
  `VAR_0477` varchar(1) DEFAULT NULL,
  `VAR_0474` varchar(1) DEFAULT NULL,
  `VAR_0476` varchar(1) DEFAULT NULL,
  `VAR_0478` varchar(1) DEFAULT NULL,
  `VAR_0479` varchar(1) DEFAULT NULL,
  `VAR_0481` varchar(1) DEFAULT NULL,
  `VAR_0483` varchar(1) DEFAULT NULL,
  `VAR_0480` varchar(1) DEFAULT NULL,
  `VAR_0482` varchar(1) DEFAULT NULL,
  `VAR_0484` varchar(1) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_13`
--

LOCK TABLES `nivel_13` WRITE;
/*!40000 ALTER TABLE `nivel_13` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_16`
--

DROP TABLE IF EXISTS `nivel_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_16` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0503` varchar(15) DEFAULT NULL,
  `VAR_0504` varchar(15) DEFAULT NULL,
  `VAR_0505` varchar(15) DEFAULT NULL,
  `VAR_0506` varchar(15) DEFAULT NULL,
  `VAR_0507` varchar(15) DEFAULT NULL,
  `VAR_0508` varchar(15) DEFAULT NULL,
  `VAR_0509` varchar(15) DEFAULT NULL,
  `VAR_0510` varchar(15) DEFAULT NULL,
  `VAR_0511` varchar(15) DEFAULT NULL,
  `VAR_0512` varchar(15) DEFAULT NULL,
  `VAR_0513` varchar(15) DEFAULT NULL,
  `VAR_0514` varchar(15) DEFAULT NULL,
  `VAR_0515` varchar(15) DEFAULT NULL,
  `VAR_0516` varchar(15) DEFAULT NULL,
  `VAR_0517` varchar(15) DEFAULT NULL,
  `VAR_0518` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_16`
--

LOCK TABLES `nivel_16` WRITE;
/*!40000 ALTER TABLE `nivel_16` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_21`
--

DROP TABLE IF EXISTS `nivel_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_21` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(3) DEFAULT NULL,
  `VAR_0004` datetime DEFAULT NULL,
  `VAR_0005` varchar(2) DEFAULT NULL,
  `VAR_0006` varchar(2) DEFAULT NULL,
  `VAR_0007` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0008` varchar(1) DEFAULT NULL,
  `VAR_0009` varchar(1) DEFAULT NULL,
  `VAR_0010` datetime DEFAULT NULL,
  `VAR_0011` varchar(4) DEFAULT NULL,
  `VAR_0012` varchar(2) DEFAULT NULL,
  `VAR_0013` varchar(4) DEFAULT NULL,
  `VAR_0014` varchar(2) DEFAULT NULL,
  `VAR_0015` varchar(2) DEFAULT NULL,
  `VAR_0016` varchar(3) DEFAULT NULL,
  `VAR_0017` varchar(3) DEFAULT NULL,
  `VAR_0018` varchar(3) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0025` mediumtext  DEFAULT NULL ,
  `VAR_0026` mediumtext  DEFAULT NULL ,
  `VAR_0027` mediumtext  DEFAULT NULL ,
  `VAR_0028` mediumtext  DEFAULT NULL ,
  `VAR_0029` varchar(4) DEFAULT NULL,
  `VAR_0030` datetime DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_21`
--

LOCK TABLES `nivel_21` WRITE;
/*!40000 ALTER TABLE `nivel_21` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_22`
--

DROP TABLE IF EXISTS `nivel_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_22` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0021` mediumtext  DEFAULT NULL ,
  `VAR_0022` varchar(4) DEFAULT NULL,
  `VAR_0023` mediumtext  DEFAULT NULL ,
  `VAR_0024` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_22`
--

LOCK TABLES `nivel_22` WRITE;
/*!40000 ALTER TABLE `nivel_22` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_31`
--

DROP TABLE IF EXISTS `nivel_31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_31` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0004` varchar(20) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` varchar(1) DEFAULT NULL,
  `VAR_0003` varchar(3) DEFAULT NULL,
  `VAR_0007` datetime DEFAULT NULL,
  `VAR_0008` varchar(2) DEFAULT NULL,
  `VAR_0009` varchar(2) DEFAULT NULL,
  `VAR_0010` datetime DEFAULT NULL,
  `VAR_0011` mediumtext  DEFAULT NULL ,
  `VAR_0295` varchar(1) DEFAULT NULL,
  `VAR_0296` varchar(4) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(2) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0015` varchar(1) DEFAULT NULL,
  `VAR_0016` datetime DEFAULT NULL,
  `VAR_0019` varchar(2) DEFAULT NULL,
  `VAR_0020` varchar(1) DEFAULT NULL,
  `VAR_0021` varchar(2) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(2) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(2) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(2) DEFAULT NULL,
  `VAR_0028` varchar(2) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0039` mediumtext  DEFAULT NULL ,
  `VAR_0040` varchar(2) DEFAULT NULL,
  `VAR_0041` varchar(1) DEFAULT NULL,
  `VAR_0042` varchar(2) DEFAULT NULL,
  `VAR_0043` varchar(1) DEFAULT NULL,
  `VAR_0044` varchar(2) DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0046` mediumtext  DEFAULT NULL ,
  `VAR_0047` mediumtext  DEFAULT NULL ,
  `VAR_0048` varchar(1) DEFAULT NULL,
  `VAR_0049` varchar(1) DEFAULT NULL,
  `VAR_0050` varchar(2) DEFAULT NULL,
  `VAR_0051` varchar(2) DEFAULT NULL,
  `VAR_0052` varchar(2) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0054` varchar(2) DEFAULT NULL,
  `VAR_0055` varchar(1) DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(2) DEFAULT NULL,
  `VAR_0059` varchar(2) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(2) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(1) DEFAULT NULL,
  `VAR_0068` varchar(2) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(2) DEFAULT NULL,
  `VAR_0071` varchar(2) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0073` mediumtext  DEFAULT NULL ,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` mediumtext  DEFAULT NULL ,
  `VAR_0076` mediumtext  DEFAULT NULL ,
  `VAR_0077` varchar(1) DEFAULT NULL,
  `VAR_0078` mediumtext  DEFAULT NULL ,
  `VAR_0079` varchar(2) DEFAULT NULL,
  `VAR_0080` varchar(2) DEFAULT NULL,
  `VAR_0081` varchar(2) DEFAULT NULL,
  `VAR_0082` varchar(2) DEFAULT NULL,
  `VAR_0083` varchar(2) DEFAULT NULL,
  `VAR_0084` varchar(2) DEFAULT NULL,
  `VAR_0085` varchar(1) DEFAULT NULL,
  `VAR_0086` mediumtext  DEFAULT NULL ,
  `VAR_0187` varchar(1) DEFAULT NULL,
  `VAR_0188` mediumtext  DEFAULT NULL ,
  `VAR_0189` varchar(1) DEFAULT NULL,
  `VAR_0190` mediumtext  DEFAULT NULL ,
  `VAR_0191` varchar(1) DEFAULT NULL,
  `VAR_0192` mediumtext  DEFAULT NULL ,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0194` mediumtext  DEFAULT NULL ,
  `VAR_0195` varchar(1) DEFAULT NULL,
  `VAR_0196` mediumtext  DEFAULT NULL ,
  `VAR_0197` varchar(1) DEFAULT NULL,
  `VAR_0198` mediumtext  DEFAULT NULL ,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` mediumtext  DEFAULT NULL ,
  `VAR_0201` mediumtext  DEFAULT NULL ,
  `VAR_0202` varchar(2) DEFAULT NULL,
  `VAR_0203` varchar(2) DEFAULT NULL,
  `VAR_0204` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0207` varchar(2) DEFAULT NULL,
  `VAR_0208` varchar(1) DEFAULT NULL,
  `VAR_0209` varchar(1) DEFAULT NULL,
  `VAR_0210` varchar(2) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` mediumtext  DEFAULT NULL ,
  `VAR_0213` varchar(2) DEFAULT NULL,
  `VAR_0214` varchar(1) DEFAULT NULL,
  `VAR_0215` varchar(1) DEFAULT NULL,
  `VAR_0216` varchar(4) DEFAULT NULL,
  `VAR_0217` varchar(4) DEFAULT NULL,
  `VAR_0218` varchar(4) DEFAULT NULL,
  `VAR_0219` varchar(4) DEFAULT NULL,
  `VAR_0220` varchar(1) DEFAULT NULL,
  `VAR_0221` varchar(1) DEFAULT NULL,
  `VAR_0222` varchar(1) DEFAULT NULL,
  `VAR_0223` varchar(2) DEFAULT NULL,
  `VAR_0224` varchar(2) DEFAULT NULL,
  `VAR_0225` varchar(1) DEFAULT NULL,
  `VAR_0226` mediumtext  DEFAULT NULL ,
  `VAR_0227` varchar(1) DEFAULT NULL,
  `VAR_0228` varchar(1) DEFAULT NULL,
  `VAR_0229` varchar(1) DEFAULT NULL,
  `VAR_0230` mediumtext  DEFAULT NULL ,
  `VAR_0231` varchar(1) DEFAULT NULL,
  `VAR_0232` varchar(2) DEFAULT NULL,
  `VAR_0233` varchar(1) DEFAULT NULL,
  `VAR_0234` varchar(1) DEFAULT NULL,
  `VAR_0235` varchar(1) DEFAULT NULL,
  `VAR_0236` varchar(1) DEFAULT NULL,
  `VAR_0237` mediumtext  DEFAULT NULL ,
  `VAR_0238` varchar(1) DEFAULT NULL,
  `VAR_0239` varchar(2) DEFAULT NULL,
  `VAR_0240` varchar(1) DEFAULT NULL,
  `VAR_0241` varchar(1) DEFAULT NULL,
  `VAR_0242` varchar(1) DEFAULT NULL,
  `VAR_0243` varchar(1) DEFAULT NULL,
  `VAR_0244` varchar(1) DEFAULT NULL,
  `VAR_0245` varchar(1) DEFAULT NULL,
  `VAR_0246` varchar(1) DEFAULT NULL,
  `VAR_0247` varchar(1) DEFAULT NULL,
  `VAR_0248` varchar(1) DEFAULT NULL,
  `VAR_0249` varchar(1) DEFAULT NULL,
  `VAR_0250` varchar(1) DEFAULT NULL,
  `VAR_0252` varchar(1) DEFAULT NULL,
  `VAR_0253` varchar(1) DEFAULT NULL,
  `VAR_0254` varchar(1) DEFAULT NULL,
  `VAR_0255` mediumtext  DEFAULT NULL ,
  `VAR_0256` mediumtext  DEFAULT NULL ,
  `VAR_0257` varchar(1) DEFAULT NULL,
  `VAR_0258` varchar(1) DEFAULT NULL,
  `VAR_0259` varchar(1) DEFAULT NULL,
  `VAR_0260` varchar(1) DEFAULT NULL,
  `VAR_0261` varchar(1) DEFAULT NULL,
  `VAR_0262` varchar(1) DEFAULT NULL,
  `VAR_0263` varchar(1) DEFAULT NULL,
  `VAR_0264` varchar(1) DEFAULT NULL,
  `VAR_0265` varchar(1) DEFAULT NULL,
  `VAR_0266` varchar(1) DEFAULT NULL,
  `VAR_0267` mediumtext  DEFAULT NULL ,
  `VAR_0268` mediumtext  DEFAULT NULL ,
  `VAR_0269` varchar(1) DEFAULT NULL,
  `VAR_0270` varchar(1) DEFAULT NULL,
  `VAR_0271` varchar(1) DEFAULT NULL,
  `VAR_0272` varchar(1) DEFAULT NULL,
  `VAR_0273` varchar(1) DEFAULT NULL,
  `VAR_0274` varchar(1) DEFAULT NULL,
  `VAR_0275` varchar(1) DEFAULT NULL,
  `VAR_0276` varchar(1) DEFAULT NULL,
  `VAR_0277` varchar(1) DEFAULT NULL,
  `VAR_0278` varchar(1) DEFAULT NULL,
  `VAR_0279` varchar(1) DEFAULT NULL,
  `VAR_0280` varchar(1) DEFAULT NULL,
  `VAR_0281` varchar(1) DEFAULT NULL,
  `VAR_0282` varchar(1) DEFAULT NULL,
  `VAR_0283` varchar(1) DEFAULT NULL,
  `VAR_0284` varchar(1) DEFAULT NULL,
  `VAR_0285` varchar(1) DEFAULT NULL,
  `VAR_0286` varchar(1) DEFAULT NULL,
  `VAR_0291` mediumtext  DEFAULT NULL ,
  `VAR_0292` mediumtext  DEFAULT NULL ,
  `VAR_0293` varchar(4) DEFAULT NULL,
  `VAR_0294` datetime DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_31`
--

LOCK TABLES `nivel_31` WRITE;
/*!40000 ALTER TABLE `nivel_31` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_32`
--

DROP TABLE IF EXISTS `nivel_32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_32` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0017` mediumtext  DEFAULT NULL ,
  `VAR_0018` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_32`
--

LOCK TABLES `nivel_32` WRITE;
/*!40000 ALTER TABLE `nivel_32` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_33`
--

DROP TABLE IF EXISTS `nivel_33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_33` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0088` mediumtext  DEFAULT NULL ,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(1) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0113` varchar(1) DEFAULT NULL,
  `VAR_0119` varchar(1) DEFAULT NULL,
  `VAR_0125` varchar(1) DEFAULT NULL,
  `VAR_0131` varchar(1) DEFAULT NULL,
  `VAR_0137` varchar(1) DEFAULT NULL,
  `VAR_0143` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0155` varchar(1) DEFAULT NULL,
  `VAR_0161` varchar(1) DEFAULT NULL,
  `VAR_0167` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0179` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(1) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0102` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(1) DEFAULT NULL,
  `VAR_0114` varchar(1) DEFAULT NULL,
  `VAR_0120` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(1) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0138` varchar(1) DEFAULT NULL,
  `VAR_0144` varchar(1) DEFAULT NULL,
  `VAR_0150` varchar(1) DEFAULT NULL,
  `VAR_0156` varchar(1) DEFAULT NULL,
  `VAR_0162` varchar(1) DEFAULT NULL,
  `VAR_0168` varchar(1) DEFAULT NULL,
  `VAR_0174` varchar(1) DEFAULT NULL,
  `VAR_0180` varchar(1) DEFAULT NULL,
  `VAR_0130` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0115` varchar(1) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0127` varchar(1) DEFAULT NULL,
  `VAR_0133` varchar(1) DEFAULT NULL,
  `VAR_0139` varchar(1) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0151` varchar(1) DEFAULT NULL,
  `VAR_0157` varchar(1) DEFAULT NULL,
  `VAR_0163` varchar(1) DEFAULT NULL,
  `VAR_0169` varchar(1) DEFAULT NULL,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0181` varchar(1) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0110` varchar(1) DEFAULT NULL,
  `VAR_0116` varchar(1) DEFAULT NULL,
  `VAR_0122` varchar(1) DEFAULT NULL,
  `VAR_0128` varchar(1) DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(1) DEFAULT NULL,
  `VAR_0152` varchar(1) DEFAULT NULL,
  `VAR_0158` varchar(1) DEFAULT NULL,
  `VAR_0164` varchar(1) DEFAULT NULL,
  `VAR_0170` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(1) DEFAULT NULL,
  `VAR_0111` varchar(1) DEFAULT NULL,
  `VAR_0117` varchar(1) DEFAULT NULL,
  `VAR_0123` varchar(1) DEFAULT NULL,
  `VAR_0129` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0141` varchar(1) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0153` varchar(1) DEFAULT NULL,
  `VAR_0159` varchar(1) DEFAULT NULL,
  `VAR_0165` varchar(1) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0177` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(1) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0106` varchar(1) DEFAULT NULL,
  `VAR_0112` varchar(1) DEFAULT NULL,
  `VAR_0118` varchar(1) DEFAULT NULL,
  `VAR_0124` varchar(1) DEFAULT NULL,
  `VAR_0136` varchar(1) DEFAULT NULL,
  `VAR_0142` varchar(1) DEFAULT NULL,
  `VAR_0148` varchar(1) DEFAULT NULL,
  `VAR_0154` varchar(1) DEFAULT NULL,
  `VAR_0160` varchar(1) DEFAULT NULL,
  `VAR_0166` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0178` varchar(1) DEFAULT NULL,
  `VAR_0184` varchar(1) DEFAULT NULL,
  `VAR_0185` mediumtext  DEFAULT NULL ,
  `VAR_0186` mediumtext  DEFAULT NULL ,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_33`
--

LOCK TABLES `nivel_33` WRITE;
/*!40000 ALTER TABLE `nivel_33` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_33` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_34`
--

DROP TABLE IF EXISTS `nivel_34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_34` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0287` mediumtext  DEFAULT NULL ,
  `VAR_0288` varchar(4) DEFAULT NULL,
  `VAR_0289` mediumtext  DEFAULT NULL ,
  `VAR_0290` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_34`
--

LOCK TABLES `nivel_34` WRITE;
/*!40000 ALTER TABLE `nivel_34` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_41`
--

DROP TABLE IF EXISTS `nivel_41`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_41` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(40) DEFAULT NULL,
  `VAR_0003` varchar(2) DEFAULT NULL,
  `VAR_0004` varchar(100) DEFAULT NULL,
  `VAR_0005` varchar(40) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(2) DEFAULT NULL,
  `VAR_0015` varchar(2) DEFAULT NULL,
  `VAR_0016` varchar(1) DEFAULT NULL,
  `VAR_0017` varchar(1) DEFAULT NULL,
  `VAR_0018` varchar(1) DEFAULT NULL,
  `VAR_0019` varchar(1) DEFAULT NULL,
  `VAR_0020` varchar(1) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(1) DEFAULT NULL,
  `VAR_0026` datetime DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(2) DEFAULT NULL,
  `VAR_0036` varchar(2) DEFAULT NULL,
  `VAR_0037` varchar(4) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0039` varchar(1) DEFAULT NULL,
  `VAR_0040` varchar(1) DEFAULT NULL,
  `VAR_0041` varchar(1) DEFAULT NULL,
  `VAR_0042` varchar(1) DEFAULT NULL,
  `VAR_0043` varchar(1) DEFAULT NULL,
  `VAR_0044` varchar(1) DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(1) DEFAULT NULL,
  `VAR_0049` varchar(1) DEFAULT NULL,
  `VAR_0050` varchar(1) DEFAULT NULL,
  `VAR_0051` varchar(1) DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0054` varchar(1) DEFAULT NULL,
  `VAR_0055` varchar(1) DEFAULT NULL,
  `VAR_0056` varchar(1) DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(1) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(1) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(1) DEFAULT NULL,
  `VAR_0076` varchar(1) DEFAULT NULL,
  `VAR_0077` varchar(1) DEFAULT NULL,
  `VAR_0078` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0080` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(1) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(1) DEFAULT NULL,
  `VAR_0086` varchar(1) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0088` varchar(1) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` mediumtext  DEFAULT NULL ,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_41`
--

LOCK TABLES `nivel_41` WRITE;
/*!40000 ALTER TABLE `nivel_41` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_41` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_51`
--

DROP TABLE IF EXISTS `nivel_51`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_51` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_5183` datetime DEFAULT NULL,
  `VAR_5132` varchar(4) DEFAULT NULL,
  `VAR_5186` varchar(1) DEFAULT NULL,
  `VAR_5187` varchar(2) DEFAULT NULL,
  `VAR_5136` varchar(2) DEFAULT NULL,
  `VAR_5137` varchar(1) DEFAULT NULL,
  `VAR_5138` varchar(1) DEFAULT NULL,
  `VAR_5139` varchar(1) DEFAULT NULL,
  `VAR_5140` varchar(1) DEFAULT NULL,
  `VAR_5141` varchar(1) DEFAULT NULL,
  `VAR_5142` varchar(20) DEFAULT NULL,
  `VAR_5143` varchar(1) DEFAULT NULL,
  `VAR_5144` varchar(2) DEFAULT NULL,
  `VAR_5145` varchar(2) DEFAULT NULL,
  `VAR_5146` varchar(2) DEFAULT NULL,
  `VAR_5147` varchar(3) DEFAULT NULL,
  `VAR_5148` varchar(1) DEFAULT NULL,
  `VAR_5149` varchar(3) DEFAULT NULL,
  `VAR_5150` varchar(3) DEFAULT NULL,
  `VAR_5151` varchar(1) DEFAULT NULL,
  `VAR_5152` varchar(2) DEFAULT NULL,
  `VAR_5153` varchar(1) DEFAULT NULL,
  `VAR_5154` varchar(3) DEFAULT NULL,
  `VAR_5155` varchar(1) DEFAULT NULL,
  `VAR_5159` varchar(3) DEFAULT NULL,
  `VAR_5160` varchar(1) DEFAULT NULL,
  `VAR_5156` varchar(1) DEFAULT NULL,
  `VAR_5157` varchar(1) DEFAULT NULL,
  `VAR_5463` varchar(1) DEFAULT NULL,
  `VAR_5158` varchar(1) DEFAULT NULL,
  `VAR_5464` varchar(3) DEFAULT NULL,
  `VAR_5161` varchar(5) DEFAULT NULL,
  `VAR_5162` varchar(3) DEFAULT NULL,
  `VAR_5164` varchar(1) DEFAULT NULL,
  `VAR_5165` varchar(1) DEFAULT NULL,
  `VAR_5441` varchar(1) DEFAULT NULL,
  `VAR_5442` varchar(1) DEFAULT NULL,
  `VAR_5443` varchar(1) DEFAULT NULL,
  `VAR_5444` varchar(1) DEFAULT NULL,
  `VAR_5166` varchar(1) DEFAULT NULL,
  `VAR_5446` varchar(1) DEFAULT NULL,
  `VAR_5447` varchar(1) DEFAULT NULL,
  `VAR_5448` varchar(1) DEFAULT NULL,
  `VAR_5449` varchar(1) DEFAULT NULL,
  `VAR_5450` varchar(1) DEFAULT NULL,
  `VAR_5167` varchar(2) DEFAULT NULL,
  `VAR_5168` varchar(1) DEFAULT NULL,
  `VAR_5169` varchar(1) DEFAULT NULL,
  `VAR_5170` varchar(1) DEFAULT NULL,
  `VAR_5171` varchar(1) DEFAULT NULL,
  `VAR_5172` varchar(1) DEFAULT NULL,
  `VAR_5173` varchar(3) DEFAULT NULL,
  `VAR_5174` varchar(1) DEFAULT NULL,
  `VAR_5175` varchar(1) DEFAULT NULL,
  `VAR_5176` varchar(2) DEFAULT NULL,
  `VAR_5177` varchar(2) DEFAULT NULL,
  `VAR_5178` varchar(1) DEFAULT NULL,
  `VAR_5179` varchar(1) DEFAULT NULL,
  `VAR_5180` varchar(1) DEFAULT NULL,
  `VAR_5181` varchar(2) DEFAULT NULL,
  `VAR_5416` varchar(1) DEFAULT NULL,
  `VAR_5410` varchar(1) DEFAULT NULL,
  `VAR_5411` varchar(1) DEFAULT NULL,
  `VAR_5412` varchar(1) DEFAULT NULL,
  `VAR_5413` varchar(1) DEFAULT NULL,
  `VAR_5407` varchar(1) DEFAULT NULL,
  `VAR_5451` varchar(1) DEFAULT NULL,
  `VAR_5452` varchar(1) DEFAULT NULL,
  `VAR_5415` varchar(1) DEFAULT NULL,
  `VAR_5417` varchar(20) DEFAULT NULL,
  `VAR_5418` varchar(1) DEFAULT NULL,
  `VAR_5414` varchar(1) DEFAULT NULL,
  `VAR_5419` varchar(1) DEFAULT NULL,
  `VAR_5420` varchar(3) DEFAULT NULL,
  `VAR_5408` varchar(1) DEFAULT NULL,
  `VAR_5188` varchar(30) DEFAULT NULL,
  `VAR_5465` varchar(6) DEFAULT NULL,
  `VAR_5189` datetime DEFAULT NULL,
  `VAR_5190` varchar(4) DEFAULT NULL,
  `VAR_5191` varchar(1) DEFAULT NULL,
  `VAR_5192` varchar(2) DEFAULT NULL,
  `VAR_5193` varchar(1) DEFAULT NULL,
  `VAR_5194` varchar(1) DEFAULT NULL,
  `VAR_5195` varchar(1) DEFAULT NULL,
  `VAR_5196` varchar(1) DEFAULT NULL,
  `VAR_5197` varchar(1) DEFAULT NULL,
  `VAR_5198` varchar(1) DEFAULT NULL,
  `VAR_5199` varchar(1) DEFAULT NULL,
  `VAR_5200` varchar(1) DEFAULT NULL,
  `VAR_5201` varchar(1) DEFAULT NULL,
  `VAR_5202` varchar(1) DEFAULT NULL,
  `VAR_5203` varchar(1) DEFAULT NULL,
  `VAR_5204` varchar(1) DEFAULT NULL,
  `VAR_5205` varchar(1) DEFAULT NULL,
  `VAR_5206` varchar(1) DEFAULT NULL,
  `VAR_5207` varchar(1) DEFAULT NULL,
  `VAR_5208` varchar(1) DEFAULT NULL,
  `VAR_5209` varchar(1) DEFAULT NULL,
  `VAR_5210` varchar(1) DEFAULT NULL,
  `VAR_5211` varchar(2) DEFAULT NULL,
  `VAR_5212` varchar(2) DEFAULT NULL,
  `VAR_5213` varchar(2) DEFAULT NULL,
  `VAR_5214` varchar(2) DEFAULT NULL,
  `VAR_5215` varchar(2) DEFAULT NULL,
  `VAR_5216` varchar(2) DEFAULT NULL,
  `VAR_5217` varchar(2) DEFAULT NULL,
  `VAR_5218` varchar(1) DEFAULT NULL,
  `VAR_5219` varchar(1) DEFAULT NULL,
  `VAR_5220` varchar(1) DEFAULT NULL,
  `VAR_5221` varchar(1) DEFAULT NULL,
  `VAR_5222` varchar(1) DEFAULT NULL,
  `VAR_5223` varchar(1) DEFAULT NULL,
  `VAR_5224` varchar(1) DEFAULT NULL,
  `VAR_5225` varchar(1) DEFAULT NULL,
  `VAR_5226` varchar(1) DEFAULT NULL,
  `VAR_5227` varchar(30) DEFAULT NULL,
  `VAR_5466` varchar(6) DEFAULT NULL,
  `VAR_5228` varchar(1) DEFAULT NULL,
  `VAR_5229` varchar(1) DEFAULT NULL,
  `VAR_5230` varchar(30) DEFAULT NULL,
  `VAR_5231` varchar(1) DEFAULT NULL,
  `VAR_5232` varchar(30) DEFAULT NULL,
  `VAR_5233` datetime DEFAULT NULL,
  `VAR_5234` varchar(4) DEFAULT NULL,
  `VAR_5235` varchar(1) DEFAULT NULL,
  `VAR_5406` varchar(30) DEFAULT NULL,
  `VAR_5236` varchar(1) DEFAULT NULL,
  `VAR_5460` varchar(30) DEFAULT NULL,
  `VAR_5237` varchar(1) DEFAULT NULL,
  `VAR_5461` varchar(30) DEFAULT NULL,
  `VAR_5238` varchar(1) DEFAULT NULL,
  `VAR_5462` varchar(30) DEFAULT NULL,
  `VAR_5239` datetime DEFAULT NULL,
  `VAR_5240` varchar(1) DEFAULT NULL,
  `VAR_5421` varchar(1) DEFAULT NULL,
  `VAR_5422` varchar(1) DEFAULT NULL,
  `VAR_5423` varchar(1) DEFAULT NULL,
  `VAR_5424` varchar(1) DEFAULT NULL,
  `VAR_5425` varchar(1) DEFAULT NULL,
  `VAR_5426` varchar(1) DEFAULT NULL,
  `VAR_5427` varchar(1) DEFAULT NULL,
  `VAR_5428` varchar(1) DEFAULT NULL,
  `VAR_5431` varchar(1) DEFAULT NULL,
  `VAR_5432` varchar(1) DEFAULT NULL,
  `VAR_5429` varchar(1) DEFAULT NULL,
  `VAR_5430` varchar(1) DEFAULT NULL,
  `VAR_5433` varchar(1) DEFAULT NULL,
  `VAR_5434` varchar(1) DEFAULT NULL,
  `VAR_5435` varchar(1) DEFAULT NULL,
  `VAR_5436` varchar(1) DEFAULT NULL,
  `VAR_5437` varchar(1) DEFAULT NULL,
  `VAR_5438` varchar(1) DEFAULT NULL,
  `VAR_5439` varchar(1) DEFAULT NULL,
  `VAR_5440` varchar(1) DEFAULT NULL,
  `VAR_5262` varchar(1) DEFAULT NULL,
  `VAR_5263` varchar(1) DEFAULT NULL,
  `VAR_5264` varchar(1) DEFAULT NULL,
  `VAR_5265` varchar(1) DEFAULT NULL,
  `VAR_5266` varchar(1) DEFAULT NULL,
  `VAR_5267` varchar(20) DEFAULT NULL,
  `VAR_5379` datetime DEFAULT NULL,
  `VAR_5254` varchar(4) DEFAULT NULL,
  `VAR_5255` varchar(1) DEFAULT NULL,
  `VAR_5261` varchar(3) DEFAULT NULL,
  `VAR_5409` varchar(1) DEFAULT NULL,
  `VAR_5445` varchar(1) DEFAULT NULL,
  `VAR_5470` varchar(1) DEFAULT NULL,
  `VAR_5382` varchar(1) DEFAULT NULL,
  `VAR_5257` varchar(1) DEFAULT NULL,
  `VAR_5468` varchar(6) DEFAULT NULL,
  `VAR_5469` varchar(1) DEFAULT NULL,
  `VAR_5258` varchar(1) DEFAULT NULL,
  `VAR_5268` varchar(1) DEFAULT NULL,
  `VAR_5269` varchar(1) DEFAULT NULL,
  `VAR_5453` varchar(1) DEFAULT NULL,
  `VAR_5454` varchar(1) DEFAULT NULL,
  `VAR_5455` varchar(1) DEFAULT NULL,
  `VAR_5456` varchar(1) DEFAULT NULL,
  `VAR_5457` varchar(1) DEFAULT NULL,
  `VAR_5458` varchar(1) DEFAULT NULL,
  `VAR_5459` varchar(1) DEFAULT NULL,
  `VAR_5270` varchar(30) DEFAULT NULL,
  `VAR_5252` varchar(30) DEFAULT NULL,
  `VAR_5467` varchar(6) DEFAULT NULL,
  `VAR_5163` varchar(1) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_51`
--

LOCK TABLES `nivel_51` WRITE;
/*!40000 ALTER TABLE `nivel_51` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_51` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_52`
--

DROP TABLE IF EXISTS `nivel_52`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_52` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_5271` varchar(3) DEFAULT NULL,
  `VAR_5272` varchar(3) DEFAULT NULL,
  `VAR_5273` varchar(3) DEFAULT NULL,
  `VAR_5274` varchar(3) DEFAULT NULL,
  `VAR_5275` varchar(2) DEFAULT NULL,
  `VAR_5276` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_52`
--

LOCK TABLES `nivel_52` WRITE;
/*!40000 ALTER TABLE `nivel_52` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_52` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_55`
--

DROP TABLE IF EXISTS `nivel_55`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_55` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(20) DEFAULT NULL,
  `VAR_0004` varchar(20) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0007` varchar(2) DEFAULT NULL,
  `VAR_0008` varchar(1) DEFAULT NULL,
  `VAR_0009` varchar(1) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(20) DEFAULT NULL,
  `VAR_0015` varchar(20) DEFAULT NULL,
  `VAR_0016` varchar(20) DEFAULT NULL,
  `VAR_0017` varchar(1) DEFAULT NULL,
  `VAR_0019` varchar(1) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0018` varchar(1) DEFAULT NULL,
  `VAR_0020` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(20) DEFAULT NULL,
  `VAR_0038` varchar(2) DEFAULT NULL,
  `VAR_0040` varchar(2) DEFAULT NULL,
  `VAR_0044` varchar(1) DEFAULT NULL,
  `VAR_0039` varchar(1) DEFAULT NULL,
  `VAR_0045` varchar(2) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0041` varchar(2) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0042` varchar(2) DEFAULT NULL,
  `VAR_0043` varchar(2) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(1) DEFAULT NULL,
  `VAR_0049` varchar(1) DEFAULT NULL,
  `VAR_0050` datetime DEFAULT NULL,
  `VAR_0051` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(3) DEFAULT NULL,
  `VAR_0054` varchar(2) DEFAULT NULL,
  `VAR_0055` datetime DEFAULT NULL,
  `VAR_0056` datetime DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(2) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(1) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0069` datetime DEFAULT NULL,
  `VAR_0076` varchar(2) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(4) DEFAULT NULL,
  `VAR_0077` varchar(2) DEFAULT NULL,
  `VAR_0078` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0080` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(20) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(2) DEFAULT NULL,
  `VAR_0086` varchar(2) DEFAULT NULL,
  `VAR_0087` varchar(2) DEFAULT NULL,
  `VAR_0088` varchar(3) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(3) DEFAULT NULL,
  `VAR_0091` varchar(3) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(2) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(3) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(3) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(1) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(1) DEFAULT NULL,
  `VAR_0102` varchar(1) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(1) DEFAULT NULL,
  `VAR_0106` varchar(1) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0130` varchar(1) DEFAULT NULL,
  `VAR_0137` varchar(1) DEFAULT NULL,
  `VAR_0234` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0133` varchar(1) DEFAULT NULL,
  `VAR_0138` varchar(1) DEFAULT NULL,
  `VAR_0131` varchar(1) DEFAULT NULL,
  `VAR_0136` varchar(1) DEFAULT NULL,
  `VAR_0110` varchar(1) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0111` varchar(1) DEFAULT NULL,
  `VAR_0112` varchar(1) DEFAULT NULL,
  `VAR_0113` varchar(1) DEFAULT NULL,
  `VAR_0115` varchar(1) DEFAULT NULL,
  `VAR_0116` varchar(1) DEFAULT NULL,
  `VAR_0117` varchar(1) DEFAULT NULL,
  `VAR_0118` varchar(1) DEFAULT NULL,
  `VAR_0119` varchar(1) DEFAULT NULL,
  `VAR_0120` varchar(3) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0122` varchar(1) DEFAULT NULL,
  `VAR_0123` varchar(2) DEFAULT NULL,
  `VAR_0124` varchar(2) DEFAULT NULL,
  `VAR_0125` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(1) DEFAULT NULL,
  `VAR_0129` varchar(1) DEFAULT NULL,
  `VAR_0127` varchar(1) DEFAULT NULL,
  `VAR_0128` varchar(2) DEFAULT NULL,
  `VAR_0139` varchar(20) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0141` varchar(1) DEFAULT NULL,
  `VAR_0222` varchar(4) DEFAULT NULL,
  `VAR_0142` varchar(3) DEFAULT NULL,
  `VAR_0143` datetime DEFAULT NULL,
  `VAR_0144` varchar(4) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(2) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0148` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0150` varchar(1) DEFAULT NULL,
  `VAR_0151` varchar(1) DEFAULT NULL,
  `VAR_0152` varchar(1) DEFAULT NULL,
  `VAR_0153` varchar(1) DEFAULT NULL,
  `VAR_0154` varchar(1) DEFAULT NULL,
  `VAR_0155` varchar(1) DEFAULT NULL,
  `VAR_0156` varchar(1) DEFAULT NULL,
  `VAR_0157` varchar(1) DEFAULT NULL,
  `VAR_0158` varchar(1) DEFAULT NULL,
  `VAR_0159` varchar(1) DEFAULT NULL,
  `VAR_0160` varchar(1) DEFAULT NULL,
  `VAR_0161` varchar(1) DEFAULT NULL,
  `VAR_0162` varchar(1) DEFAULT NULL,
  `VAR_0163` varchar(1) DEFAULT NULL,
  `VAR_0164` varchar(1) DEFAULT NULL,
  `VAR_0165` varchar(2) DEFAULT NULL,
  `VAR_0166` varchar(2) DEFAULT NULL,
  `VAR_0167` varchar(2) DEFAULT NULL,
  `VAR_0168` varchar(2) DEFAULT NULL,
  `VAR_0169` varchar(2) DEFAULT NULL,
  `VAR_0114` varchar(2) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0174` varchar(1) DEFAULT NULL,
  `VAR_0170` varchar(200) DEFAULT NULL,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(1) DEFAULT NULL,
  `VAR_0177` varchar(30) DEFAULT NULL,
  `VAR_0178` varchar(1) DEFAULT NULL,
  `VAR_0179` varchar(30) DEFAULT NULL,
  `VAR_0180` datetime DEFAULT NULL,
  `VAR_0181` varchar(4) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(1) DEFAULT NULL,
  `VAR_0219` varchar(30) DEFAULT NULL,
  `VAR_0220` varchar(30) DEFAULT NULL,
  `VAR_0221` varchar(200) DEFAULT NULL,
  `VAR_0233` varchar(20) DEFAULT NULL,
  `VAR_0184` varchar(1) DEFAULT NULL,
  `VAR_0185` varchar(1) DEFAULT NULL,
  `VAR_0186` datetime DEFAULT NULL,
  `VAR_0224` varchar(1) DEFAULT NULL,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0195` varchar(1) DEFAULT NULL,
  `VAR_0196` varchar(1) DEFAULT NULL,
  `VAR_0197` varchar(1) DEFAULT NULL,
  `VAR_0198` varchar(1) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0204` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0225` varchar(1) DEFAULT NULL,
  `VAR_0202` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0207` varchar(1) DEFAULT NULL,
  `VAR_0208` varchar(1) DEFAULT NULL,
  `VAR_0209` varchar(1) DEFAULT NULL,
  `VAR_0210` varchar(1) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(1) DEFAULT NULL,
  `VAR_0213` varchar(1) DEFAULT NULL,
  `VAR_0214` datetime DEFAULT NULL,
  `VAR_0215` varchar(4) DEFAULT NULL,
  `VAR_0218` varchar(1) DEFAULT NULL,
  `VAR_0223` varchar(1) DEFAULT NULL,
  `VAR_0216` varchar(1) DEFAULT NULL,
  `VAR_0217` varchar(1) DEFAULT NULL,
  `VAR_0226` varchar(1) DEFAULT NULL,
  `VAR_0227` varchar(1) DEFAULT NULL,
  `VAR_0228` varchar(1) DEFAULT NULL,
  `VAR_0229` varchar(1) DEFAULT NULL,
  `VAR_0230` varchar(1) DEFAULT NULL,
  `VAR_0231` varchar(1) DEFAULT NULL,
  `VAR_0232` varchar(1) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_55`
--

LOCK TABLES `nivel_55` WRITE;
/*!40000 ALTER TABLE `nivel_55` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_55` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_56`
--

DROP TABLE IF EXISTS `nivel_56`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_56` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0187` varchar(3) DEFAULT NULL,
  `VAR_0188` varchar(3) DEFAULT NULL,
  `VAR_0189` varchar(3) DEFAULT NULL,
  `VAR_0190` varchar(3) DEFAULT NULL,
  `VAR_0191` varchar(2) DEFAULT NULL,
  `VAR_0192` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_56`
--

LOCK TABLES `nivel_56` WRITE;
/*!40000 ALTER TABLE `nivel_56` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_56` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_57`
--

DROP TABLE IF EXISTS `nivel_57`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_57` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0235` varchar(15) DEFAULT NULL,
  `VAR_0236` varchar(15) DEFAULT NULL,
  `VAR_0237` varchar(15) DEFAULT NULL,
  `VAR_0238` varchar(15) DEFAULT NULL,
  `VAR_0239` varchar(15) DEFAULT NULL,
  `VAR_0240` varchar(15) DEFAULT NULL,
  `VAR_0241` varchar(15) DEFAULT NULL,
  `VAR_0242` varchar(15) DEFAULT NULL,
  `VAR_0243` varchar(15) DEFAULT NULL,
  `VAR_0250` varchar(15) DEFAULT NULL,
  `VAR_0244` varchar(15) DEFAULT NULL,
  `VAR_0245` varchar(15) DEFAULT NULL,
  `VAR_0246` varchar(15) DEFAULT NULL,
  `VAR_0247` varchar(15) DEFAULT NULL,
  `VAR_0248` varchar(15) DEFAULT NULL,
  `VAR_0249` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_57`
--

LOCK TABLES `nivel_57` WRITE;
/*!40000 ALTER TABLE `nivel_57` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_57` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_61`
--

DROP TABLE IF EXISTS `nivel_61`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_61` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_6006` varchar(1) DEFAULT NULL,
  `VAR_6008` varchar(20) DEFAULT NULL,
  `VAR_6001` mediumtext  DEFAULT NULL ,
  `VAR_6011` varchar(1) DEFAULT NULL,
  `VAR_6009` varchar(20) DEFAULT NULL,
  `VAR_6002` mediumtext  DEFAULT NULL ,
  `VAR_6010` varchar(20) DEFAULT NULL,
  `VAR_6012` varchar(1) DEFAULT NULL,
  `VAR_6013` varchar(1) DEFAULT NULL,
  `VAR_6014` varchar(1) DEFAULT NULL,
  `VAR_6003` mediumtext  DEFAULT NULL ,
  `VAR_6005` varchar(50) DEFAULT NULL,
  `VAR_6004` mediumtext  DEFAULT NULL ,
  `VAR_6015` varchar(50) DEFAULT NULL,
  `VAR_6016` varchar(1) DEFAULT NULL,
  `VAR_6007` varchar(50) DEFAULT NULL,
  `VAR_6017` varchar(1) DEFAULT NULL,
  `VAR_6018` varchar(3) DEFAULT NULL,
  `VAR_6019` varchar(4) DEFAULT NULL,
  `VAR_6021` varchar(1) DEFAULT NULL,
  `VAR_6210` varchar(1) DEFAULT NULL,
  `VAR_6022` varchar(1) DEFAULT NULL,
  `VAR_6130` varchar(1) DEFAULT NULL,
  `VAR_6023` varchar(1) DEFAULT NULL,
  `VAR_6024` varchar(1) DEFAULT NULL,
  `VAR_6025` varchar(1) DEFAULT NULL,
  `VAR_6026` varchar(1) DEFAULT NULL,
  `VAR_6027` varchar(1) DEFAULT NULL,
  `VAR_6028` varchar(50) DEFAULT NULL,
  `VAR_6029` varchar(3) DEFAULT NULL,
  `VAR_6030` varchar(50) DEFAULT NULL,
  `VAR_6219` varchar(1) DEFAULT NULL,
  `VAR_6220` varchar(1) DEFAULT NULL,
  `VAR_6217` varchar(1) DEFAULT NULL,
  `VAR_6218` varchar(1) DEFAULT NULL,
  `VAR_6216` varchar(70) DEFAULT NULL,
  `VAR_6031` varchar(50) DEFAULT NULL,
  `VAR_6032` datetime DEFAULT NULL,
  `VAR_6033` varchar(4) DEFAULT NULL,
  `VAR_6035` varchar(2) DEFAULT NULL,
  `VAR_6036` varchar(2) DEFAULT NULL,
  `VAR_6037` varchar(2) DEFAULT NULL,
  `VAR_6038` varchar(1) DEFAULT NULL,
  `VAR_6039` varchar(3) DEFAULT NULL,
  `VAR_6180` varchar(2) DEFAULT NULL,
  `VAR_6181` varchar(2) DEFAULT NULL,
  `VAR_6042` varchar(1) DEFAULT NULL,
  `VAR_6043` varchar(1) DEFAULT NULL,
  `VAR_6044` varchar(1) DEFAULT NULL,
  `VAR_6045` varchar(1) DEFAULT NULL,
  `VAR_6046` varchar(1) DEFAULT NULL,
  `VAR_6047` varchar(1) DEFAULT NULL,
  `VAR_6048` varchar(50) DEFAULT NULL,
  `VAR_6049` varchar(50) DEFAULT NULL,
  `VAR_6050` varchar(4) DEFAULT NULL,
  `VAR_6051` varchar(3) DEFAULT NULL,
  `VAR_6052` varchar(3) DEFAULT NULL,
  `VAR_6053` mediumtext  DEFAULT NULL ,
  `VAR_6054` varchar(1) DEFAULT NULL,
  `VAR_6215` mediumtext  DEFAULT NULL ,
  `VAR_6055` varchar(50) DEFAULT NULL,
  `VAR_6056` varchar(50) DEFAULT NULL,
  `VAR_6057` varchar(4) DEFAULT NULL,
  `VAR_6058` varchar(1) DEFAULT NULL,
  `VAR_6059` varchar(1) DEFAULT NULL,
  `VAR_6060` varchar(1) DEFAULT NULL,
  `VAR_6061` varchar(1) DEFAULT NULL,
  `VAR_6062` varchar(1) DEFAULT NULL,
  `VAR_6063` varchar(1) DEFAULT NULL,
  `VAR_6064` varchar(1) DEFAULT NULL,
  `VAR_6065` varchar(1) DEFAULT NULL,
  `VAR_6066` varchar(1) DEFAULT NULL,
  `VAR_6067` varchar(1) DEFAULT NULL,
  `VAR_6068` varchar(1) DEFAULT NULL,
  `VAR_6069` varchar(1) DEFAULT NULL,
  `VAR_6070` varchar(1) DEFAULT NULL,
  `VAR_6071` varchar(2) DEFAULT NULL,
  `VAR_6072` varchar(20) DEFAULT NULL,
  `VAR_6073` varchar(2) DEFAULT NULL,
  `VAR_6074` varchar(20) DEFAULT NULL,
  `VAR_6075` varchar(2) DEFAULT NULL,
  `VAR_6076` varchar(20) DEFAULT NULL,
  `VAR_6077` varchar(3) DEFAULT NULL,
  `VAR_6078` varchar(20) DEFAULT NULL,
  `VAR_6211` datetime DEFAULT NULL,
  `VAR_6212` datetime DEFAULT NULL,
  `VAR_6225` datetime DEFAULT NULL,
  `VAR_6213` datetime DEFAULT NULL,
  `VAR_6081` varchar(20) DEFAULT NULL,
  `VAR_6226` varchar(20) DEFAULT NULL,
  `VAR_6227` varchar(20) DEFAULT NULL,
  `VAR_6228` varchar(20) DEFAULT NULL,
  `VAR_6088` varchar(1) DEFAULT NULL,
  `VAR_6229` varchar(1) DEFAULT NULL,
  `VAR_6230` varchar(1) DEFAULT NULL,
  `VAR_6089` varchar(2) DEFAULT NULL,
  `VAR_6091` varchar(1) DEFAULT NULL,
  `VAR_6092` varchar(1) DEFAULT NULL,
  `VAR_6174` varchar(1) DEFAULT NULL,
  `VAR_6094` varchar(1) DEFAULT NULL,
  `VAR_6095` varchar(1) DEFAULT NULL,
  `VAR_6090` varchar(1) DEFAULT NULL,
  `VAR_6096` varchar(1) DEFAULT NULL,
  `VAR_6093` varchar(1) DEFAULT NULL,
  `VAR_6098` varchar(1) DEFAULT NULL,
  `VAR_6099` varchar(4) DEFAULT NULL,
  `VAR_6101` varchar(1) DEFAULT NULL,
  `VAR_6102` varchar(1) DEFAULT NULL,
  `VAR_6214` varchar(1) DEFAULT NULL,
  `VAR_6103` varchar(2) DEFAULT NULL,
  `VAR_6104` varchar(1) DEFAULT NULL,
  `VAR_6105` varchar(2) DEFAULT NULL,
  `VAR_6106` varchar(1) DEFAULT NULL,
  `VAR_6107` varchar(1) DEFAULT NULL,
  `VAR_6108` varchar(5) DEFAULT NULL,
  `VAR_6110` varchar(1) DEFAULT NULL,
  `VAR_6111` varchar(3) DEFAULT NULL,
  `VAR_6112` varchar(1) DEFAULT NULL,
  `VAR_6113` varchar(3) DEFAULT NULL,
  `VAR_6223` varchar(1) DEFAULT NULL,
  `VAR_6224` varchar(1) DEFAULT NULL,
  `VAR_6222` varchar(1) DEFAULT NULL,
  `VAR_6221` varchar(1) DEFAULT NULL,
  `VAR_6114` varchar(1) DEFAULT NULL,
  `VAR_6115` varchar(1) DEFAULT NULL,
  `VAR_6116` varchar(2) DEFAULT NULL,
  `VAR_6117` varchar(1) DEFAULT NULL,
  `VAR_6118` varchar(1) DEFAULT NULL,
  `VAR_6119` varchar(1) DEFAULT NULL,
  `VAR_6120` varchar(1) DEFAULT NULL,
  `VAR_6121` varchar(1) DEFAULT NULL,
  `VAR_6122` varchar(50) DEFAULT NULL,
  `VAR_6123` varchar(4) DEFAULT NULL,
  `VAR_6124` varchar(2) DEFAULT NULL,
  `VAR_6125` varchar(4) DEFAULT NULL,
  `VAR_6126` varchar(4) DEFAULT NULL,
  `VAR_6127` varchar(3) DEFAULT NULL,
  `VAR_6129` varchar(1) DEFAULT NULL,
  `VAR_6132` varchar(1) DEFAULT NULL,
  `VAR_6131` varchar(1) DEFAULT NULL,
  `VAR_6133` varchar(50) DEFAULT NULL,
  `VAR_6134` varchar(20) DEFAULT NULL,
  `VAR_6175` datetime DEFAULT NULL,
  `VAR_6135` varchar(2) DEFAULT NULL,
  `VAR_6136` varchar(1) DEFAULT NULL,
  `VAR_6137` varchar(2) DEFAULT NULL,
  `VAR_6138` varchar(1) DEFAULT NULL,
  `VAR_6139` varchar(1) DEFAULT NULL,
  `VAR_6140` varchar(1) DEFAULT NULL,
  `VAR_6141` varchar(1) DEFAULT NULL,
  `VAR_6142` varchar(1) DEFAULT NULL,
  `VAR_6143` varchar(1) DEFAULT NULL,
  `VAR_6144` varchar(1) DEFAULT NULL,
  `VAR_6145` varchar(1) DEFAULT NULL,
  `VAR_6146` varchar(1) DEFAULT NULL,
  `VAR_6147` varchar(1) DEFAULT NULL,
  `VAR_6148` varchar(1) DEFAULT NULL,
  `VAR_6149` varchar(1) DEFAULT NULL,
  `VAR_6150` varchar(1) DEFAULT NULL,
  `VAR_6151` varchar(1) DEFAULT NULL,
  `VAR_6152` varchar(1) DEFAULT NULL,
  `VAR_6153` mediumtext  DEFAULT NULL ,
  `VAR_6154` varchar(50) DEFAULT NULL,
  `VAR_6156` varchar(50) DEFAULT NULL,
  `VAR_6157` varchar(50) DEFAULT NULL,
  `VAR_6155` mediumtext  DEFAULT NULL ,
  `VAR_6158` varchar(50) DEFAULT NULL,
  `VAR_6159` varchar(50) DEFAULT NULL,
  `VAR_6160` datetime DEFAULT NULL,
  `VAR_6161` varchar(1) DEFAULT NULL,
  `VAR_6162` varchar(50) DEFAULT NULL,
  `VAR_6163` varchar(50) DEFAULT NULL,
  `VAR_6164` datetime DEFAULT NULL,
  `VAR_6165` varchar(1) DEFAULT NULL,
  `VAR_6166` varchar(50) DEFAULT NULL,
  `VAR_6167` varchar(50) DEFAULT NULL,
  `VAR_6168` datetime DEFAULT NULL,
  `VAR_6169` varchar(1) DEFAULT NULL,
  `VAR_6170` varchar(50) DEFAULT NULL,
  `VAR_6171` varchar(50) DEFAULT NULL,
  `VAR_6172` varchar(2) DEFAULT NULL,
  `VAR_6173` varchar(1) DEFAULT NULL,
  `VAR_6128` varchar(3) DEFAULT NULL,
  `VAR_6231` varchar(50) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_61`
--

LOCK TABLES `nivel_61` WRITE;
/*!40000 ALTER TABLE `nivel_61` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_61` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_71`
--

DROP TABLE IF EXISTS `nivel_71`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_71` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(50) DEFAULT NULL,
  `VAR_0004` varchar(30) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0009` varchar(2) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0015` varchar(1) DEFAULT NULL,
  `VAR_0016` varchar(1) DEFAULT NULL,
  `VAR_0017` varchar(20) DEFAULT NULL,
  `VAR_0018` varchar(20) DEFAULT NULL,
  `VAR_0019` varchar(20) DEFAULT NULL,
  `VAR_0020` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0039` varchar(20) DEFAULT NULL,
  `VAR_0312` varchar(2) DEFAULT NULL,
  `VAR_0040` varchar(1) DEFAULT NULL,
  `VAR_0041` varchar(1) DEFAULT NULL,
  `VAR_0042` varchar(1) DEFAULT NULL,
  `VAR_0043` varchar(1) DEFAULT NULL,
  `VAR_0044` datetime DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(3) DEFAULT NULL,
  `VAR_0049` varchar(2) DEFAULT NULL,
  `VAR_0050` datetime DEFAULT NULL,
  `VAR_0051` datetime DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0054` varchar(2) DEFAULT NULL,
  `VAR_0055` varchar(1) DEFAULT NULL,
  `VAR_0056` varchar(1) DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(2) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(3) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(3) DEFAULT NULL,
  `VAR_0076` varchar(1) DEFAULT NULL,
  `VAR_0077` varchar(1) DEFAULT NULL,
  `VAR_0078` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0080` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(1) DEFAULT NULL,
  `VAR_0084` varchar(3) DEFAULT NULL,
  `VAR_0086` varchar(3) DEFAULT NULL,
  `VAR_0085` varchar(1) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0088` varchar(1) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(1) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(1) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(2) DEFAULT NULL,
  `VAR_0102` varchar(2) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(2) DEFAULT NULL,
  `VAR_0106` varchar(2) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(1) DEFAULT NULL,
  `VAR_0127` datetime DEFAULT NULL,
  `VAR_0128` varchar(1) DEFAULT NULL,
  `VAR_0129` varchar(2) DEFAULT NULL,
  `VAR_0130` varchar(1) DEFAULT NULL,
  `VAR_0131` varchar(2) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0133` varchar(2) DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0136` datetime DEFAULT NULL,
  `VAR_0137` varchar(4) DEFAULT NULL,
  `VAR_0141` varchar(3) DEFAULT NULL,
  `VAR_0138` varchar(1) DEFAULT NULL,
  `VAR_0139` varchar(1) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0142` varchar(2) DEFAULT NULL,
  `VAR_0143` varchar(1) DEFAULT NULL,
  `VAR_0144` varchar(1) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(1) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0148` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0150` varchar(1) DEFAULT NULL,
  `VAR_0163` varchar(1) DEFAULT NULL,
  `VAR_0164` varchar(1) DEFAULT NULL,
  `VAR_0165` varchar(1) DEFAULT NULL,
  `VAR_0166` varchar(1) DEFAULT NULL,
  `VAR_0167` varchar(1) DEFAULT NULL,
  `VAR_0168` varchar(1) DEFAULT NULL,
  `VAR_0169` varchar(1) DEFAULT NULL,
  `VAR_0170` varchar(1) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0174` varchar(1) DEFAULT NULL,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(1) DEFAULT NULL,
  `VAR_0177` varchar(1) DEFAULT NULL,
  `VAR_0313` varchar(1) DEFAULT NULL,
  `VAR_0178` varchar(1) DEFAULT NULL,
  `VAR_0179` varchar(1) DEFAULT NULL,
  `VAR_0180` varchar(1) DEFAULT NULL,
  `VAR_0181` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(2) DEFAULT NULL,
  `VAR_0184` varchar(2) DEFAULT NULL,
  `VAR_0185` varchar(2) DEFAULT NULL,
  `VAR_0186` varchar(1) DEFAULT NULL,
  `VAR_0187` varchar(1) DEFAULT NULL,
  `VAR_0188` varchar(1) DEFAULT NULL,
  `VAR_0189` varchar(1) DEFAULT NULL,
  `VAR_0190` varchar(4) DEFAULT NULL,
  `VAR_0191` datetime DEFAULT NULL,
  `VAR_0192` varchar(1) DEFAULT NULL,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0195` varchar(100) DEFAULT NULL,
  `VAR_0196` varchar(2) DEFAULT NULL,
  `VAR_0197` varchar(2) DEFAULT NULL,
  `VAR_0198` varchar(1) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0202` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0204` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0207` varchar(1) DEFAULT NULL,
  `VAR_0208` varchar(1) DEFAULT NULL,
  `VAR_0209` varchar(1) DEFAULT NULL,
  `VAR_0210` varchar(1) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(1) DEFAULT NULL,
  `VAR_0213` varchar(1) DEFAULT NULL,
  `VAR_0214` varchar(2) DEFAULT NULL,
  `VAR_0215` varchar(2) DEFAULT NULL,
  `VAR_0216` varchar(1) DEFAULT NULL,
  `VAR_0217` varchar(4) DEFAULT NULL,
  `VAR_0218` varchar(1) DEFAULT NULL,
  `VAR_0219` varchar(3) DEFAULT NULL,
  `VAR_0220` varchar(3) DEFAULT NULL,
  `VAR_0221` varchar(2) DEFAULT NULL,
  `VAR_0222` varchar(1) DEFAULT NULL,
  `VAR_0225` varchar(1) DEFAULT NULL,
  `VAR_0223` varchar(1) DEFAULT NULL,
  `VAR_0224` varchar(1) DEFAULT NULL,
  `VAR_0226` varchar(1) DEFAULT NULL,
  `VAR_0227` varchar(2) DEFAULT NULL,
  `VAR_0228` varchar(2) DEFAULT NULL,
  `VAR_0229` varchar(1) DEFAULT NULL,
  `VAR_0230` varchar(1) DEFAULT NULL,
  `VAR_0231` varchar(1) DEFAULT NULL,
  `VAR_0232` varchar(1) DEFAULT NULL,
  `VAR_0233` varchar(1) DEFAULT NULL,
  `VAR_0234` varchar(1) DEFAULT NULL,
  `VAR_0235` varchar(1) DEFAULT NULL,
  `VAR_0236` varchar(1) DEFAULT NULL,
  `VAR_0237` varchar(50) DEFAULT NULL,
  `VAR_0238` varchar(1) DEFAULT NULL,
  `VAR_0239` varchar(50) DEFAULT NULL,
  `VAR_0240` varchar(1) DEFAULT NULL,
  `VAR_0241` varchar(3) DEFAULT NULL,
  `VAR_0242` varchar(1) DEFAULT NULL,
  `VAR_0243` varchar(2) DEFAULT NULL,
  `VAR_0245` varchar(2) DEFAULT NULL,
  `VAR_0247` varchar(2) DEFAULT NULL,
  `VAR_0244` varchar(50) DEFAULT NULL,
  `VAR_0246` varchar(50) DEFAULT NULL,
  `VAR_0248` varchar(50) DEFAULT NULL,
  `VAR_0249` varchar(1) DEFAULT NULL,
  `VAR_0250` varchar(1) DEFAULT NULL,
  `VAR_0251` varchar(1) DEFAULT NULL,
  `VAR_0252` varchar(1) DEFAULT NULL,
  `VAR_0253` varchar(1) DEFAULT NULL,
  `VAR_0254` varchar(1) DEFAULT NULL,
  `VAR_0255` varchar(1) DEFAULT NULL,
  `VAR_0256` varchar(1) DEFAULT NULL,
  `VAR_0257` varchar(1) DEFAULT NULL,
  `VAR_0258` varchar(1) DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_71`
--

LOCK TABLES `nivel_71` WRITE;
/*!40000 ALTER TABLE `nivel_71` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_71` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_72`
--

DROP TABLE IF EXISTS `nivel_72`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_72` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0110` varchar(2) DEFAULT NULL,
  `VAR_0111` varchar(2) DEFAULT NULL,
  `VAR_0112` varchar(2) DEFAULT NULL,
  `VAR_0113` varchar(2) DEFAULT NULL,
  `VAR_0114` varchar(4) DEFAULT NULL,
  `VAR_0115` varchar(3) DEFAULT NULL,
  `VAR_0116` varchar(3) DEFAULT NULL,
  `VAR_0117` varchar(2) DEFAULT NULL,
  `VAR_0118` varchar(5) DEFAULT NULL,
  `VAR_0119` varchar(3) DEFAULT NULL,
  `VAR_0120` varchar(1) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0122` varchar(100) DEFAULT NULL,
  `VAR_0123` varchar(6) DEFAULT NULL,
  `VAR_0124` varchar(2) DEFAULT NULL,
  `VAR_0125` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_72`
--

LOCK TABLES `nivel_72` WRITE;
/*!40000 ALTER TABLE `nivel_72` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_72` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_73`
--

DROP TABLE IF EXISTS `nivel_73`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_73` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0151` varchar(2) DEFAULT NULL,
  `VAR_0152` varchar(2) DEFAULT NULL,
  `VAR_0153` varchar(3) DEFAULT NULL,
  `VAR_0154` varchar(3) DEFAULT NULL,
  `VAR_0155` varchar(3) DEFAULT NULL,
  `VAR_0156` varchar(3) DEFAULT NULL,
  `VAR_0157` varchar(1) DEFAULT NULL,
  `VAR_0158` varchar(2) DEFAULT NULL,
  `VAR_0159` varchar(4) DEFAULT NULL,
  `VAR_0160` varchar(4) DEFAULT NULL,
  `VAR_0161` varchar(1) DEFAULT NULL,
  `VAR_0162` varchar(3) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_73`
--

LOCK TABLES `nivel_73` WRITE;
/*!40000 ALTER TABLE `nivel_73` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_73` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_74`
--

DROP TABLE IF EXISTS `nivel_74`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_74` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0259` varchar(2) DEFAULT NULL,
  `VAR_0260` varchar(2) DEFAULT NULL,
  `VAR_0261` varchar(3) DEFAULT NULL,
  `VAR_0262` varchar(3) DEFAULT NULL,
  `VAR_0263` varchar(3) DEFAULT NULL,
  `VAR_0264` varchar(3) DEFAULT NULL,
  `VAR_0265` varchar(4) DEFAULT NULL,
  `VAR_0266` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_74`
--

LOCK TABLES `nivel_74` WRITE;
/*!40000 ALTER TABLE `nivel_74` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_74` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_75`
--

DROP TABLE IF EXISTS `nivel_75`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_75` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0269` varchar(1) DEFAULT NULL,
  `VAR_0267` datetime DEFAULT NULL,
  `VAR_0268` varchar(4) DEFAULT NULL,
  `VAR_0270` varchar(10) DEFAULT NULL,
  `VAR_0271` varchar(1) DEFAULT NULL,
  `VAR_0272` varchar(2) DEFAULT NULL,
  `VAR_0273` varchar(1) DEFAULT NULL,
  `VAR_0274` varchar(1) DEFAULT NULL,
  `VAR_0275` varchar(1) DEFAULT NULL,
  `VAR_0276` varchar(1) DEFAULT NULL,
  `VAR_0277` varchar(4) DEFAULT NULL,
  `VAR_0286` varchar(30) DEFAULT NULL,
  `VAR_0287` varchar(50) DEFAULT NULL,
  `VAR_0288` varchar(50) DEFAULT NULL,
  `VAR_0278` datetime DEFAULT NULL,
  `VAR_0281` varchar(1) DEFAULT NULL,
  `VAR_0279` varchar(1) DEFAULT NULL,
  `VAR_0280` varchar(10) DEFAULT NULL,
  `VAR_0282` varchar(1) DEFAULT NULL,
  `VAR_0283` varchar(3) DEFAULT NULL,
  `VAR_0284` varchar(1) DEFAULT NULL,
  `VAR_0285` varchar(1) DEFAULT NULL,
  `VAR_0289` varchar(50) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_75`
--

LOCK TABLES `nivel_75` WRITE;
/*!40000 ALTER TABLE `nivel_75` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_75` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_76`
--

DROP TABLE IF EXISTS `nivel_76`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_76` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0296` varchar(15) DEFAULT NULL,
  `VAR_0297` varchar(15) DEFAULT NULL,
  `VAR_0298` varchar(15) DEFAULT NULL,
  `VAR_0299` varchar(15) DEFAULT NULL,
  `VAR_0300` varchar(15) DEFAULT NULL,
  `VAR_0301` varchar(15) DEFAULT NULL,
  `VAR_0302` varchar(15) DEFAULT NULL,
  `VAR_0303` varchar(15) DEFAULT NULL,
  `VAR_0304` varchar(15) DEFAULT NULL,
  `VAR_0305` varchar(15) DEFAULT NULL,
  `VAR_0306` varchar(15) DEFAULT NULL,
  `VAR_0307` varchar(15) DEFAULT NULL,
  `VAR_0308` varchar(15) DEFAULT NULL,
  `VAR_0309` varchar(15) DEFAULT NULL,
  `VAR_0310` varchar(15) DEFAULT NULL,
  `VAR_0311` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_76`
--

LOCK TABLES `nivel_76` WRITE;
/*!40000 ALTER TABLE `nivel_76` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_76` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_77`
--

DROP TABLE IF EXISTS `nivel_77`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_77` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0290` varchar(15) DEFAULT NULL,
  `VAR_0291` varchar(15) DEFAULT NULL,
  `VAR_0292` varchar(15) DEFAULT NULL,
  `VAR_0293` varchar(15) DEFAULT NULL,
  `VAR_0294` varchar(15) DEFAULT NULL,
  `VAR_0295` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_77`
--

LOCK TABLES `nivel_77` WRITE;
/*!40000 ALTER TABLE `nivel_77` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_77` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_81`
--

DROP TABLE IF EXISTS `nivel_81`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_81` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0008` varchar(100) DEFAULT NULL,
  `VAR_0017` varchar(20) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(50) DEFAULT NULL,
  `VAR_0007` varchar(30) DEFAULT NULL,
  `VAR_0004` varchar(30) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0009` varchar(2) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0015` varchar(1) DEFAULT NULL,
  `VAR_0016` varchar(1) DEFAULT NULL,
  `VAR_0018` varchar(20) DEFAULT NULL,
  `VAR_0312` varchar(2) DEFAULT NULL,
  `VAR_0019` varchar(20) DEFAULT NULL,
  `VAR_0020` varchar(20) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0039` varchar(20) DEFAULT NULL,
  `VAR_0044` datetime DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0329` varchar(1) DEFAULT NULL,
  `VAR_0330` varchar(1) DEFAULT NULL,
  `VAR_0331` varchar(2) DEFAULT NULL,
  `VAR_0332` varchar(2) DEFAULT NULL,
  `VAR_0336` varchar(1) DEFAULT NULL,
  `VAR_0337` varchar(2) DEFAULT NULL,
  `VAR_0333` varchar(2) DEFAULT NULL,
  `VAR_0338` varchar(1) DEFAULT NULL,
  `VAR_0334` varchar(2) DEFAULT NULL,
  `VAR_0335` varchar(2) DEFAULT NULL,
  `VAR_0339` varchar(1) DEFAULT NULL,
  `VAR_0340` varchar(1) DEFAULT NULL,
  `VAR_0341` varchar(1) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(3) DEFAULT NULL,
  `VAR_0049` varchar(2) DEFAULT NULL,
  `VAR_0050` datetime DEFAULT NULL,
  `VAR_0051` datetime DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0040` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(2) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(1) DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(3) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(3) DEFAULT NULL,
  `VAR_0076` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(1) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0086` varchar(1) DEFAULT NULL,
  `VAR_0348` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0077` varchar(1) DEFAULT NULL,
  `VAR_0078` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0088` varchar(1) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(1) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(2) DEFAULT NULL,
  `VAR_0102` varchar(2) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(2) DEFAULT NULL,
  `VAR_0106` varchar(2) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(1) DEFAULT NULL,
  `VAR_0127` datetime DEFAULT NULL,
  `VAR_0128` varchar(1) DEFAULT NULL,
  `VAR_0129` varchar(2) DEFAULT NULL,
  `VAR_0130` varchar(1) DEFAULT NULL,
  `VAR_0131` varchar(2) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0133` varchar(2) DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0136` datetime DEFAULT NULL,
  `VAR_0137` varchar(4) DEFAULT NULL,
  `VAR_0141` varchar(3) DEFAULT NULL,
  `VAR_0138` varchar(1) DEFAULT NULL,
  `VAR_0139` varchar(1) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0142` varchar(2) DEFAULT NULL,
  `VAR_0143` varchar(1) DEFAULT NULL,
  `VAR_0224` varchar(1) DEFAULT NULL,
  `VAR_0254` varchar(1) DEFAULT NULL,
  `VAR_0144` varchar(1) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(1) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0148` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0150` varchar(1) DEFAULT NULL,
  `VAR_0163` varchar(1) DEFAULT NULL,
  `VAR_0164` varchar(1) DEFAULT NULL,
  `VAR_0165` varchar(1) DEFAULT NULL,
  `VAR_0166` varchar(1) DEFAULT NULL,
  `VAR_0167` varchar(1) DEFAULT NULL,
  `VAR_0168` varchar(1) DEFAULT NULL,
  `VAR_0169` varchar(1) DEFAULT NULL,
  `VAR_0170` varchar(1) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0174` varchar(1) DEFAULT NULL,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(1) DEFAULT NULL,
  `VAR_0177` varchar(1) DEFAULT NULL,
  `VAR_0178` varchar(1) DEFAULT NULL,
  `VAR_0179` varchar(1) DEFAULT NULL,
  `VAR_0180` varchar(1) DEFAULT NULL,
  `VAR_0181` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(2) DEFAULT NULL,
  `VAR_0184` varchar(2) DEFAULT NULL,
  `VAR_0185` varchar(2) DEFAULT NULL,
  `VAR_0186` varchar(1) DEFAULT NULL,
  `VAR_0187` varchar(1) DEFAULT NULL,
  `VAR_0188` varchar(1) DEFAULT NULL,
  `VAR_0189` varchar(1) DEFAULT NULL,
  `VAR_0190` varchar(4) DEFAULT NULL,
  `VAR_0191` datetime DEFAULT NULL,
  `VAR_0192` varchar(1) DEFAULT NULL,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0313` varchar(1) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0253` varchar(20) DEFAULT NULL,
  `VAR_0162` varchar(20) DEFAULT NULL,
  `VAR_0195` varchar(100) DEFAULT NULL,
  `VAR_0161` varchar(20) DEFAULT NULL,
  `VAR_0349` varchar(20) DEFAULT NULL,
  `VAR_0223` varchar(20) DEFAULT NULL,
  `VAR_0196` varchar(2) DEFAULT NULL,
  `VAR_0197` varchar(2) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0207` varchar(4) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0202` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0208` varchar(1) DEFAULT NULL,
  `VAR_0209` varchar(1) DEFAULT NULL,
  `VAR_0210` varchar(1) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(1) DEFAULT NULL,
  `VAR_0213` varchar(1) DEFAULT NULL,
  `VAR_0214` varchar(2) DEFAULT NULL,
  `VAR_0215` varchar(2) DEFAULT NULL,
  `VAR_0216` varchar(1) DEFAULT NULL,
  `VAR_0217` varchar(4) DEFAULT NULL,
  `VAR_0218` varchar(1) DEFAULT NULL,
  `VAR_0219` varchar(3) DEFAULT NULL,
  `VAR_0220` varchar(3) DEFAULT NULL,
  `VAR_0221` varchar(2) DEFAULT NULL,
  `VAR_0222` varchar(1) DEFAULT NULL,
  `VAR_0225` varchar(1) DEFAULT NULL,
  `VAR_0226` varchar(1) DEFAULT NULL,
  `VAR_0227` varchar(2) DEFAULT NULL,
  `VAR_0228` varchar(2) DEFAULT NULL,
  `VAR_0229` varchar(1) DEFAULT NULL,
  `VAR_0230` varchar(1) DEFAULT NULL,
  `VAR_0231` varchar(1) DEFAULT NULL,
  `VAR_0232` varchar(1) DEFAULT NULL,
  `VAR_0233` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0234` varchar(1) DEFAULT NULL,
  `VAR_0235` varchar(1) DEFAULT NULL,
  `VAR_0236` varchar(1) DEFAULT NULL,
  `VAR_0237` varchar(50) DEFAULT NULL,
  `VAR_0238` varchar(1) DEFAULT NULL,
  `VAR_0239` varchar(50) DEFAULT NULL,
  `VAR_0240` varchar(1) DEFAULT NULL,
  `VAR_0241` varchar(3) DEFAULT NULL,
  `VAR_0242` varchar(1) DEFAULT NULL,
  `VAR_0243` varchar(2) DEFAULT NULL,
  `VAR_0245` varchar(2) DEFAULT NULL,
  `VAR_0247` varchar(2) DEFAULT NULL,
  `VAR_0244` varchar(50) DEFAULT NULL,
  `VAR_0246` varchar(50) DEFAULT NULL,
  `VAR_0248` varchar(50) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0255` varchar(1) DEFAULT NULL,
  `VAR_0257` varchar(1) DEFAULT NULL,
  `VAR_0258` varchar(1) DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_81`
--

LOCK TABLES `nivel_81` WRITE;
/*!40000 ALTER TABLE `nivel_81` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_81` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_82`
--

DROP TABLE IF EXISTS `nivel_82`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_82` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0110` varchar(2) DEFAULT NULL,
  `VAR_0111` varchar(2) DEFAULT NULL,
  `VAR_0112` varchar(2) DEFAULT NULL,
  `VAR_0113` varchar(2) DEFAULT NULL,
  `VAR_0114` varchar(4) DEFAULT NULL,
  `VAR_0115` varchar(3) DEFAULT NULL,
  `VAR_0116` varchar(3) DEFAULT NULL,
  `VAR_0117` varchar(2) DEFAULT NULL,
  `VAR_0118` varchar(5) DEFAULT NULL,
  `VAR_0119` varchar(3) DEFAULT NULL,
  `VAR_0120` varchar(1) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0347` varchar(4) DEFAULT NULL,
  `VAR_0122` varchar(100) DEFAULT NULL,
  `VAR_0123` varchar(6) DEFAULT NULL,
  `VAR_0124` varchar(2) DEFAULT NULL,
  `VAR_0125` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_82`
--

LOCK TABLES `nivel_82` WRITE;
/*!40000 ALTER TABLE `nivel_82` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_82` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_83`
--

DROP TABLE IF EXISTS `nivel_83`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_83` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0151` varchar(2) DEFAULT NULL,
  `VAR_0152` varchar(2) DEFAULT NULL,
  `VAR_0153` varchar(3) DEFAULT NULL,
  `VAR_0154` varchar(3) DEFAULT NULL,
  `VAR_0155` varchar(3) DEFAULT NULL,
  `VAR_0156` varchar(3) DEFAULT NULL,
  `VAR_0157` varchar(1) DEFAULT NULL,
  `VAR_0158` varchar(2) DEFAULT NULL,
  `VAR_0159` varchar(4) DEFAULT NULL,
  `VAR_0160` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_83`
--

LOCK TABLES `nivel_83` WRITE;
/*!40000 ALTER TABLE `nivel_83` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_83` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_84`
--

DROP TABLE IF EXISTS `nivel_84`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_84` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0259` varchar(2) DEFAULT NULL,
  `VAR_0260` varchar(2) DEFAULT NULL,
  `VAR_0261` varchar(3) DEFAULT NULL,
  `VAR_0262` varchar(3) DEFAULT NULL,
  `VAR_0263` varchar(3) DEFAULT NULL,
  `VAR_0264` varchar(3) DEFAULT NULL,
  `VAR_0265` varchar(4) DEFAULT NULL,
  `VAR_0350` varchar(4) DEFAULT NULL,
  `VAR_0266` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_84`
--

LOCK TABLES `nivel_84` WRITE;
/*!40000 ALTER TABLE `nivel_84` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_84` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_85`
--

DROP TABLE IF EXISTS `nivel_85`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_85` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0343` varchar(1) DEFAULT NULL,
  `VAR_0344` varchar(1) DEFAULT NULL,
  `VAR_0345` varchar(1) DEFAULT NULL,
  `VAR_0346` varchar(1) DEFAULT NULL,
  `VAR_0342` varchar(1) DEFAULT NULL,
  `VAR_0314` varchar(1) DEFAULT NULL,
  `VAR_0319` varchar(1) DEFAULT NULL,
  `VAR_0324` varchar(1) DEFAULT NULL,
  `VAR_0315` varchar(1) DEFAULT NULL,
  `VAR_0320` varchar(1) DEFAULT NULL,
  `VAR_0325` varchar(1) DEFAULT NULL,
  `VAR_0316` varchar(1) DEFAULT NULL,
  `VAR_0321` varchar(1) DEFAULT NULL,
  `VAR_0326` varchar(1) DEFAULT NULL,
  `VAR_0317` varchar(1) DEFAULT NULL,
  `VAR_0322` varchar(1) DEFAULT NULL,
  `VAR_0327` varchar(1) DEFAULT NULL,
  `VAR_0318` varchar(1) DEFAULT NULL,
  `VAR_0323` varchar(1) DEFAULT NULL,
  `VAR_0328` varchar(1) DEFAULT NULL,
  `VAR_0249` varchar(1) DEFAULT NULL,
  `VAR_0250` varchar(1) DEFAULT NULL,
  `VAR_0251` varchar(1) DEFAULT NULL,
  `VAR_0252` varchar(1) DEFAULT NULL,
  `VAR_0267` datetime DEFAULT NULL,
  `VAR_0268` varchar(4) DEFAULT NULL,
  `VAR_0269` varchar(1) DEFAULT NULL,
  `VAR_0271` varchar(1) DEFAULT NULL,
  `VAR_0272` varchar(2) DEFAULT NULL,
  `VAR_0273` varchar(1) DEFAULT NULL,
  `VAR_0270` varchar(10) DEFAULT NULL,
  `VAR_0274` varchar(1) DEFAULT NULL,
  `VAR_0275` varchar(1) DEFAULT NULL,
  `VAR_0277` varchar(4) DEFAULT NULL,
  `VAR_0286` varchar(30) DEFAULT NULL,
  `VAR_0288` varchar(50) DEFAULT NULL,
  `VAR_0278` datetime DEFAULT NULL,
  `VAR_0281` varchar(1) DEFAULT NULL,
  `VAR_0279` varchar(1) DEFAULT NULL,
  `VAR_0280` varchar(10) DEFAULT NULL,
  `VAR_0282` varchar(1) DEFAULT NULL,
  `VAR_0283` varchar(3) DEFAULT NULL,
  `VAR_0284` varchar(1) DEFAULT NULL,
  `VAR_0285` varchar(1) DEFAULT NULL,
  `VAR_0289` varchar(50) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_85`
--

LOCK TABLES `nivel_85` WRITE;
/*!40000 ALTER TABLE `nivel_85` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_85` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_86`
--

DROP TABLE IF EXISTS `nivel_86`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_86` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0296` varchar(15) DEFAULT NULL,
  `VAR_0297` varchar(15) DEFAULT NULL,
  `VAR_0298` varchar(15) DEFAULT NULL,
  `VAR_0299` varchar(15) DEFAULT NULL,
  `VAR_0300` varchar(15) DEFAULT NULL,
  `VAR_0301` varchar(15) DEFAULT NULL,
  `VAR_0302` varchar(15) DEFAULT NULL,
  `VAR_0303` varchar(15) DEFAULT NULL,
  `VAR_0304` varchar(15) DEFAULT NULL,
  `VAR_0305` varchar(15) DEFAULT NULL,
  `VAR_0306` varchar(15) DEFAULT NULL,
  `VAR_0307` varchar(15) DEFAULT NULL,
  `VAR_0308` varchar(15) DEFAULT NULL,
  `VAR_0309` varchar(15) DEFAULT NULL,
  `VAR_0310` varchar(15) DEFAULT NULL,
  `VAR_0311` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_86`
--

LOCK TABLES `nivel_86` WRITE;
/*!40000 ALTER TABLE `nivel_86` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_86` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_91`
--

DROP TABLE IF EXISTS `nivel_91`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_91` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(50) DEFAULT NULL,
  `VAR_0007` varchar(30) DEFAULT NULL,
  `VAR_0004` varchar(30) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0009` varchar(2) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0015` varchar(1) DEFAULT NULL,
  `VAR_0016` varchar(1) DEFAULT NULL,
  `VAR_0017` varchar(20) DEFAULT NULL,
  `VAR_0018` varchar(20) DEFAULT NULL,
  `VAR_0019` varchar(20) DEFAULT NULL,
  `VAR_0312` varchar(2) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0331` varchar(2) DEFAULT NULL,
  `VAR_0329` varchar(1) DEFAULT NULL,
  `VAR_0330` varchar(1) DEFAULT NULL,
  `VAR_0332` varchar(2) DEFAULT NULL,
  `VAR_0336` varchar(1) DEFAULT NULL,
  `VAR_0337` varchar(2) DEFAULT NULL,
  `VAR_0333` varchar(2) DEFAULT NULL,
  `VAR_0338` varchar(1) DEFAULT NULL,
  `VAR_0334` varchar(2) DEFAULT NULL,
  `VAR_0339` varchar(1) DEFAULT NULL,
  `VAR_0335` varchar(2) DEFAULT NULL,
  `VAR_0340` varchar(1) DEFAULT NULL,
  `VAR_0341` varchar(1) DEFAULT NULL,
  `VAR_0044` datetime DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(3) DEFAULT NULL,
  `VAR_0049` varchar(2) DEFAULT NULL,
  `VAR_0050` datetime DEFAULT NULL,
  `VAR_0051` datetime DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(2) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(1) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(1) DEFAULT NULL,
  `VAR_0086` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(3) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(3) DEFAULT NULL,
  `VAR_0076` varchar(1) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(1) DEFAULT NULL,
  `VAR_0077` varchar(1) DEFAULT NULL,
  `VAR_0078` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0088` varchar(1) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(2) DEFAULT NULL,
  `VAR_0106` varchar(2) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(2) DEFAULT NULL,
  `VAR_0102` varchar(2) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0224` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(1) DEFAULT NULL,
  `VAR_0127` datetime DEFAULT NULL,
  `VAR_0128` varchar(1) DEFAULT NULL,
  `VAR_0129` varchar(2) DEFAULT NULL,
  `VAR_0130` varchar(1) DEFAULT NULL,
  `VAR_0131` varchar(2) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0133` varchar(2) DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0136` datetime DEFAULT NULL,
  `VAR_0137` varchar(4) DEFAULT NULL,
  `VAR_0138` varchar(1) DEFAULT NULL,
  `VAR_0139` varchar(1) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0141` varchar(3) DEFAULT NULL,
  `VAR_0142` varchar(2) DEFAULT NULL,
  `VAR_0143` varchar(1) DEFAULT NULL,
  `VAR_0144` varchar(1) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(1) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0148` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0150` varchar(1) DEFAULT NULL,
  `VAR_0313` varchar(1) DEFAULT NULL,
  `VAR_0223` varchar(20) DEFAULT NULL,
  `VAR_0163` varchar(1) DEFAULT NULL,
  `VAR_0164` varchar(1) DEFAULT NULL,
  `VAR_0165` varchar(1) DEFAULT NULL,
  `VAR_0166` varchar(1) DEFAULT NULL,
  `VAR_0167` varchar(1) DEFAULT NULL,
  `VAR_0168` varchar(1) DEFAULT NULL,
  `VAR_0169` varchar(1) DEFAULT NULL,
  `VAR_0170` varchar(1) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0174` varchar(1) DEFAULT NULL,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(1) DEFAULT NULL,
  `VAR_0177` varchar(1) DEFAULT NULL,
  `VAR_0178` varchar(1) DEFAULT NULL,
  `VAR_0179` varchar(1) DEFAULT NULL,
  `VAR_0180` varchar(1) DEFAULT NULL,
  `VAR_0181` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(2) DEFAULT NULL,
  `VAR_0184` varchar(2) DEFAULT NULL,
  `VAR_0185` varchar(2) DEFAULT NULL,
  `VAR_0186` varchar(1) DEFAULT NULL,
  `VAR_0187` varchar(1) DEFAULT NULL,
  `VAR_0188` varchar(1) DEFAULT NULL,
  `VAR_0189` varchar(1) DEFAULT NULL,
  `VAR_0190` varchar(4) DEFAULT NULL,
  `VAR_0191` datetime DEFAULT NULL,
  `VAR_0192` varchar(1) DEFAULT NULL,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0195` varchar(100) DEFAULT NULL,
  `VAR_0196` varchar(2) DEFAULT NULL,
  `VAR_0197` varchar(2) DEFAULT NULL,
  `VAR_0379` varchar(1) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0202` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(1) DEFAULT NULL,
  `VAR_0381` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0380` varchar(1) DEFAULT NULL,
  `VAR_0208` varchar(1) DEFAULT NULL,
  `VAR_0209` varchar(1) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0210` varchar(1) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(1) DEFAULT NULL,
  `VAR_0207` varchar(4) DEFAULT NULL,
  `VAR_0213` varchar(1) DEFAULT NULL,
  `VAR_0214` varchar(2) DEFAULT NULL,
  `VAR_0215` varchar(2) DEFAULT NULL,
  `VAR_0216` varchar(1) DEFAULT NULL,
  `VAR_0217` varchar(4) DEFAULT NULL,
  `VAR_0218` varchar(1) DEFAULT NULL,
  `VAR_0219` varchar(3) DEFAULT NULL,
  `VAR_0220` varchar(3) DEFAULT NULL,
  `VAR_0221` varchar(2) DEFAULT NULL,
  `VAR_0222` varchar(1) DEFAULT NULL,
  `VAR_0225` varchar(1) DEFAULT NULL,
  `VAR_0382` varchar(1) DEFAULT NULL,
  `VAR_0383` varchar(1) DEFAULT NULL,
  `VAR_0226` varchar(1) DEFAULT NULL,
  `VAR_0227` varchar(2) DEFAULT NULL,
  `VAR_0228` varchar(2) DEFAULT NULL,
  `VAR_0229` varchar(1) DEFAULT NULL,
  `VAR_0230` varchar(1) DEFAULT NULL,
  `VAR_0231` varchar(1) DEFAULT NULL,
  `VAR_0232` varchar(1) DEFAULT NULL,
  `VAR_0233` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0384` varchar(1) DEFAULT NULL,
  `VAR_0234` varchar(1) DEFAULT NULL,
  `VAR_0235` varchar(1) DEFAULT NULL,
  `VAR_0236` varchar(1) DEFAULT NULL,
  `VAR_0237` varchar(50) DEFAULT NULL,
  `VAR_0238` varchar(1) DEFAULT NULL,
  `VAR_0239` varchar(50) DEFAULT NULL,
  `VAR_0240` varchar(1) DEFAULT NULL,
  `VAR_0241` varchar(3) DEFAULT NULL,
  `VAR_0242` varchar(1) DEFAULT NULL,
  `VAR_0243` varchar(2) DEFAULT NULL,
  `VAR_0245` varchar(2) DEFAULT NULL,
  `VAR_0247` varchar(2) DEFAULT NULL,
  `VAR_0244` varchar(50) DEFAULT NULL,
  `VAR_0246` varchar(50) DEFAULT NULL,
  `VAR_0248` varchar(50) DEFAULT NULL,
  `VAR_0255` varchar(1) DEFAULT NULL,
  `VAR_0257` varchar(1) DEFAULT NULL,
  `VAR_0258` varchar(1) DEFAULT NULL,
  `VAR_0254` varchar(1) DEFAULT NULL,
  `VAR_0253` varchar(20) DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_91`
--

LOCK TABLES `nivel_91` WRITE;
/*!40000 ALTER TABLE `nivel_91` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_91` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_92`
--

DROP TABLE IF EXISTS `nivel_92`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_92` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0347` varchar(4) DEFAULT NULL,
  `VAR_0110` varchar(2) DEFAULT NULL,
  `VAR_0111` varchar(2) DEFAULT NULL,
  `VAR_0112` varchar(2) DEFAULT NULL,
  `VAR_0113` varchar(2) DEFAULT NULL,
  `VAR_0114` varchar(4) DEFAULT NULL,
  `VAR_0115` varchar(3) DEFAULT NULL,
  `VAR_0116` varchar(3) DEFAULT NULL,
  `VAR_0117` varchar(2) DEFAULT NULL,
  `VAR_0118` varchar(5) DEFAULT NULL,
  `VAR_0119` varchar(3) DEFAULT NULL,
  `VAR_0120` varchar(1) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0374` varchar(1) DEFAULT NULL,
  `VAR_0375` varchar(1) DEFAULT NULL,
  `VAR_0376` varchar(2) DEFAULT NULL,
  `VAR_0377` varchar(2) DEFAULT NULL,
  `VAR_0378` varchar(2) DEFAULT NULL,
  `VAR_0122` varchar(100) DEFAULT NULL,
  `VAR_0123` varchar(6) DEFAULT NULL,
  `VAR_0124` varchar(2) DEFAULT NULL,
  `VAR_0125` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_92`
--

LOCK TABLES `nivel_92` WRITE;
/*!40000 ALTER TABLE `nivel_92` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_92` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_93`
--

DROP TABLE IF EXISTS `nivel_93`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_93` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0151` varchar(2) DEFAULT NULL,
  `VAR_0152` varchar(2) DEFAULT NULL,
  `VAR_0153` varchar(3) DEFAULT NULL,
  `VAR_0154` varchar(3) DEFAULT NULL,
  `VAR_0155` varchar(3) DEFAULT NULL,
  `VAR_0156` varchar(3) DEFAULT NULL,
  `VAR_0157` varchar(1) DEFAULT NULL,
  `VAR_0158` varchar(2) DEFAULT NULL,
  `VAR_0159` varchar(4) DEFAULT NULL,
  `VAR_0160` varchar(4) DEFAULT NULL,
  `VAR_0161` varchar(4) DEFAULT NULL,
  `VAR_0162` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_93`
--

LOCK TABLES `nivel_93` WRITE;
/*!40000 ALTER TABLE `nivel_93` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_93` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_94`
--

DROP TABLE IF EXISTS `nivel_94`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_94` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0259` varchar(2) DEFAULT NULL,
  `VAR_0260` varchar(2) DEFAULT NULL,
  `VAR_0261` varchar(3) DEFAULT NULL,
  `VAR_0262` varchar(3) DEFAULT NULL,
  `VAR_0263` varchar(3) DEFAULT NULL,
  `VAR_0264` varchar(3) DEFAULT NULL,
  `VAR_0265` varchar(4) DEFAULT NULL,
  `VAR_0266` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_94`
--

LOCK TABLES `nivel_94` WRITE;
/*!40000 ALTER TABLE `nivel_94` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_94` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_95`
--

DROP TABLE IF EXISTS `nivel_95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_95` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0351` varchar(1) DEFAULT NULL,
  `VAR_0352` varchar(1) DEFAULT NULL,
  `VAR_0353` varchar(1) DEFAULT NULL,
  `VAR_0354` varchar(1) DEFAULT NULL,
  `VAR_0344` varchar(1) DEFAULT NULL,
  `VAR_0343` varchar(1) DEFAULT NULL,
  `VAR_0342` varchar(1) DEFAULT NULL,
  `VAR_0314` varchar(1) DEFAULT NULL,
  `VAR_0319` varchar(1) DEFAULT NULL,
  `VAR_0324` varchar(1) DEFAULT NULL,
  `VAR_0315` varchar(1) DEFAULT NULL,
  `VAR_0320` varchar(1) DEFAULT NULL,
  `VAR_0325` varchar(1) DEFAULT NULL,
  `VAR_0316` varchar(1) DEFAULT NULL,
  `VAR_0321` varchar(1) DEFAULT NULL,
  `VAR_0326` varchar(1) DEFAULT NULL,
  `VAR_0317` varchar(1) DEFAULT NULL,
  `VAR_0322` varchar(1) DEFAULT NULL,
  `VAR_0327` varchar(1) DEFAULT NULL,
  `VAR_0318` varchar(1) DEFAULT NULL,
  `VAR_0323` varchar(1) DEFAULT NULL,
  `VAR_0328` varchar(1) DEFAULT NULL,
  `VAR_0348` varchar(1) DEFAULT NULL,
  `VAR_0345` varchar(1) DEFAULT NULL,
  `VAR_0355` varchar(3) DEFAULT NULL,
  `VAR_0356` varchar(3) DEFAULT NULL,
  `VAR_0346` varchar(1) DEFAULT NULL,
  `VAR_0358` varchar(2) DEFAULT NULL,
  `VAR_0357` varchar(1) DEFAULT NULL,
  `VAR_0359` varchar(1) DEFAULT NULL,
  `VAR_0360` varchar(2) DEFAULT NULL,
  `VAR_0362` varchar(2) DEFAULT NULL,
  `VAR_0361` varchar(1) DEFAULT NULL,
  `VAR_0364` varchar(2) DEFAULT NULL,
  `VAR_0363` varchar(1) DEFAULT NULL,
  `VAR_0365` varchar(1) DEFAULT NULL,
  `VAR_0366` varchar(2) DEFAULT NULL,
  `VAR_0368` varchar(2) DEFAULT NULL,
  `VAR_0367` varchar(1) DEFAULT NULL,
  `VAR_0370` varchar(2) DEFAULT NULL,
  `VAR_0369` varchar(1) DEFAULT NULL,
  `VAR_0371` varchar(1) DEFAULT NULL,
  `VAR_0372` varchar(1) DEFAULT NULL,
  `VAR_0373` varchar(1) DEFAULT NULL,
  `VAR_0349` varchar(20) DEFAULT NULL,
  `VAR_0249` varchar(1) DEFAULT NULL,
  `VAR_0250` varchar(1) DEFAULT NULL,
  `VAR_0251` varchar(1) DEFAULT NULL,
  `VAR_0252` varchar(1) DEFAULT NULL,
  `VAR_0385` varchar(1) DEFAULT NULL,
  `VAR_0386` varchar(1) DEFAULT NULL,
  `VAR_0387` varchar(1) DEFAULT NULL,
  `VAR_0388` varchar(1) DEFAULT NULL,
  `VAR_0389` varchar(1) DEFAULT NULL,
  `VAR_0390` varchar(1) DEFAULT NULL,
  `VAR_0269` varchar(1) DEFAULT NULL,
  `VAR_0267` datetime DEFAULT NULL,
  `VAR_0268` varchar(4) DEFAULT NULL,
  `VAR_0271` varchar(1) DEFAULT NULL,
  `VAR_0272` varchar(2) DEFAULT NULL,
  `VAR_0273` varchar(1) DEFAULT NULL,
  `VAR_0286` varchar(30) DEFAULT NULL,
  `VAR_0270` varchar(10) DEFAULT NULL,
  `VAR_0274` varchar(1) DEFAULT NULL,
  `VAR_0275` varchar(1) DEFAULT NULL,
  `VAR_0277` varchar(4) DEFAULT NULL,
  `VAR_0278` datetime DEFAULT NULL,
  `VAR_0281` varchar(1) DEFAULT NULL,
  `VAR_0279` varchar(1) DEFAULT NULL,
  `VAR_0280` varchar(10) DEFAULT NULL,
  `VAR_0282` varchar(1) DEFAULT NULL,
  `VAR_0283` varchar(3) DEFAULT NULL,
  `VAR_0284` varchar(1) DEFAULT NULL,
  `VAR_0285` varchar(1) DEFAULT NULL,
  `VAR_0288` varchar(50) DEFAULT NULL,
  `VAR_0350` varchar(1) DEFAULT NULL,
  `VAR_0289` varchar(50) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_95`
--

LOCK TABLES `nivel_95` WRITE;
/*!40000 ALTER TABLE `nivel_95` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_96`
--

DROP TABLE IF EXISTS `nivel_96`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_96` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0296` varchar(15) DEFAULT NULL,
  `VAR_0297` varchar(15) DEFAULT NULL,
  `VAR_0298` varchar(15) DEFAULT NULL,
  `VAR_0299` varchar(15) DEFAULT NULL,
  `VAR_0300` varchar(15) DEFAULT NULL,
  `VAR_0301` varchar(15) DEFAULT NULL,
  `VAR_0302` varchar(15) DEFAULT NULL,
  `VAR_0303` varchar(15) DEFAULT NULL,
  `VAR_0304` varchar(15) DEFAULT NULL,
  `VAR_0305` varchar(15) DEFAULT NULL,
  `VAR_0306` varchar(15) DEFAULT NULL,
  `VAR_0307` varchar(15) DEFAULT NULL,
  `VAR_0308` varchar(15) DEFAULT NULL,
  `VAR_0309` varchar(15) DEFAULT NULL,
  `VAR_0310` varchar(15) DEFAULT NULL,
  `VAR_0311` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_96`
--

LOCK TABLES `nivel_96` WRITE;
/*!40000 ALTER TABLE `nivel_96` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_96` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_a1`
--

DROP TABLE IF EXISTS `nivel_a1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_a1` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(100) DEFAULT NULL,
  `VAR_0004` varchar(30) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0007` varchar(2) DEFAULT NULL,
  `VAR_0008` varchar(1) DEFAULT NULL,
  `VAR_0009` varchar(1) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(20) DEFAULT NULL,
  `VAR_0015` varchar(20) DEFAULT NULL,
  `VAR_0016` varchar(20) DEFAULT NULL,
  `VAR_0017` varchar(1) DEFAULT NULL,
  `VAR_0019` varchar(1) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0018` varchar(1) DEFAULT NULL,
  `VAR_0020` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(20) DEFAULT NULL,
  `VAR_0038` varchar(2) DEFAULT NULL,
  `VAR_0040` varchar(2) DEFAULT NULL,
  `VAR_0044` varchar(1) DEFAULT NULL,
  `VAR_0045` varchar(2) DEFAULT NULL,
  `VAR_0039` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0041` varchar(2) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0042` varchar(2) DEFAULT NULL,
  `VAR_0043` varchar(2) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(1) DEFAULT NULL,
  `VAR_0049` varchar(1) DEFAULT NULL,
  `VAR_0050` datetime DEFAULT NULL,
  `VAR_0051` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(3) DEFAULT NULL,
  `VAR_0054` varchar(2) DEFAULT NULL,
  `VAR_0055` datetime DEFAULT NULL,
  `VAR_0056` datetime DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(2) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(1) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0069` datetime DEFAULT NULL,
  `VAR_0076` varchar(3) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(4) DEFAULT NULL,
  `VAR_0077` varchar(2) DEFAULT NULL,
  `VAR_0078` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0080` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(20) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(2) DEFAULT NULL,
  `VAR_0086` varchar(2) DEFAULT NULL,
  `VAR_0087` varchar(2) DEFAULT NULL,
  `VAR_0088` varchar(3) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(3) DEFAULT NULL,
  `VAR_0091` varchar(3) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(2) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(3) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(3) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(1) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(1) DEFAULT NULL,
  `VAR_0102` varchar(1) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(1) DEFAULT NULL,
  `VAR_0106` varchar(1) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0138` varchar(1) DEFAULT NULL,
  `VAR_0110` varchar(1) DEFAULT NULL,
  `VAR_0130` varchar(1) DEFAULT NULL,
  `VAR_0131` varchar(1) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0133` varchar(1) DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0136` varchar(1) DEFAULT NULL,
  `VAR_0137` varchar(1) DEFAULT NULL,
  `VAR_0234` varchar(1) DEFAULT NULL,
  `VAR_0111` varchar(1) DEFAULT NULL,
  `VAR_0112` varchar(1) DEFAULT NULL,
  `VAR_0113` varchar(1) DEFAULT NULL,
  `VAR_0115` varchar(1) DEFAULT NULL,
  `VAR_0116` varchar(1) DEFAULT NULL,
  `VAR_0117` varchar(1) DEFAULT NULL,
  `VAR_0118` varchar(1) DEFAULT NULL,
  `VAR_0119` varchar(1) DEFAULT NULL,
  `VAR_0120` varchar(3) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0122` varchar(1) DEFAULT NULL,
  `VAR_0123` varchar(2) DEFAULT NULL,
  `VAR_0124` varchar(2) DEFAULT NULL,
  `VAR_0125` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(1) DEFAULT NULL,
  `VAR_0127` varchar(1) DEFAULT NULL,
  `VAR_0129` varchar(1) DEFAULT NULL,
  `VAR_0128` varchar(2) DEFAULT NULL,
  `VAR_0139` varchar(20) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0141` varchar(1) DEFAULT NULL,
  `VAR_0222` varchar(6) DEFAULT NULL,
  `VAR_0142` varchar(6) DEFAULT NULL,
  `VAR_0143` datetime DEFAULT NULL,
  `VAR_0144` varchar(4) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(2) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0148` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0150` varchar(1) DEFAULT NULL,
  `VAR_0151` varchar(1) DEFAULT NULL,
  `VAR_0152` varchar(1) DEFAULT NULL,
  `VAR_0153` varchar(1) DEFAULT NULL,
  `VAR_0154` varchar(1) DEFAULT NULL,
  `VAR_0155` varchar(1) DEFAULT NULL,
  `VAR_0156` varchar(1) DEFAULT NULL,
  `VAR_0157` varchar(1) DEFAULT NULL,
  `VAR_0158` varchar(1) DEFAULT NULL,
  `VAR_0159` varchar(1) DEFAULT NULL,
  `VAR_0160` varchar(1) DEFAULT NULL,
  `VAR_0161` varchar(1) DEFAULT NULL,
  `VAR_0162` varchar(1) DEFAULT NULL,
  `VAR_0163` varchar(1) DEFAULT NULL,
  `VAR_0164` varchar(1) DEFAULT NULL,
  `VAR_0165` varchar(2) DEFAULT NULL,
  `VAR_0166` varchar(2) DEFAULT NULL,
  `VAR_0167` varchar(2) DEFAULT NULL,
  `VAR_0168` varchar(2) DEFAULT NULL,
  `VAR_0169` varchar(2) DEFAULT NULL,
  `VAR_0114` varchar(2) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0174` varchar(1) DEFAULT NULL,
  `VAR_0170` varchar(200) DEFAULT NULL,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(1) DEFAULT NULL,
  `VAR_0177` varchar(30) DEFAULT NULL,
  `VAR_0178` varchar(1) DEFAULT NULL,
  `VAR_0179` varchar(30) DEFAULT NULL,
  `VAR_0180` datetime DEFAULT NULL,
  `VAR_0181` varchar(4) DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(1) DEFAULT NULL,
  `VAR_0252` varchar(20) DEFAULT NULL,
  `VAR_0220` varchar(30) DEFAULT NULL,
  `VAR_0251` varchar(20) DEFAULT NULL,
  `VAR_0219` varchar(30) DEFAULT NULL,
  `VAR_0233` varchar(20) DEFAULT NULL,
  `VAR_0221` varchar(200) DEFAULT NULL,
  `VAR_0184` varchar(1) DEFAULT NULL,
  `VAR_0185` varchar(1) DEFAULT NULL,
  `VAR_0186` datetime DEFAULT NULL,
  `VAR_0224` varchar(1) DEFAULT NULL,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0195` varchar(1) DEFAULT NULL,
  `VAR_0196` varchar(1) DEFAULT NULL,
  `VAR_0197` varchar(1) DEFAULT NULL,
  `VAR_0198` varchar(1) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0204` varchar(1) DEFAULT NULL,
  `VAR_0225` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0202` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0207` varchar(1) DEFAULT NULL,
  `VAR_0208` varchar(1) DEFAULT NULL,
  `VAR_0209` varchar(1) DEFAULT NULL,
  `VAR_0210` varchar(1) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(1) DEFAULT NULL,
  `VAR_0213` varchar(1) DEFAULT NULL,
  `VAR_0214` datetime DEFAULT NULL,
  `VAR_0215` varchar(4) DEFAULT NULL,
  `VAR_0218` varchar(1) DEFAULT NULL,
  `VAR_0223` varchar(1) DEFAULT NULL,
  `VAR_0216` varchar(1) DEFAULT NULL,
  `VAR_0217` varchar(1) DEFAULT NULL,
  `VAR_0226` varchar(1) DEFAULT NULL,
  `VAR_0227` varchar(1) DEFAULT NULL,
  `VAR_0228` varchar(1) DEFAULT NULL,
  `VAR_0229` varchar(1) DEFAULT NULL,
  `VAR_0230` varchar(1) DEFAULT NULL,
  `VAR_0231` varchar(1) DEFAULT NULL,
  `VAR_0232` varchar(1) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_a1`
--

LOCK TABLES `nivel_a1` WRITE;
/*!40000 ALTER TABLE `nivel_a1` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_a1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_a2`
--

DROP TABLE IF EXISTS `nivel_a2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_a2` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0187` varchar(3) DEFAULT NULL,
  `VAR_0188` varchar(3) DEFAULT NULL,
  `VAR_0189` varchar(3) DEFAULT NULL,
  `VAR_0190` varchar(3) DEFAULT NULL,
  `VAR_0191` varchar(2) DEFAULT NULL,
  `VAR_0192` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_a2`
--

LOCK TABLES `nivel_a2` WRITE;
/*!40000 ALTER TABLE `nivel_a2` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_a2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_a3`
--

DROP TABLE IF EXISTS `nivel_a3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_a3` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0235` varchar(15) DEFAULT NULL,
  `VAR_0236` varchar(15) DEFAULT NULL,
  `VAR_0237` varchar(15) DEFAULT NULL,
  `VAR_0238` varchar(15) DEFAULT NULL,
  `VAR_0239` varchar(15) DEFAULT NULL,
  `VAR_0240` varchar(15) DEFAULT NULL,
  `VAR_0241` varchar(15) DEFAULT NULL,
  `VAR_0242` varchar(15) DEFAULT NULL,
  `VAR_0243` varchar(15) DEFAULT NULL,
  `VAR_0250` varchar(15) DEFAULT NULL,
  `VAR_0244` varchar(15) DEFAULT NULL,
  `VAR_0245` varchar(15) DEFAULT NULL,
  `VAR_0246` varchar(15) DEFAULT NULL,
  `VAR_0247` varchar(15) DEFAULT NULL,
  `VAR_0248` varchar(15) DEFAULT NULL,
  `VAR_0249` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_a3`
--

LOCK TABLES `nivel_a3` WRITE;
/*!40000 ALTER TABLE `nivel_a3` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_a3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_n1`
--

DROP TABLE IF EXISTS `nivel_n1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_n1` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(100) DEFAULT NULL,
  `VAR_0004` varchar(30) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0009` varchar(2) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0015` varchar(1) DEFAULT NULL,
  `VAR_0016` varchar(1) DEFAULT NULL,
  `VAR_0017` varchar(20) DEFAULT NULL,
  `VAR_0018` varchar(20) DEFAULT NULL,
  `VAR_0019` varchar(20) DEFAULT NULL,
  `VAR_0020` varchar(1) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(20) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0039` varchar(1) DEFAULT NULL,
  `VAR_0040` varchar(2) DEFAULT NULL,
  `VAR_0041` varchar(2) DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0042` varchar(2) DEFAULT NULL,
  `VAR_0043` varchar(2) DEFAULT NULL,
  `VAR_0044` varchar(2) DEFAULT NULL,
  `VAR_0046` varchar(2) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(1) DEFAULT NULL,
  `VAR_0049` varchar(1) DEFAULT NULL,
  `VAR_0050` varchar(1) DEFAULT NULL,
  `VAR_0051` datetime DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0054` varchar(1) DEFAULT NULL,
  `VAR_0055` varchar(3) DEFAULT NULL,
  `VAR_0056` varchar(2) DEFAULT NULL,
  `VAR_0057` datetime DEFAULT NULL,
  `VAR_0058` datetime DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0080` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(1) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(2) DEFAULT NULL,
  `VAR_0086` varchar(1) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0088` varchar(1) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(3) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(3) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(1) DEFAULT NULL,
  `VAR_0102` varchar(1) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(3) DEFAULT NULL,
  `VAR_0106` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(3) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0110` varchar(1) DEFAULT NULL,
  `VAR_0111` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0112` varchar(1) DEFAULT NULL,
  `VAR_0115` varchar(1) DEFAULT NULL,
  `VAR_0114` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` datetime DEFAULT NULL,
  `VAR_0184` varchar(1) DEFAULT NULL,
  `VAR_0185` varchar(2) DEFAULT NULL,
  `VAR_0186` varchar(1) DEFAULT NULL,
  `VAR_0187` varchar(2) DEFAULT NULL,
  `VAR_0188` varchar(1) DEFAULT NULL,
  `VAR_0189` varchar(2) DEFAULT NULL,
  `VAR_0190` varchar(1) DEFAULT NULL,
  `VAR_0191` varchar(1) DEFAULT NULL,
  `VAR_0192` datetime DEFAULT NULL,
  `VAR_0193` varchar(4) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0195` varchar(1) DEFAULT NULL,
  `VAR_0196` varchar(1) DEFAULT NULL,
  `VAR_0197` varchar(3) DEFAULT NULL,
  `VAR_0198` varchar(2) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0202` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0204` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0282` varchar(1) DEFAULT NULL,
  `VAR_0283` varchar(4) DEFAULT NULL,
  `VAR_0284` datetime DEFAULT NULL,
  `VAR_0285` varchar(1) DEFAULT NULL,
  `VAR_0286` varchar(1) DEFAULT NULL,
  `VAR_0287` varchar(1) DEFAULT NULL,
  `VAR_0288` varchar(100) DEFAULT NULL,
  `VAR_0289` varchar(2) DEFAULT NULL,
  `VAR_0290` varchar(2) DEFAULT NULL,
  `VAR_0291` varchar(1) DEFAULT NULL,
  `VAR_0292` varchar(1) DEFAULT NULL,
  `VAR_0293` varchar(1) DEFAULT NULL,
  `VAR_0294` varchar(1) DEFAULT NULL,
  `VAR_0295` varchar(1) DEFAULT NULL,
  `VAR_0296` varchar(1) DEFAULT NULL,
  `VAR_0297` varchar(1) DEFAULT NULL,
  `VAR_0298` varchar(1) DEFAULT NULL,
  `VAR_0299` varchar(1) DEFAULT NULL,
  `VAR_0300` varchar(1) DEFAULT NULL,
  `VAR_0301` varchar(1) DEFAULT NULL,
  `VAR_0302` varchar(1) DEFAULT NULL,
  `VAR_0303` varchar(1) DEFAULT NULL,
  `VAR_0304` varchar(1) DEFAULT NULL,
  `VAR_0305` varchar(1) DEFAULT NULL,
  `VAR_0306` varchar(1) DEFAULT NULL,
  `VAR_0308` varchar(2) DEFAULT NULL,
  `VAR_0309` varchar(2) DEFAULT NULL,
  `VAR_0310` varchar(1) DEFAULT NULL,
  `VAR_0311` varchar(4) DEFAULT NULL,
  `VAR_0312` varchar(1) DEFAULT NULL,
  `VAR_0313` varchar(3) DEFAULT NULL,
  `VAR_0314` varchar(3) DEFAULT NULL,
  `VAR_0315` varchar(2) DEFAULT NULL,
  `VAR_0316` varchar(1) DEFAULT NULL,
  `VAR_0317` varchar(1) DEFAULT NULL,
  `VAR_0318` varchar(1) DEFAULT NULL,
  `VAR_0319` varchar(1) DEFAULT NULL,
  `VAR_0320` varchar(1) DEFAULT NULL,
  `VAR_0321` varchar(2) DEFAULT NULL,
  `VAR_0322` varchar(2) DEFAULT NULL,
  `VAR_0323` varchar(1) DEFAULT NULL,
  `VAR_0324` varchar(1) DEFAULT NULL,
  `VAR_0325` varchar(1) DEFAULT NULL,
  `VAR_0326` varchar(1) DEFAULT NULL,
  `VAR_0327` varchar(1) DEFAULT NULL,
  `VAR_0328` varchar(1) DEFAULT NULL,
  `VAR_0331` varchar(1) DEFAULT NULL,
  `VAR_0332` varchar(50) DEFAULT NULL,
  `VAR_0333` varchar(1) DEFAULT NULL,
  `VAR_0334` varchar(50) DEFAULT NULL,
  `VAR_0335` varchar(1) DEFAULT NULL,
  `VAR_0368` varchar(3) DEFAULT NULL,
  `VAR_0336` varchar(1) DEFAULT NULL,
  `VAR_0337` varchar(2) DEFAULT NULL,
  `VAR_0339` varchar(2) DEFAULT NULL,
  `VAR_0341` varchar(2) DEFAULT NULL,
  `VAR_0343` varchar(1) DEFAULT NULL,
  `VAR_0346` varchar(1) DEFAULT NULL,
  `VAR_0347` varchar(1) DEFAULT NULL,
  `VAR_0345` varchar(1) DEFAULT NULL,
  `VAR_0344` varchar(1) DEFAULT NULL,
  `VAR_0329` varchar(1) DEFAULT NULL,
  `VAR_0330` varchar(1) DEFAULT NULL,
  `VAR_0371` varchar(1) DEFAULT NULL,
  `VAR_0425` datetime DEFAULT NULL,
  `VAR_0370` varchar(4) DEFAULT NULL,
  `VAR_0373` varchar(1) DEFAULT NULL,
  `VAR_0374` varchar(2) DEFAULT NULL,
  `VAR_0375` varchar(1) DEFAULT NULL,
  `VAR_0372` varchar(10) DEFAULT NULL,
  `VAR_0376` varchar(1) DEFAULT NULL,
  `VAR_0377` varchar(1) DEFAULT NULL,
  `VAR_0378` varchar(1) DEFAULT NULL,
  `VAR_0348` varchar(1) DEFAULT NULL,
  `VAR_0395` varchar(4) DEFAULT NULL,
  `VAR_0388` varchar(30) DEFAULT NULL,
  `VAR_0389` varchar(50) DEFAULT NULL,
  `VAR_0390` varchar(50) DEFAULT NULL,
  `VAR_0258` varchar(1) DEFAULT NULL,
  `VAR_0261` varchar(1) DEFAULT NULL,
  `VAR_0260` varchar(1) DEFAULT NULL,
  `VAR_0266` varchar(1) DEFAULT NULL,
  `VAR_0267` varchar(1) DEFAULT NULL,
  `VAR_0273` varchar(1) DEFAULT NULL,
  `VAR_0274` varchar(1) DEFAULT NULL,
  `VAR_0275` varchar(1) DEFAULT NULL,
  `VAR_0613` varchar(100) DEFAULT NULL,
  `VAR_0627` varchar(100) DEFAULT NULL,
  `VAR_0379` datetime DEFAULT NULL,
  `VAR_0382` varchar(1) DEFAULT NULL,
  `VAR_0381` varchar(10) DEFAULT NULL,
  `VAR_0408` varchar(1) DEFAULT NULL,
  `VAR_0383` varchar(1) DEFAULT NULL,
  `VAR_0391` varchar(50) DEFAULT NULL,
  `VAR_0385` varchar(1) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_n1`
--

LOCK TABLES `nivel_n1` WRITE;
/*!40000 ALTER TABLE `nivel_n1` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_n1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_n2`
--

DROP TABLE IF EXISTS `nivel_n2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_n2` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0116` varchar(2) DEFAULT NULL,
  `VAR_0117` varchar(2) DEFAULT NULL,
  `VAR_0118` varchar(10) DEFAULT NULL,
  `VAR_0119` varchar(2) DEFAULT NULL,
  `VAR_0120` varchar(4) DEFAULT NULL,
  `VAR_0121` varchar(3) DEFAULT NULL,
  `VAR_0394` varchar(3) DEFAULT NULL,
  `VAR_0122` varchar(2) DEFAULT NULL,
  `VAR_0123` varchar(5) DEFAULT NULL,
  `VAR_0124` varchar(3) DEFAULT NULL,
  `VAR_0125` varchar(1) DEFAULT NULL,
  `VAR_0393` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(100) DEFAULT NULL,
  `VAR_0127` varchar(6) DEFAULT NULL,
  `VAR_0128` varchar(2) DEFAULT NULL,
  `VAR_0129` varchar(2) DEFAULT NULL,
  `VAR_0686` varchar(20) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_n2`
--

LOCK TABLES `nivel_n2` WRITE;
/*!40000 ALTER TABLE `nivel_n2` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_n2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_n3`
--

DROP TABLE IF EXISTS `nivel_n3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_n3` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0207` varchar(2) DEFAULT NULL,
  `VAR_0208` varchar(2) DEFAULT NULL,
  `VAR_0209` varchar(3) DEFAULT NULL,
  `VAR_0210` varchar(3) DEFAULT NULL,
  `VAR_0407` varchar(3) DEFAULT NULL,
  `VAR_0392` varchar(3) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(2) DEFAULT NULL,
  `VAR_0213` varchar(4) DEFAULT NULL,
  `VAR_0214` varchar(4) DEFAULT NULL,
  `VAR_0215` varchar(1) DEFAULT NULL,
  `VAR_0216` varchar(3) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_n3`
--

LOCK TABLES `nivel_n3` WRITE;
/*!40000 ALTER TABLE `nivel_n3` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_n3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_n4`
--

DROP TABLE IF EXISTS `nivel_n4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_n4` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0351` varchar(3) DEFAULT NULL,
  `VAR_0352` varchar(3) DEFAULT NULL,
  `VAR_0406` varchar(3) DEFAULT NULL,
  `VAR_0353` varchar(3) DEFAULT NULL,
  `VAR_0354` varchar(4) DEFAULT NULL,
  `VAR_0355` varchar(4) DEFAULT NULL,
  `VAR_0356` varchar(4) DEFAULT NULL,
  `VAR_0357` varchar(4) DEFAULT NULL,
  `VAR_0358` varchar(20) DEFAULT NULL,
  `VAR_0359` varchar(20) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_n4`
--

LOCK TABLES `nivel_n4` WRITE;
/*!40000 ALTER TABLE `nivel_n4` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_n4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_n5`
--

DROP TABLE IF EXISTS `nivel_n5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_n5` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0432` varchar(1) DEFAULT NULL,
  `VAR_0409` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(1) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(1) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(1) DEFAULT NULL,
  `VAR_0410` varchar(1) DEFAULT NULL,
  `VAR_0643` varchar(1) DEFAULT NULL,
  `VAR_0567` varchar(1) DEFAULT NULL,
  `VAR_0568` datetime DEFAULT NULL,
  `VAR_0569` varchar(2) DEFAULT NULL,
  `VAR_0570` varchar(1) DEFAULT NULL,
  `VAR_0571` datetime DEFAULT NULL,
  `VAR_0572` varchar(2) DEFAULT NULL,
  `VAR_0573` varchar(1) DEFAULT NULL,
  `VAR_0574` datetime DEFAULT NULL,
  `VAR_0575` varchar(2) DEFAULT NULL,
  `VAR_0576` varchar(1) DEFAULT NULL,
  `VAR_0577` datetime DEFAULT NULL,
  `VAR_0578` varchar(2) DEFAULT NULL,
  `VAR_0579` varchar(1) DEFAULT NULL,
  `VAR_0580` datetime DEFAULT NULL,
  `VAR_0581` varchar(2) DEFAULT NULL,
  `VAR_0582` varchar(1) DEFAULT NULL,
  `VAR_0583` datetime DEFAULT NULL,
  `VAR_0584` varchar(2) DEFAULT NULL,
  `VAR_0585` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0433` varchar(1) DEFAULT NULL,
  `VAR_0434` varchar(1) DEFAULT NULL,
  `VAR_0435` varchar(1) DEFAULT NULL,
  `VAR_0436` varchar(1) DEFAULT NULL,
  `VAR_0413` varchar(2) DEFAULT NULL,
  `VAR_0415` varchar(1) DEFAULT NULL,
  `VAR_0414` varchar(2) DEFAULT NULL,
  `VAR_0416` varchar(2) DEFAULT NULL,
  `VAR_0418` varchar(1) DEFAULT NULL,
  `VAR_0419` varchar(2) DEFAULT NULL,
  `VAR_0421` varchar(1) DEFAULT NULL,
  `VAR_0420` varchar(2) DEFAULT NULL,
  `VAR_0423` varchar(1) DEFAULT NULL,
  `VAR_0422` varchar(2) DEFAULT NULL,
  `VAR_0424` varchar(1) DEFAULT NULL,
  `VAR_0437` varchar(1) DEFAULT NULL,
  `VAR_0438` varchar(1) DEFAULT NULL,
  `VAR_0439` varchar(1) DEFAULT NULL,
  `VAR_0443` varchar(1) DEFAULT NULL,
  `VAR_0444` varchar(1) DEFAULT NULL,
  `VAR_0640` varchar(1) DEFAULT NULL,
  `VAR_0445` varchar(1) DEFAULT NULL,
  `VAR_0449` varchar(1) DEFAULT NULL,
  `VAR_0440` varchar(1) DEFAULT NULL,
  `VAR_0441` varchar(1) DEFAULT NULL,
  `VAR_0412` varchar(1) DEFAULT NULL,
  `VAR_0446` varchar(1) DEFAULT NULL,
  `VAR_0447` varchar(1) DEFAULT NULL,
  `VAR_0448` varchar(1) DEFAULT NULL,
  `VAR_0641` varchar(1) DEFAULT NULL,
  `VAR_0498` varchar(1) DEFAULT NULL,
  `VAR_0587` varchar(1) DEFAULT NULL,
  `VAR_0588` varchar(1) DEFAULT NULL,
  `VAR_0589` varchar(1) DEFAULT NULL,
  `VAR_0590` varchar(1) DEFAULT NULL,
  `VAR_0501` varchar(1) DEFAULT NULL,
  `VAR_0502` varchar(1) DEFAULT NULL,
  `VAR_0500` varchar(1) DEFAULT NULL,
  `VAR_0591` varchar(1) DEFAULT NULL,
  `VAR_0499` varchar(1) DEFAULT NULL,
  `VAR_0565` varchar(1) DEFAULT NULL,
  `VAR_0592` varchar(1) DEFAULT NULL,
  `VAR_0593` varchar(1) DEFAULT NULL,
  `VAR_0594` varchar(1) DEFAULT NULL,
  `VAR_0595` varchar(1) DEFAULT NULL,
  `VAR_0596` varchar(1) DEFAULT NULL,
  `VAR_0566` varchar(1) DEFAULT NULL,
  `VAR_0597` varchar(50) DEFAULT NULL,
  `VAR_0504` varchar(1) DEFAULT NULL,
  `VAR_0598` varchar(1) DEFAULT NULL,
  `VAR_0505` varchar(1) DEFAULT NULL,
  `VAR_0506` varchar(1) DEFAULT NULL,
  `VAR_0507` varchar(1) DEFAULT NULL,
  `VAR_0508` varchar(1) DEFAULT NULL,
  `VAR_0509` varchar(1) DEFAULT NULL,
  `VAR_0510` varchar(1) DEFAULT NULL,
  `VAR_0599` varchar(1) DEFAULT NULL,
  `VAR_0600` varchar(1) DEFAULT NULL,
  `VAR_0601` varchar(1) DEFAULT NULL,
  `VAR_0602` varchar(1) DEFAULT NULL,
  `VAR_0603` varchar(1) DEFAULT NULL,
  `VAR_0604` varchar(1) DEFAULT NULL,
  `VAR_0605` varchar(1) DEFAULT NULL,
  `VAR_0606` varchar(1) DEFAULT NULL,
  `VAR_0607` varchar(1) DEFAULT NULL,
  `VAR_0608` varchar(1) DEFAULT NULL,
  `VAR_0609` varchar(1) DEFAULT NULL,
  `VAR_0610` varchar(1) DEFAULT NULL,
  `VAR_0611` varchar(1) DEFAULT NULL,
  `VAR_0512` varchar(1) DEFAULT NULL,
  `VAR_0612` varchar(1) DEFAULT NULL,
  `VAR_0626` varchar(1) DEFAULT NULL,
  `VAR_0614` varchar(1) DEFAULT NULL,
  `VAR_0564` varchar(1) DEFAULT NULL,
  `VAR_0563` varchar(1) DEFAULT NULL,
  `VAR_0615` varchar(1) DEFAULT NULL,
  `VAR_0616` varchar(1) DEFAULT NULL,
  `VAR_0617` varchar(1) DEFAULT NULL,
  `VAR_0618` varchar(1) DEFAULT NULL,
  `VAR_0619` varchar(1) DEFAULT NULL,
  `VAR_0484` varchar(1) DEFAULT NULL,
  `VAR_0620` varchar(1) DEFAULT NULL,
  `VAR_0621` varchar(1) DEFAULT NULL,
  `VAR_0622` varchar(1) DEFAULT NULL,
  `VAR_0623` varchar(1) DEFAULT NULL,
  `VAR_0624` varchar(1) DEFAULT NULL,
  `VAR_0625` varchar(1) DEFAULT NULL,
  `VAR_0628` varchar(1) DEFAULT NULL,
  `VAR_0629` varchar(1) DEFAULT NULL,
  `VAR_0630` varchar(1) DEFAULT NULL,
  `VAR_0631` varchar(1) DEFAULT NULL,
  `VAR_0632` varchar(1) DEFAULT NULL,
  `VAR_0633` varchar(1) DEFAULT NULL,
  `VAR_0634` varchar(1) DEFAULT NULL,
  `VAR_0536` varchar(1) DEFAULT NULL,
  `VAR_0537` varchar(1) DEFAULT NULL,
  `VAR_0538` varchar(50) DEFAULT NULL,
  `VAR_0635` varchar(1) DEFAULT NULL,
  `VAR_0540` varchar(1) DEFAULT NULL,
  `VAR_0541` varchar(2) DEFAULT NULL,
  `VAR_0543` varchar(1) DEFAULT NULL,
  `VAR_0544` varchar(1) DEFAULT NULL,
  `VAR_0545` varchar(2) DEFAULT NULL,
  `VAR_0546` varchar(1) DEFAULT NULL,
  `VAR_0547` varchar(50) DEFAULT NULL,
  `VAR_0542` varchar(1) DEFAULT NULL,
  `VAR_0636` varchar(1) DEFAULT NULL,
  `VAR_0637` varchar(1) DEFAULT NULL,
  `VAR_0638` varchar(1) DEFAULT NULL,
  `VAR_0472` varchar(4) DEFAULT NULL,
  `VAR_0473` varchar(1) DEFAULT NULL,
  `VAR_0474` varchar(1) DEFAULT NULL,
  `VAR_0450` varchar(50) DEFAULT NULL,
  `VAR_0471` varchar(1) DEFAULT NULL,
  `VAR_0451` varchar(1) DEFAULT NULL,
  `VAR_0452` varchar(1) DEFAULT NULL,
  `VAR_0457` varchar(1) DEFAULT NULL,
  `VAR_0458` varchar(1) DEFAULT NULL,
  `VAR_0463` varchar(1) DEFAULT NULL,
  `VAR_0464` varchar(1) DEFAULT NULL,
  `VAR_0465` varchar(1) DEFAULT NULL,
  `VAR_0466` varchar(1) DEFAULT NULL,
  `VAR_0453` varchar(1) DEFAULT NULL,
  `VAR_0454` varchar(1) DEFAULT NULL,
  `VAR_0455` varchar(1) DEFAULT NULL,
  `VAR_0456` varchar(1) DEFAULT NULL,
  `VAR_0459` varchar(1) DEFAULT NULL,
  `VAR_0460` varchar(1) DEFAULT NULL,
  `VAR_0461` varchar(1) DEFAULT NULL,
  `VAR_0462` varchar(1) DEFAULT NULL,
  `VAR_0467` varchar(1) DEFAULT NULL,
  `VAR_0468` varchar(1) DEFAULT NULL,
  `VAR_0469` varchar(1) DEFAULT NULL,
  `VAR_0470` varchar(1) DEFAULT NULL,
  `VAR_0645` varchar(1) DEFAULT NULL,
  `VAR_0646` varchar(1) DEFAULT NULL,
  `VAR_0647` varchar(100) DEFAULT NULL,
  `VAR_0648` varchar(1) DEFAULT NULL,
  `VAR_0649` varchar(1) DEFAULT NULL,
  `VAR_0650` varchar(1) DEFAULT NULL,
  `VAR_0651` varchar(1) DEFAULT NULL,
  `VAR_0652` varchar(1) DEFAULT NULL,
  `VAR_0653` varchar(1) DEFAULT NULL,
  `VAR_0654` varchar(1) DEFAULT NULL,
  `VAR_0688` varchar(1) DEFAULT NULL,
  `VAR_0689` varchar(1) DEFAULT NULL,
  `VAR_0690` varchar(1) DEFAULT NULL,
  `VAR_0691` varchar(1) DEFAULT NULL,
  `VAR_0692` varchar(1) DEFAULT NULL,
  `VAR_0701` varchar(2) DEFAULT NULL,
  `VAR_0702` varchar(1) DEFAULT NULL,
  `VAR_0900` mediumtext  DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_n5`
--

LOCK TABLES `nivel_n5` WRITE;
/*!40000 ALTER TABLE `nivel_n5` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_n5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_n6`
--

DROP TABLE IF EXISTS `nivel_n6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_n6` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0396` varchar(15) DEFAULT NULL,
  `VAR_0397` varchar(15) DEFAULT NULL,
  `VAR_0398` varchar(15) DEFAULT NULL,
  `VAR_0399` varchar(15) DEFAULT NULL,
  `VAR_0400` varchar(15) DEFAULT NULL,
  `VAR_0401` varchar(15) DEFAULT NULL,
  `VAR_0402` varchar(15) DEFAULT NULL,
  `VAR_0403` varchar(15) DEFAULT NULL,
  `VAR_0404` varchar(15) DEFAULT NULL,
  `VAR_0405` varchar(15) DEFAULT NULL,
  `VAR_0426` varchar(15) DEFAULT NULL,
  `VAR_0427` varchar(15) DEFAULT NULL,
  `VAR_0428` varchar(15) DEFAULT NULL,
  `VAR_0429` varchar(15) DEFAULT NULL,
  `VAR_0430` varchar(15) DEFAULT NULL,
  `VAR_0431` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_n6`
--

LOCK TABLES `nivel_n6` WRITE;
/*!40000 ALTER TABLE `nivel_n6` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_n6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_n7`
--

DROP TABLE IF EXISTS `nivel_n7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_n7` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0586` varchar(5) DEFAULT NULL,
  `VAR_0556` varchar(3) DEFAULT NULL,
  `VAR_0557` varchar(3) DEFAULT NULL,
  `VAR_0558` varchar(3) DEFAULT NULL,
  `VAR_0559` varchar(3) DEFAULT NULL,
  `VAR_0560` varchar(4) DEFAULT NULL,
  `VAR_0561` varchar(2) DEFAULT NULL,
  `VAR_0562` varchar(20) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_n7`
--

LOCK TABLES `nivel_n7` WRITE;
/*!40000 ALTER TABLE `nivel_n7` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_n7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_n8`
--

DROP TABLE IF EXISTS `nivel_n8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_n8` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0644` varchar(2) DEFAULT NULL,
  `VAR_0642` varchar(1) DEFAULT NULL,
  `VAR_0514` varchar(1) DEFAULT NULL,
  `VAR_0515` varchar(1) DEFAULT NULL,
  `VAR_0516` varchar(1) DEFAULT NULL,
  `VAR_0517` varchar(1) DEFAULT NULL,
  `VAR_0518` varchar(1) DEFAULT NULL,
  `VAR_0519` varchar(1) DEFAULT NULL,
  `VAR_0520` varchar(1) DEFAULT NULL,
  `VAR_0521` varchar(1) DEFAULT NULL,
  `VAR_0522` varchar(1) DEFAULT NULL,
  `VAR_0523` varchar(1) DEFAULT NULL,
  `VAR_0524` varchar(1) DEFAULT NULL,
  `VAR_0525` varchar(1) DEFAULT NULL,
  `VAR_0526` varchar(1) DEFAULT NULL,
  `VAR_0527` varchar(1) DEFAULT NULL,
  `VAR_0528` varchar(1) DEFAULT NULL,
  `VAR_0529` varchar(1) DEFAULT NULL,
  `VAR_0530` varchar(1) DEFAULT NULL,
  `VAR_0531` varchar(1) DEFAULT NULL,
  `VAR_0532` varchar(1) DEFAULT NULL,
  `VAR_0533` varchar(1) DEFAULT NULL,
  `VAR_0534` varchar(1) DEFAULT NULL,
  `VAR_0548` varchar(1) DEFAULT NULL,
  `VAR_0549` varchar(50) DEFAULT NULL,
  `VAR_0550` varchar(1) DEFAULT NULL,
  `VAR_0551` varchar(2) DEFAULT NULL,
  `VAR_0503` varchar(1) DEFAULT NULL,
  `VAR_0639` varchar(1) DEFAULT NULL,
  `VAR_0552` varchar(1) DEFAULT NULL,
  `VAR_0553` varchar(1) DEFAULT NULL,
  `VAR_0554` varchar(1) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL ,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `nivel_n8` WRITE;
/*!40000 ALTER TABLE `nivel_n8` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_n8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nivel_z0`
--
DROP TABLE IF EXISTS `nivel_z0`;

CREATE TABLE `nivel_z0` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_7000` varchar(1) DEFAULT NULL,
  `VAR_7001` varchar(1) DEFAULT NULL,
  `VAR_7002` varchar(1) DEFAULT NULL,
  `VAR_7003` varchar(1) DEFAULT NULL,
  `VAR_7004` varchar(1) DEFAULT NULL,
  `VAR_7005` varchar(1) DEFAULT NULL,
  `VAR_7006` varchar(1) DEFAULT NULL,
  `VAR_7007` varchar(1) DEFAULT NULL,
  `VAR_7008` varchar(1) DEFAULT NULL,
  `VAR_7009` varchar(1) DEFAULT NULL,
  `VAR_7010` varchar(1) DEFAULT NULL,
  `VAR_7011` varchar(1) DEFAULT NULL,
  `VAR_7012` varchar(1) DEFAULT NULL,
  `VAR_7013` varchar(1) DEFAULT NULL,
  `VAR_7014` varchar(1) DEFAULT NULL,
  `VAR_7015` varchar(1) DEFAULT NULL,
  `VAR_7016` varchar(1) DEFAULT NULL,
  `VAR_7017` varchar(2) DEFAULT NULL,
  `VAR_7018` varchar(2) DEFAULT NULL,
  `VAR_7019` varchar(1) DEFAULT NULL,
  `VAR_7020` varchar(2) DEFAULT NULL,
  `VAR_7021` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nivel_s1` */

DROP TABLE IF EXISTS `nivel_s1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_s1` (
  `ID01` varchar(43) DEFAULT NULL,
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(20) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(50) DEFAULT NULL,
  `VAR_0007` varchar(30) DEFAULT NULL,
  `VAR_0004` varchar(30) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0009` varchar(2) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0015` varchar(1) DEFAULT NULL,
  `VAR_0016` varchar(1) DEFAULT NULL,
  `VAR_0017` varchar(20) DEFAULT NULL,
  `VAR_0018` varchar(20) DEFAULT NULL,
  `VAR_0019` varchar(20) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0312` varchar(2) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0331` varchar(2) DEFAULT NULL,
  `VAR_0329` varchar(1) DEFAULT NULL,
  `VAR_0330` varchar(1) DEFAULT NULL,
  `VAR_0332` varchar(2) DEFAULT NULL,
  `VAR_0336` varchar(1) DEFAULT NULL,
  `VAR_0337` varchar(2) DEFAULT NULL,
  `VAR_0333` varchar(2) DEFAULT NULL,
  `VAR_0338` varchar(1) DEFAULT NULL,
  `VAR_0334` varchar(2) DEFAULT NULL,
  `VAR_0339` varchar(1) DEFAULT NULL,
  `VAR_0335` varchar(2) DEFAULT NULL,
  `VAR_0340` varchar(1) DEFAULT NULL,
  `VAR_0341` varchar(1) DEFAULT NULL,
  `VAR_0044` datetime DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(3) DEFAULT NULL,
  `VAR_0049` varchar(2) DEFAULT NULL,
  `VAR_0050` datetime DEFAULT NULL,
  `VAR_0051` datetime DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(2) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(1) DEFAULT NULL,
  `VAR_0084` varchar(1) DEFAULT NULL,
  `VAR_0085` varchar(1) DEFAULT NULL,
  `VAR_0086` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(3) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(3) DEFAULT NULL,
  `VAR_0076` varchar(1) DEFAULT NULL,
  `VAR_0087` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(1) DEFAULT NULL,
  `VAR_0077` varchar(1) DEFAULT NULL,
  `VAR_0078` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0088` varchar(1) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(2) DEFAULT NULL,
  `VAR_0106` varchar(2) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(2) DEFAULT NULL,
  `VAR_0102` varchar(2) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0224` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(1) DEFAULT NULL,
  `VAR_0127` datetime DEFAULT NULL,
  `VAR_0128` varchar(1) DEFAULT NULL,
  `VAR_0129` varchar(2) DEFAULT NULL,
  `VAR_0130` varchar(1) DEFAULT NULL,
  `VAR_0131` varchar(2) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0133` varchar(2) DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0136` datetime DEFAULT NULL,
  `VAR_0137` varchar(4) DEFAULT NULL,
  `VAR_0138` varchar(1) DEFAULT NULL,
  `VAR_0139` varchar(1) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0141` varchar(3) DEFAULT NULL,
  `VAR_0142` varchar(2) DEFAULT NULL,
  `VAR_0143` varchar(1) DEFAULT NULL,
  `VAR_0144` varchar(1) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(1) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0148` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0150` varchar(1) DEFAULT NULL,
  `VAR_0313` varchar(1) DEFAULT NULL,
  `VAR_0223` varchar(20) DEFAULT NULL,
  `VAR_0163` varchar(1) DEFAULT NULL,
  `VAR_0164` varchar(1) DEFAULT NULL,
  `VAR_0165` varchar(1) DEFAULT NULL,
  `VAR_0166` varchar(1) DEFAULT NULL,
  `VAR_0167` varchar(1) DEFAULT NULL,
  `VAR_0168` varchar(1) DEFAULT NULL,
  `VAR_0169` varchar(1) DEFAULT NULL,
  `VAR_0170` varchar(1) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0174` varchar(1) DEFAULT NULL,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(1) DEFAULT NULL,
  `VAR_0177` varchar(1) DEFAULT NULL,
  `VAR_0178` varchar(1) DEFAULT NULL,
  `VAR_0179` varchar(1) DEFAULT NULL,
  `VAR_0180` varchar(1) DEFAULT NULL,
  `VAR_0181` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(2) DEFAULT NULL,
  `VAR_0184` varchar(2) DEFAULT NULL,
  `VAR_0185` varchar(2) DEFAULT NULL,
  `VAR_0186` varchar(1) DEFAULT NULL,
  `VAR_0187` varchar(1) DEFAULT NULL,
  `VAR_0188` varchar(1) DEFAULT NULL,
  `VAR_0189` varchar(1) DEFAULT NULL,
  `VAR_0190` varchar(4) DEFAULT NULL,
  `VAR_0191` datetime DEFAULT NULL,
  `VAR_0192` varchar(1) DEFAULT NULL,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0195` varchar(100) DEFAULT NULL,
  `VAR_0196` varchar(2) DEFAULT NULL,
  `VAR_0197` varchar(2) DEFAULT NULL,
  `VAR_0379` varchar(1) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0202` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(1) DEFAULT NULL,
  `VAR_0381` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0380` varchar(1) DEFAULT NULL,
  `VAR_0208` varchar(1) DEFAULT NULL,
  `VAR_0209` varchar(1) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0210` varchar(1) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(1) DEFAULT NULL,
  `VAR_0207` varchar(4) DEFAULT NULL,
  `VAR_0213` varchar(1) DEFAULT NULL,
  `VAR_0214` varchar(2) DEFAULT NULL,
  `VAR_0215` varchar(2) DEFAULT NULL,
  `VAR_0216` varchar(1) DEFAULT NULL,
  `VAR_0217` varchar(4) DEFAULT NULL,
  `VAR_0218` varchar(1) DEFAULT NULL,
  `VAR_0219` varchar(3) DEFAULT NULL,
  `VAR_0220` varchar(3) DEFAULT NULL,
  `VAR_0221` varchar(2) DEFAULT NULL,
  `VAR_0222` varchar(1) DEFAULT NULL,
  `VAR_0225` varchar(1) DEFAULT NULL,
  `VAR_0382` varchar(1) DEFAULT NULL,
  `VAR_0383` varchar(1) DEFAULT NULL,
  `VAR_0226` varchar(1) DEFAULT NULL,
  `VAR_0227` varchar(2) DEFAULT NULL,
  `VAR_0228` varchar(2) DEFAULT NULL,
  `VAR_0229` varchar(1) DEFAULT NULL,
  `VAR_0230` varchar(1) DEFAULT NULL,
  `VAR_0231` varchar(1) DEFAULT NULL,
  `VAR_0232` varchar(1) DEFAULT NULL,
  `VAR_0233` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0384` varchar(1) DEFAULT NULL,
  `VAR_0234` varchar(1) DEFAULT NULL,
  `VAR_0235` varchar(1) DEFAULT NULL,
  `VAR_0236` varchar(1) DEFAULT NULL,
  `VAR_0237` varchar(50) DEFAULT NULL,
  `VAR_0238` varchar(1) DEFAULT NULL,
  `VAR_0239` varchar(50) DEFAULT NULL,
  `VAR_0240` varchar(1) DEFAULT NULL,
  `VAR_0241` varchar(3) DEFAULT NULL,
  `VAR_0242` varchar(1) DEFAULT NULL,
  `VAR_0243` varchar(2) DEFAULT NULL,
  `VAR_0245` varchar(2) DEFAULT NULL,
  `VAR_0247` varchar(2) DEFAULT NULL,
  `VAR_0244` varchar(50) DEFAULT NULL,
  `VAR_0246` varchar(50) DEFAULT NULL,
  `VAR_0248` varchar(50) DEFAULT NULL,
  `VAR_0255` varchar(1) DEFAULT NULL,
  `VAR_0257` varchar(1) DEFAULT NULL,
  `VAR_0258` varchar(1) DEFAULT NULL,
  `VAR_0253` varchar(20) DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nivel_s1` */

/*Table structure for table `nivel_s2` */

DROP TABLE IF EXISTS `nivel_s2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_s2` (
  `ID01` varchar(43) DEFAULT NULL,
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0347` varchar(4) DEFAULT NULL,
  `VAR_0110` varchar(2) DEFAULT NULL,
  `VAR_0111` varchar(2) DEFAULT NULL,
  `VAR_0112` varchar(2) DEFAULT NULL,
  `VAR_0113` varchar(2) DEFAULT NULL,
  `VAR_0114` varchar(4) DEFAULT NULL,
  `VAR_0115` varchar(3) DEFAULT NULL,
  `VAR_0116` varchar(3) DEFAULT NULL,
  `VAR_0117` varchar(2) DEFAULT NULL,
  `VAR_0118` varchar(5) DEFAULT NULL,
  `VAR_0119` varchar(3) DEFAULT NULL,
  `VAR_0120` varchar(1) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0374` varchar(1) DEFAULT NULL,
  `VAR_0375` varchar(1) DEFAULT NULL,
  `VAR_0376` varchar(2) DEFAULT NULL,
  `VAR_0377` varchar(2) DEFAULT NULL,
  `VAR_0378` varchar(2) DEFAULT NULL,
  `VAR_0122` varchar(100) DEFAULT NULL,
  `VAR_0123` varchar(6) DEFAULT NULL,
  `VAR_0124` varchar(2) DEFAULT NULL,
  `VAR_0125` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nivel_s2` */

/*Table structure for table `nivel_s3` */

DROP TABLE IF EXISTS `nivel_s3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_s3` (
  `ID01` varchar(43) DEFAULT NULL,
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0151` varchar(2) DEFAULT NULL,
  `VAR_0152` varchar(2) DEFAULT NULL,
  `VAR_0153` varchar(3) DEFAULT NULL,
  `VAR_0154` varchar(3) DEFAULT NULL,
  `VAR_0155` varchar(3) DEFAULT NULL,
  `VAR_0156` varchar(3) DEFAULT NULL,
  `VAR_0157` varchar(1) DEFAULT NULL,
  `VAR_0158` varchar(2) DEFAULT NULL,
  `VAR_0159` varchar(4) DEFAULT NULL,
  `VAR_0160` varchar(4) DEFAULT NULL,
  `VAR_0161` varchar(4) DEFAULT NULL,
  `VAR_0162` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nivel_s3` */

/*Table structure for table `nivel_s4` */

DROP TABLE IF EXISTS `nivel_s4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_s4` (
  `ID01` varchar(43) DEFAULT NULL,
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0259` varchar(2) DEFAULT NULL,
  `VAR_0260` varchar(2) DEFAULT NULL,
  `VAR_0261` varchar(3) DEFAULT NULL,
  `VAR_0262` varchar(3) DEFAULT NULL,
  `VAR_0263` varchar(3) DEFAULT NULL,
  `VAR_0264` varchar(3) DEFAULT NULL,
  `VAR_0265` varchar(4) DEFAULT NULL,
  `VAR_0266` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nivel_s4` */

/*Table structure for table `nivel_s5` */

DROP TABLE IF EXISTS `nivel_s5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_s5` (
  `ID01` varchar(43) DEFAULT NULL,
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0391` varchar(1) DEFAULT NULL,
  `VAR_0392` varchar(1) DEFAULT NULL,
  `VAR_0351` varchar(1) DEFAULT NULL,
  `VAR_0352` varchar(1) DEFAULT NULL,
  `VAR_0353` varchar(1) DEFAULT NULL,
  `VAR_0354` varchar(1) DEFAULT NULL,
  `VAR_0344` varchar(1) DEFAULT NULL,
  `VAR_0343` varchar(1) DEFAULT NULL,
  `VAR_0342` varchar(1) DEFAULT NULL,
  `VAR_0314` varchar(1) DEFAULT NULL,
  `VAR_0319` varchar(1) DEFAULT NULL,
  `VAR_0324` varchar(1) DEFAULT NULL,
  `VAR_0315` varchar(1) DEFAULT NULL,
  `VAR_0320` varchar(1) DEFAULT NULL,
  `VAR_0325` varchar(1) DEFAULT NULL,
  `VAR_0316` varchar(1) DEFAULT NULL,
  `VAR_0321` varchar(1) DEFAULT NULL,
  `VAR_0326` varchar(1) DEFAULT NULL,
  `VAR_0317` varchar(1) DEFAULT NULL,
  `VAR_0322` varchar(1) DEFAULT NULL,
  `VAR_0327` varchar(1) DEFAULT NULL,
  `VAR_0318` varchar(1) DEFAULT NULL,
  `VAR_0323` varchar(1) DEFAULT NULL,
  `VAR_0328` varchar(1) DEFAULT NULL,
  `VAR_0348` varchar(1) DEFAULT NULL,
  `VAR_0345` varchar(1) DEFAULT NULL,
  `VAR_0355` varchar(3) DEFAULT NULL,
  `VAR_0356` varchar(3) DEFAULT NULL,
  `VAR_0346` varchar(1) DEFAULT NULL,
  `VAR_0358` varchar(2) DEFAULT NULL,
  `VAR_0357` varchar(1) DEFAULT NULL,
  `VAR_0359` varchar(1) DEFAULT NULL,
  `VAR_0360` varchar(2) DEFAULT NULL,
  `VAR_0362` varchar(2) DEFAULT NULL,
  `VAR_0361` varchar(1) DEFAULT NULL,
  `VAR_0364` varchar(2) DEFAULT NULL,
  `VAR_0363` varchar(1) DEFAULT NULL,
  `VAR_0365` varchar(1) DEFAULT NULL,
  `VAR_0366` varchar(2) DEFAULT NULL,
  `VAR_0368` varchar(2) DEFAULT NULL,
  `VAR_0367` varchar(1) DEFAULT NULL,
  `VAR_0370` varchar(2) DEFAULT NULL,
  `VAR_0369` varchar(1) DEFAULT NULL,
  `VAR_0371` varchar(1) DEFAULT NULL,
  `VAR_0372` varchar(1) DEFAULT NULL,
  `VAR_0373` varchar(1) DEFAULT NULL,
  `VAR_0349` varchar(20) DEFAULT NULL,
  `VAR_0249` varchar(1) DEFAULT NULL,
  `VAR_0250` varchar(1) DEFAULT NULL,
  `VAR_0251` varchar(1) DEFAULT NULL,
  `VAR_0252` varchar(1) DEFAULT NULL,
  `VAR_0385` varchar(1) DEFAULT NULL,
  `VAR_0386` varchar(1) DEFAULT NULL,
  `VAR_0387` varchar(1) DEFAULT NULL,
  `VAR_0388` varchar(1) DEFAULT NULL,
  `VAR_0389` varchar(1) DEFAULT NULL,
  `VAR_0390` varchar(1) DEFAULT NULL,
  `VAR_0269` varchar(1) DEFAULT NULL,
  `VAR_0267` datetime DEFAULT NULL,
  `VAR_0268` varchar(4) DEFAULT NULL,
  `VAR_0271` varchar(1) DEFAULT NULL,
  `VAR_0272` varchar(2) DEFAULT NULL,
  `VAR_0273` varchar(1) DEFAULT NULL,
  `VAR_0286` varchar(30) DEFAULT NULL,
  `VAR_0270` varchar(10) DEFAULT NULL,
  `VAR_0274` varchar(1) DEFAULT NULL,
  `VAR_0275` varchar(1) DEFAULT NULL,
  `VAR_0277` varchar(4) DEFAULT NULL,
  `VAR_0278` datetime DEFAULT NULL,
  `VAR_0281` varchar(1) DEFAULT NULL,
  `VAR_0279` varchar(1) DEFAULT NULL,
  `VAR_0280` varchar(10) DEFAULT NULL,
  `VAR_0282` varchar(1) DEFAULT NULL,
  `VAR_0283` varchar(3) DEFAULT NULL,
  `VAR_0284` varchar(1) DEFAULT NULL,
  `VAR_0285` varchar(1) DEFAULT NULL,
  `VAR_0288` varchar(50) DEFAULT NULL,
  `VAR_0350` varchar(1) DEFAULT NULL,
  `VAR_0289` varchar(50) DEFAULT NULL,
  `VAR_0395` varchar(1) DEFAULT NULL,
  `VAR_0394` varchar(1) DEFAULT NULL,
  `VAR_0393` varchar(1) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nivel_s5` */

/*Table structure for table `nivel_s6` */

DROP TABLE IF EXISTS `nivel_s6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_s6` (
  `ID01` varchar(43) DEFAULT NULL,
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0296` varchar(15) DEFAULT NULL,
  `VAR_0297` varchar(15) DEFAULT NULL,
  `VAR_0298` varchar(15) DEFAULT NULL,
  `VAR_0299` varchar(15) DEFAULT NULL,
  `VAR_0300` varchar(15) DEFAULT NULL,
  `VAR_0301` varchar(15) DEFAULT NULL,
  `VAR_0302` varchar(15) DEFAULT NULL,
  `VAR_0303` varchar(15) DEFAULT NULL,
  `VAR_0304` varchar(15) DEFAULT NULL,
  `VAR_0305` varchar(15) DEFAULT NULL,
  `VAR_0306` varchar(15) DEFAULT NULL,
  `VAR_0307` varchar(15) DEFAULT NULL,
  `VAR_0308` varchar(15) DEFAULT NULL,
  `VAR_0309` varchar(15) DEFAULT NULL,
  `VAR_0310` varchar(15) DEFAULT NULL,
  `VAR_0311` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nivel_t1` */

DROP TABLE IF EXISTS `nivel_t1`;

CREATE TABLE `nivel_t1` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0001` varchar(50) DEFAULT NULL,
  `VAR_0002` varchar(20) DEFAULT NULL,
  `VAR_0003` varchar(100) DEFAULT NULL,
  `VAR_0007` varchar(30) DEFAULT NULL,
  `VAR_0004` varchar(30) DEFAULT NULL,
  `VAR_0005` varchar(20) DEFAULT NULL,
  `VAR_0006` datetime DEFAULT NULL,
  `VAR_0009` varchar(2) DEFAULT NULL,
  `VAR_0010` varchar(1) DEFAULT NULL,
  `VAR_0011` varchar(1) DEFAULT NULL,
  `VAR_0012` varchar(1) DEFAULT NULL,
  `VAR_0013` varchar(1) DEFAULT NULL,
  `VAR_0014` varchar(1) DEFAULT NULL,
  `VAR_0015` varchar(1) DEFAULT NULL,
  `VAR_0016` varchar(1) DEFAULT NULL,
  `VAR_0017` varchar(20) DEFAULT NULL,
  `VAR_0018` varchar(30) DEFAULT NULL,
  `VAR_0019` varchar(20) DEFAULT NULL,
  `VAR_0021` varchar(1) DEFAULT NULL,
  `VAR_0312` varchar(2) DEFAULT NULL,
  `VAR_0023` varchar(1) DEFAULT NULL,
  `VAR_0025` varchar(1) DEFAULT NULL,
  `VAR_0027` varchar(1) DEFAULT NULL,
  `VAR_0029` varchar(1) DEFAULT NULL,
  `VAR_0031` varchar(1) DEFAULT NULL,
  `VAR_0022` varchar(1) DEFAULT NULL,
  `VAR_0024` varchar(1) DEFAULT NULL,
  `VAR_0026` varchar(1) DEFAULT NULL,
  `VAR_0028` varchar(1) DEFAULT NULL,
  `VAR_0030` varchar(1) DEFAULT NULL,
  `VAR_0032` varchar(1) DEFAULT NULL,
  `VAR_0033` varchar(1) DEFAULT NULL,
  `VAR_0034` varchar(1) DEFAULT NULL,
  `VAR_0035` varchar(1) DEFAULT NULL,
  `VAR_0036` varchar(1) DEFAULT NULL,
  `VAR_0037` varchar(1) DEFAULT NULL,
  `VAR_0038` varchar(1) DEFAULT NULL,
  `VAR_0331` varchar(2) DEFAULT NULL,
  `VAR_0329` varchar(1) DEFAULT NULL,
  `VAR_0330` varchar(1) DEFAULT NULL,
  `VAR_0332` varchar(2) DEFAULT NULL,
  `VAR_0336` varchar(1) DEFAULT NULL,
  `VAR_0337` varchar(2) DEFAULT NULL,
  `VAR_0333` varchar(2) DEFAULT NULL,
  `VAR_0338` varchar(1) DEFAULT NULL,
  `VAR_0334` varchar(2) DEFAULT NULL,
  `VAR_0339` varchar(1) DEFAULT NULL,
  `VAR_0335` varchar(2) DEFAULT NULL,
  `VAR_0340` varchar(1) DEFAULT NULL,
  `VAR_0341` varchar(1) DEFAULT NULL,
  `VAR_0044` datetime DEFAULT NULL,
  `VAR_0045` varchar(1) DEFAULT NULL,
  `VAR_0046` varchar(1) DEFAULT NULL,
  `VAR_0047` varchar(1) DEFAULT NULL,
  `VAR_0048` varchar(3) DEFAULT NULL,
  `VAR_0049` varchar(2) DEFAULT NULL,
  `VAR_0050` datetime DEFAULT NULL,
  `VAR_0051` datetime DEFAULT NULL,
  `VAR_0052` varchar(1) DEFAULT NULL,
  `VAR_0053` varchar(1) DEFAULT NULL,
  `VAR_0058` varchar(1) DEFAULT NULL,
  `VAR_0059` varchar(1) DEFAULT NULL,
  `VAR_0060` varchar(1) DEFAULT NULL,
  `VAR_0061` varchar(1) DEFAULT NULL,
  `VAR_0057` varchar(1) DEFAULT NULL,
  `VAR_0062` varchar(1) DEFAULT NULL,
  `VAR_0063` varchar(1) DEFAULT NULL,
  `VAR_0064` varchar(1) DEFAULT NULL,
  `VAR_0065` varchar(1) DEFAULT NULL,
  `VAR_0066` varchar(1) DEFAULT NULL,
  `VAR_0067` varchar(2) DEFAULT NULL,
  `VAR_0068` varchar(1) DEFAULT NULL,
  `VAR_0069` varchar(1) DEFAULT NULL,
  `VAR_0070` varchar(1) DEFAULT NULL,
  `VAR_0071` varchar(3) DEFAULT NULL,
  `VAR_0072` varchar(1) DEFAULT NULL,
  `VAR_0073` varchar(1) DEFAULT NULL,
  `VAR_0074` varchar(1) DEFAULT NULL,
  `VAR_0075` varchar(3) DEFAULT NULL,
  `VAR_0076` varchar(1) DEFAULT NULL,
  `VAR_0081` varchar(1) DEFAULT NULL,
  `VAR_0082` varchar(1) DEFAULT NULL,
  `VAR_0083` varchar(1) DEFAULT NULL,
  `VAR_0079` varchar(1) DEFAULT NULL,
  `VAR_0088` varchar(1) DEFAULT NULL,
  `VAR_0089` varchar(1) DEFAULT NULL,
  `VAR_0090` varchar(1) DEFAULT NULL,
  `VAR_0091` varchar(1) DEFAULT NULL,
  `VAR_0092` varchar(1) DEFAULT NULL,
  `VAR_0093` varchar(1) DEFAULT NULL,
  `VAR_0104` varchar(1) DEFAULT NULL,
  `VAR_0094` varchar(1) DEFAULT NULL,
  `VAR_0105` varchar(2) DEFAULT NULL,
  `VAR_0106` varchar(2) DEFAULT NULL,
  `VAR_0107` varchar(1) DEFAULT NULL,
  `VAR_0095` varchar(1) DEFAULT NULL,
  `VAR_0108` varchar(1) DEFAULT NULL,
  `VAR_0109` varchar(1) DEFAULT NULL,
  `VAR_0100` varchar(1) DEFAULT NULL,
  `VAR_0101` varchar(2) DEFAULT NULL,
  `VAR_0102` varchar(2) DEFAULT NULL,
  `VAR_0103` varchar(1) DEFAULT NULL,
  `VAR_0224` varchar(1) DEFAULT NULL,
  `VAR_0126` varchar(1) DEFAULT NULL,
  `VAR_0127` datetime DEFAULT NULL,
  `VAR_0128` varchar(1) DEFAULT NULL,
  `VAR_0129` varchar(2) DEFAULT NULL,
  `VAR_0130` varchar(1) DEFAULT NULL,
  `VAR_0131` varchar(2) DEFAULT NULL,
  `VAR_0132` varchar(1) DEFAULT NULL,
  `VAR_0133` varchar(2) DEFAULT NULL,
  `VAR_0134` varchar(1) DEFAULT NULL,
  `VAR_0135` varchar(1) DEFAULT NULL,
  `VAR_0136` datetime DEFAULT NULL,
  `VAR_0137` varchar(4) DEFAULT NULL,
  `VAR_0138` varchar(1) DEFAULT NULL,
  `VAR_0139` varchar(1) DEFAULT NULL,
  `VAR_0140` varchar(1) DEFAULT NULL,
  `VAR_0141` varchar(3) DEFAULT NULL,
  `VAR_0142` varchar(2) DEFAULT NULL,
  `VAR_0143` varchar(1) DEFAULT NULL,
  `VAR_0144` varchar(1) DEFAULT NULL,
  `VAR_0145` varchar(1) DEFAULT NULL,
  `VAR_0146` varchar(1) DEFAULT NULL,
  `VAR_0147` varchar(1) DEFAULT NULL,
  `VAR_0148` varchar(1) DEFAULT NULL,
  `VAR_0149` varchar(1) DEFAULT NULL,
  `VAR_0150` varchar(1) DEFAULT NULL,
  `VAR_0313` varchar(1) DEFAULT NULL,
  `VAR_0223` varchar(20) DEFAULT NULL,
  `VAR_0163` varchar(1) DEFAULT NULL,
  `VAR_0164` varchar(1) DEFAULT NULL,
  `VAR_0165` varchar(1) DEFAULT NULL,
  `VAR_0166` varchar(1) DEFAULT NULL,
  `VAR_0167` varchar(1) DEFAULT NULL,
  `VAR_0168` varchar(1) DEFAULT NULL,
  `VAR_0169` varchar(1) DEFAULT NULL,
  `VAR_0170` varchar(1) DEFAULT NULL,
  `VAR_0171` varchar(1) DEFAULT NULL,
  `VAR_0172` varchar(1) DEFAULT NULL,
  `VAR_0173` varchar(1) DEFAULT NULL,
  `VAR_0174` varchar(1) DEFAULT NULL,
  `VAR_0175` varchar(1) DEFAULT NULL,
  `VAR_0176` varchar(1) DEFAULT NULL,
  `VAR_0177` varchar(1) DEFAULT NULL,
  `VAR_0178` varchar(1) DEFAULT NULL,
  `VAR_0179` varchar(1) DEFAULT NULL,
  `VAR_0180` varchar(1) DEFAULT NULL,
  `VAR_0181` varchar(1) DEFAULT NULL,
  `VAR_0182` varchar(1) DEFAULT NULL,
  `VAR_0183` varchar(2) DEFAULT NULL,
  `VAR_0184` varchar(2) DEFAULT NULL,
  `VAR_0185` varchar(2) DEFAULT NULL,
  `VAR_0186` varchar(1) DEFAULT NULL,
  `VAR_0187` varchar(1) DEFAULT NULL,
  `VAR_0188` varchar(1) DEFAULT NULL,
  `VAR_0189` varchar(1) DEFAULT NULL,
  `VAR_0190` varchar(4) DEFAULT NULL,
  `VAR_0191` datetime DEFAULT NULL,
  `VAR_0192` varchar(1) DEFAULT NULL,
  `VAR_0193` varchar(1) DEFAULT NULL,
  `VAR_0194` varchar(1) DEFAULT NULL,
  `VAR_0195` varchar(100) DEFAULT NULL,
  `VAR_0196` varchar(2) DEFAULT NULL,
  `VAR_0197` varchar(2) DEFAULT NULL,
  `VAR_0379` varchar(1) DEFAULT NULL,
  `VAR_0199` varchar(1) DEFAULT NULL,
  `VAR_0200` varchar(1) DEFAULT NULL,
  `VAR_0201` varchar(1) DEFAULT NULL,
  `VAR_0098` varchar(1) DEFAULT NULL,
  `VAR_0203` varchar(1) DEFAULT NULL,
  `VAR_0099` varchar(1) DEFAULT NULL,
  `VAR_0381` varchar(1) DEFAULT NULL,
  `VAR_0205` varchar(1) DEFAULT NULL,
  `VAR_0206` varchar(1) DEFAULT NULL,
  `VAR_0380` varchar(1) DEFAULT NULL,
  `VAR_0208` varchar(1) DEFAULT NULL,
  `VAR_0209` varchar(1) DEFAULT NULL,
  `VAR_0096` varchar(1) DEFAULT NULL,
  `VAR_0210` varchar(1) DEFAULT NULL,
  `VAR_0211` varchar(1) DEFAULT NULL,
  `VAR_0212` varchar(1) DEFAULT NULL,
  `VAR_0207` varchar(4) DEFAULT NULL,
  `VAR_0213` varchar(1) DEFAULT NULL,
  `VAR_0214` varchar(2) DEFAULT NULL,
  `VAR_0215` varchar(2) DEFAULT NULL,
  `VAR_0216` varchar(1) DEFAULT NULL,
  `VAR_0217` varchar(4) DEFAULT NULL,
  `VAR_0218` varchar(1) DEFAULT NULL,
  `VAR_0219` varchar(3) DEFAULT NULL,
  `VAR_0220` varchar(3) DEFAULT NULL,
  `VAR_0221` varchar(2) DEFAULT NULL,
  `VAR_0222` varchar(1) DEFAULT NULL,
  `VAR_0225` varchar(1) DEFAULT NULL,
  `VAR_0382` varchar(1) DEFAULT NULL,
  `VAR_0383` varchar(1) DEFAULT NULL,
  `VAR_0226` varchar(1) DEFAULT NULL,
  `VAR_0227` varchar(2) DEFAULT NULL,
  `VAR_0228` varchar(2) DEFAULT NULL,
  `VAR_0229` varchar(1) DEFAULT NULL,
  `VAR_0230` varchar(1) DEFAULT NULL,
  `VAR_0231` varchar(1) DEFAULT NULL,
  `VAR_0232` varchar(1) DEFAULT NULL,
  `VAR_0233` varchar(1) DEFAULT NULL,
  `VAR_0097` varchar(1) DEFAULT NULL,
  `VAR_0384` varchar(1) DEFAULT NULL,
  `VAR_0234` varchar(1) DEFAULT NULL,
  `VAR_0235` varchar(1) DEFAULT NULL,
  `VAR_0236` varchar(1) DEFAULT NULL,
  `VAR_0237` varchar(50) DEFAULT NULL,
  `VAR_0238` varchar(1) DEFAULT NULL,
  `VAR_0239` varchar(50) DEFAULT NULL,
  `VAR_0240` varchar(1) DEFAULT NULL,
  `VAR_0241` varchar(3) DEFAULT NULL,
  `VAR_0242` varchar(1) DEFAULT NULL,
  `VAR_0243` varchar(2) DEFAULT NULL,
  `VAR_0245` varchar(2) DEFAULT NULL,
  `VAR_0247` varchar(2) DEFAULT NULL,
  `VAR_0244` varchar(50) DEFAULT NULL,
  `VAR_0246` varchar(50) DEFAULT NULL,
  `VAR_0248` varchar(50) DEFAULT NULL,
  `VAR_0255` varchar(1) DEFAULT NULL,
  `VAR_0257` varchar(1) DEFAULT NULL,
  `VAR_0258` varchar(1) DEFAULT NULL,
  `VAR_0254` varchar(1) DEFAULT NULL,
  `VAR_0253` varchar(50) DEFAULT NULL,
  `VAR_9000` varchar(2) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nivel_t2` */

DROP TABLE IF EXISTS `nivel_t2`;

CREATE TABLE `nivel_t2` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0347` varchar(4) DEFAULT NULL,
  `VAR_0122` varchar(100) DEFAULT NULL,
  `VAR_0111` varchar(2) DEFAULT NULL,
  `VAR_0112` varchar(2) DEFAULT NULL,
  `VAR_0113` varchar(2) DEFAULT NULL,
  `VAR_0114` varchar(4) DEFAULT NULL,
  `VAR_0115` varchar(3) DEFAULT NULL,
  `VAR_0116` varchar(3) DEFAULT NULL,
  `VAR_0117` varchar(2) DEFAULT NULL,
  `VAR_0118` varchar(5) DEFAULT NULL,
  `VAR_0119` varchar(3) DEFAULT NULL,
  `VAR_0110` varchar(2) DEFAULT NULL,
  `VAR_0121` varchar(1) DEFAULT NULL,
  `VAR_0417` varchar(1) DEFAULT NULL,
  `VAR_0124` varchar(2) DEFAULT NULL,
  `VAR_0125` varchar(2) DEFAULT NULL,
  `VAR_0374` varchar(1) DEFAULT NULL,
  `VAR_0375` varchar(1) DEFAULT NULL,
  `VAR_0376` varchar(2) DEFAULT NULL,
  `VAR_0377` varchar(2) DEFAULT NULL,
  `VAR_0378` varchar(2) DEFAULT NULL,
  `VAR_0416` varchar(1) DEFAULT NULL,
  `VAR_0120` varchar(1) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nivel_t3` */

DROP TABLE IF EXISTS `nivel_t3`;

CREATE TABLE `nivel_t3` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0151` varchar(2) DEFAULT NULL,
  `VAR_0152` varchar(2) DEFAULT NULL,
  `VAR_0153` varchar(3) DEFAULT NULL,
  `VAR_0154` varchar(3) DEFAULT NULL,
  `VAR_0155` varchar(3) DEFAULT NULL,
  `VAR_0156` varchar(3) DEFAULT NULL,
  `VAR_0157` varchar(1) DEFAULT NULL,
  `VAR_0158` varchar(2) DEFAULT NULL,
  `VAR_0159` varchar(4) DEFAULT NULL,
  `VAR_0160` varchar(4) DEFAULT NULL,
  `VAR_0161` varchar(4) DEFAULT NULL,
  `VAR_0162` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nivel_t4` */

DROP TABLE IF EXISTS `nivel_t4`;

CREATE TABLE `nivel_t4` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0259` varchar(2) DEFAULT NULL,
  `VAR_0260` varchar(2) DEFAULT NULL,
  `VAR_0261` varchar(3) DEFAULT NULL,
  `VAR_0262` varchar(3) DEFAULT NULL,
  `VAR_0263` varchar(3) DEFAULT NULL,
  `VAR_0264` varchar(3) DEFAULT NULL,
  `VAR_0265` varchar(4) DEFAULT NULL,
  `VAR_0266` varchar(4) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nivel_t5` */

DROP TABLE IF EXISTS `nivel_t5`;

CREATE TABLE `nivel_t5` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0351` varchar(1) DEFAULT NULL,
  `VAR_0352` varchar(1) DEFAULT NULL,
  `VAR_0391` varchar(1) DEFAULT NULL,
  `VAR_0353` varchar(1) DEFAULT NULL,
  `VAR_0354` varchar(1) DEFAULT NULL,
  `VAR_0344` varchar(1) DEFAULT NULL,
  `VAR_0343` varchar(1) DEFAULT NULL,
  `VAR_0342` varchar(1) DEFAULT NULL,
  `VAR_0392` varchar(3) DEFAULT NULL,
  `VAR_0314` varchar(1) DEFAULT NULL,
  `VAR_0319` varchar(1) DEFAULT NULL,
  `VAR_0324` varchar(1) DEFAULT NULL,
  `VAR_0315` varchar(1) DEFAULT NULL,
  `VAR_0320` varchar(1) DEFAULT NULL,
  `VAR_0325` varchar(1) DEFAULT NULL,
  `VAR_0316` varchar(1) DEFAULT NULL,
  `VAR_0321` varchar(1) DEFAULT NULL,
  `VAR_0326` varchar(1) DEFAULT NULL,
  `VAR_0317` varchar(1) DEFAULT NULL,
  `VAR_0322` varchar(1) DEFAULT NULL,
  `VAR_0327` varchar(1) DEFAULT NULL,
  `VAR_0318` varchar(1) DEFAULT NULL,
  `VAR_0323` varchar(1) DEFAULT NULL,
  `VAR_0328` varchar(1) DEFAULT NULL,
  `VAR_0393` varchar(1) DEFAULT NULL,
  `VAR_0397` varchar(2) DEFAULT NULL,
  `VAR_0398` varchar(1) DEFAULT NULL,
  `VAR_0411` varchar(1) DEFAULT NULL,
  `VAR_0401` varchar(1) DEFAULT NULL,
  `VAR_0399` varchar(1) DEFAULT NULL,
  `VAR_0400` varchar(1) DEFAULT NULL,
  `VAR_0348` varchar(1) DEFAULT NULL,
  `VAR_0408` varchar(1) DEFAULT NULL,
  `VAR_0405` varchar(1) DEFAULT NULL,
  `VAR_0402` varchar(1) DEFAULT NULL,
  `VAR_0406` varchar(1) DEFAULT NULL,
  `VAR_0409` varchar(1) DEFAULT NULL,
  `VAR_0403` varchar(1) DEFAULT NULL,
  `VAR_0404` varchar(1) DEFAULT NULL,
  `VAR_0410` varchar(1) DEFAULT NULL,
  `VAR_0407` varchar(1) DEFAULT NULL,
  `VAR_0346` varchar(1) DEFAULT NULL,
  `VAR_0358` varchar(2) DEFAULT NULL,
  `VAR_0357` varchar(1) DEFAULT NULL,
  `VAR_0359` varchar(1) DEFAULT NULL,
  `VAR_0360` varchar(2) DEFAULT NULL,
  `VAR_0362` varchar(2) DEFAULT NULL,
  `VAR_0361` varchar(1) DEFAULT NULL,
  `VAR_0364` varchar(2) DEFAULT NULL,
  `VAR_0363` varchar(1) DEFAULT NULL,
  `VAR_0365` varchar(1) DEFAULT NULL,
  `VAR_0366` varchar(2) DEFAULT NULL,
  `VAR_0368` varchar(2) DEFAULT NULL,
  `VAR_0367` varchar(1) DEFAULT NULL,
  `VAR_0370` varchar(2) DEFAULT NULL,
  `VAR_0369` varchar(1) DEFAULT NULL,
  `VAR_0371` varchar(1) DEFAULT NULL,
  `VAR_0372` varchar(1) DEFAULT NULL,
  `VAR_0373` varchar(1) DEFAULT NULL,
  `VAR_0349` varchar(20) DEFAULT NULL,
  `VAR_0414` varchar(1) DEFAULT NULL,
  `VAR_0415` varchar(1) DEFAULT NULL,
  `VAR_0394` varchar(1) DEFAULT NULL,
  `VAR_0395` varchar(1) DEFAULT NULL,
  `VAR_0396` varchar(2) DEFAULT NULL,
  `VAR_0413` varchar(2) DEFAULT NULL,
  `VAR_0249` varchar(1) DEFAULT NULL,
  `VAR_0250` varchar(1) DEFAULT NULL,
  `VAR_0251` varchar(1) DEFAULT NULL,
  `VAR_0252` varchar(1) DEFAULT NULL,
  `VAR_0385` varchar(1) DEFAULT NULL,
  `VAR_0412` varchar(1) DEFAULT NULL,
  `VAR_0386` varchar(1) DEFAULT NULL,
  `VAR_0387` varchar(1) DEFAULT NULL,
  `VAR_0388` varchar(1) DEFAULT NULL,
  `VAR_0389` varchar(1) DEFAULT NULL,
  `VAR_0390` varchar(1) DEFAULT NULL,
  `VAR_0269` varchar(1) DEFAULT NULL,
  `VAR_0267` datetime DEFAULT NULL,
  `VAR_0268` varchar(4) DEFAULT NULL,
  `VAR_0271` varchar(1) DEFAULT NULL,
  `VAR_0272` varchar(2) DEFAULT NULL,
  `VAR_0273` varchar(1) DEFAULT NULL,
  `VAR_0286` varchar(30) DEFAULT NULL,
  `VAR_0270` varchar(10) DEFAULT NULL,
  `VAR_0274` varchar(1) DEFAULT NULL,
  `VAR_0275` varchar(1) DEFAULT NULL,
  `VAR_0277` varchar(4) DEFAULT NULL,
  `VAR_0278` datetime DEFAULT NULL,
  `VAR_0281` varchar(1) DEFAULT NULL,
  `VAR_0279` varchar(1) DEFAULT NULL,
  `VAR_0280` varchar(10) DEFAULT NULL,
  `VAR_0282` varchar(1) DEFAULT NULL,
  `VAR_0283` varchar(3) DEFAULT NULL,
  `VAR_0284` varchar(1) DEFAULT NULL,
  `VAR_0285` varchar(1) DEFAULT NULL,
  `VAR_0288` varchar(50) DEFAULT NULL,
  `VAR_0350` varchar(1) DEFAULT NULL,
  `VAR_0289` varchar(50) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nivel_t6` */

DROP TABLE IF EXISTS `nivel_t6`;

CREATE TABLE `nivel_t6` (
  `ID01` varchar(43) NOT NULL DEFAULT '',
  `ID02` varchar(43) DEFAULT NULL,
  `ID03` varchar(10) DEFAULT NULL,
  `VAR_0296` varchar(15) DEFAULT NULL,
  `VAR_0297` varchar(15) DEFAULT NULL,
  `VAR_0298` varchar(15) DEFAULT NULL,
  `VAR_0299` varchar(15) DEFAULT NULL,
  `VAR_0300` varchar(15) DEFAULT NULL,
  `VAR_0301` varchar(15) DEFAULT NULL,
  `VAR_0302` varchar(15) DEFAULT NULL,
  `VAR_0303` varchar(15) DEFAULT NULL,
  `VAR_0304` varchar(15) DEFAULT NULL,
  `VAR_0305` varchar(15) DEFAULT NULL,
  `VAR_0306` varchar(15) DEFAULT NULL,
  `VAR_0307` varchar(15) DEFAULT NULL,
  `VAR_0308` varchar(15) DEFAULT NULL,
  `VAR_0309` varchar(15) DEFAULT NULL,
  `VAR_0310` varchar(15) DEFAULT NULL,
  `VAR_0311` varchar(15) DEFAULT NULL,
  `LIBRE1` double DEFAULT NULL,
  `LIBRE2` double DEFAULT NULL,
  `LIBRE3` double DEFAULT NULL,
  `LIBRE4` double DEFAULT NULL,
  `LIBRE5` varchar(15) DEFAULT NULL,
  `LIBRE6` varchar(15) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `HORA` varchar(8) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `CONTROL` mediumtext  DEFAULT NULL,
  PRIMARY KEY (`ID01`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping routines for database 'sip_v416'
--
/*!50003 DROP FUNCTION IF EXISTS `VAL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER $$
DROP FUNCTION IF EXISTS `sip_v416`.`VAL`$$

CREATE DEFINER=`root`@`localhost` FUNCTION `VAL`(cadena varchar(10)) RETURNS decimal(8,2)
BEGIN
    if (cadena <> '') then
        RETURN (select cast(cadena as dec(8,2)) as res);
    else
        RETURN null;
    end if;
    END$$
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-10  9:49:49



CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_01` 
    AS
    (SELECT FECHA, HORA, ID01, ID02, ID03, LIBRE1, LIBRE2, LIBRE3, LIBRE4, LIBRE5, LIBRE6, USUARIO, VAR_0001, VAR_0002, VAR_0003, VAR_0004, VAR_0005, VAR_0006, VAR_0009, VAR_0010, VAR_0011, VAR_0012, VAR_0013, VAR_0014, VAR_0015, VAR_0016, VAR_0017, VAR_0018, VAR_0019, VAR_0020, VAR_0021, VAR_0022, VAR_0023, VAR_0024, VAR_0025, VAR_0026, VAR_0027, VAR_0028, VAR_0029, VAR_0030, VAR_0031, VAR_0032, VAR_0033, VAR_0034, VAR_0035, VAR_0036, VAR_0037, VAR_0038, VAR_0039, VAR_0040, VAR_0041, VAR_0042, VAR_0043, VAR_0044, VAR_0045, VAR_0046, VAR_0047, VAR_0048, VAR_0049, VAR_0050, VAR_0051, VAR_0052, VAR_0053, VAR_0054, VAR_0055, VAR_0056, VAR_0057, VAR_0058, VAR_0059, VAR_0060, NULL AS VAR_0076, NULL AS VAR_0077, NULL AS VAR_0078, NULL AS VAR_0079, VAR_0080, VAR_0081, VAR_0082, VAR_0083, VAR_0084, VAR_0085, VAR_0086, VAR_0087, VAR_0088, VAR_0089, VAR_0090, NULL AS VAR_0091, VAR_0093, VAR_0095, VAR_0096, VAR_0097, VAR_0098, VAR_0099, VAR_0100, VAR_0101, VAR_0102, VAR_0103, VAR_0104, VAR_0105, VAR_0106, VAR_0107, VAR_0108, VAR_0109, VAR_0110, VAR_0111, VAR_0112, VAR_0114, VAR_0115, VAR_0182, VAR_0183, VAR_0184, VAR_0185, VAR_0186, VAR_0187, VAR_0188, VAR_0189, VAR_0190, VAR_0191, VAR_0192, VAR_0193, VAR_0194, VAR_0195, VAR_0196, VAR_0197, VAR_0198, VAR_0199, VAR_0200, VAR_0201, VAR_0202, VAR_0203, VAR_0204, VAR_0205, VAR_0206, NULL AS VAR_0257, VAR_0258, NULL AS VAR_0259, VAR_0260, VAR_0261, NULL AS VAR_0262, NULL AS VAR_0263, NULL AS VAR_0264, VAR_0266, VAR_0267, NULL AS VAR_0268, NULL AS VAR_0269, NULL AS VAR_0270, NULL AS VAR_0271, NULL AS VAR_0272, VAR_0273, VAR_0274, VAR_0275, NULL AS VAR_0276, NULL AS VAR_0277, NULL AS VAR_0278, NULL AS VAR_0279, NULL AS VAR_0280, VAR_0282, VAR_0283, VAR_0284, VAR_0285, VAR_0286, VAR_0287, VAR_0288, VAR_0289, VAR_0290, VAR_0291, VAR_0292, VAR_0293, VAR_0294, VAR_0295, VAR_0296, VAR_0297, VAR_0298, VAR_0299, VAR_0300, VAR_0301, VAR_0302, VAR_0303, VAR_0304, VAR_0305, VAR_0306, NULL AS VAR_0307, VAR_0308, VAR_0309, VAR_0310, VAR_0311, VAR_0312, VAR_0313, VAR_0314, VAR_0315, VAR_0316, VAR_0317, VAR_0318, VAR_0319, VAR_0320, VAR_0321, VAR_0322, VAR_0323, VAR_0324, VAR_0325, VAR_0326, VAR_0327, VAR_0328, VAR_0329, VAR_0330, VAR_0331, VAR_0332, VAR_0333, VAR_0334, VAR_0335, VAR_0336, VAR_0337, NULL AS VAR_0338, VAR_0339, NULL AS VAR_0340, VAR_0341, NULL AS VAR_0342, VAR_0343, VAR_0344, VAR_0345, VAR_0346, VAR_0347, VAR_0348, NULL AS VAR_0367, VAR_0368, VAR_0370, VAR_0371, VAR_0372, VAR_0373, VAR_0374, VAR_0375, VAR_0376, VAR_0377, VAR_0378, VAR_0379, NULL AS VAR_0380, VAR_0381, VAR_0382, VAR_0383, NULL AS VAR_0384, VAR_0385, NULL AS VAR_0386, VAR_0388, VAR_0389, VAR_0390, VAR_0391, VAR_0395, VAR_0408, VAR_0425, VAR_9000, VERSION
FROM nivel_n1 AS nivel_01
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_02` 
    AS
    (SELECT nivel_02.CONTROL, nivel_02.FECHA, nivel_02.HORA, nivel_02.ID01, nivel_02.ID02, nivel_02.ID03, nivel_02.LIBRE1, nivel_02.LIBRE2, nivel_02.LIBRE3, nivel_02.LIBRE4, nivel_02.LIBRE5, nivel_02.LIBRE6, nivel_02.USUARIO, nivel_02.VAR_0116, nivel_02.VAR_0117, nivel_02.VAR_0118, nivel_02.VAR_0119, nivel_02.VAR_0120, nivel_02.VAR_0121, nivel_02.VAR_0122, nivel_02.VAR_0123, nivel_02.VAR_0124, nivel_02.VAR_0125, nivel_02.VAR_0126, nivel_02.VAR_0127, nivel_02.VAR_0128, nivel_02.VAR_0129, nivel_02.VAR_0393, nivel_02.VAR_0394, nivel_02.VERSION
FROM nivel_n2 AS nivel_02
ORDER BY nivel_02.ID01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_03` 
    AS
    (SELECT CONTROL, FECHA, HORA, ID01, ID02, ID03, LIBRE1, LIBRE2, LIBRE3, LIBRE4, LIBRE5, LIBRE6, USUARIO, VAR_0207, VAR_0208, VAR_0209, VAR_0210, VAR_0211, VAR_0212, VAR_0213, VAR_0214, VAR_0215, VAR_0216, VAR_0392, VAR_0407, VERSION
FROM nivel_n3 AS nivel_03
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_04` 
    AS
    (SELECT CONTROL, FECHA, HORA, ID01, ID02, ID03, LIBRE1, LIBRE2, LIBRE3, LIBRE4, LIBRE5, LIBRE6, USUARIO, NULL AS VAR_0349, NULL AS VAR_0350, VAR_0351, VAR_0352, VAR_0353, VAR_0354, VAR_0355, VAR_0406, VERSION
FROM nivel_n4 AS nivel_04
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_05` 
    AS
    (SELECT nivel_05.CONTROL, nivel_05.FECHA, nivel_05.HORA, nivel_05.ID01, nivel_05.ID02, nivel_05.ID03, nivel_05.LIBRE1, nivel_05.LIBRE2, nivel_05.LIBRE3, nivel_05.LIBRE4, nivel_05.LIBRE5, nivel_05.LIBRE6, nivel_05.USUARIO, nivel_05.VAR_0061, nivel_05.VAR_0062, nivel_05.VAR_0063, nivel_05.VAR_0064, nivel_05.VAR_0065, nivel_05.VAR_0066, nivel_05.VAR_0067, nivel_05.VAR_0068, nivel_05.VAR_0069, nivel_05.VAR_0070, nivel_05.VAR_0071, nivel_05.VAR_0072, nivel_05.VAR_0073, nivel_05.VAR_0074, nivel_05.VAR_0075, Null AS VAR_0077, Null AS VAR_0276, nivel_05.VAR_0409, nivel_05.VAR_0410, Null AS VAR_0411, nivel_05.VAR_0412, nivel_05.VAR_0413, nivel_05.VAR_0414, nivel_05.VAR_0415, nivel_05.VAR_0416, nivel_05.VAR_0418, nivel_05.VAR_0419, nivel_05.VAR_0420, nivel_05.VAR_0421, nivel_05.VAR_0422, nivel_05.VAR_0423, nivel_05.VAR_0424, nivel_05.VAR_0432, nivel_05.VAR_0433, nivel_05.VAR_0434, nivel_05.VAR_0435, nivel_05.VAR_0436, nivel_05.VAR_0437, nivel_05.VAR_0438, nivel_05.VAR_0439, nivel_05.VAR_0440, nivel_05.VAR_0441, Null AS VAR_0900, nivel_05.VERSION
FROM nivel_n5 AS nivel_05
ORDER BY ID01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_06` 
    AS
    (SELECT CONTROL, FECHA, HORA, ID01, ID02, ID03, LIBRE1, LIBRE2, LIBRE3, LIBRE4, LIBRE5, LIBRE6, USUARIO, VAR_0396, VAR_0397, VAR_0398, VAR_0399, VAR_0400, VAR_0401, VAR_0402, VAR_0403, VAR_0404, VAR_0405, VAR_0426, VAR_0427, VAR_0428, VAR_0429, VAR_0430, VAR_0431, VERSION
FROM nivel_N6 AS nivel_06
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_61` 
    AS
    (SELECT NULL AS CONTROL, NULL AS FECHA, NULL AS HORA, NULL AS ID01, NULL AS ID02, NULL AS ID03, NULL AS LIBRE1, NULL AS LIBRE2, NULL AS LIBRE3, NULL AS LIBRE4, NULL AS LIBRE5, NULL AS LIBRE6, NULL AS USUARIO, NULL AS VAR_6001, NULL AS VAR_6002, NULL AS VAR_6003, NULL AS VAR_6004, NULL AS VAR_6005, NULL AS VAR_6006, NULL AS VAR_6007, NULL AS VAR_6008, NULL AS VAR_6009, NULL AS VAR_6010, NULL AS VAR_6011, NULL AS VAR_6012, NULL AS VAR_6013, NULL AS VAR_6014, NULL AS VAR_6015, NULL AS VAR_6016, NULL AS VAR_6017, NULL AS VAR_6018, NULL AS VAR_6019, NULL AS VAR_6021, NULL AS VAR_6022, NULL AS VAR_6023, NULL AS VAR_6024, NULL AS VAR_6025, NULL AS VAR_6026, NULL AS VAR_6027, NULL AS VAR_6028, NULL AS VAR_6029, NULL AS VAR_6030, NULL AS VAR_6031, NULL AS VAR_6032, NULL AS VAR_6033, NULL AS VAR_6035, NULL AS VAR_6036, NULL AS VAR_6037, NULL AS VAR_6038, NULL AS VAR_6039, NULL AS VAR_6042, NULL AS VAR_6043, NULL AS VAR_6044, NULL AS VAR_6045, NULL AS VAR_6046, NULL AS VAR_6047, NULL AS VAR_6048, NULL AS VAR_6049, NULL AS VAR_6050, NULL AS VAR_6051, NULL AS VAR_6052, NULL AS VAR_6053, NULL AS VAR_6054, NULL AS VAR_6055, NULL AS VAR_6056, NULL AS VAR_6057, NULL AS VAR_6058, NULL AS VAR_6059, NULL AS VAR_6060, NULL AS VAR_6061, NULL AS VAR_6062, NULL AS VAR_6063, NULL AS VAR_6064, NULL AS VAR_6065, NULL AS VAR_6066, NULL AS VAR_6067, NULL AS VAR_6068, NULL AS VAR_6069, NULL AS VAR_6070, NULL AS VAR_6071, NULL AS VAR_6072, NULL AS VAR_6073, NULL AS VAR_6074, NULL AS VAR_6075, NULL AS VAR_6076, NULL AS VAR_6077, NULL AS VAR_6078, NULL AS VAR_6081, NULL AS VAR_6088, NULL AS VAR_6089, NULL AS VAR_6090, NULL AS VAR_6091, NULL AS VAR_6092, NULL AS VAR_6093, NULL AS VAR_6094, NULL AS VAR_6095, NULL AS VAR_6096, NULL AS VAR_6098, NULL AS VAR_6099, NULL AS VAR_6101, NULL AS VAR_6102, NULL AS VAR_6103, NULL AS VAR_6104, NULL AS VAR_6105, NULL AS VAR_6106, NULL AS VAR_6107, NULL AS VAR_6108, NULL AS VAR_6110, NULL AS VAR_6111, NULL AS VAR_6112, NULL AS VAR_6113, NULL AS VAR_6114, NULL AS VAR_6115, NULL AS VAR_6116, NULL AS VAR_6117, NULL AS VAR_6118, NULL AS VAR_6119, NULL AS VAR_6120, NULL AS VAR_6121, NULL AS VAR_6122, NULL AS VAR_6123, NULL AS VAR_6124, NULL AS VAR_6125, NULL AS VAR_6126, NULL AS VAR_6127, NULL AS VAR_6128, NULL AS VAR_6129, NULL AS VAR_6130, NULL AS VAR_6131, NULL AS VAR_6132, NULL AS VAR_6133, NULL AS VAR_6134, NULL AS VAR_6135, NULL AS VAR_6136, NULL AS VAR_6137, NULL AS VAR_6138, NULL AS VAR_6139, NULL AS VAR_6140, NULL AS VAR_6141, NULL AS VAR_6142, NULL AS VAR_6143, NULL AS VAR_6144, NULL AS VAR_6145, NULL AS VAR_6146, NULL AS VAR_6147, NULL AS VAR_6148, NULL AS VAR_6149, NULL AS VAR_6150, NULL AS VAR_6151, NULL AS VAR_6152, NULL AS VAR_6153, NULL AS VAR_6154, NULL AS VAR_6155, NULL AS VAR_6156, NULL AS VAR_6157, NULL AS VAR_6158, NULL AS VAR_6159, NULL AS VAR_6160, NULL AS VAR_6161, NULL AS VAR_6162, NULL AS VAR_6163, NULL AS VAR_6164, NULL AS VAR_6165, NULL AS VAR_6166, NULL AS VAR_6167, NULL AS VAR_6168, NULL AS VAR_6169, NULL AS VAR_6170, NULL AS VAR_6171, NULL AS VAR_6172, NULL AS VAR_6173, NULL AS VAR_6174, NULL AS VAR_6175, NULL AS VAR_6180, NULL AS VAR_6181, NULL AS VAR_6210, NULL AS VAR_6211, NULL AS VAR_6212, NULL AS VAR_6213, NULL AS VAR_6214, NULL AS VAR_6215, NULL AS VAR_6216, NULL AS VAR_6217, NULL AS VAR_6218, NULL AS VAR_6219, NULL AS VAR_6220, NULL AS VAR_6221, NULL AS VAR_6222, NULL AS VAR_6223, NULL AS VAR_6224, NULL AS VAR_6225, NULL AS VAR_6226, NULL AS VAR_6227, NULL AS VAR_6228, NULL AS VAR_6229, NULL AS VAR_6230, NULL AS VAR_6231, NULL AS VERSION
FROM NIVEL_61 AS NIVEL_61
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_n1` 
    AS
    (SELECT Null AS CONTROL, nivel_n1.FECHA, nivel_n1.HORA, nivel_n1.ID01, nivel_n1.ID02, nivel_n1.ID03, nivel_n1.LIBRE1, nivel_n1.LIBRE2, nivel_n1.LIBRE3, nivel_n1.LIBRE4, nivel_n1.LIBRE5, nivel_n1.LIBRE6, nivel_n1.USUARIO, nivel_n1.VAR_0001, nivel_n1.VAR_0002, nivel_n1.VAR_0003, nivel_n1.VAR_0004, nivel_n1.VAR_0005, nivel_n1.VAR_0006, nivel_n1.VAR_0009, nivel_n1.VAR_0010, nivel_n1.VAR_0011, nivel_n1.VAR_0012, nivel_n1.VAR_0013, nivel_n1.VAR_0014, nivel_n1.VAR_0015, nivel_n1.VAR_0016, nivel_n1.VAR_0017, nivel_n1.VAR_0018, nivel_n1.VAR_0019, nivel_n1.VAR_0020, nivel_n1.VAR_0021, nivel_n1.VAR_0022, nivel_n1.VAR_0023, nivel_n1.VAR_0024, nivel_n1.VAR_0025, nivel_n1.VAR_0026, nivel_n1.VAR_0027, nivel_n1.VAR_0028, nivel_n1.VAR_0029, nivel_n1.VAR_0030, nivel_n1.VAR_0031, nivel_n1.VAR_0032, nivel_n1.VAR_0033, nivel_n1.VAR_0034, nivel_n1.VAR_0035, nivel_n1.VAR_0036, nivel_n1.VAR_0037, nivel_n1.VAR_0038, nivel_n1.VAR_0039, nivel_n1.VAR_0040, nivel_n1.VAR_0041, nivel_n1.VAR_0042, nivel_n1.VAR_0043, nivel_n1.VAR_0044, nivel_n1.VAR_0045, nivel_n1.VAR_0046, nivel_n1.VAR_0047, nivel_n1.VAR_0048, nivel_n1.VAR_0049, nivel_n1.VAR_0050, nivel_n1.VAR_0051, nivel_n1.VAR_0052, nivel_n1.VAR_0053, nivel_n1.VAR_0054, nivel_n1.VAR_0055, nivel_n1.VAR_0056, nivel_n1.VAR_0057, nivel_n1.VAR_0058, nivel_n1.VAR_0059, nivel_n1.VAR_0060, nivel_n1.VAR_0080, nivel_n1.VAR_0081, nivel_n1.VAR_0082, nivel_n1.VAR_0083, nivel_n1.VAR_0084, nivel_n1.VAR_0085, nivel_n1.VAR_0086, nivel_n1.VAR_0087, nivel_n1.VAR_0088, nivel_n1.VAR_0089, nivel_n1.VAR_0090, nivel_n1.VAR_0093, nivel_n1.VAR_0095, nivel_n1.VAR_0096, nivel_n1.VAR_0097, nivel_n1.VAR_0098, nivel_n1.VAR_0099, nivel_n1.VAR_0100, nivel_n1.VAR_0101, nivel_n1.VAR_0102, nivel_n1.VAR_0103, nivel_n1.VAR_0104, nivel_n1.VAR_0105, nivel_n1.VAR_0106, nivel_n1.VAR_0107, nivel_n1.VAR_0108, nivel_n1.VAR_0109, nivel_n1.VAR_0110, nivel_n1.VAR_0111, nivel_n1.VAR_0112, nivel_n1.VAR_0114, nivel_n1.VAR_0115, nivel_n1.VAR_0182, nivel_n1.VAR_0183, nivel_n1.VAR_0184, nivel_n1.VAR_0185, nivel_n1.VAR_0186, nivel_n1.VAR_0187, nivel_n1.VAR_0188, nivel_n1.VAR_0189, nivel_n1.VAR_0190, nivel_n1.VAR_0191, nivel_n1.VAR_0192, nivel_n1.VAR_0193, nivel_n1.VAR_0194, nivel_n1.VAR_0195, nivel_n1.VAR_0196, nivel_n1.VAR_0197, nivel_n1.VAR_0198, nivel_n1.VAR_0199, nivel_n1.VAR_0200, nivel_n1.VAR_0201, nivel_n1.VAR_0202, nivel_n1.VAR_0203, nivel_n1.VAR_0204, nivel_n1.VAR_0205, nivel_n1.VAR_0206, nivel_n1.VAR_0258, nivel_n1.VAR_0260, nivel_n1.VAR_0261, nivel_n1.VAR_0266, nivel_n1.VAR_0267, nivel_n1.VAR_0273, nivel_n1.VAR_0274, nivel_n1.VAR_0275, nivel_n1.VAR_0282, nivel_n1.VAR_0283, nivel_n1.VAR_0284, nivel_n1.VAR_0285, nivel_n1.VAR_0286, nivel_n1.VAR_0287, nivel_n1.VAR_0288, nivel_n1.VAR_0289, nivel_n1.VAR_0290, nivel_n1.VAR_0291, nivel_n1.VAR_0292, nivel_n1.VAR_0293, nivel_n1.VAR_0294, nivel_n1.VAR_0295, nivel_n1.VAR_0296, nivel_n1.VAR_0297, nivel_n1.VAR_0298, nivel_n1.VAR_0299, nivel_n1.VAR_0300, nivel_n1.VAR_0301, nivel_n1.VAR_0302, nivel_n1.VAR_0303, nivel_n1.VAR_0304, nivel_n1.VAR_0305, nivel_n1.VAR_0306, nivel_n1.VAR_0308, nivel_n1.VAR_0309, nivel_n1.VAR_0310, nivel_n1.VAR_0311, nivel_n1.VAR_0312, nivel_n1.VAR_0313, nivel_n1.VAR_0314, nivel_n1.VAR_0315, nivel_n1.VAR_0316, nivel_n1.VAR_0317, nivel_n1.VAR_0318, nivel_n1.VAR_0319, nivel_n1.VAR_0320, nivel_n1.VAR_0321, nivel_n1.VAR_0322, nivel_n1.VAR_0323, nivel_n1.VAR_0324, nivel_n1.VAR_0325, nivel_n1.VAR_0326, nivel_n1.VAR_0327, nivel_n1.VAR_0328, nivel_n1.VAR_0329, nivel_n1.VAR_0330, nivel_n1.VAR_0331, nivel_n1.VAR_0332, nivel_n1.VAR_0333, nivel_n1.VAR_0334, nivel_n1.VAR_0335, nivel_n1.VAR_0336, nivel_n1.VAR_0337, nivel_n1.VAR_0339, nivel_n1.VAR_0341, nivel_n1.VAR_0343, nivel_n1.VAR_0344, nivel_n1.VAR_0345, nivel_n1.VAR_0346, nivel_n1.VAR_0347, nivel_n1.VAR_0348, nivel_n1.VAR_0368, nivel_n1.VAR_0370, nivel_n1.VAR_0371, nivel_n1.VAR_0372, nivel_n1.VAR_0373, nivel_n1.VAR_0374, nivel_n1.VAR_0375, nivel_n1.VAR_0376, nivel_n1.VAR_0377, nivel_n1.VAR_0378, nivel_n1.VAR_0379, nivel_n1.VAR_0381, nivel_n1.VAR_0382, nivel_n1.VAR_0383, nivel_n1.VAR_0385, nivel_n1.VAR_0388, nivel_n1.VAR_0389, nivel_n1.VAR_0390, nivel_n1.VAR_0391, nivel_n1.VAR_0395, nivel_n1.VAR_0408, nivel_n1.VAR_0425, Null AS VAR_0613, Null AS VAR_0627, nivel_n1.VAR_9000, nivel_n1.VERSION
FROM nivel_01 AS nivel_n1
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_n2` 
    AS
    (SELECT CONTROL, FECHA, HORA, ID01, ID02, ID03, LIBRE1, LIBRE2, LIBRE3, LIBRE4, LIBRE5, LIBRE6, USUARIO, VAR_0116, VAR_0117, VAR_0118, VAR_0119, VAR_0120, VAR_0121, VAR_0122, VAR_0123, VAR_0124, VAR_0125, VAR_0126, VAR_0127, VAR_0128, VAR_0129, VAR_0393, VAR_0394, NULL AS VAR_0686, VERSION
FROM nivel_02 AS nivel_n2
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_n3` 
    AS
    (SELECT CONTROL, FECHA, HORA, ID01, ID02, ID03, LIBRE1, LIBRE2, LIBRE3, LIBRE4, LIBRE5, LIBRE6, USUARIO, VAR_0207, VAR_0208, VAR_0209, VAR_0210, VAR_0211, VAR_0212, VAR_0213, VAR_0214, VAR_0215, VAR_0216, VAR_0392, VAR_0407, VERSION
FROM nivel_03 AS nivel_n3
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_n4` 
    AS
    (SELECT CONTROL, FECHA, HORA, ID01, ID02, ID03, LIBRE1, LIBRE2, LIBRE3, LIBRE4, LIBRE5, LIBRE6, USUARIO, VAR_0351, VAR_0352, VAR_0353, VAR_0354, VAR_0355, NULL AS VAR_0356, NULL AS VAR_0357, NULL AS VAR_0358, NULL AS VAR_0359, VAR_0406, VERSION
FROM nivel_04 AS nivel_n4
ORDER BY id01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_n6` 
    AS
    (SELECT nivel_n6.CONTROL, nivel_n6.FECHA, nivel_n6.HORA, nivel_n6.ID01, nivel_n6.ID02, nivel_n6.ID03, nivel_n6.LIBRE1, nivel_n6.LIBRE2, nivel_n6.LIBRE3, nivel_n6.LIBRE4, nivel_n6.LIBRE5, nivel_n6.LIBRE6, nivel_n6.USUARIO, nivel_n6.VAR_0396, nivel_n6.VAR_0397, nivel_n6.VAR_0398, nivel_n6.VAR_0399, nivel_n6.VAR_0400, nivel_n6.VAR_0401, nivel_n6.VAR_0402, nivel_n6.VAR_0403, nivel_n6.VAR_0404, nivel_n6.VAR_0405, nivel_n6.VAR_0426, nivel_n6.VAR_0427, nivel_n6.VAR_0428, nivel_n6.VAR_0429, nivel_n6.VAR_0430, nivel_n6.VAR_0431, nivel_n6.VERSION
FROM nivel_06 AS nivel_n6
ORDER BY ID01);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_n7` 
    AS
    (SELECT NULL AS CONTROL, NULL AS FECHA, NULL AS HORA, NULL AS ID01, NULL AS ID02, NULL AS ID03, NULL AS LIBRE1, NULL AS LIBRE2, NULL AS LIBRE3, NULL AS LIBRE4, NULL AS LIBRE5, NULL AS LIBRE6, NULL AS Tipo, NULL AS USUARIO, NULL AS VAR_0556, NULL AS VAR_0557, NULL AS VAR_0558, NULL AS VAR_0559, NULL AS VAR_0560, NULL AS VAR_0561, NULL AS VAR_0562, NULL AS VAR_0586, NULL AS VERSION);

CREATE
    /*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
    VIEW `sip_v416`.`consulta_n8` 
    AS
    (SELECT NULL AS CONTROL, NULL AS FECHA, NULL AS HORA, NULL AS ID01, NULL AS ID02, NULL AS ID03, NULL AS LIBRE1, NULL AS LIBRE2, NULL AS LIBRE3, NULL AS LIBRE4, NULL AS LIBRE5, NULL AS LIBRE6, NULL AS USUARIO, NULL AS VAR_0503, NULL AS VAR_0514, NULL AS VAR_0515, NULL AS VAR_0516, NULL AS VAR_0517, NULL AS VAR_0518, NULL AS VAR_0519, NULL AS VAR_0520, NULL AS VAR_0521, NULL AS VAR_0522, NULL AS VAR_0523, NULL AS VAR_0524, NULL AS VAR_0525, NULL AS VAR_0526, NULL AS VAR_0527, NULL AS VAR_0528, NULL AS VAR_0529, NULL AS VAR_0530, NULL AS VAR_0531, NULL AS VAR_0532, NULL AS VAR_0533, NULL AS VAR_0534, NULL AS VAR_0548, NULL AS VAR_0549, NULL AS VAR_0550, NULL AS VAR_0551, NULL AS VAR_0552, NULL AS VAR_0553, NULL AS VAR_0554, NULL AS VAR_0639, NULL AS VAR_0642, NULL AS VAR_0644, NULL AS VERSION);

