-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: s3-transpei.cu1apg1gnrb5.us-east-1.rds.amazonaws.com    Database: BACKOFFICE
-- ------------------------------------------------------
-- Server version	8.0.40

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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `CFDI`
--

DROP TABLE IF EXISTS `CFDI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CFDI` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Clave` varchar(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CFDI`
--

LOCK TABLES `CFDI` WRITE;
/*!40000 ALTER TABLE `CFDI` DISABLE KEYS */;
INSERT INTO `CFDI` VALUES (1,'G01','Adquisición de mercancías'),(2,'G02','Devoluciones, descuentos o bonificaciones'),(3,'G03','Gastos en general'),(4,'I01','Construcciones'),(5,'I02','Mobilario y equipo de oficina por inversiones'),(6,'I03','Equipo de transporte'),(7,'I04','Equipo de computo y accesorios'),(8,'I05','Dados, troqueles, moldes, matrices y herramental'),(9,'I06','Comunicaciones telefónicas'),(10,'I07','Comunicaciones satelitales'),(11,'I08','Otra maquinaria y equipo');
/*!40000 ALTER TABLE `CFDI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClaveUnidadSat`
--

DROP TABLE IF EXISTS `ClaveUnidadSat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClaveUnidadSat` (
  `idClaveUnidadSat` int NOT NULL AUTO_INCREMENT,
  `sUnidad` varchar(150) DEFAULT NULL,
  `sNombre` varchar(150) DEFAULT NULL,
  `sDescripcion` varchar(150) DEFAULT NULL,
  `dInicioVigencia` datetime DEFAULT NULL,
  `dFinVigencia` datetime DEFAULT NULL,
  `sSimbolo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idClaveUnidadSat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClaveUnidadSat`
--

LOCK TABLES `ClaveUnidadSat` WRITE;
/*!40000 ALTER TABLE `ClaveUnidadSat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClaveUnidadSat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `NombreCliente` varchar(150) NOT NULL,
  `CuentaClabe` varchar(18) DEFAULT NULL,
  `bActivo` tinyint NOT NULL DEFAULT '1',
  `dFecRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dFecMovimiento` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `EstatusClienteId` int NOT NULL,
  `IdCliente` bigint NOT NULL AUTO_INCREMENT,
  `ProductoContratado` varchar(50) DEFAULT NULL,
  `TieneDocumentos` tinyint DEFAULT '0',
  `TieneEsquemaCobro` tinyint DEFAULT '0',
  `TieneDatosGenerales` tinyint DEFAULT '0',
  `TieneFacturacion` tinyint DEFAULT '0',
  `CognitoUserId` varchar(128) NOT NULL,
  `BusinessName` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`IdCliente`),
  UNIQUE KEY `UC_CuentaClabe` (`CuentaClabe`),
  KEY `fk_Cliente_EstatusCliente1_idx` (`EstatusClienteId`),
  CONSTRAINT `fk_Cliente_EstatusCliente1` FOREIGN KEY (`EstatusClienteId`) REFERENCES `EstatusCliente` (`IdEstatusCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES ('NC1','CC1',1,'2025-03-10 17:30:24','2025-06-05 18:26:44',2,1,'SPEI',1,1,1,0,'a',NULL),('Pablo','727969000100000007',1,'0000-00-00 00:00:00','2025-03-14 05:36:04',3,2,'SPEI',1,1,0,0,'b',NULL),('Pablo','null',1,'0000-00-00 00:00:00','2025-03-26 16:32:17',1,3,'SPEI',1,1,0,0,'c',NULL),('Pablo','727969282726351254',1,'2025-03-11 03:57:26','2025-03-14 16:36:35',2,4,'DISPERSONES',0,1,1,0,'d',NULL),('Pablo','72796992837461529',1,'2025-03-11 05:00:46','2025-03-31 22:51:36',1,10,'DISPERSONES',1,1,0,0,'e',NULL),('Pablo','72796992837401529',1,'2025-03-11 05:27:23','2025-03-14 18:24:53',1,11,'DISPERSONES',1,1,0,0,'f',NULL),('Pablo',NULL,1,'2025-03-12 23:12:27','2025-03-14 05:36:04',1,18,'SPEI',0,0,0,0,'g',NULL),('ixmael sa de cv',NULL,1,'2025-03-13 16:28:49','2025-03-14 05:36:04',1,22,'SPEI',1,0,1,0,'h',NULL),('tester',NULL,1,'2025-03-13 21:00:43','2025-03-14 05:36:04',1,26,'SPEI',1,0,1,0,'j',NULL),('ixmael sa de cv',NULL,1,'2025-03-13 21:54:50','2025-03-14 05:38:24',1,27,'SPEI',1,0,1,0,'k',NULL),('Carlos',NULL,1,'2025-03-14 05:50:23','2025-03-14 05:50:23',1,28,'SPEI',0,0,0,0,'38671656-11b6-49e0-81a4-f6005e3610be','business_name'),('Carlos2',NULL,1,'2025-03-14 06:00:08','2025-03-14 06:00:08',1,29,'SPEI',0,0,0,0,'38671656-11b6-49e0-81a4-f6005e3610ac','business_name 2'),('Jaime SAC1',NULL,1,'2025-03-14 06:09:57','2025-03-14 15:38:45',2,30,'DISPERSIONES',1,1,1,0,'5da10983-f4b8-4c91-9c97-fe3e81582ada','Jaime SAC Lunes 27'),('ixmael sapi','727969001000000009',1,'2025-03-14 15:46:17','2025-04-25 22:49:21',3,31,'SPEI',1,1,1,0,'2bc70868-9815-4682-bfce-bb94e0c8881e','ixmael 14032025 1'),('ixmael sapi 2','727969000200000004',1,'2025-03-14 15:50:03','2025-03-14 15:54:43',3,32,'SPEI',1,1,1,0,'3ac346b8-e253-47ff-a9dd-88f6103ade17','ixmael sapi'),('Paycash',NULL,1,'2025-03-14 16:51:39','2025-03-14 16:51:40',1,33,'SPEI',1,0,1,0,'97525c24-7746-4eb7-9059-a3632988cf30','Paycash'),('SofiPay','727969000300000001',1,'2025-03-14 16:51:53','2025-03-14 19:32:23',3,34,'SPEI',1,1,1,0,'b1630d74-c91e-42c0-bf66-d5afa22e23b6','SofiPay'),('Carlos3','727969000500000005',1,'2025-03-19 18:35:47','2025-03-25 15:52:29',3,35,'SPEI',1,1,1,0,'38671656-11b6-49e0-81a4-f6005e3610ac','business_name 3'),('JMTransfer',NULL,1,'2025-03-24 22:07:47','2025-03-24 22:07:48',1,36,'SPEI',1,0,1,0,'51a50379-dbc5-4eef-bb4b-5cacd045c455','JMTransfer'),('TEST SOLUTIONS','727969000400000008',1,'2025-03-24 22:21:26','2025-03-26 16:40:34',2,37,'SPEI',1,1,1,0,'19668204-b987-4ab5-a36a-a146fd684e70','TESTCompany'),('Razon social',NULL,1,'2025-03-26 19:25:28','2025-03-26 19:25:30',1,38,'SPEI',0,0,1,0,'846d2b54-3142-487d-bc9a-cc84a0e1ad39','alejandro'),('Razon social',NULL,1,'2025-03-26 19:31:49','2025-05-09 18:57:04',2,39,'SPEI',1,1,1,0,'a9af2be0-01d1-4594-abab-e5e51a56a755','empresa'),('Razon social',NULL,1,'2025-03-26 19:44:35','2025-05-09 19:40:06',2,40,'SPEI',1,1,1,0,'7c06158d-f8b1-4abc-8c69-51e51905547f','empresa'),('Joaquin test ususarios social',NULL,1,'2025-05-02 16:19:59','2025-05-09 00:26:50',1,41,'DISPERSIONES',1,1,0,0,'2c503c30-934a-4e61-8649-d38ecdaf8f70','Joaquin Test Ususarios'),('Pre demo test Social',NULL,1,'2025-05-02 17:53:46','2025-05-02 18:08:53',2,43,'SPEI',1,1,1,0,'f22d62a7-e1ee-489b-a2ec-d299faf9ecd4','Joaquin pre demo'),('Demo mayo',NULL,1,'2025-05-02 19:19:02','2025-05-02 19:27:06',2,44,'SPEI',1,1,1,0,'66a8e085-9c49-47d0-a776-251504e683e5','Joaquin Demo Mayo'),('Joaquin Empresa','727969006300000005',1,'2025-05-14 13:36:51','2025-05-15 14:17:45',3,45,'SPEI',1,1,1,0,'20bd6974-e145-47d7-b02e-93dac0625c79','Joaquin'),('Alexo',NULL,1,'2025-05-28 00:11:04','2025-05-28 00:12:49',2,46,'SPEI',1,1,1,0,'80b4c44b-3c7c-4702-aff9-fa42da8379d8','Alexo'),('Razon social',NULL,1,'2025-06-06 18:58:15','2025-06-06 18:58:16',1,47,'SPEI',1,0,0,0,'9e0af339-d169-4af7-b849-6057d09bd272','empresa'),('Razon social',NULL,1,'2025-06-06 19:09:28','2025-06-06 19:09:29',1,48,'SPEI',1,0,0,0,'c5576dd1-2162-46cf-856a-be813489c877','empresa'),('Joaquin test 2 api','727969010600000005',1,'2025-06-18 16:43:58','2025-06-19 18:52:54',3,49,'SPEI',1,1,1,0,'5c120a57-894b-4bab-b724-c6cdb053207f','joaquin31'),('ixmael sa de cv','727969010500000008',1,'2025-06-18 16:58:53','2025-06-18 23:57:16',3,50,'SPEI',1,1,1,0,'556d54a1-9c1e-448f-bf71-d224c58ffd6b','ixmael sa de cv'),('ixmael sapi',NULL,1,'2025-06-19 18:54:10','2025-07-02 16:07:41',2,51,'SPEI',1,1,1,0,'01c8754f-2ffe-4eb6-a475-a93e436f3d06','ixmael sapi'),('Joaquin test final','727969011100000009',1,'2025-06-24 14:55:09','2025-06-24 14:58:27',3,52,'SPEI',1,1,1,0,'07d8f128-8312-474e-a054-fa84fa155bdc','joaquin final test'),('Test',NULL,1,'2025-07-03 23:00:01','2025-07-03 23:01:23',2,53,'SPEI',1,1,1,0,'7df86874-7038-40ff-85a7-43e5cb67656e','Test preview'),('Joaquin test',NULL,1,'2025-07-04 16:11:57','2025-07-04 16:13:13',2,54,'SPEI',1,1,1,0,'6d0be167-3d40-4791-b11c-9c5dedbc8329','joaquin');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comision`
--

DROP TABLE IF EXISTS `Comision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comision` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CuotaMinimaMensual` decimal(18,6) NOT NULL,
  `CuotaInfraestructuraUDI` int NOT NULL,
  `CuotaInfraestructuraUDIMoneda` decimal(18,6) NOT NULL,
  `CostoPorUsuarioAdicional` int NOT NULL,
  `CostoPorUsuarioAdicionalMoneda` decimal(18,6) NOT NULL,
  `IdUserGuarda` bigint NOT NULL,
  `IdUserActualiza` bigint NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Comision_IdUserActualiza` (`IdUserActualiza`),
  KEY `IX_Comision_IdUserGuarda` (`IdUserGuarda`),
  CONSTRAINT `FK_Comision_Users_IdUserActualiza` FOREIGN KEY (`IdUserActualiza`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_Comision_Users_IdUserGuarda` FOREIGN KEY (`IdUserGuarda`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comision`
--

LOCK TABLES `Comision` WRITE;
/*!40000 ALTER TABLE `Comision` DISABLE KEYS */;
INSERT INTO `Comision` VALUES (45,1750.000000,106,891.121436,16,134.508896,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44');
/*!40000 ALTER TABLE `Comision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComisionCliente`
--

DROP TABLE IF EXISTS `ComisionCliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ComisionCliente` (
  `IdComisionCliente` int NOT NULL AUTO_INCREMENT,
  `CuotaMinimaMensual` decimal(18,6) NOT NULL,
  `CuotaInfraestructuraUDI` int NOT NULL,
  `CuotaInfraestructuraUDIMoneda` decimal(18,6) NOT NULL,
  `CostoPorUsuarioAdicional` int NOT NULL,
  `CostoPorUsuarioAdicionalMoneda` decimal(18,6) NOT NULL,
  `ClienteId` bigint NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdComisionCliente`),
  UNIQUE KEY `UQ_ComisionCliente_ClienteId` (`ClienteId`),
  CONSTRAINT `FK_ComisionCliente_Cliente` FOREIGN KEY (`ClienteId`) REFERENCES `Cliente` (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComisionCliente`
--

LOCK TABLES `ComisionCliente` WRITE;
/*!40000 ALTER TABLE `ComisionCliente` DISABLE KEYS */;
INSERT INTO `ComisionCliente` VALUES (9,2575.000000,105,882.138705,10,84.013210,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(10,2575.000000,105,882.138705,10,84.013210,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(11,3000.000000,110,924.748660,25,210.170150,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(12,3000.000000,110,924.748660,25,210.170150,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(13,3000.000000,110,924.748660,25,210.170150,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(14,3000.000000,110,924.748660,25,210.170150,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(15,3000.000000,110,924.748660,25,210.170150,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(16,3000.000000,110,924.748660,25,210.170150,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(17,3000.000000,110,924.748660,25,210.170150,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(18,2500.000000,105,882.714630,15,126.102090,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(19,2500.000000,105,882.714630,15,126.102090,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(20,2500.000000,105,882.714630,15,126.102090,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(21,2500.000000,105,882.714630,15,126.102090,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(23,2500.000000,105,882.714630,15,126.102090,41,'2025-05-09 00:26:50','2025-05-09 00:26:50'),(24,2500.000000,105,882.714630,15,126.102090,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(25,2500.000000,105,882.714630,15,126.102090,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(26,2500.000000,105,882.714630,15,126.102090,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(27,2500.000000,105,882.714630,15,126.102090,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(28,1750.000000,106,891.121436,16,134.508896,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(29,1750.000000,106,891.121436,16,134.508896,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(30,1750.000000,106,891.121436,16,134.508896,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(31,1750.000000,106,891.121436,16,134.508896,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(32,1750.000000,106,891.121436,16,134.508896,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(33,1750.000000,106,891.121436,16,134.508896,54,'2025-07-04 16:13:13','2025-07-04 16:13:13');
/*!40000 ALTER TABLE `ComisionCliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Configuraciones`
--

DROP TABLE IF EXISTS `Configuraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Configuraciones` (
  `IdConfiguracion` bigint unsigned NOT NULL AUTO_INCREMENT,
  `NombreServicio` varchar(255) DEFAULT NULL,
  `TipoServicio` varchar(100) DEFAULT NULL,
  `ClaveServicio` varchar(255) NOT NULL,
  `NombreValorPrincipal` varchar(255) NOT NULL,
  `ValorPrincipal` varchar(255) NOT NULL,
  `Url` varchar(255) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `bActivo` tinyint(1) DEFAULT '1',
  `dFecRegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `dFecMovimiento` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdConfiguracion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Configuraciones`
--

LOCK TABLES `Configuraciones` WRITE;
/*!40000 ALTER TABLE `Configuraciones` DISABLE KEYS */;
INSERT INTO `Configuraciones` VALUES (1,'S3','Documentos','N/A','BucketName','onboarding-tdplus','N/A','us-east-1',1,'2025-03-24 16:18:16','2025-03-24 17:25:58');
/*!40000 ALTER TABLE `Configuraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatosGenerales`
--

DROP TABLE IF EXISTS `DatosGenerales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DatosGenerales` (
  `IdDatosGenerales` bigint NOT NULL AUTO_INCREMENT,
  `RazonSocial` varchar(255) DEFAULT NULL,
  `NombreComercial` varchar(255) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `CorreoElectronico` varchar(100) DEFAULT NULL,
  `RFC` varchar(100) DEFAULT NULL,
  `ClienteId` bigint NOT NULL,
  `DireccionId` bigint NOT NULL,
  `DepositosMensualesEstimados` varchar(100) NOT NULL,
  `RetirosMensualesEstimados` varchar(100) NOT NULL,
  `TransaccionesMensualesEstimadas` varchar(100) NOT NULL,
  PRIMARY KEY (`IdDatosGenerales`),
  KEY `fk_DatosGenerales_Cliente1_idx` (`ClienteId`),
  KEY `fk_DatosGenerales_Direccion1_idx` (`DireccionId`),
  CONSTRAINT `fk_DatosGenerales_Cliente1` FOREIGN KEY (`ClienteId`) REFERENCES `Cliente` (`IdCliente`),
  CONSTRAINT `fk_DatosGenerales_Direccion1` FOREIGN KEY (`DireccionId`) REFERENCES `Direccion` (`IdDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosGenerales`
--

LOCK TABLES `DatosGenerales` WRITE;
/*!40000 ALTER TABLE `DatosGenerales` DISABLE KEYS */;
INSERT INTO `DatosGenerales` VALUES (1,'R1','N1','T1','C1','R1',1,1,'','',''),(2,'RazonSocial1','NombreComercial1','55768555','plopez@transferdirecto.com','AX12DSAS2',2,1,'','',''),(5,'Raz Soc 2','Nom Com 2','77262662','correo@dominio.com','AXX123OBC',4,1,'','',''),(6,'ixmael sa de cv','ixmael','5555555555','iramos@transferdirecto.com','AAAA000101XXX',22,2,'','',''),(9,'tester','tester','5555555555','test@test.com','LOCR920702QAA',26,5,'','',''),(10,'ixmael sa de cv','ixmael','5555555555','iramos@transferdirecto.com','AAAA000101XXX',27,6,'','',''),(11,'Jaime SAC1','Jaime SAC2','9879879873','demo@demo.pe','GARC850101ABC',30,7,'','',''),(12,'ixmael sapi','ixmael','5555555555','iramos+14032025-1@transferdirecto.com','RAMI000101ABC',31,8,'','',''),(13,'ixmael sapi','ixmael','5555555555','iramos+14032025-2@transferdirecto.com','RAMI000101BCD',32,9,'','',''),(14,'Paycash','Paycash','5555555555','iramos+14032025-3@transferdirecto.com','PAY000101ABC',33,10,'','',''),(15,'SofiPay','SofiPay','5555555555','iramos+14032025-4@transferdirecto.com','SOF000101ABC',34,11,'','',''),(16,'ixmael sa de cv','ixmael','5555555555','iramos@transferdirecto.com','AAAA000101XXX',35,12,'','',''),(17,'JMTransfer','JMTransfer','8122222222','jmartinez@transferdirecto.com','JMTR250303H07',36,13,'','',''),(18,'TEST SOLUTIONS','TEST SOLUTIONS','3313456789','jsalinas@transferdirecto.com','OSO1234567A1',37,14,'','',''),(19,'Razon social','EmpresaAle','1111111111','amorales@redefectiva.com','CUPU800825569',38,15,'','',''),(20,'Razon social','EmpresaAle','1111111111','amorales@redefectiva.com','CUPU800825569',39,16,'','',''),(21,'Razon social','EmpresaAle','1111111111','amorales@redefectiva.com','CUPU800825569',40,17,'','',''),(23,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',43,26,'0 - 500k USD','500k - 1M USD','21 - 30'),(24,'Demo mayo','Demo mayo comercial','2222222222','jnievas@transferdirecto.com','AAAA000101ABC',44,27,'0 - 500k USD','500k - 1M USD','11 - 20'),(25,'Joaquin Empresa','Microsoft','2222222222','jnievas+25@transferdirecto.com','AAAA000101ABC',45,28,'10 MDP – 20 MDP','20 MDP – 100 MDP','Más de 1,000,001'),(26,'Alexo','Alexo','7771933089','alhernandez@transferdirecto.com','HERA97041387A',46,29,'10 MDP – 20 MDP','0-10 MDP','1,001 – 100,000'),(38,'Joaquin test 2 api','joaquin test 2 api','5555555555','jnievas@transferdirecto.com','mhtr93041179a',49,47,'10 MDP – 20 MDP','20 MDP – 100 MDP','1,001 – 100,000'),(39,'ixmael sa de cv','ixmael','5555555555','iramos@transferdirecto.com','AAAA010101AAA',50,48,'20 MDP – 100 MDP','100 MDP – 200 MDP','500,001- 1,000,000'),(40,'ixmael sapi','ixmael','5555555555','iramos+07052025-1@transferdirecto.com','AAAA010101ABC',51,49,'20 MDP – 100 MDP','100 MDP – 200 MDP','500,001- 1,000,000'),(41,'Joaquin test final','Joaquin test final comercial','5555555555','jnievas@transferdirecto.com','PEGJ900101H12',52,50,'10 MDP – 20 MDP','20 MDP – 100 MDP','500,001- 1,000,000'),(42,'Test Nuevo Usuario','Con Rick','3462543355','jnievas@transferdirecto.com','RULA850615M87',53,51,'10 MDP – 20 MDP','10 MDP – 20 MDP','1,001 – 100,000'),(43,'Joaquin test','Joaquin test 40','4444444444','jnievas@transferdirecto.com','SDS0001018J2',54,52,'10 MDP – 20 MDP','100 MDP – 200 MDP','100,001 – 500,000');
/*!40000 ALTER TABLE `DatosGenerales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatosGenerales_Backup`
--

DROP TABLE IF EXISTS `DatosGenerales_Backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DatosGenerales_Backup` (
  `IdDatosGenerales` bigint NOT NULL DEFAULT '0',
  `RazonSocial` varchar(255) DEFAULT NULL,
  `NombreComercial` varchar(255) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `CorreoElectronico` varchar(100) DEFAULT NULL,
  `RFC` varchar(100) DEFAULT NULL,
  `ClienteId` bigint NOT NULL,
  `DireccionId` bigint NOT NULL,
  `DepositosMensualesEstimados` varchar(100) NOT NULL,
  `RetirosMensualesEstimados` varchar(100) NOT NULL,
  `TransaccionesMensualesEstimadas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosGenerales_Backup`
--

LOCK TABLES `DatosGenerales_Backup` WRITE;
/*!40000 ALTER TABLE `DatosGenerales_Backup` DISABLE KEYS */;
INSERT INTO `DatosGenerales_Backup` VALUES (1,'R1','N1','T1','C1','R1',1,1,'','',''),(2,'RazonSocial1','NombreComercial1','55768555','plopez@transferdirecto.com','AX12DSAS2',2,1,'','',''),(5,'Raz Soc 2','Nom Com 2','77262662','correo@dominio.com','AXX123OBC',4,1,'','',''),(6,'ixmael sa de cv','ixmael','5555555555','iramos@transferdirecto.com','AAAA000101XXX',22,2,'','',''),(9,'tester','tester','5555555555','test@test.com','LOCR920702QAA',26,5,'','',''),(10,'ixmael sa de cv','ixmael','5555555555','iramos@transferdirecto.com','AAAA000101XXX',27,6,'','',''),(11,'Jaime SAC1','Jaime SAC2','9879879873','demo@demo.pe','GARC850101ABC',30,7,'','',''),(12,'ixmael sapi','ixmael','5555555555','iramos+14032025-1@transferdirecto.com','RAMI000101ABC',31,8,'','',''),(13,'ixmael sapi','ixmael','5555555555','iramos+14032025-2@transferdirecto.com','RAMI000101BCD',32,9,'','',''),(14,'Paycash','Paycash','5555555555','iramos+14032025-3@transferdirecto.com','PAY000101ABC',33,10,'','',''),(15,'SofiPay','SofiPay','5555555555','iramos+14032025-4@transferdirecto.com','SOF000101ABC',34,11,'','',''),(16,'ixmael sa de cv','ixmael','5555555555','iramos@transferdirecto.com','AAAA000101XXX',35,12,'','',''),(17,'JMTransfer','JMTransfer','8122222222','jmartinez@transferdirecto.com','JMTR250303H07',36,13,'','',''),(18,'TEST SOLUTIONS','TEST SOLUTIONS','3313456789','jsalinas@transferdirecto.com','OSO1234567A1',37,14,'','',''),(19,'Razon social','EmpresaAle','1111111111','amorales@redefectiva.com','CUPU800825569',38,15,'','',''),(20,'Razon social','EmpresaAle','1111111111','amorales@redefectiva.com','CUPU800825569',39,16,'','',''),(21,'Razon social','EmpresaAle','1111111111','amorales@redefectiva.com','CUPU800825569',40,17,'','',''),(23,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',43,26,'0 - 500k USD','500k - 1M USD','21 - 30'),(24,'Demo mayo','Demo mayo comercial','2222222222','jnievas@transferdirecto.com','AAAA000101ABC',44,27,'0 - 500k USD','500k - 1M USD','11 - 20'),(25,'Joaquin Empresa','Microsoft','2222222222','jnievas+25@transferdirecto.com','AAAA000101ABC',45,28,'10 MDP – 20 MDP','20 MDP – 100 MDP','Más de 1,000,001'),(26,'Alexo','Alexo','7771933089','alhernandez@transferdirecto.com','HERA97041387A',46,29,'10 MDP – 20 MDP','0-10 MDP','1,001 – 100,000'),(27,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,34,'v1','v2','v3'),(28,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,35,'v1','v2','v3'),(29,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,36,'v1','v2','v3'),(30,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,37,'v1','v2','v3'),(31,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,38,'v1','v2','v3'),(32,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,39,'v1','v2','v3'),(33,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,40,'v1','v2','v3'),(34,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,41,'v1','v2','v3'),(35,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,42,'v1','v2','v3'),(36,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,43,'v1','v2','v3'),(37,'Pre demo test Social','Pre demo test Comercial','1111111111','jnievas@transferdirecto.com','AAAA000101ABC',1,44,'v1','v2','v3'),(38,'Joaquin test 2 api','joaquin test 2 api','5555555555','jnievas@transferdirecto.com','mhtr93041179a',49,47,'10 MDP – 20 MDP','20 MDP – 100 MDP','1,001 – 100,000'),(39,'ixmael sa de cv','ixmael','5555555555','iramos@transferdirecto.com','AAAA010101AAA',50,48,'20 MDP – 100 MDP','100 MDP – 200 MDP','500,001- 1,000,000');
/*!40000 ALTER TABLE `DatosGenerales_Backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Direccion`
--

DROP TABLE IF EXISTS `Direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Direccion` (
  `IdDireccion` bigint NOT NULL AUTO_INCREMENT,
  `DireccionFiscal` varchar(250) DEFAULT NULL,
  `sNumExterior` varchar(45) DEFAULT NULL,
  `sNumInterior` varchar(45) DEFAULT NULL,
  `nCodigoPostal` int DEFAULT NULL,
  `EstadoMexicanoNombre` varchar(150) DEFAULT NULL,
  `ColoniaMexicanaNombre` varchar(150) DEFAULT NULL,
  `MunicipioMexicanoNombre` varchar(150) DEFAULT NULL,
  `Pais` varchar(100) DEFAULT NULL,
  `CiudadNombre` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`IdDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Direccion`
--

LOCK TABLES `Direccion` WRITE;
/*!40000 ALTER TABLE `Direccion` DISABLE KEYS */;
INSERT INTO `Direccion` VALUES (1,'Dir Fis 1','Nom Ext 1','Num Int 1',8001,'Esta 1','Col 1','Muni 1','México','Ciudad'),(2,'Aguascalientess','9bis','',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(3,'Su casa','232332','*****',27000,'Coahuila de Zaragoza','Jardines Reforma','Torreón','México',NULL),(4,'Su casa','232332','*****',27000,'Coahuila de Zaragoza','Jardines Reforma','Torreón','México',NULL),(5,'test','1','',29230,'Chiapas','Guadalupe','San Cristóbal de las Casas','México',NULL),(6,'Aguascalientess','9bis','',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(7,'Su casa','232332','*****',27000,'Coahuila de Zaragoza','Jardines Reforma','Torreón','México',NULL),(8,'Aguascalientes','9bis','',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(9,'Aguascalientes','9bis','',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(10,'Aguascalientes','9bis','',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(11,'Aguascalientes','9bis','',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(12,'Aguascalientess','9bis','',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(13,'Mina','2356','10000',65100,'Nuevo León','Mina','Mina','México',NULL),(14,'Test Primavera','1122','11',44520,'Jalisco','Jardines del Bosque Centro','Guadalajara','México',NULL),(15,'2da calle','01112','10111',64650,'Nuevo León','Colinas del Valle 2 Sector','Monterrey','México',NULL),(16,'2da calle','01112','10111',64650,'Nuevo León','Rincón de Santa María','Monterrey','México',NULL),(17,'2da calle','01112','10111',64650,'Nuevo León','Colinas del Valle 2 Sector','Monterrey','México',NULL),(18,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(19,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(20,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(21,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(22,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(23,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(24,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(25,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(26,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(27,'aguascalientes','222','2',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(28,'Aguascalientes','111','',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(29,'Av. Juarez','12','',6050,'Distrito Federal','Centro (Área 5)','Cuauhtémoc','México',NULL),(30,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(31,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(32,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(33,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(34,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(35,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(36,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(37,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(38,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(39,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(40,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(41,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(42,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(43,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(44,'aguascalientes','111','1',6800,'Distrito Federal','Obrera','Cuauhtémoc','México',NULL),(45,'2da calle','01112','10111',64650,'Nuevo León','Rincón de Santa María','Monterrey','México',NULL),(46,'2da calle','01112','10111',64650,'Nuevo León','Rincón de Santa María','Monterrey','México',NULL),(47,'aguascalientes','222','',10200,'Distrito Federal','San Jerónimo Lídice','La Magdalena Contreras','México','Ciudad de México'),(48,'Aguascalientes','9bis','',6800,'Querétaro de Arteaga','Obrera','Cuauhtémoc','México','Ciudad de México'),(49,'aguascalientes','9bis','',6200,'Distrito Federal','Morelos','Cuauhtémoc','México','Ciudad de México'),(50,'Calle random','666','',20060,'Aguascalientes','Gómez','Aguascalientes','México','Aguascalientes'),(51,'Nombre de calle','333','',20050,'Aguascalientes','Bugambilias','Aguascalientes','México','Aguascalientes'),(52,'Dimmer','555','',20050,'Aguascalientes','Bugambilias','Aguascalientes','México','Aguascalientes');
/*!40000 ALTER TABLE `Direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Documentos`
--

DROP TABLE IF EXISTS `Documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Documentos` (
  `IdDocumento` bigint NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(155) DEFAULT NULL,
  `BucketName` varchar(155) DEFAULT NULL,
  `AWSKey` varchar(155) DEFAULT NULL,
  `Extension` varchar(45) DEFAULT NULL,
  `Validado` tinyint DEFAULT NULL,
  `ClienteId` bigint NOT NULL,
  `TipoDocumentoId` bigint NOT NULL,
  PRIMARY KEY (`IdDocumento`),
  KEY `fk_Documentos_Cliente1_idx` (`ClienteId`),
  KEY `fk_Documentos_TipoDocumentos1_idx` (`TipoDocumentoId`),
  CONSTRAINT `fk_Documentos_Cliente1` FOREIGN KEY (`ClienteId`) REFERENCES `Cliente` (`IdCliente`),
  CONSTRAINT `fk_Documentos_TipoDocumentos1` FOREIGN KEY (`TipoDocumentoId`) REFERENCES `TipoDocumentos` (`IdTipoDocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Documentos`
--

LOCK TABLES `Documentos` WRITE;
/*!40000 ALTER TABLE `Documentos` DISABLE KEYS */;
INSERT INTO `Documentos` VALUES (1,'Dispersion (1).pdf','onboarding-tdplus','55/Dispersion (1).pdf','application/pdf',0,40,1),(2,'Dispersion (1).pdf','onboarding-tdplus','55/Dispersion (1).pdf','application/pdf',0,40,2),(3,'Dispersion (1).pdf','onboarding-tdplus','55/Dispersion (1).pdf','application/pdf',0,40,3),(4,'Dispersion (1).pdf','onboarding-tdplus','55/Dispersion (1).pdf','application/pdf',0,40,4),(5,'Dispersion (1).pdf','onboarding-tdplus','55/Dispersion (1).pdf','application/pdf',0,40,5),(6,'PA 38_40','onboarding-tdplus','40/PA 38.pdf','pdf',0,40,6),(7,'flutter-cheat-sheet_37','onboarding-tdplus','37/flutter-cheat-sheet.pdf','pdf',0,37,6),(8,'Diagrama Prevencion 18 _10','onboarding-tdplus','10/Diagrama Prevencion 18 .pdf','pdf',0,10,6),(9,'PA 38_31','onboarding-tdplus','31/PA 38.pdf','pdf',0,31,6),(10,'PA 38.pdf','onboarding-tdplus','91/PA 38.pdf','application/pdf',0,41,1),(11,'PA 38.pdf','onboarding-tdplus','91/PA 38.pdf','application/pdf',0,41,2),(12,'PA 38.pdf','onboarding-tdplus','91/PA 38.pdf','application/pdf',0,41,3),(13,'PA 38.pdf','onboarding-tdplus','91/PA 38.pdf','application/pdf',0,41,4),(14,'PA 38.pdf','onboarding-tdplus','91/PA 38.pdf','application/pdf',0,41,5),(20,'PA 38.pdf','onboarding-tdplus','93/PA 38.pdf','application/pdf',0,43,1),(21,'PA 38.pdf','onboarding-tdplus','93/PA 38.pdf','application/pdf',0,43,2),(22,'PA 38.pdf','onboarding-tdplus','93/PA 38.pdf','application/pdf',0,43,3),(23,'PA 38.pdf','onboarding-tdplus','93/PA 38.pdf','application/pdf',0,43,4),(24,'PA 38.pdf','onboarding-tdplus','93/PA 38.pdf','application/pdf',0,43,5),(25,'PA 38_43','onboarding-tdplus','43/PA 38.pdf','pdf',0,43,6),(26,'PA 38.pdf','onboarding-tdplus','94/PA 38.pdf','application/pdf',0,44,1),(27,'PA 38.pdf','onboarding-tdplus','94/PA 38.pdf','application/pdf',0,44,2),(28,'PA 38.pdf','onboarding-tdplus','94/PA 38.pdf','application/pdf',0,44,3),(29,'PA 38.pdf','onboarding-tdplus','94/PA 38.pdf','application/pdf',0,44,4),(30,'PA 38.pdf','onboarding-tdplus','94/PA 38.pdf','application/pdf',0,44,5),(31,'PA 38_44','onboarding-tdplus','44/PA 38.pdf','pdf',0,44,6),(32,'137_1.pdf','onboarding-tdplus','137/PA 38.pdf','application/pdf',0,45,1),(33,'137_2.pdf','onboarding-tdplus','137/PA 38.pdf','application/pdf',0,45,2),(34,'137_3.pdf','onboarding-tdplus','137/PA 38.pdf','application/pdf',0,45,3),(35,'137_5.pdf','onboarding-tdplus','137/PA 38.pdf','application/pdf',0,45,5),(36,'137_4.pdf','onboarding-tdplus','137/PA 38.pdf','application/pdf',0,45,4),(37,'PA 38_45','onboarding-tdplus','45/PA 38.pdf','pdf',0,45,6),(38,'138_1.pdf','onboarding-tdplus','138/cedula-fiscal.pdf','application/pdf',0,46,1),(39,'138_4.pdf','onboarding-tdplus','138/Identificacion.pdf','application/pdf',0,46,4),(40,'138_2.pdf','onboarding-tdplus','138/Acta constitutiva.pdf','application/pdf',0,46,2),(41,'138_3.pdf','onboarding-tdplus','138/Poder notarial.pdf','application/pdf',0,46,3),(42,'138_5.pdf','onboarding-tdplus','138/situacion-constancia-fiscal-ejemplo.pdf','application/pdf',0,46,5),(44,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(45,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(46,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(47,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(48,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(49,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(50,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(51,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(52,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(53,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(54,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(55,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(56,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(57,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(58,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(59,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(60,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(61,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(62,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(63,'RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','onboarding-tdplus','43/RECARGA DE EXTINTORES RE31 - EDIFICIO LOS NOGALES (1).pdf','application/pdf',0,1,1),(64,'Dispersion (1).pdf','onboarding-tdplus','57/Dispersion (1).pdf','application/pdf',0,47,1),(65,'Dispersion (1).pdf','onboarding-tdplus','57/Dispersion (1).pdf','application/pdf',0,47,2),(66,'Dispersion (1).pdf','onboarding-tdplus','57/Dispersion (1).pdf','application/pdf',0,47,3),(67,'Dispersion (1).pdf','onboarding-tdplus','57/Dispersion (1).pdf','application/pdf',0,47,4),(68,'Dispersion (1).pdf','onboarding-tdplus','57/Dispersion (1).pdf','application/pdf',0,47,5),(69,'Dispersion (1).pdf','onboarding-tdplus','59/Dispersion (1).pdf','application/pdf',0,48,1),(70,'Dispersion (1).pdf','onboarding-tdplus','59/Dispersion (1).pdf','application/pdf',0,48,2),(71,'Dispersion (1).pdf','onboarding-tdplus','59/Dispersion (1).pdf','application/pdf',0,48,3),(72,'Dispersion (1).pdf','onboarding-tdplus','59/Dispersion (1).pdf','application/pdf',0,48,4),(73,'Dispersion (1).pdf','onboarding-tdplus','59/Dispersion (1).pdf','application/pdf',0,48,5),(74,'152_1.pdf','onboarding-tdplus','152/PA 38.pdf','application/pdf',0,49,1),(75,'152_2.pdf','onboarding-tdplus','152/PA 38.pdf','application/pdf',0,49,2),(76,'152_3.pdf','onboarding-tdplus','152/PA 38.pdf','application/pdf',0,49,3),(77,'152_5.pdf','onboarding-tdplus','152/PA 38.pdf','application/pdf',0,49,5),(78,'152_4.pdf','onboarding-tdplus','152/PA 38.pdf','application/pdf',0,49,4),(79,'136_1.pdf','onboarding-tdplus','136/sample.pdf','application/pdf',0,50,1),(80,'136_2.pdf','onboarding-tdplus','136/sample.pdf','application/pdf',0,50,2),(81,'136_3.pdf','onboarding-tdplus','136/Usuarios-Onboarding-EliminarDocumento.webp','application/pdf',0,50,3),(82,'136_4.pdf','onboarding-tdplus','136/sample.pdf','application/pdf',0,50,4),(83,'136_5.pdf','onboarding-tdplus','136/sample.pdf','application/pdf',0,50,5),(84,'PA 38_50','onboarding-tdplus','50/PA 38.pdf','pdf',0,50,6),(85,'PA 38_49','onboarding-tdplus','49/PA 38.pdf','pdf',0,49,6),(86,'127_1.pdf','onboarding-tdplus','127/sample.pdf','application/pdf',0,51,1),(87,'127_2.pdf','onboarding-tdplus','127/sample.pdf','application/pdf',0,51,2),(88,'127_2.pdf','onboarding-tdplus','127/sample.pdf','application/pdf',0,51,2),(89,'127_3.pdf','onboarding-tdplus','127/sample.pdf','application/pdf',0,51,3),(90,'127_3.pdf','onboarding-tdplus','127/sample.pdf','application/pdf',0,51,3),(91,'127_5.pdf','onboarding-tdplus','127/sample.pdf','application/pdf',0,51,5),(92,'127_5.pdf','onboarding-tdplus','127/sample.pdf','application/pdf',0,51,5),(93,'127_4.pdf','onboarding-tdplus','127/sample.pdf','application/pdf',0,51,4),(94,'153_1.pdf','onboarding-tdplus','153/PA 38.pdf','application/pdf',0,52,1),(95,'153_2.pdf','onboarding-tdplus','153/PA 38.pdf','application/pdf',0,52,2),(96,'153_3.pdf','onboarding-tdplus','153/PA 38.pdf','application/pdf',0,52,3),(97,'153_5.pdf','onboarding-tdplus','153/PA 38.pdf','application/pdf',0,52,5),(98,'153_4.pdf','onboarding-tdplus','153/PA 38.pdf','application/pdf',0,52,4),(99,'PA 38_52','onboarding-tdplus','52/PA 38.pdf','pdf',0,52,6),(100,'PA 38_51','onboarding-tdplus','51/PA 38.pdf','pdf',0,51,6),(101,'154_1.pdf','onboarding-tdplus','154/PA 38.pdf','application/pdf',0,53,1),(102,'154_1.pdf','onboarding-tdplus','154/PA 38.pdf','application/pdf',0,53,1),(103,'154_2.pdf','onboarding-tdplus','154/PA 38.pdf','application/pdf',0,53,2),(104,'154_3.pdf','onboarding-tdplus','154/PA 38.pdf','application/pdf',0,53,3),(105,'154_3.pdf','onboarding-tdplus','154/PA 38.pdf','application/pdf',0,53,3),(106,'154_5.pdf','onboarding-tdplus','154/PA 38.pdf','application/pdf',0,53,5),(107,'154_4.pdf','onboarding-tdplus','154/PA 38.pdf','application/pdf',0,53,4),(108,'154_4.pdf','onboarding-tdplus','154/PA 38.pdf','application/pdf',0,53,4),(109,'PA 38_53','onboarding-tdplus','53/PA 38.pdf','pdf',0,53,6),(110,'155_1.pdf','onboarding-tdplus','155/AP72T03GH-HF.PDF','application/pdf',0,54,1),(111,'155_2.pdf','onboarding-tdplus','155/AP72T03GH-HF.PDF','application/pdf',0,54,2),(112,'155_3.pdf','onboarding-tdplus','155/AP72T03GH-HF.PDF','application/pdf',0,54,3),(113,'155_5.pdf','onboarding-tdplus','155/AP72T03GH-HF.PDF','application/pdf',0,54,5),(114,'155_4.pdf','onboarding-tdplus','155/AP72T03GH-HF.PDF','application/pdf',0,54,4),(115,'AP72T03GH-HF_54','onboarding-tdplus','54/AP72T03GH-HF.PDF','PDF',0,54,6);
/*!40000 ALTER TABLE `Documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EsquemaCobro`
--

DROP TABLE IF EXISTS `EsquemaCobro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EsquemaCobro` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `ComercialCliente` varchar(255) NOT NULL,
  `TipoEsquema` varchar(255) NOT NULL,
  `IdRegimenFiscal` bigint NOT NULL,
  `IdCFDI` bigint NOT NULL,
  `ClienteId` bigint NOT NULL,
  `ClaveUnidadSatId` int DEFAULT NULL,
  `FormaPagoSatId` int NOT NULL,
  `MetodoPagoSatId` int NOT NULL,
  `ProductoServicioSatId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_EsquemaCobro_RegimenFiscal` (`IdRegimenFiscal`),
  KEY `FK_EsquemaCobro_CFDI` (`IdCFDI`),
  KEY `fk_EsquemaCobro_Cliente1_idx` (`ClienteId`),
  KEY `fk_EsquemaCobro_ClaveUnidadSat1_idx` (`ClaveUnidadSatId`),
  KEY `fk_EsquemaCobro_FormaPagoSat1_idx` (`FormaPagoSatId`),
  KEY `fk_EsquemaCobro_MetodoPagoSat1_idx` (`MetodoPagoSatId`),
  KEY `fk_EsquemaCobro_ProductoServicioSat1_idx` (`ProductoServicioSatId`),
  CONSTRAINT `FK_EsquemaCobro_CFDI` FOREIGN KEY (`IdCFDI`) REFERENCES `CFDI` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `fk_EsquemaCobro_Cliente1` FOREIGN KEY (`ClienteId`) REFERENCES `Cliente` (`IdCliente`),
  CONSTRAINT `fk_EsquemaCobro_FormaPagoSat1` FOREIGN KEY (`FormaPagoSatId`) REFERENCES `FormaPagoSat` (`idFormaPagoSat`),
  CONSTRAINT `fk_EsquemaCobro_MetodoPagoSat1` FOREIGN KEY (`MetodoPagoSatId`) REFERENCES `MetodoPagoSat` (`IdMetodoPagoSat`),
  CONSTRAINT `FK_EsquemaCobro_RegimenFiscal` FOREIGN KEY (`IdRegimenFiscal`) REFERENCES `RegimenFiscal` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EsquemaCobro`
--

LOCK TABLES `EsquemaCobro` WRITE;
/*!40000 ALTER TABLE `EsquemaCobro` DISABLE KEYS */;
INSERT INTO `EsquemaCobro` VALUES (49,'Comercial','tradicional',1,1,2,NULL,0,0,NULL),(50,'Comercial Cliente','tradicional',1,1,1,NULL,0,0,NULL),(51,'Comercial Cliente','tradicional',1,1,30,NULL,0,0,NULL),(52,'Test SAPI 1 Isma','tradicional',1,1,32,NULL,0,0,NULL),(53,'sdsd','tradicional',1,1,31,NULL,0,0,NULL),(54,'Comercial Cliente','tradicional',1,1,3,NULL,0,0,NULL),(55,'Prueba','tradicional',6,6,4,NULL,0,0,NULL),(56,'Prueba','tradicional',3,4,11,NULL,0,0,NULL),(57,'TEST','tradicional',1,1,10,NULL,0,0,NULL),(58,'Jonatthan ','tradicional',1,1,34,NULL,0,0,NULL),(59,'Comercial','Tradicional',1,1,35,NULL,0,0,NULL),(60,'Joni','tradicional',6,7,37,NULL,0,0,NULL),(61,'Pablo','tradicional',3,3,43,NULL,0,0,NULL),(66,'Comercial 01 Test','Comercial 01 Test',3,2,44,0,3,1,0),(68,'Joaquin','tradicional',1,5,41,0,7,1,0),(69,'Joaquin','tradicional',3,3,39,0,12,1,0),(70,'Joaquin','tradicional',2,3,40,0,15,1,0),(71,'Joaquin BO','tradicional',1,2,45,0,8,2,0),(72,'Alexo','tradicional',1,3,46,0,3,1,0),(73,'Joaquin','tradicional',1,3,50,0,8,1,0),(74,'Joaquin','tradicional',2,6,49,0,8,1,0),(75,'Joaquin','tradicional',4,5,52,0,10,1,0),(76,'Joaquin','tradicional',1,2,51,0,8,1,0),(77,'Joaquin','tradicional',1,5,53,0,7,1,0),(78,'Joaquin BO','tradicional',1,2,54,0,8,1,0);
/*!40000 ALTER TABLE `EsquemaCobro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EstatusCliente`
--

DROP TABLE IF EXISTS `EstatusCliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstatusCliente` (
  `IdEstatusCliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Clave` int DEFAULT NULL,
  PRIMARY KEY (`IdEstatusCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstatusCliente`
--

LOCK TABLES `EstatusCliente` WRITE;
/*!40000 ALTER TABLE `EstatusCliente` DISABLE KEYS */;
INSERT INTO `EstatusCliente` VALUES (1,'Expediente Incompleto',1),(2,'Expediente Completo',2),(3,'Activo',3),(4,'Inactivo',4);
/*!40000 ALTER TABLE `EstatusCliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FormaPagoSat`
--

DROP TABLE IF EXISTS `FormaPagoSat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FormaPagoSat` (
  `idFormaPagoSat` int NOT NULL AUTO_INCREMENT,
  `sFormaPago` varchar(150) DEFAULT NULL,
  `sDescripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idFormaPagoSat`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FormaPagoSat`
--

LOCK TABLES `FormaPagoSat` WRITE;
/*!40000 ALTER TABLE `FormaPagoSat` DISABLE KEYS */;
INSERT INTO `FormaPagoSat` VALUES (1,'01','Efectivo'),(2,'02','Cheque nominativo'),(3,'03','Transferencia electrónica de fondos'),(4,'04','Tarjeta de crédito'),(5,'05','Monedero electrónico'),(6,'06','Dinero electrónico'),(7,'08','Vales de despensa'),(8,'12','Dación en pago'),(9,'13','Pago por subrogación'),(10,'14','Pago por consignación'),(11,'15','Condonación'),(12,'17','Compensación'),(13,'23','Novación'),(14,'24','Confusión'),(15,'25','Remisión de deuda'),(16,'26','Prescripción o caducidad'),(17,'27','A satisfacción del acreedor'),(18,'28','Tarjeta de débito'),(19,'29','Tarjeta de servicios'),(20,'30','Aplicación de anticipos'),(21,'31','Intermediario pagos'),(22,'99','Por definir');
/*!40000 ALTER TABLE `FormaPagoSat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HistoricoComision`
--

DROP TABLE IF EXISTS `HistoricoComision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HistoricoComision` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CuotaMinimaMensual` decimal(18,6) NOT NULL,
  `CuotaInfraestructuraUDI` int NOT NULL,
  `CuotaInfraestructuraUDIMoneda` decimal(18,6) NOT NULL,
  `CostoPorUsuarioAdicional` int NOT NULL,
  `CostoPorUsuarioAdicionalMoneda` decimal(18,6) NOT NULL,
  `CuotaMinimaMensualOld` decimal(18,6) NOT NULL,
  `CuotaInfraestructuraUDIOld` int NOT NULL,
  `CuotaInfraestructuraUDIMonedaOld` decimal(18,6) NOT NULL,
  `CostoPorUsuarioAdicionalOld` int NOT NULL,
  `CostoPorUsuarioAdicionalMonedaOld` decimal(18,6) NOT NULL,
  `IdUserGuarda` bigint NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `IX_HistoricoComision_IdUserGuarda` (`IdUserGuarda`),
  CONSTRAINT `FK_HistoricoComision_Users_IdUserGuarda` FOREIGN KEY (`IdUserGuarda`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistoricoComision`
--

LOCK TABLES `HistoricoComision` WRITE;
/*!40000 ALTER TABLE `HistoricoComision` DISABLE KEYS */;
INSERT INTO `HistoricoComision` VALUES (1,2500.000000,60,504.079260,20,168.026420,1500.000000,50,420.066050,10,84.013210,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(2,2500.000000,60,504.079260,20,168.026420,2500.000000,60,504.079260,20,168.026420,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(3,2575.000000,105,882.138705,10,84.013210,2500.000000,60,504.079260,20,168.026420,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(4,2570.000000,105,882.714630,10,84.068060,2575.000000,105,882.138705,10,84.013210,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(5,3000.000000,110,924.748660,25,210.170150,2570.000000,105,882.714630,10,84.068060,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(6,3000.000000,110,924.748660,25,210.170150,3000.000000,110,924.748660,25,210.170150,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(7,3000.000000,110,924.748660,25,210.170150,3000.000000,110,924.748660,25,210.170150,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(8,2500.000000,105,882.714630,15,126.102090,3000.000000,110,924.748660,25,210.170150,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(9,2500.000000,105,882.714630,15,126.102090,2500.000000,105,882.714630,15,126.102090,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(10,2500.000000,105,882.714630,15,126.102090,2500.000000,105,882.714630,15,126.102090,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(11,2500.000000,105,882.714630,15,126.102090,2500.000000,105,882.714630,15,126.102090,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(12,2501.000000,1051,8835.553106,151,1269.427706,2500.000000,105,882.714630,15,126.102090,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(13,250.000000,105,882.714630,15,126.102090,2501.000000,1051,8835.553106,151,1269.427706,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(14,251.000000,101,849.087406,16,134.508896,250.000000,105,882.714630,15,126.102090,658,'2025-05-23 00:44:53','2025-05-23 00:44:52'),(15,250.000000,105,882.714630,15,126.102090,251.000000,101,849.087406,16,134.508896,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(16,251.000000,106,891.121436,16,134.508896,250.000000,105,882.714630,15,126.102090,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(17,250.000000,105,882.714630,15,126.102090,251.000000,106,891.121436,16,134.508896,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(18,350.000000,150,1261.020900,25,210.170150,250.000000,105,882.714630,15,126.102090,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(19,250.000000,105,882.714630,25,210.170150,350.000000,150,1261.020900,25,210.170150,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(20,250.000000,105,882.714630,15,126.102090,250.000000,105,882.714630,25,210.170150,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(21,250.100000,105,882.714630,15,126.102090,250.000000,105,882.714630,15,126.102090,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(22,250.000000,105,882.714630,15,126.102090,250.100000,105,882.714630,15,126.102090,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(23,250.000000,105,882.714630,15,126.102090,250.000000,105,882.714630,15,126.102090,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(24,2500.000000,105,882.714630,15,126.102090,250.000000,105,882.714630,15,126.102090,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(25,2500.000000,105,882.714630,15,126.102090,2500.000000,105,882.714630,15,126.102090,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(26,2500.000000,105,882.714630,15,126.102090,2500.000000,105,882.714630,15,126.102090,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(27,2501.000000,100,840.680600,16,134.508896,2500.000000,105,882.714630,15,126.102090,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(28,2500.000000,105,882.714630,15,126.102090,2501.000000,100,840.680600,16,134.508896,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(29,2501.000000,106,891.121436,16,134.508896,2500.000000,105,882.714630,15,126.102090,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(30,2500.000000,105,882.714630,15,126.102090,2501.000000,106,891.121436,16,134.508896,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(31,2501.000000,106,891.121436,16,134.508896,2500.000000,105,882.714630,15,126.102090,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(32,2500.000000,105,882.714630,15,126.102090,2501.000000,106,891.121436,16,134.508896,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(33,2500.000000,105,882.714630,15,126.102090,2500.000000,105,882.714630,15,126.102090,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(34,2501.000000,106,891.121436,16,134.508896,2500.000000,105,882.714630,15,126.102090,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(35,2501.000000,106,891.121436,16,134.508896,2501.000000,106,891.121436,16,134.508896,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(36,2500.000000,105,882.714630,15,126.102090,2501.000000,106,891.121436,16,134.508896,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(37,2501.000000,106,891.121436,16,134.508896,2500.000000,105,882.714630,15,126.102090,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(38,2500.000000,105,882.714630,15,126.102090,2501.000000,106,891.121436,16,134.508896,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(39,2501.000000,106,891.121436,16,134.508896,2500.000000,105,882.714630,15,126.102090,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(40,2500.000000,105,882.714630,15,126.102090,2501.000000,106,891.121436,16,134.508896,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(41,2501.000000,106,891.121436,16,134.508896,2500.000000,105,882.714630,15,126.102090,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(42,2500.000000,105,882.714630,15,126.102090,2501.000000,106,891.121436,16,134.508896,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(43,2501.000000,106,891.121436,16,134.508896,2500.000000,105,882.714630,15,126.102090,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(44,1750.000000,106,891.121436,16,134.508896,2501.000000,106,891.121436,16,134.508896,660,'2025-06-09 15:53:43','2025-06-09 15:53:44');
/*!40000 ALTER TABLE `HistoricoComision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HistoricoRangoComision`
--

DROP TABLE IF EXISTS `HistoricoRangoComision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HistoricoRangoComision` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nivel` int NOT NULL,
  `RangoInicial` int NOT NULL,
  `RangoFinal` int NOT NULL,
  `CantidadComisionEnMoneda` decimal(18,6) NOT NULL,
  `NivelOld` int NOT NULL,
  `RangoInicialOld` int NOT NULL,
  `RangoFinalOld` int NOT NULL,
  `CantidadComisionEnMonedaOld` decimal(18,6) NOT NULL,
  `IdUserGuarda` bigint NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `IX_HistoricoRangoComision_IdUserGuarda` (`IdUserGuarda`),
  CONSTRAINT `FK_HistoricoRangoComision_Users_IdUserGuarda` FOREIGN KEY (`IdUserGuarda`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistoricoRangoComision`
--

LOCK TABLES `HistoricoRangoComision` WRITE;
/*!40000 ALTER TABLE `HistoricoRangoComision` DISABLE KEYS */;
INSERT INTO `HistoricoRangoComision` VALUES (1,1,0,1000,1.000000,1,0,1000,12.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(2,2,1001,2000,2.000000,2,1001,2000,23.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(3,3,2001,3000,3.000000,3,2001,3000,34.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(4,4,3001,4000,4.000000,4,3001,4000,45.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(5,5,4001,5000,5.000000,5,4001,5000,56.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(6,6,5001,6000,6.000000,6,5001,6000,67.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(7,7,6001,7000,7.000000,7,6001,7000,78.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(8,8,7001,8000,8.000000,8,7001,8000,89.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(9,9,8001,10000,9.000000,9,8001,10000,100.000000,656,'2025-03-06 17:13:30','2025-03-06 17:13:31'),(10,1,0,1000,1.000000,1,0,1000,1.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(11,2,1001,2000,2.000000,2,1001,2000,2.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(12,3,2001,3000,3.000000,3,2001,3000,3.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(13,4,3001,4000,4.000000,4,3001,4000,4.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(14,5,4001,5000,5.000000,5,4001,5000,5.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(15,6,5001,6000,6.000000,6,5001,6000,6.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(16,7,6001,7000,7.000000,7,6001,7000,7.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(17,8,7001,8000,8.000000,8,7001,8000,8.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(18,9,8001,10000,9.000000,9,8001,10000,9.000000,656,'2025-03-06 17:25:03','2025-03-06 17:25:03'),(19,1,1,1001,10.000000,1,0,1000,1.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(20,2,1002,2000,20.000000,2,1001,2000,2.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(21,3,2001,3000,30.000000,3,2001,3000,3.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(22,4,3001,4000,40.000000,4,3001,4000,4.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(23,5,4001,5000,50.000000,5,4001,5000,5.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(24,6,5001,6000,60.000000,6,5001,6000,6.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(25,7,6001,7000,70.000000,7,6001,7000,7.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(26,8,7001,8000,80.000000,8,7001,8000,8.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(27,9,1,10000,90.000000,9,8001,10000,9.000000,656,'2025-03-06 19:41:49','2025-03-06 19:41:49'),(28,1,1,1001,10.000000,1,1,1001,10.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(29,2,1002,2000,20.000000,2,1002,2000,20.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(30,3,2001,3000,30.000000,3,2001,3000,30.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(31,4,3001,4000,40.000000,4,3001,4000,40.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(32,5,4001,5000,50.000000,5,4001,5000,50.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(33,6,5001,6000,60.000000,6,5001,6000,60.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(34,7,6001,7000,70.000000,7,6001,7000,70.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(35,8,7001,8000,80.000000,8,7001,8000,80.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(36,9,1,10000,90.000000,9,1,10000,90.000000,656,'2025-03-14 00:25:58','2025-03-14 00:25:58'),(37,1,1,1001,10.000000,1,1,1001,10.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(38,2,1002,2000,20.000000,2,1002,2000,20.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(39,3,2001,3000,30.000000,3,2001,3000,30.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(40,4,3001,4000,40.000000,4,3001,4000,40.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(41,5,4001,5000,50.000000,5,4001,5000,50.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(42,6,5001,6000,60.000000,6,5001,6000,60.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(43,7,6001,7000,70.000000,7,6001,7000,70.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(44,8,7001,8000,80.000000,8,7001,8000,80.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(45,9,1,10000,90.000000,9,1,10000,90.000000,656,'2025-03-14 15:04:48','2025-03-14 15:04:48'),(46,1,1,1002,10.000000,1,1,1001,10.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(47,2,1003,2500,20.000000,2,1002,2000,20.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(48,3,2501,3500,30.000000,3,2001,3000,30.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(49,4,3501,4500,40.000000,4,3001,4000,40.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(50,5,4501,5005,50.000000,5,4001,5000,50.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(51,6,5006,6600,60.000000,6,5001,6000,60.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(52,7,6601,7000,70.000000,7,6001,7000,70.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(53,8,7001,8000,80.000000,8,7001,8000,80.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(54,9,1,10000,90.000000,9,1,10000,90.000000,656,'2025-03-14 15:05:55','2025-03-14 15:05:55'),(55,1,1,1002,10.000000,1,1,1002,10.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(56,2,1003,2500,20.000000,2,1003,2500,20.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(57,3,2501,3500,30.000000,3,2501,3500,30.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(58,4,3501,4500,40.000000,4,3501,4500,40.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(59,5,4501,5005,50.000000,5,4501,5005,50.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(60,6,5006,6600,60.000000,6,5006,6600,60.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(61,7,6601,7000,70.000000,7,6601,7000,70.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(62,8,7001,8000,80.000000,8,7001,8000,80.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(63,9,1,10000,90.000000,9,1,10000,90.000000,660,'2025-03-14 16:41:20','2025-03-14 16:41:20'),(64,1,1,1002,15.000000,1,1,1002,10.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(65,2,1003,2500,20.000000,2,1003,2500,20.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(66,3,2501,3500,30.000000,3,2501,3500,30.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(67,4,3501,4500,40.000000,4,3501,4500,40.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(68,5,4501,5005,50.000000,5,4501,5005,50.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(69,6,5006,6600,60.000000,6,5006,6600,60.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(70,7,6601,7000,70.000000,7,6601,7000,70.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(71,8,7001,8000,80.000000,8,7001,8000,80.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(72,9,1,10000,90.000000,9,1,10000,90.000000,656,'2025-03-14 19:23:36','2025-03-14 19:23:37'),(73,1,1,1001,15.000000,1,1,1002,15.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(74,2,1003,2500,20.000000,2,1003,2500,20.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(75,3,2501,3500,30.000000,3,2501,3500,30.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(76,4,3501,4500,40.000000,4,3501,4500,40.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(77,5,4501,5005,50.000000,5,4501,5005,50.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(78,6,5006,6600,60.000000,6,5006,6600,60.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(79,7,6601,7000,70.000000,7,6601,7000,70.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(80,8,7001,8000,80.000000,8,7001,8000,80.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(81,9,1,10000,90.000000,9,1,10000,90.000000,657,'2025-05-23 00:20:58','2025-05-23 00:20:59'),(82,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(83,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(84,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(85,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(86,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(87,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(88,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(89,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(90,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 00:34:02','2025-05-23 00:34:02'),(91,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(92,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(93,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(94,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(95,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(96,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(97,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(98,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(99,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 00:34:28','2025-05-23 00:34:28'),(100,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(101,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(102,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(103,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(104,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(105,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(106,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(107,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(108,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 00:37:32','2025-05-23 00:37:32'),(109,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(110,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(111,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(112,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(113,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(114,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(115,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(116,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(117,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 00:38:13','2025-05-23 00:38:13'),(118,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(119,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(120,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(121,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(122,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(123,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(124,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(125,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(126,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 00:44:53','2025-05-23 00:44:53'),(127,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(128,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(129,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(130,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(131,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(132,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(133,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(134,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(135,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 00:51:05','2025-05-23 00:51:05'),(136,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(137,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(138,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(139,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(140,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(141,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(142,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(143,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(144,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 01:12:14','2025-05-23 01:12:14'),(145,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(146,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(147,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(148,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(149,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(150,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(151,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(152,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(153,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 01:15:40','2025-05-23 01:15:40'),(154,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(155,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(156,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(157,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(158,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(159,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(160,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(161,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(162,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 16:49:22','2025-05-23 16:49:22'),(163,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(164,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(165,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(166,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(167,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(168,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(169,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(170,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(171,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 16:52:16','2025-05-23 16:52:16'),(172,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(173,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(174,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(175,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(176,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(177,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(178,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(179,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(180,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 16:52:56','2025-05-23 16:52:56'),(181,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(182,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(183,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(184,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(185,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(186,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(187,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(188,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(189,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 16:54:49','2025-05-23 16:54:49'),(190,1,1,1001,16.000000,1,1,1001,15.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(191,2,1003,2500,24.000000,2,1003,2500,20.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(192,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(193,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(194,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(195,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(196,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(197,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(198,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 19:35:50','2025-05-23 19:35:50'),(199,1,1,1001,15.000000,1,1,1001,16.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(200,2,1003,2500,20.000000,2,1003,2500,24.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(201,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(202,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(203,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(204,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(205,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(206,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(207,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 19:36:36','2025-05-23 19:36:36'),(208,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(209,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(210,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(211,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(212,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(213,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(214,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(215,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(216,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 19:38:23','2025-05-23 19:38:22'),(217,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(218,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(219,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(220,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(221,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(222,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(223,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(224,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(225,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-05-23 19:38:41','2025-05-23 19:38:41'),(226,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(227,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(228,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(229,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(230,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(231,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(232,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(233,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(234,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-04 23:39:11','2025-06-04 23:39:11'),(235,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(236,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(237,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(238,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(239,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(240,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(241,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(242,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(243,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-04 23:40:09','2025-06-04 23:40:09'),(244,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(245,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(246,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(247,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(248,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(249,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(250,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(251,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(252,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-04 23:40:15','2025-06-04 23:40:15'),(253,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(254,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(255,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(256,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(257,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(258,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(259,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(260,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(261,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 15:51:11','2025-06-05 15:51:11'),(262,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(263,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(264,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(265,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(266,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(267,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(268,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(269,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(270,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 15:52:18','2025-06-05 15:52:18'),(271,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(272,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(273,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(274,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(275,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(276,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(277,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(278,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(279,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 15:59:51','2025-06-05 15:59:51'),(280,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(281,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(282,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(283,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(284,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(285,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(286,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(287,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(288,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:23:05','2025-06-05 16:23:05'),(289,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(290,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(291,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(292,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(293,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(294,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(295,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(296,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(297,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:28:47','2025-06-05 16:28:47'),(298,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(299,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(300,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(301,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(302,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(303,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(304,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(305,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(306,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:29:00','2025-06-05 16:29:00'),(307,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(308,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(309,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(310,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(311,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(312,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(313,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(314,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(315,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:30:54','2025-06-05 16:30:54'),(316,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(317,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(318,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(319,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(320,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(321,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(322,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(323,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(324,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:31:02','2025-06-05 16:31:02'),(325,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(326,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(327,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(328,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(329,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(330,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(331,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(332,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(333,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:31:47','2025-06-05 16:31:47'),(334,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(335,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(336,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(337,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(338,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(339,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(340,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(341,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(342,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:47:24','2025-06-05 16:47:24'),(343,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(344,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(345,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(346,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(347,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(348,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(349,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(350,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(351,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:56:21','2025-06-05 16:56:21'),(352,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(353,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(354,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(355,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(356,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(357,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(358,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(359,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(360,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 16:58:24','2025-06-05 16:58:24'),(361,1,1,1001,15.000000,1,1,1001,15.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(362,2,1003,2500,20.000000,2,1003,2500,20.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(363,3,2501,3500,30.000000,3,2501,3500,30.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(364,4,3501,4500,40.000000,4,3501,4500,40.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(365,5,4501,5005,50.000000,5,4501,5005,50.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(366,6,5006,6600,60.000000,6,5006,6600,60.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(367,7,6601,7000,70.000000,7,6601,7000,70.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(368,8,7001,8000,80.000000,8,7001,8000,80.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(369,9,1,10000,90.000000,9,1,10000,90.000000,658,'2025-06-05 18:19:40','2025-06-05 18:19:40'),(370,1,1,1001,15.000000,1,1,1001,15.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(371,2,1003,2500,20.000000,2,1003,2500,20.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(372,3,2501,3500,30.000000,3,2501,3500,30.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(373,4,3501,4500,40.000000,4,3501,4500,40.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(374,5,4501,5005,50.000000,5,4501,5005,50.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(375,6,5006,6600,60.000000,6,5006,6600,60.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(376,7,6601,7000,70.000000,7,6601,7000,70.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(377,8,7001,8000,80.000000,8,7001,8000,80.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(378,9,1,10000,90.000000,9,1,10000,90.000000,649,'2025-06-06 19:00:47','2025-06-06 19:00:47'),(379,1,1,1001,15.000000,1,1,1001,15.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(380,2,1003,2500,20.000000,2,1003,2500,20.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(381,3,2501,3500,30.000000,3,2501,3500,30.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(382,4,3501,4500,40.000000,4,3501,4500,40.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(383,5,4501,5005,50.000000,5,4501,5005,50.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(384,6,5006,6600,60.000000,6,5006,6600,60.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(385,7,6601,7000,70.000000,7,6601,7000,70.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(386,8,7001,8000,80.000000,8,7001,8000,80.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(387,9,1,10000,90.000000,9,1,10000,90.000000,649,'2025-06-06 19:07:48','2025-06-06 19:07:48'),(388,1,1,1001,15.000000,1,1,1001,15.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(389,2,1003,2500,20.000000,2,1003,2500,20.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(390,3,2501,3500,30.000000,3,2501,3500,30.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(391,4,3501,4500,40.000000,4,3501,4500,40.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(392,5,4501,5005,50.000000,5,4501,5005,50.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(393,6,5006,6600,60.000000,6,5006,6600,60.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(394,7,6601,7000,70.000000,7,6601,7000,70.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(395,8,7001,8000,80.000000,8,7001,8000,80.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(396,9,1,10000,90.000000,9,1,10000,90.000000,660,'2025-06-09 15:53:43','2025-06-09 15:53:44');
/*!40000 ALTER TABLE `HistoricoRangoComision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HistoricoValorUDIBanxico`
--

DROP TABLE IF EXISTS `HistoricoValorUDIBanxico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HistoricoValorUDIBanxico` (
  `IdHistorico` int NOT NULL AUTO_INCREMENT,
  `dFecha` datetime NOT NULL,
  `nValor` decimal(18,6) NOT NULL,
  `Id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`IdHistorico`),
  UNIQUE KEY `IX_HistoricoValorUDIBanxico_dFecha` (`dFecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistoricoValorUDIBanxico`
--

LOCK TABLES `HistoricoValorUDIBanxico` WRITE;
/*!40000 ALTER TABLE `HistoricoValorUDIBanxico` DISABLE KEYS */;
/*!40000 ALTER TABLE `HistoricoValorUDIBanxico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MetodoPagoSat`
--

DROP TABLE IF EXISTS `MetodoPagoSat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MetodoPagoSat` (
  `IdMetodoPagoSat` int NOT NULL AUTO_INCREMENT,
  `sMetodoPago` varchar(150) DEFAULT NULL,
  `sDescripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`IdMetodoPagoSat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MetodoPagoSat`
--

LOCK TABLES `MetodoPagoSat` WRITE;
/*!40000 ALTER TABLE `MetodoPagoSat` DISABLE KEYS */;
INSERT INTO `MetodoPagoSat` VALUES (1,'PUE','Pago en una sola exhibición'),(2,'PPD','Pago en parcialidades o diferido');
/*!40000 ALTER TABLE `MetodoPagoSat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductoServicioSat`
--

DROP TABLE IF EXISTS `ProductoServicioSat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductoServicioSat` (
  `idProductoServicioSat` int NOT NULL AUTO_INCREMENT,
  `sClaveProducto` varchar(150) DEFAULT NULL,
  `sDescripcion` varchar(150) DEFAULT NULL,
  `dInicioVigencia` datetime DEFAULT NULL,
  `dFinVigencia` datetime DEFAULT NULL,
  `sIVATrasladado` varchar(150) DEFAULT NULL,
  `sIEPSTrasladado` varchar(150) DEFAULT NULL,
  `sComplemento` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idProductoServicioSat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductoServicioSat`
--

LOCK TABLES `ProductoServicioSat` WRITE;
/*!40000 ALTER TABLE `ProductoServicioSat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductoServicioSat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RangoComision`
--

DROP TABLE IF EXISTS `RangoComision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RangoComision` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nivel` int NOT NULL,
  `RangoInicial` int NOT NULL,
  `RangoFinal` int NOT NULL,
  `CantidadComisionEnMoneda` decimal(18,6) NOT NULL,
  `IdUserGuarda` bigint NOT NULL,
  `IdUserActualiza` bigint NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_RangoComision_IdUserActualiza` (`IdUserActualiza`),
  KEY `IX_RangoComision_IdUserGuarda` (`IdUserGuarda`),
  CONSTRAINT `FK_RangoComision_Users_IdUserActualiza` FOREIGN KEY (`IdUserActualiza`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_RangoComision_Users_IdUserGuarda` FOREIGN KEY (`IdUserGuarda`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RangoComision`
--

LOCK TABLES `RangoComision` WRITE;
/*!40000 ALTER TABLE `RangoComision` DISABLE KEYS */;
INSERT INTO `RangoComision` VALUES (397,1,1,1001,15.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(398,2,1003,2500,20.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(399,3,2501,3500,30.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(400,4,3501,4500,40.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(401,5,4501,5005,50.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(402,6,5006,6600,60.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(403,7,6601,7000,70.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(404,8,7001,8000,80.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44'),(405,9,1,10000,90.000000,660,660,'2025-06-09 15:53:43','2025-06-09 15:53:44');
/*!40000 ALTER TABLE `RangoComision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RangoComisionCliente`
--

DROP TABLE IF EXISTS `RangoComisionCliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RangoComisionCliente` (
  `IdRangoComisionCliente` int NOT NULL AUTO_INCREMENT,
  `Nivel` int NOT NULL,
  `RangoInicial` int NOT NULL,
  `RangoFinal` int NOT NULL,
  `CantidadComisionEnMoneda` decimal(18,6) NOT NULL,
  `ClienteId` bigint NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdRangoComisionCliente`),
  KEY `idx_RangoComisionCliente_ClienteId` (`ClienteId`),
  CONSTRAINT `FK_RangoComisionCliente_Cliente` FOREIGN KEY (`ClienteId`) REFERENCES `Cliente` (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RangoComisionCliente`
--

LOCK TABLES `RangoComisionCliente` WRITE;
/*!40000 ALTER TABLE `RangoComisionCliente` DISABLE KEYS */;
INSERT INTO `RangoComisionCliente` VALUES (46,1,1,1001,10.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(47,2,1002,2000,20.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(48,3,2001,3000,30.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(49,4,3001,4000,40.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(50,5,4001,5000,50.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(51,6,5001,6000,60.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(52,7,6001,7000,70.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(53,8,7001,8000,80.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(54,9,1,10000,90.000000,2,'2025-03-12 16:55:54','2025-03-12 16:55:54'),(55,1,1,1001,10.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(56,2,1002,2000,20.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(57,3,2001,3000,30.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(58,4,3001,4000,40.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(59,5,4001,5000,50.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(60,6,5001,6000,60.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(61,7,6001,7000,70.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(62,8,7001,8000,80.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(63,9,1,10000,90.000000,1,'2025-03-12 21:22:53','2025-03-12 21:22:53'),(64,1,1,1002,10.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(65,2,1003,2500,20.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(66,3,2501,3500,30.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(67,4,3501,4500,40.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(68,5,4501,5005,50.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(69,6,5006,6600,60.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(70,7,6601,7000,70.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(71,8,7001,8000,80.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(72,9,1,10000,90.000000,30,'2025-03-14 15:38:44','2025-03-14 15:38:44'),(73,1,1,1002,10.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(74,2,1003,2500,20.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(75,3,2501,3500,30.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(76,4,3501,4500,40.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(77,5,4501,5005,50.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(78,6,5006,6600,60.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(79,7,6601,7000,70.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(80,8,7001,8000,80.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(81,9,1,10000,90.000000,32,'2025-03-14 15:52:51','2025-03-14 15:52:51'),(82,1,1,1002,10.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(83,2,1003,2500,20.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(84,3,2501,3500,30.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(85,4,3501,4500,40.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(86,5,4501,5005,50.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(87,6,5006,6600,60.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(88,7,6601,7000,70.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(89,8,7001,8000,80.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(90,9,1,10000,90.000000,31,'2025-03-14 15:56:40','2025-03-14 15:56:40'),(91,1,1,1002,10.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(92,2,1003,2500,20.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(93,3,2501,3500,30.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(94,4,3501,4500,40.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(95,5,4501,5005,50.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(96,6,5006,6600,60.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(97,7,6601,7000,70.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(98,8,7001,8000,80.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(99,9,1,10000,90.000000,3,'2025-03-14 16:03:38','2025-03-14 16:03:38'),(100,1,1,1002,10.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(101,2,1003,2500,20.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(102,3,2501,3500,30.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(103,4,3501,4500,40.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(104,5,4501,5005,50.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(105,6,5006,6600,60.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(106,7,6601,7000,70.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(107,8,7001,8000,80.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(108,9,1,10000,90.000000,4,'2025-03-14 16:36:35','2025-03-14 16:36:35'),(109,1,1,1002,10.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(110,2,1003,2500,20.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(111,3,2501,3500,30.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(112,4,3501,4500,40.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(113,5,4501,5005,50.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(114,6,5006,6600,60.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(115,7,6601,7000,70.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(116,8,7001,8000,80.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(117,9,1,10000,90.000000,11,'2025-03-14 18:24:53','2025-03-14 18:24:53'),(118,1,1,1002,10.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(119,2,1003,2500,20.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(120,3,2501,3500,30.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(121,4,3501,4500,40.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(122,5,4501,5005,50.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(123,6,5006,6600,60.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(124,7,6601,7000,70.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(125,8,7001,8000,80.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(126,9,1,10000,90.000000,10,'2025-03-14 19:02:40','2025-03-14 19:02:40'),(127,1,1,1002,15.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(128,2,1003,2500,20.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(129,3,2501,3500,30.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(130,4,3501,4500,40.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(131,5,4501,5005,50.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(132,6,5006,6600,60.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(133,7,6601,7000,70.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(134,8,7001,8000,80.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(135,9,1,10000,90.000000,34,'2025-03-14 19:31:17','2025-03-14 19:31:17'),(136,1,1,1002,15.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(137,2,1003,2500,20.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(138,3,2501,3500,30.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(139,4,3501,4500,40.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(140,5,4501,5005,50.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(141,6,5006,6600,60.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(142,7,6601,7000,70.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(143,8,7001,8000,80.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(144,9,1,10000,90.000000,35,'2025-03-19 19:15:47','2025-03-19 19:15:47'),(145,1,1,1002,15.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(146,2,1003,2500,20.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(147,3,2501,3500,30.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(148,4,3501,4500,40.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(149,5,4501,5005,50.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(150,6,5006,6600,60.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(151,7,6601,7000,70.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(152,8,7001,8000,80.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(153,9,1,10000,90.000000,37,'2025-03-24 22:25:26','2025-03-24 22:25:26'),(154,1,1,1002,15.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(155,2,1003,2500,20.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(156,3,2501,3500,30.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(157,4,3501,4500,40.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(158,5,4501,5005,50.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(159,6,5006,6600,60.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(160,7,6601,7000,70.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(161,8,7001,8000,80.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(162,9,1,10000,90.000000,43,'2025-05-02 18:08:53','2025-05-02 18:08:53'),(181,1,1,1002,15.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(182,2,1003,2500,20.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(183,3,2501,3500,30.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(184,4,3501,4500,40.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(185,5,4501,5005,50.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(186,6,5006,6600,60.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(187,7,6601,7000,70.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(188,8,7001,8000,80.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(189,9,1,10000,90.000000,41,'2025-05-09 13:24:11','2025-05-09 13:24:11'),(190,1,1,1002,15.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(191,2,1003,2500,20.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(192,3,2501,3500,30.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(193,4,3501,4500,40.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(194,5,4501,5005,50.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(195,6,5006,6600,60.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(196,7,6601,7000,70.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(197,8,7001,8000,80.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(198,9,1,10000,90.000000,39,'2025-05-09 18:57:04','2025-05-09 18:57:04'),(199,1,1,1002,15.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(200,2,1003,2500,20.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(201,3,2501,3500,30.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(202,4,3501,4500,40.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(203,5,4501,5005,50.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(204,6,5006,6600,60.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(205,7,6601,7000,70.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(206,8,7001,8000,80.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(207,9,1,10000,90.000000,40,'2025-05-09 19:40:06','2025-05-09 19:40:06'),(208,1,1,1002,15.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(209,2,1003,2500,20.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(210,3,2501,3500,30.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(211,4,3501,4500,40.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(212,5,4501,5005,50.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(213,6,5006,6600,60.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(214,7,6601,7000,70.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(215,8,7001,8000,80.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(216,9,1,10000,90.000000,45,'2025-05-14 16:05:57','2025-05-14 16:05:57'),(217,1,1,1001,15.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(218,2,1003,2500,20.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(219,3,2501,3500,30.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(220,4,3501,4500,40.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(221,5,4501,5005,50.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(222,6,5006,6600,60.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(223,7,6601,7000,70.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(224,8,7001,8000,80.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(225,9,1,10000,90.000000,46,'2025-05-28 00:12:49','2025-05-28 00:12:49'),(226,1,1,1001,15.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(227,2,1003,2500,20.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(228,3,2501,3500,30.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(229,4,3501,4500,40.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(230,5,4501,5005,50.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(231,6,5006,6600,60.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(232,7,6601,7000,70.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(233,8,7001,8000,80.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(234,9,1,10000,90.000000,50,'2025-06-18 18:05:41','2025-06-18 18:05:41'),(235,1,1,1001,15.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(236,2,1003,2500,20.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(237,3,2501,3500,30.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(238,4,3501,4500,40.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(239,5,4501,5005,50.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(240,6,5006,6600,60.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(241,7,6601,7000,70.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(242,8,7001,8000,80.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(243,9,1,10000,90.000000,49,'2025-06-19 18:52:09','2025-06-19 18:52:09'),(244,1,1,1001,15.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(245,2,1003,2500,20.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(246,3,2501,3500,30.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(247,4,3501,4500,40.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(248,5,4501,5005,50.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(249,6,5006,6600,60.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(250,7,6601,7000,70.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(251,8,7001,8000,80.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(252,9,1,10000,90.000000,52,'2025-06-24 14:56:46','2025-06-24 14:56:46'),(253,1,1,1001,15.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(254,2,1003,2500,20.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(255,3,2501,3500,30.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(256,4,3501,4500,40.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(257,5,4501,5005,50.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(258,6,5006,6600,60.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(259,7,6601,7000,70.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(260,8,7001,8000,80.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(261,9,1,10000,90.000000,51,'2025-07-02 16:07:41','2025-07-02 16:07:41'),(262,1,1,1001,15.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(263,2,1003,2500,20.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(264,3,2501,3500,30.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(265,4,3501,4500,40.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(266,5,4501,5005,50.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(267,6,5006,6600,60.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(268,7,6601,7000,70.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(269,8,7001,8000,80.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(270,9,1,10000,90.000000,53,'2025-07-03 23:01:23','2025-07-03 23:01:23'),(271,1,1,1001,15.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13'),(272,2,1003,2500,20.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13'),(273,3,2501,3500,30.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13'),(274,4,3501,4500,40.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13'),(275,5,4501,5005,50.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13'),(276,6,5006,6600,60.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13'),(277,7,6601,7000,70.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13'),(278,8,7001,8000,80.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13'),(279,9,1,10000,90.000000,54,'2025-07-04 16:13:13','2025-07-04 16:13:13');
/*!40000 ALTER TABLE `RangoComisionCliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegimenFiscal`
--

DROP TABLE IF EXISTS `RegimenFiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RegimenFiscal` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Clave` varchar(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegimenFiscal`
--

LOCK TABLES `RegimenFiscal` WRITE;
/*!40000 ALTER TABLE `RegimenFiscal` DISABLE KEYS */;
INSERT INTO `RegimenFiscal` VALUES (1,'601','General de Ley Personas Morales'),(2,'603','Personas Morales con Fines no Lucrativos'),(3,'607','Régimen de Enajenación o Adquisición de Bienes'),(4,'609','Consolidación'),(5,'620','Sociedades Cooperativas de Producción que optan por Diferir sus Ingresos'),(6,'622','Actividades Agrícolas, Ganaderas, Silvícolas y Pesqueras'),(7,'623','Opcional para Grupos de Sociedades'),(8,'624','Coordinados'),(9,'626','RESICO (Régimen Simplificado de Confianza)'),(10,'628','Hidrocarburos');
/*!40000 ALTER TABLE `RegimenFiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoDocumentos`
--

DROP TABLE IF EXISTS `TipoDocumentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoDocumentos` (
  `IdTipoDocumento` bigint NOT NULL AUTO_INCREMENT,
  `Clave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`IdTipoDocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoDocumentos`
--

LOCK TABLES `TipoDocumentos` WRITE;
/*!40000 ALTER TABLE `TipoDocumentos` DISABLE KEYS */;
INSERT INTO `TipoDocumentos` VALUES (1,'1','Cédula Fiscal',1),(2,'2','Acta Constitutiva',1),(3,'3','Poder Notarial',1),(4,'4','Identificación',1),(5,'5','Constancia de Situación Fiscal',1),(6,'6','Contrato',1);
/*!40000 ALTER TABLE `TipoDocumentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `ExternalId` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `MFAEnabled` tinyint(1) NOT NULL,
  `MFAPreference` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `IsConfirmed` tinyint(1) NOT NULL,
  `ConfirmedAt` datetime(6) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  `ProductRequested` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `BusinessName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `nIdPerfil` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Users_Email` (`Email`),
  UNIQUE KEY `IX_Users_ExternalId` (`ExternalId`),
  KEY `nIdPerfil` (`nIdPerfil`),
  CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`nIdPerfil`) REFERENCES `UsuarioPerfil` (`nIdPerfil`)
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (649,'6468b4c8-9061-70b5-225c-a5851941e832','jnievas@transferdirecto.com',0,NULL,1,'2025-02-20 17:39:55.878277',1,'2025-02-20 17:37:44.751691','2025-02-20 17:39:55.878314','SPEI','Red Efectiva',NULL),(650,'74a81478-c0d1-70d3-318a-d31a4b867e06','jogonzalez@paynau.com',0,NULL,1,'2025-02-26 17:17:46.485103',1,'2025-02-26 16:30:05.678764','2025-02-26 17:17:46.485142','dispersiones','Red efectiva',NULL),(651,'5408f408-f0a1-70f8-8887-97dc341ab257','mharryson@transferdirecto.com',0,NULL,1,'2025-02-20 17:56:23.921487',1,'2025-02-20 17:55:36.554983','2025-02-20 17:56:23.921488','dispersiones','Red efectiva',NULL),(655,'44986498-0071-70c3-6f78-724122daf442','iramos@transferdirecto.com',0,NULL,1,'2025-02-28 20:53:20.903589',1,'2025-02-28 20:52:05.788126','2025-02-28 20:53:20.903637','spei','ixmael sa de cv',NULL),(656,'0438a458-3071-70da-e2ff-6fe7b62f9611','amorales@redefectiva.com',0,NULL,1,'2025-02-28 20:55:31.509712',1,'2025-02-28 20:54:40.227290','2025-02-28 20:55:31.509712','spei','ixmael sa de cv',NULL),(657,'5498d498-4041-7008-0af9-7ed5f3b8aa67','rlopez@transferdirecto.com',0,NULL,1,'2025-03-05 17:02:48.099499',1,'2025-03-05 17:00:02.906044','2025-03-05 17:02:48.099542','spei','Ricardo sa de cv',NULL),(658,'3418b428-80d1-70e9-42be-caa32e97f836','plopez@transferdirecto.com',0,NULL,1,'2025-03-10 23:26:28.395893',1,'2025-03-10 23:25:56.026175','2025-03-10 23:26:28.395930','spei','pablo sa de cv',NULL),(659,'6418e408-0051-70eb-c289-a7a8591b6066','vajog81551@oziere.com',0,NULL,0,NULL,1,'2025-03-10 23:44:51.051058','2025-03-10 23:44:51.051118','dispersiones','Red efectiva',NULL),(660,'94885458-d051-70bb-fb7f-62b5a0a5003c','jogonzalez@transferdirecto.com',0,NULL,1,'2025-03-11 15:02:12.685432',1,'2025-03-11 14:45:29.249196','2025-03-11 15:02:12.685433','spei','TDM',NULL),(661,'7418c438-30e1-705a-d672-937c12057592','rurdiales@transferdirecto.com',0,NULL,1,'2025-03-14 23:39:42.575288',1,'2025-03-14 23:36:17.127022','2025-03-14 23:39:42.575346','spei','TDM',NULL),(662,'d4787478-a071-7062-a7be-9ea3d0150985','alhernandez@transferdirecto.com',0,NULL,1,'2025-05-27 23:37:09.359207',1,'2025-05-27 23:34:59.046011','2025-05-27 23:37:09.359244','spei','TDM',NULL),(663,'c418c4c8-1001-70c3-46f6-0268d4aa7b78','iramos+2@transferdirecto.com',0,NULL,0,NULL,1,'2025-06-02 15:39:59.262679','2025-06-02 15:39:59.262706','spei','TDM',NULL),(664,'0418e4a8-f091-70ab-97e3-d7236b02d8bf','jvazquez@redefectiva.com',0,NULL,0,NULL,1,'2025-06-02 15:41:56.235598','2025-06-02 15:41:56.235625','spei','TDM vazquez',NULL),(665,'e4a8a488-b0a1-70a6-74b0-98f24eb0fa42','adiaz@redefectiva.com',0,NULL,1,'2025-06-04 18:01:07.796056',1,'2025-06-04 16:06:12.440238','2025-06-04 18:01:07.796096','spei','TDM Diaz',NULL),(666,'b4c8d458-d021-7002-c635-8f9da7d15d8d','adiaz@transferdirecto.com',0,NULL,1,'2025-06-05 16:57:18.288743',1,'2025-06-04 23:10:22.149989','2025-06-05 16:57:18.288744','spei','TDM Díaz',NULL),(667,'44784408-80e1-70a5-6357-946259903362','jvazquez@transferdirecto.com',0,NULL,1,'2025-06-06 18:06:29.097264',1,'2025-06-04 23:13:21.091742','2025-06-06 18:06:29.097303','spei','TDM Vazquez',NULL),(669,'14181468-6031-70a4-9b69-4f645342ede3','iramos+16062025-1@transferdirecto.com',0,NULL,0,NULL,1,'2025-06-16 16:19:00.310729','2025-06-16 16:19:00.310753','spei','TDM ixmael',NULL),(670,'64f87458-5021-70cc-fdec-0aeb67f5d645','hola@ixmael.dev',0,NULL,0,NULL,1,'2025-06-16 16:20:47.069416','2025-06-16 16:20:47.069416','spei','TDM ixmael',NULL),(671,'84d8d418-20c1-70d5-1f5a-e1cb9a0b0678','jsoto@transferdirecto.com',0,NULL,1,'2025-06-16 18:30:19.154704',1,'2025-06-16 16:36:39.313856','2025-06-16 18:30:19.154748','spei','TDM soto',NULL),(672,'84981428-70e1-7004-b40c-1f1666c72b9c','bcantu@transferdirecto.com',0,NULL,1,'2025-06-19 16:12:22.591677',1,'2025-06-19 00:09:53.780243','2025-06-19 16:12:22.591678','spei','TDM Cantu',NULL),(673,'84f83498-6001-70fd-d1e8-72dc9fce6ffd','dquintanilla@transferdirecto.com',0,NULL,0,NULL,1,'2025-06-19 00:11:02.818418','2025-06-19 00:11:02.818419','spei','TDM Cantu',NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersDevices`
--

DROP TABLE IF EXISTS `UsersDevices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsersDevices` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `IPAddress` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `DeviceDetail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Geolocalization` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersDevices`
--

LOCK TABLES `UsersDevices` WRITE;
/*!40000 ALTER TABLE `UsersDevices` DISABLE KEYS */;
INSERT INTO `UsersDevices` VALUES (774,'169.254.172.3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0','2025-02-17 23:40:29.899916','{\"accuracy\":213.0,\"latitude\":14.83955,\"longitude\":-91.49102}'),(775,'169.254.172.3','PostmanRuntime/7.43.0','2025-02-18 22:35:46.163648',NULL),(776,'::ffff:169.254.172.2','node','2025-02-24 22:58:25.201159','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(777,'::ffff:169.254.172.2','node','2025-02-26 15:45:36.464859','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(778,'::ffff:169.254.172.2','node','2025-02-24 17:29:12.502401','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(779,'::ffff:169.254.172.2','node','2025-02-26 21:17:14.654946','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(780,'::ffff:169.254.172.2','node','2025-02-24 21:46:50.983845','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(781,'::ffff:169.254.172.2','node','2025-02-25 20:53:09.552852','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(782,'::ffff:169.254.172.2','node','2025-02-24 20:31:36.237108','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(783,'::ffff:169.254.172.2','node','2025-02-24 21:26:55.596934','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(784,'::ffff:169.254.172.2','node','2025-02-25 15:57:11.297051','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(785,'::ffff:169.254.172.2','node','2025-02-25 17:27:19.526407','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(786,'::ffff:169.254.172.2','node','2025-02-26 17:28:24.042348','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(787,'::ffff:169.254.172.2','node','2025-02-26 17:26:39.945616','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(788,'::ffff:169.254.172.2','node','2025-02-26 17:18:22.862174','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(789,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-02-20 20:15:43.480238','{\"accuracy\":0.5554,\"latitude\":0.5554,\"longitude\":0.5554}'),(790,'::1','PostmanRuntime/7.43.0','2025-02-20 18:37:15.749249','{\"accuracy\":0.5554,\"latitude\":0.5554,\"longitude\":0.5554}'),(791,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-02-20 17:57:16.978909','{\"accuracy\":0.5554,\"latitude\":0.5554,\"longitude\":0.5554}'),(792,'::ffff:169.254.172.3','node','2025-02-20 21:10:50.585753','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(793,'::ffff:169.254.172.2','PostmanRuntime/7.43.0','2025-02-21 15:22:34.831998','{\"accuracy\":0.5554,\"latitude\":0.5554,\"longitude\":0.5554}'),(794,'::ffff:169.254.172.2','node','2025-02-20 23:13:58.252980','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(805,'::1','PostmanRuntime/7.43.0','2025-02-26 18:49:21.984427','{\"accuracy\":0.5554,\"latitude\":0.5554,\"longitude\":0.5554}'),(806,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-02-27 23:38:40.460374','{\"accuracy\":0.5554,\"latitude\":0.5554,\"longitude\":0.5554}'),(807,'::ffff:169.254.172.3','node','2025-02-28 00:02:40.539992','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(808,'::ffff:169.254.172.3','node','2025-02-28 00:10:08.140881','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(809,'::ffff:169.254.172.3','node','2025-02-28 00:34:15.490727','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(810,'::ffff:169.254.172.3','node','2025-02-28 15:22:52.434667','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(811,'::ffff:169.254.172.3','node','2025-02-28 16:26:40.518469','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(812,'::ffff:169.254.172.3','node','2025-02-28 18:03:03.015147','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(813,'::ffff:169.254.172.3','node','2025-02-28 18:03:32.135644','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(814,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-02-28 19:27:06.177299','{\"accuracy\":0.5554,\"latitude\":0.5554,\"longitude\":0.5554}'),(815,'::ffff:169.254.172.3','node','2025-02-28 19:48:31.290756','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(816,'::ffff:169.254.172.3','node','2025-02-28 20:01:54.071302','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(817,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-02-28 20:53:34.225525',NULL),(818,'::ffff:169.254.172.3','node','2025-02-28 21:01:23.401878','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(819,'::ffff:169.254.172.3','node','2025-02-28 21:16:47.066005','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(820,'::ffff:169.254.172.3','node','2025-03-01 01:29:24.708002','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(821,'::ffff:169.254.172.3','node','2025-03-01 01:54:39.922098','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(822,'::ffff:169.254.172.3','node','2025-03-01 02:07:44.232842','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(823,'::ffff:169.254.172.3','node','2025-03-01 02:38:34.620051','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(824,'::ffff:169.254.172.3','node','2025-03-03 17:12:49.461639','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(825,'::ffff:169.254.172.3','node','2025-03-03 17:36:41.769265','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(826,'::ffff:169.254.172.3','node','2025-03-03 21:50:16.148657','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(827,'::ffff:169.254.172.3','node','2025-03-03 21:52:11.382711','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(828,'::ffff:169.254.172.3','node','2025-03-03 21:55:19.453836','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(829,'::ffff:169.254.172.3','node','2025-03-03 22:01:12.359953','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(830,'::ffff:169.254.172.3','node','2025-03-03 22:33:07.469401','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(831,'::ffff:169.254.172.3','node','2025-03-03 22:40:55.717251','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(832,'::ffff:169.254.172.3','node','2025-03-03 23:24:45.976590','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(833,'::ffff:169.254.172.3','node','2025-03-03 23:26:49.543547','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(834,'::ffff:169.254.172.3','node','2025-03-03 23:27:41.997371','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(835,'::ffff:169.254.172.3','node','2025-03-03 23:28:35.203709','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(836,'::ffff:169.254.172.3','node','2025-03-03 23:30:44.186389','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(837,'::ffff:169.254.172.3','node','2025-03-03 23:38:31.221182','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(838,'::ffff:169.254.172.3','node','2025-03-03 23:42:31.823591','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(839,'::ffff:169.254.172.3','node','2025-03-03 23:45:30.718221','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(840,'::ffff:169.254.172.3','node','2025-03-03 23:46:41.449571','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(841,'::ffff:169.254.172.3','node','2025-03-04 16:59:46.349047','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(842,'::ffff:169.254.172.3','node','2025-03-04 17:04:32.651470','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(843,'::ffff:169.254.172.3','node','2025-03-04 17:07:01.448651','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(844,'::1','PostmanRuntime/7.43.0','2025-03-04 11:33:50.740574','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(845,'::1','PostmanRuntime/7.43.0','2025-03-04 13:20:42.756228','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(846,'::1','PostmanRuntime/7.43.0','2025-03-04 14:54:12.148806','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(847,'::ffff:169.254.172.2','node','2025-03-05 15:06:29.532078','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(848,'::ffff:169.254.172.2','node','2025-03-05 15:34:54.290211','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(849,'::ffff:169.254.172.2','PostmanRuntime/7.43.0','2025-03-05 15:52:08.444955','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(850,'::ffff:169.254.172.2','node','2025-03-05 17:03:12.025563','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(851,'::ffff:169.254.172.2','PostmanRuntime/7.43.0','2025-03-05 17:04:50.573136','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(852,'::ffff:169.254.172.2','node','2025-03-05 17:07:21.338219','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(853,'::ffff:169.254.172.2','node','2025-03-05 18:10:14.984921','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(854,'::ffff:169.254.172.2','node','2025-03-05 18:13:39.660937','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(855,'::ffff:169.254.172.2','node','2025-03-05 18:26:29.857139','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(856,'::ffff:169.254.172.2','PostmanRuntime/7.43.0','2025-03-05 18:41:40.900119','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(857,'::ffff:169.254.172.2','node','2025-03-05 18:52:37.727630','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(858,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-05 19:06:44.171052','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(859,'::ffff:169.254.172.3','node','2025-03-05 19:13:30.396281','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(860,'::ffff:169.254.172.3','node','2025-03-05 19:15:21.628208','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(861,'::ffff:169.254.172.3','node','2025-03-05 19:23:31.397336','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(862,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-05 20:38:34.497684','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(863,'::ffff:169.254.172.3','node','2025-03-05 22:38:50.430581','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(864,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-05 23:04:28.184004','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(865,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-06 00:12:42.792567','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(866,'::ffff:169.254.172.3','node','2025-03-06 00:43:34.130032','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(867,'::ffff:169.254.172.3','node','2025-03-06 01:46:37.898329','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(868,'::ffff:169.254.172.3','node','2025-03-06 02:54:21.511653','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(869,'::ffff:169.254.172.3','node','2025-03-06 14:31:45.935326','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(870,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-06 15:18:01.793570','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(871,'::ffff:169.254.172.2','PostmanRuntime/7.43.0','2025-03-06 16:28:04.433096','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(872,'::ffff:169.254.172.2','node','2025-03-06 18:34:20.985985','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(873,'::ffff:169.254.172.2','node','2025-03-06 19:40:51.880013','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(874,'::ffff:169.254.172.2','node','2025-03-06 20:09:10.745349','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(875,'::ffff:169.254.172.2','node','2025-03-06 20:46:35.627233','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(876,'::ffff:169.254.172.2','PostmanRuntime/7.43.0','2025-03-06 22:25:24.398558','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(877,'::ffff:169.254.172.2','node','2025-03-06 23:20:02.054180','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(878,'::ffff:169.254.172.2','node','2025-03-06 23:27:09.530353','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(879,'::ffff:169.254.172.2','node','2025-03-06 23:46:54.975955','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(880,'::ffff:169.254.172.2','node','2025-03-07 00:10:04.862555','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(881,'::ffff:169.254.172.2','node','2025-03-07 00:11:12.375097','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(882,'::ffff:169.254.172.2','node','2025-03-07 02:20:32.041059','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(883,'::ffff:169.254.172.2','node','2025-03-07 02:29:10.847424','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(884,'::ffff:169.254.172.2','node','2025-03-07 15:38:20.089391','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(885,'::ffff:169.254.172.2','node','2025-03-07 17:39:33.657162','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(886,'::ffff:169.254.172.2','node','2025-03-07 17:40:43.761770','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(887,'::ffff:169.254.172.2','node','2025-03-07 19:32:29.161356','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(888,'::ffff:169.254.172.2','node','2025-03-07 22:11:33.148614','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(889,'::ffff:169.254.172.2','node','2025-03-08 19:36:44.580796','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(890,'::ffff:169.254.172.2','node','2025-03-08 19:55:23.676648','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(891,'::ffff:169.254.172.2','node','2025-03-09 17:31:13.492301','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(892,'::ffff:169.254.172.2','node','2025-03-10 15:46:38.790818','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(893,'::ffff:169.254.172.2','node','2025-03-10 18:15:57.681289','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(894,'::ffff:169.254.172.2','node','2025-03-10 19:01:43.920998','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(895,'::ffff:169.254.172.2','node','2025-03-10 20:14:29.717765','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(896,'::ffff:169.254.172.2','node','2025-03-10 20:56:20.596142','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(897,'::1','PostmanRuntime/7.43.0','2025-03-10 17:33:04.098172',NULL),(898,'::1','PostmanRuntime/7.43.0','2025-03-10 18:02:05.772079',NULL),(899,'::ffff:169.254.172.2','node','2025-03-11 02:24:24.634738','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(900,'::1','PostmanRuntime/7.43.0','2025-03-10 21:00:48.260730',NULL),(901,'::1','PostmanRuntime/7.43.0','2025-03-10 21:27:05.725543',NULL),(902,'::ffff:169.254.172.2','node','2025-03-11 03:32:37.996517','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(903,'::1','PostmanRuntime/7.43.0','2025-03-10 22:48:33.542743',NULL),(904,'::ffff:169.254.172.2','node','2025-03-11 15:07:18.110399','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(905,'::1','PostmanRuntime/7.43.0','2025-03-11 12:31:33.164311',NULL),(906,'::ffff:169.254.172.2','node','2025-03-11 18:42:27.308651','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(907,'::ffff:169.254.172.2','node','2025-03-11 18:48:15.559371','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(908,'::1','PostmanRuntime/7.43.0','2025-03-11 14:37:53.098380','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(909,'::1','PostmanRuntime/7.43.0','2025-03-11 15:20:47.295638',NULL),(910,'::1','PostmanRuntime/7.43.0','2025-03-11 15:40:34.989975','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(911,'::ffff:169.254.172.2','PostmanRuntime/7.43.0','2025-03-11 22:09:03.424108','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(912,'::ffff:169.254.172.3','PostmanRuntime/7.39.1','2025-03-11 22:28:41.850824','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(913,'::1','PostmanRuntime/7.43.0','2025-03-11 16:51:59.691069',NULL),(914,'::1','PostmanRuntime/7.43.0','2025-03-11 17:14:07.419765','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(915,'::1','PostmanRuntime/7.43.0','2025-03-11 17:22:15.864892','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(916,'::ffff:169.254.172.3','node','2025-03-11 23:51:19.854396','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(917,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-11 23:53:59.250875','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(918,'::ffff:169.254.172.3','node','2025-03-12 00:36:46.277370','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(919,'::ffff:169.254.172.3','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:137.0) Gecko/20100101 Firefox/137.0','2025-03-12 00:50:07.710715','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(920,'::1','PostmanRuntime/7.43.0','2025-03-11 18:53:01.217329',NULL),(921,'::ffff:169.254.172.3','node','2025-03-12 00:54:19.435211','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(922,'::1','PostmanRuntime/7.43.0','2025-03-11 20:00:59.510192',NULL),(923,'::ffff:169.254.172.3','node','2025-03-12 02:07:34.883634','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(924,'::ffff:169.254.172.3','node','2025-03-12 15:00:39.538225','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(925,'::ffff:169.254.172.3','node','2025-03-12 15:18:43.678172','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(926,'::1','PostmanRuntime/7.43.0','2025-03-12 09:38:12.084733',NULL),(927,'::ffff:169.254.172.3','node','2025-03-12 16:05:04.792154','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(928,'::ffff:169.254.172.3','node','2025-03-12 16:27:36.606801','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(929,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-12 16:53:01.011010','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(930,'::1','PostmanRuntime/7.43.0','2025-03-12 10:56:11.629144',NULL),(931,'::ffff:169.254.172.3','node','2025-03-12 16:57:03.759337','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(932,'::ffff:169.254.172.3','node','2025-03-12 17:41:52.439280','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(933,'::ffff:169.254.172.3','node','2025-03-12 18:12:54.165672','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(934,'::1','PostmanRuntime/7.43.0','2025-03-12 12:14:25.901577',NULL),(935,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-12 18:31:23.170609','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(936,'::ffff:169.254.172.3','node','2025-03-12 18:34:38.102544','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(937,'::ffff:169.254.172.3','node','2025-03-12 19:05:27.919961','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(938,'::ffff:169.254.172.3','node','2025-03-12 19:23:31.337522','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(939,'::ffff:169.254.172.3','node','2025-03-12 19:28:33.320243','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(940,'::ffff:169.254.172.3','node','2025-03-12 20:21:05.728074','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(941,'::ffff:169.254.172.3','node','2025-03-12 20:34:40.849863','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(942,'::ffff:169.254.172.3','node','2025-03-12 21:00:07.797686','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(943,'::ffff:169.254.172.2','PostmanRuntime/7.43.0','2025-03-12 21:22:21.126908','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(944,'::ffff:169.254.172.2','node','2025-03-12 21:38:59.684203','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(945,'::1','PostmanRuntime/7.43.0','2025-03-12 17:10:36.396006',NULL),(946,'::ffff:169.254.172.2','node','2025-03-12 23:12:23.430520','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(947,'::ffff:169.254.172.2','node','2025-03-13 00:31:27.836911','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(948,'::1','PostmanRuntime/7.43.0','2025-03-12 18:39:27.062032',NULL),(949,'::ffff:169.254.172.2','node','2025-03-13 01:03:36.163177','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(950,'::ffff:169.254.172.2','node','2025-03-13 01:08:20.443476','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(951,'::ffff:169.254.172.2','node','2025-03-13 01:13:38.754642','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(952,'::ffff:169.254.172.3','node','2025-03-13 01:26:48.504151','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(953,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-13 01:27:13.195821',NULL),(954,'::ffff:169.254.172.3','node','2025-03-13 01:28:09.570436','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(955,'::ffff:169.254.172.2','node','2025-03-13 01:37:07.049843','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(956,'::1','PostmanRuntime/7.43.0','2025-03-12 19:38:01.365664',NULL),(957,'::ffff:169.254.172.2','node','2025-03-13 01:41:07.630408','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(958,'::ffff:169.254.172.2','node','2025-03-13 02:42:55.158163','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(959,'::ffff:169.254.172.2','node','2025-03-13 03:43:18.765808','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(960,'::ffff:169.254.172.2','node','2025-03-13 15:19:59.714538','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(961,'::ffff:169.254.172.2','node','2025-03-13 16:08:38.222228','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(962,'::1','PostmanRuntime/7.43.0','2025-03-13 10:18:43.602826',NULL),(963,'::ffff:169.254.172.2','node','2025-03-13 17:11:23.893913','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(964,'::ffff:169.254.172.2','node','2025-03-13 18:03:04.453446','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(965,'::1','PostmanRuntime/7.43.0','2025-03-13 12:23:21.312523',NULL),(966,'::ffff:169.254.172.2','node','2025-03-13 18:32:17.875040','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(967,'::ffff:169.254.172.2','node','2025-03-13 18:50:12.492385','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(968,'::ffff:169.254.172.2','node','2025-03-13 19:59:07.232732','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(969,'::1','PostmanRuntime/7.43.0','2025-03-13 14:24:38.878221',NULL),(970,'::ffff:169.254.172.3','node','2025-03-13 20:59:47.011225','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(971,'::ffff:169.254.172.3','node','2025-03-13 21:16:31.311587','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(972,'::ffff:169.254.172.3','node','2025-03-13 21:51:01.885279','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(973,'::ffff:169.254.172.3','node','2025-03-13 21:55:28.286974','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(974,'::ffff:169.254.172.3','node','2025-03-13 21:56:15.281017','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(975,'::ffff:169.254.172.3','node','2025-03-13 23:00:11.526864','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(976,'::ffff:169.254.172.3','node','2025-03-13 23:30:41.703039','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(977,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-13 23:35:37.004355','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(978,'::ffff:169.254.172.3','node','2025-03-14 00:25:46.417011','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(979,'::1','PostmanRuntime/7.43.0','2025-03-13 23:49:17.411673',NULL),(980,'::ffff:169.254.172.3','node','2025-03-14 06:01:03.741018','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(981,'::ffff:169.254.172.3','node','2025-03-14 13:27:52.854434','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(982,'::ffff:169.254.172.3','node','2025-03-14 14:33:03.335839','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(983,'::ffff:169.254.172.3','node','2025-03-14 14:51:26.908095','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(984,'::ffff:169.254.172.3','node','2025-03-14 15:10:34.117626','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(985,'::ffff:169.254.172.3','PostmanRuntime/7.43.0','2025-03-14 15:33:41.578884','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(986,'::ffff:169.254.172.3','node','2025-03-14 15:35:37.233267','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(987,'::ffff:169.254.172.3','node','2025-03-14 15:44:53.237628','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(988,'::ffff:169.254.172.3','node','2025-03-14 15:47:28.844518','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(989,'::ffff:169.254.172.3','node','2025-03-14 16:19:50.096592','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(990,'::ffff:169.254.172.3','node','2025-03-14 16:21:45.617303','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(991,'::ffff:169.254.172.3','node','2025-03-14 16:43:57.459755','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(992,'::ffff:169.254.172.3','node','2025-03-14 16:45:12.789776','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(993,'::ffff:169.254.172.3','node','2025-03-14 16:51:10.795691','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(994,'::ffff:169.254.172.3','node','2025-03-14 16:56:44.077437','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(995,'::ffff:169.254.172.3','node','2025-03-14 17:52:41.950147','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(996,'::ffff:169.254.172.3','node','2025-03-14 18:24:19.755024','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(997,'::ffff:169.254.172.3','node','2025-03-14 19:00:21.282646','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(998,'::ffff:169.254.172.3','node','2025-03-14 19:01:54.391251','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(999,'::ffff:169.254.172.3','node','2025-03-14 19:02:07.921981','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1000,'::ffff:169.254.172.3','node','2025-03-14 19:02:52.265572','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1001,'::ffff:169.254.172.3','node','2025-03-14 19:06:19.935640','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1002,'::ffff:169.254.172.3','node','2025-03-14 19:09:50.711866','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1003,'::ffff:169.254.172.3','node','2025-03-14 19:22:25.293822','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1004,'::ffff:169.254.172.3','node','2025-03-14 19:23:15.908421','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1005,'::ffff:169.254.172.3','node','2025-03-14 19:24:35.103705','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1006,'::ffff:169.254.172.3','node','2025-03-18 17:23:05.925402','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1007,'::ffff:169.254.172.3','node','2025-03-18 21:43:35.979874','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1008,'::ffff:169.254.172.3','node','2025-03-19 00:52:53.035187','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1009,'::ffff:169.254.172.3','node','2025-03-19 14:48:42.250089','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1010,'::ffff:169.254.172.3','PostmanRuntime/7.43.2','2025-03-19 16:49:35.165901',NULL),(1011,'::ffff:169.254.172.3','node','2025-03-19 17:38:33.228388','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1012,'::ffff:169.254.172.3','PostmanRuntime/7.43.2','2025-03-19 18:35:26.741803',NULL),(1013,'::ffff:169.254.172.3','node','2025-03-19 20:03:18.779631','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1014,'::ffff:169.254.172.3','node','2025-03-19 21:14:04.022717','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1015,'::ffff:169.254.172.3','PostmanRuntime/7.43.2','2025-03-20 02:04:35.359949',NULL),(1016,'::ffff:169.254.172.3','node','2025-03-20 16:41:32.275063','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1017,'::ffff:169.254.172.3','PostmanRuntime/7.43.2','2025-03-20 19:28:09.665047',NULL),(1018,'::ffff:169.254.172.3','PostmanRuntime/7.43.2','2025-03-21 07:54:18.587524',NULL),(1019,'::ffff:169.254.172.3','node','2025-03-21 15:31:41.454624','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1020,'::ffff:169.254.172.3','node','2025-03-21 20:19:05.342023','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1021,'::ffff:169.254.172.3','node','2025-03-24 17:59:11.206806','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1022,'::ffff:169.254.172.3','node','2025-03-24 18:34:50.234255','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1023,'::ffff:169.254.172.3','node','2025-03-24 21:59:02.801994','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1024,'::ffff:169.254.172.3','node','2025-03-24 22:04:37.503952','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1025,'::ffff:169.254.172.3','node','2025-03-25 00:39:06.231063','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1026,'::ffff:169.254.172.3','node','2025-03-25 00:57:48.877216','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1027,'::ffff:169.254.172.3','node','2025-03-25 01:16:59.734662','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1028,'::ffff:169.254.172.3','node','2025-03-25 13:52:11.189895','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1029,'::1','PostmanRuntime/7.43.2','2025-03-25 09:17:47.350590',NULL),(1030,'::ffff:169.254.172.3','node','2025-03-25 15:51:44.296377','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1031,'::ffff:169.254.172.3','node','2025-03-25 16:06:27.780774','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1032,'::ffff:169.254.172.3','node','2025-03-25 16:14:38.878173','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1033,'::ffff:169.254.172.3','node','2025-03-25 20:59:29.131090','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1034,'::ffff:169.254.172.3','node','2025-03-26 01:38:48.880285','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1035,'::ffff:169.254.172.3','node','2025-03-26 15:36:16.751977','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1036,'::ffff:169.254.172.3','node','2025-03-26 16:31:42.014903','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1037,'::ffff:169.254.172.3','node','2025-03-26 19:24:33.494390','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1038,'::1','PostmanRuntime/7.43.2','2025-03-26 13:45:58.422044',NULL),(1039,'::ffff:169.254.172.2','node','2025-03-26 22:11:49.753258','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1040,'::ffff:169.254.172.2','node','2025-03-27 00:07:03.384143','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1041,'::ffff:169.254.172.2','node','2025-03-27 00:36:42.173699','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1042,'::ffff:169.254.172.2','node','2025-03-27 01:13:58.607629','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1043,'::ffff:169.254.172.2','node','2025-03-27 15:16:37.611935','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1044,'::ffff:169.254.172.2','node','2025-03-27 16:19:54.891776','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1045,'::ffff:169.254.172.2','node','2025-03-28 15:08:49.759827','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1046,'::ffff:169.254.172.2','node','2025-03-28 17:07:58.576357','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1047,'::ffff:169.254.172.2','node','2025-03-31 17:04:03.554119','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1048,'::ffff:169.254.172.2','node','2025-03-31 17:09:37.771134','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1049,'::ffff:169.254.172.2','node','2025-03-31 17:52:26.962909','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1050,'::ffff:169.254.172.2','node','2025-03-31 18:14:19.060471','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1051,'::ffff:169.254.172.2','node','2025-03-31 22:49:18.184506','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1052,'::ffff:169.254.172.2','node','2025-04-01 00:22:55.703347','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1053,'::ffff:169.254.172.2','node','2025-04-01 15:28:38.434408','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1054,'::ffff:169.254.172.2','node','2025-04-01 16:53:17.993463','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1055,'::ffff:169.254.172.2','node','2025-04-01 19:18:49.008871','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1056,'::ffff:169.254.172.2','node','2025-04-02 19:31:12.469043','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1057,'::ffff:169.254.172.2','node','2025-04-08 00:27:24.538905','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1058,'::ffff:169.254.172.3','node','2025-04-09 18:32:39.388784','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1059,'::ffff:169.254.172.3','node','2025-04-09 19:57:10.989039','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1060,'::ffff:169.254.172.3','node','2025-04-09 20:11:58.991530','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1061,'::ffff:169.254.172.3','node','2025-04-09 22:06:33.347185','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1062,'::ffff:169.254.172.3','node','2025-04-09 22:50:38.027473','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1063,'::ffff:169.254.172.3','node','2025-04-11 18:24:51.340829','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1064,'::ffff:169.254.172.3','node','2025-04-11 22:18:44.671594','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1065,'::ffff:169.254.172.3','node','2025-04-11 23:40:48.703422','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1066,'::ffff:169.254.172.3','node','2025-04-14 15:43:51.430958','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1067,'::ffff:169.254.172.3','node','2025-04-14 16:54:46.043249','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1068,'::ffff:169.254.172.3','node','2025-04-14 17:07:37.113850','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1069,'::ffff:169.254.172.3','node','2025-04-14 19:51:13.304882','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1070,'::ffff:169.254.172.3','node','2025-04-16 15:44:07.030497','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1071,'::ffff:169.254.172.3','node','2025-04-16 15:49:50.879779','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1072,'::ffff:169.254.172.3','node','2025-04-16 16:29:30.818118','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1073,'::ffff:169.254.172.3','node','2025-04-16 16:46:33.381848','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1074,'::ffff:169.254.172.3','node','2025-04-16 16:52:21.367492','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1075,'::ffff:169.254.172.3','node','2025-04-16 16:54:30.836231','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1076,'::ffff:169.254.172.3','node','2025-04-16 16:58:34.142779','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1077,'::1','PostmanRuntime/7.43.3','2025-04-16 14:02:40.769627',NULL),(1078,'10.0.1.250','node','2025-04-16 23:26:10.028523','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1079,'10.0.1.250','node','2025-04-16 23:27:52.273099','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1080,'::1','PostmanRuntime/7.43.3','2025-04-16 17:33:46.932872',NULL),(1081,'10.0.1.250','node','2025-04-16 23:41:36.559192','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1082,'127.0.0.1','PostmanRuntime/7.43.0','2025-04-17 08:42:59.595760',NULL),(1083,'10.0.22.201','node','2025-04-23 15:12:13.449064','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1084,'10.0.22.201','node','2025-04-23 18:20:02.659949','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1085,'10.0.22.201','node','2025-04-23 18:23:45.202372','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1086,'10.0.22.201','node','2025-04-23 18:25:12.073585','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1087,'10.0.22.201','node','2025-04-23 18:50:37.560275','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1088,'10.0.22.201','node','2025-04-23 19:10:46.554786','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1089,'10.0.22.201','node','2025-04-23 19:29:11.134626','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1090,'10.0.22.201','node','2025-04-24 23:08:15.201277','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1091,'10.0.22.201','node','2025-04-25 17:12:19.702032','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1092,'10.0.22.201','node','2025-04-25 17:59:00.823580','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1093,'10.0.22.229','node','2025-04-30 18:13:52.710562','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1094,'10.0.22.229','node','2025-04-30 18:32:07.824852','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1095,'10.0.22.229','node','2025-04-30 23:15:48.900706','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1096,'10.0.22.229','node','2025-04-30 23:40:49.536716','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1097,'10.0.22.229','node','2025-04-30 23:44:22.628490','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1098,'10.0.22.229','node','2025-05-01 01:11:22.903960','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1099,'10.0.22.229','node','2025-05-01 04:10:58.176208','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1100,'10.0.22.229','node','2025-05-01 23:15:29.417990','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1101,'10.0.22.229','node','2025-05-01 23:47:26.868299','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1102,'10.0.22.229','node','2025-05-01 23:48:42.604130','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1103,'10.0.22.229','node','2025-05-01 23:50:35.135122','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1104,'10.0.22.229','node','2025-05-01 23:53:58.578441','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1105,'10.0.22.229','node','2025-05-02 00:35:49.812427','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1106,'10.0.22.229','node','2025-05-02 13:34:50.120948','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1107,'10.0.22.229','node','2025-05-02 14:13:27.985735','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1108,'10.0.22.229','node','2025-05-02 14:24:46.577292','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1109,'10.0.22.229','node','2025-05-02 14:36:10.824777','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1110,'10.0.22.229','node','2025-05-02 14:40:00.240160','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1111,'10.0.22.229','node','2025-05-02 14:43:22.803190','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1112,'10.0.22.229','node','2025-05-02 15:16:58.491994','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1113,'10.0.22.229','node','2025-05-02 15:30:27.870470','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1114,'10.0.22.229','node','2025-05-02 16:09:26.392479','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1115,'10.0.22.229','node','2025-05-02 16:14:51.922220','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1116,'::1','PostmanRuntime/7.43.4','2025-05-02 11:06:01.744603',NULL),(1117,'10.0.22.229','node','2025-05-02 17:46:12.411665','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1118,'10.0.22.229','node','2025-05-02 18:04:28.380513','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1119,'10.0.22.229','node','2025-05-02 18:41:27.109534','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1120,'10.0.22.229','node','2025-05-02 19:02:03.412226','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1121,'10.0.22.229','node','2025-05-02 19:02:21.778479','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1122,'10.0.22.229','node','2025-05-02 19:14:12.330966','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1123,'10.0.22.229','node','2025-05-02 19:18:45.358540','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1124,'10.0.22.229','node','2025-05-02 19:22:56.213715','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1125,'10.0.22.229','node','2025-05-02 19:31:14.293523','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1126,'10.0.22.229','node','2025-05-02 19:38:30.556468','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1127,'::1','PostmanRuntime/7.43.4','2025-05-07 18:50:53.162825',NULL),(1128,'10.0.22.229','node','2025-05-08 15:43:55.680504','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1129,'10.0.22.229','node','2025-05-08 22:01:13.281864','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1130,'::1','PostmanRuntime/7.43.4','2025-05-08 16:57:47.485762',NULL),(1131,'10.0.22.229','node','2025-05-08 23:38:34.745271','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1132,'::1','PostmanRuntime/7.43.4','2025-05-08 18:26:27.595309',NULL),(1133,'::1','PostmanRuntime/7.43.4','2025-05-08 20:06:01.488061',NULL),(1134,'10.0.22.229','node','2025-05-09 13:02:16.484328','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1135,'10.0.22.229','node','2025-05-09 15:01:23.675849','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1136,'10.0.22.229','node','2025-05-09 16:29:03.315999','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1137,'10.0.22.229','node','2025-05-09 18:52:34.119473','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1138,'10.0.22.229','node','2025-05-09 19:38:59.769351','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1139,'10.0.22.229','node','2025-05-09 20:09:32.990492','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1140,'10.0.22.229','node','2025-05-09 20:29:56.461453','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1141,'10.0.22.229','node','2025-05-09 22:29:15.750193','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1142,'10.0.22.229','node','2025-05-09 22:57:34.677930','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1143,'10.0.22.144','node','2025-05-12 16:32:28.098011','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1144,'10.0.22.144','node','2025-05-12 17:15:13.742201','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1145,'10.0.22.144','node','2025-05-12 17:17:41.045443','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1146,'10.0.22.144','node','2025-05-12 17:25:38.012285','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1147,'10.0.22.144','node','2025-05-12 17:31:37.266986','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1148,'10.0.22.144','node','2025-05-14 13:34:38.367901','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1149,'::1','PostmanRuntime/7.43.4','2025-05-14 09:56:28.562814',NULL),(1150,'10.0.22.144','node','2025-05-14 16:00:23.708259','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1151,'10.0.22.144','node','2025-05-14 17:26:22.328141','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1152,'10.0.22.144','node','2025-05-15 00:04:23.562009','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1153,'10.0.22.144','node','2025-05-15 11:58:25.646804','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1154,'::1','PostmanRuntime/7.43.4','2025-05-15 08:17:20.712370',NULL),(1155,'10.0.22.144','node','2025-05-15 14:19:30.137889','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1156,'10.0.22.144','node','2025-05-21 16:12:04.517083','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1157,'10.0.22.144','node','2025-05-21 16:13:27.185360','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1158,'10.0.22.144','node','2025-05-21 16:13:36.651669','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1159,'10.0.22.144','node','2025-05-21 16:14:57.583228','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1160,'10.0.22.212','node','2025-05-22 17:58:41.427685','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1161,'10.0.26.252','node','2025-05-23 00:20:19.668771','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1162,'::1','PostmanRuntime/7.43.4','2025-05-22 18:33:16.509716',NULL),(1163,'::1','PostmanRuntime/7.44.0','2025-05-23 10:47:42.399280',NULL),(1164,'::1','PostmanRuntime/7.44.0','2025-05-23 13:35:13.688562',NULL),(1165,'10.0.27.8','node','2025-05-27 16:31:53.065598','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1166,'10.0.26.252','node','2025-05-28 00:08:21.101677','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1167,'10.0.27.8','node','2025-05-30 18:07:29.678574','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1168,'10.0.27.8','node','2025-06-02 15:28:27.097673','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1169,'10.0.27.8','node','2025-06-02 16:16:10.582404','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1170,'10.0.26.252','node','2025-06-02 22:03:21.889771','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1171,'10.0.26.252','node','2025-06-03 13:17:57.170920','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1172,'10.0.26.252','node','2025-06-03 23:09:41.184240','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1173,'10.0.27.8','node','2025-06-04 18:01:48.491440','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1174,'10.0.26.252','node','2025-06-04 18:20:01.236717','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1175,'10.0.26.252','node','2025-06-04 18:39:12.039393','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1176,'10.0.26.252','node','2025-06-04 22:38:08.253981','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1177,'10.0.27.8','node','2025-06-04 23:18:15.640447','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1178,'::1','PostmanRuntime/7.44.0','2025-06-04 17:38:24.028647',NULL),(1179,'10.0.27.8','node','2025-06-05 13:31:02.948400','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1180,'::1','PostmanRuntime/7.44.0','2025-06-05 09:44:53.153349',NULL),(1181,'10.0.27.8','node','2025-06-05 16:23:32.730866','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1182,'::1','PostmanRuntime/7.44.0','2025-06-05 10:47:07.051748',NULL),(1183,'::1','PostmanRuntime/7.44.0','2025-06-05 12:19:23.143957',NULL),(1184,'10.0.26.252','node','2025-06-05 19:10:41.448938','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1185,'10.0.27.8','node','2025-06-05 19:12:03.562633','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1186,'10.0.26.252','node','2025-06-05 19:34:46.948085','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1187,'::1','PostmanRuntime/7.44.0','2025-06-05 14:29:30.696968',NULL),(1188,'10.0.27.8','node','2025-06-05 22:08:00.799962','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1189,'10.0.26.252','node','2025-06-05 23:12:06.127806','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1190,'::1','PostmanRuntime/7.44.0','2025-06-05 17:16:54.039079',NULL),(1191,'10.0.26.252','node','2025-06-05 23:18:41.188939','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1192,'10.0.26.252','node','2025-06-05 23:20:50.960749','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1193,'10.0.27.8','node','2025-06-05 23:49:55.998223','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1194,'10.0.26.252','node','2025-06-06 01:12:43.531580','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1195,'10.0.27.234','node','2025-06-06 14:37:56.381423','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1196,'10.0.26.61','node','2025-06-06 15:30:53.191258','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1197,'10.0.27.234','node','2025-06-06 16:18:31.872387','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1198,'10.0.26.61','node','2025-06-06 18:50:41.742477','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1199,'10.0.26.61','node','2025-06-06 19:05:57.905933','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1200,'10.0.27.234','node','2025-06-09 15:51:00.887542','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1201,'10.0.27.234','node','2025-06-16 18:32:51.148641','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1202,'10.0.26.61','node','2025-06-17 20:02:03.336058','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1203,'10.0.27.234','node','2025-06-18 15:33:10.858389','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1204,'10.0.26.61','node','2025-06-18 16:22:48.072017','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1205,'10.0.27.234','node','2025-06-18 16:41:27.239244','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1206,'::1','PostmanRuntime/7.44.1','2025-06-18 11:49:56.380590',NULL),(1207,'10.0.27.234','node','2025-06-18 18:00:17.370310','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1208,'10.0.27.234','node','2025-06-18 19:01:58.319411','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1209,'10.0.26.61','node','2025-06-18 23:50:50.832079','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1210,'10.0.26.61','node','2025-06-19 00:14:23.072577','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1211,'10.0.26.61','node','2025-06-19 16:18:46.238772','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1212,'10.0.27.234','node','2025-06-19 17:07:55.849041','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1213,'10.0.27.234','node','2025-06-19 18:51:11.849631','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1214,'10.0.26.61','node','2025-06-19 23:24:32.999408','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1215,'10.0.27.15','node','2025-06-20 00:31:14.110251','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1216,'10.0.26.61','node','2025-06-20 01:00:43.772516','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1217,'10.0.27.15','node','2025-06-20 16:34:57.796609','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1218,'10.0.27.15','node','2025-06-23 16:39:56.017123','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1219,'10.0.27.15','node','2025-06-24 14:54:11.460976','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1220,'10.0.27.15','node','2025-06-30 16:53:03.036193','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1221,'10.0.27.171','node','2025-07-01 16:49:26.790805','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1222,'10.0.27.171','node','2025-07-01 16:54:04.797839','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1223,'10.0.27.171','node','2025-07-02 15:18:26.700738','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1224,'10.0.26.212','node','2025-07-02 20:28:29.785278','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1225,'10.0.26.228','node','2025-07-03 22:59:37.426203','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1226,'10.0.27.171','node','2025-07-03 23:09:20.585758','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1227,'10.0.27.171','node','2025-07-03 23:26:57.666880','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1228,'10.0.27.171','node','2025-07-04 00:31:11.373721','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1229,'10.0.27.171','node','2025-07-04 16:10:59.072830','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1230,'10.0.26.228','node','2025-07-04 18:05:53.682401','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1231,'10.0.27.171','node','2025-07-04 18:08:31.993400','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1232,'10.0.26.228','node','2025-07-04 18:10:55.340780','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1233,'10.0.27.171','node','2025-07-08 16:22:48.929617','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1234,'10.0.26.228','node','2025-07-08 19:16:08.311021','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1235,'10.0.27.171','PostmanRuntime/7.44.1','2025-07-09 16:10:59.366991',NULL),(1236,'10.0.27.171','node','2025-07-09 23:25:59.913512','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1237,'10.0.26.228','node','2025-07-10 03:14:41.887547','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1238,'10.0.26.228','node','2025-07-10 17:07:48.738838','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}'),(1239,'10.0.26.228','node','2025-07-10 19:27:57.680233','{\"accuracy\":0.0,\"latitude\":0.0,\"longitude\":0.0}');
/*!40000 ALTER TABLE `UsersDevices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersNotifications`
--

DROP TABLE IF EXISTS `UsersNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsersNotifications` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `UserId` bigint NOT NULL,
  `Kind` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `WasReaded` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UsersNotifications_UserId` (`UserId`),
  CONSTRAINT `FK_UsersNotifications_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `Users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersNotifications`
--

LOCK TABLES `UsersNotifications` WRITE;
/*!40000 ALTER TABLE `UsersNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersSessions`
--

DROP TABLE IF EXISTS `UsersSessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsersSessions` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `UserId` bigint NOT NULL,
  `UserDeviceId` bigint DEFAULT NULL,
  `Status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  `BlockedUntil` datetime DEFAULT NULL,
  `RefreshToken` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `AccessToken` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `IdToken` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`Id`),
  KEY `IX_UsersSessions_UserDeviceId` (`UserDeviceId`),
  KEY `IX_UsersSessions_UserId` (`UserId`),
  CONSTRAINT `FK_UsersSessions_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `Users` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_UsersSessions_UsersDevices_UserDeviceId` FOREIGN KEY (`UserDeviceId`) REFERENCES `UsersDevices` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersSessions`
--

LOCK TABLES `UsersSessions` WRITE;
/*!40000 ALTER TABLE `UsersSessions` DISABLE KEYS */;
INSERT INTO `UsersSessions` VALUES ('819543a7-32aa-4ddc-87e6-45544d079ff0',649,1239,'DISABLED','2025-07-10 19:27:57.680232','2025-07-10 20:49:29.977941',NULL,NULL,NULL,NULL),('8ddc099d-006e-44aa-b997-b67561255074',655,1237,'ACTIVE','2025-07-10 03:14:41.887546',NULL,NULL,'eyJjdHkiOiJKV1QiLCJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiUlNBLU9BRVAifQ.M1hmg4WFPG4uudyIN5Xww-DfrILoFhRcU3hDobQRyG0rvHqXYR604zCZCXuunuoLQbXUq4IBFE-LXTcz5FdeL_dA69T-3BVHtgGFnPwCNtFNawklQa8B5avOQzo5TcGeLOCTX2le7MmzJJK8mVviQmJ8HZc26gaPdH428lXYKzHFdwdwo83_zaq7aIKfuezSJwqsHl4UVyEDtyNBr4i7dmg51MgtNOfv7cJXHZOD5SuVYuKdnM2cBjK60pWqkJ-YoVaUalBBoIstwjPdDy23UQF5DD-3_I5tV2sHOwDr9P5uoxaRlyIAUviy8zdHwov_JRaRIhLqjqZ0-KEICxrcJQ.ZVbI9Se0ViWxT9WK.K1rRta1BN2ddDYHL8vGN8zl7GQu2vPgQ-tFfgG8I9UfH7X32zVhhTdWq0CkiXVnUwYZQXoFEPzQAyJHsCjMqdEHEDDLxA6-fxlxfo-7rK0pIv8nz4NqjgPQDcvqIGDT1sn-3CQbe8vaSVdnWa6MyiXtRshWsoWQm_39nvgQwbpuiBbJh4hwyMTS4_kbUKRsFsUERfXF9Bcshm3uBbinN4T1_cxjiPB7qikY5whdA7MuytxMgK60lgoKYBFYV5Yie8SyTNdWIX43p0kci0ybCOFjUSMvOrYg5kJ42xiPAD_MPRo1jMhfAKn_pRwoBYBt_C5Ai6NTl7k05EctKlZ6Hl3O6lzj9ZvY1aFyUEz2Q_sZ8z8sRxsC_5kafcn0Xz65szwEdB5tSFcacxxM_5YboQsCywop2rqEdrcHSI1J8IQjueMdEzQ1zvKVZ5gJP7BWW1qqcuaUgcPZ3dxpXXzk_BY7G21kKz_LYCWrKpdouJITt4F4ai-eYmwGWRfapSQEEGlbEfOftfE7ARlLZ1iqnw0WnWM2NCrDatg7DyWk1m1fdTkljNXw8wD0fpd5PZJnbTHlhuzHbxDri41TMp-JdgdjEjoUSrZM0J-aYfI50e5vJKIRFYssYxZZwJGQn7WfBgS0dBLP8wxxVu1BvM4_1hV3q7qi2qTfiMmSiOTDjkf7a_5Y0_oX6LeXtpuP-9voO0nCUaaw1TuAMR2hXFPn0IP95nWOkAUNuIhChU7mN89xQTkF34O5VVnzMeXm0e7AOfv4m2ECLQyosuokkRUzDSxMKbjDnyA8mzJP1qV0XMJ_ydArbYfI6EVR0SNxLEAFZ63t8x87YRtJ0ffk70Eac78glpjXn4CYG48LCztQC3BkluKi0PwovUa4D4TyeCh9UQwkoXqfnNhG0Hrqjr7BXu-WvlHjPZ4eX0FtjT3b5B6Q5_H_csERZv36HRtySvXO_eB1LwGaI1tLOOSEkNSEmPOV1Mq8VV4FZCWJ1JuYuwljpfM20qwT-1zlfn63vaPiUOgASnL8J5zFXnmXqw4qMsFiHGkURbMtYBDHjJvR0IRQsRB-8jcl-OL4mCE1JDFrzOeoONJdjMK_n0tRobYbpeuXEQsDDbkzUNtfftyRwHged-OkppFv8xX2uvo2EtqAL03HYEsqQKripxtAfdr-3SnU5iQXt07bzPNtc8aEJ4yf7lRmZ5UgbzUqmxTphsD4pDlIghFZY1WKFAhj-3qZl7uhB2y8o43WxaLN4WIz41rpD8le6Q6rXPNS77-P_NmWJ8278mcepotcAu_NpPwYZOhuKOf4OwAroLc98IAvPiTv4iuROe5bM467lKg.DVnKv0XrV50wfM_X04LuVQ','eyJraWQiOiJGVHRFM2ZaQWwyVW01bmhTM3ZOS25PNjlFR0E0NmFna290XC8wK2ZxZEtWND0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI0NDk4NjQ5OC0wMDcxLTcwYzMtNmY3OC03MjQxMjJkYWY0NDIiLCJjb2duaXRvOmdyb3VwcyI6WyJhZG1pbiJdLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAudXMtZWFzdC0xLmFtYXpvbmF3cy5jb21cL3VzLWVhc3QtMV9NQU9PbDRmbW4iLCJjbGllbnRfaWQiOiI3YWJoYTdzNGx1cW8wajA5MWpyb2w2anA0biIsIm9yaWdpbl9qdGkiOiI5MTI4MGU3Ny1iZWU1LTRmY2EtYmIwYi1kOTA3MjM0MGM3NjciLCJldmVudF9pZCI6ImNjMmQyMjU5LWI2YjEtNDZkZC04MmRhLWM3YjA2NDY1YTUwYyIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3NTIxMTcyODEsImV4cCI6MTc1MjEyMDg4MSwiaWF0IjoxNzUyMTE3MjgxLCJqdGkiOiJhYjI1NjhlOC0xYWZiLTQ1NjUtYWMzMS0xYTlhN2FmYWEyMzYiLCJ1c2VybmFtZSI6IjQ0OTg2NDk4LTAwNzEtNzBjMy02Zjc4LTcyNDEyMmRhZjQ0MiJ9.bYI9fMWEsQk6bW6c3G20Wym-74j0YDdlOULwhoDPJXZ6hh5EQJR0f6HLtW5UyDCayV-VLSDll_8iG8jid5T-3r_a5f2FiSPQBBjXrm9RslaZUmngjRsM5hQ-G0VP5Kc0p4FFIqfZwI2ZYLkxciqbi5PNNlFIEsgSJQoV1tTpJgAhnPhsPkMSse9fJMWLn6Uky5XAhCm7JiC4e2R3a7pfIlJD9EKCz4pIlcFpanu41ER0oVP3R4DcCPPCFHOQLoCXCFWFtlGWFfmtxnwveJNzjqAysP8pIenG5UD-lSzH5OYsDW0oq-cO1Yhg-0QfxxQL2iupi48QKr7-yNxENLp2eQ','eyJraWQiOiJaK1NWXC9nXC9wR0hCQWE2dExDQ25JODZ0RGlkZWV0cUpFOFdNXC9la0FUREJRPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiI0NDk4NjQ5OC0wMDcxLTcwYzMtNmY3OC03MjQxMjJkYWY0NDIiLCJjb2duaXRvOmdyb3VwcyI6WyJhZG1pbiJdLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tXC91cy1lYXN0LTFfTUFPT2w0Zm1uIiwiY29nbml0bzp1c2VybmFtZSI6IjQ0OTg2NDk4LTAwNzEtNzBjMy02Zjc4LTcyNDEyMmRhZjQ0MiIsIm9yaWdpbl9qdGkiOiI5MTI4MGU3Ny1iZWU1LTRmY2EtYmIwYi1kOTA3MjM0MGM3NjciLCJhdWQiOiI3YWJoYTdzNGx1cW8wajA5MWpyb2w2anA0biIsImV2ZW50X2lkIjoiY2MyZDIyNTktYjZiMS00NmRkLTgyZGEtYzdiMDY0NjVhNTBjIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE3NTIxMTcyODEsImV4cCI6MTc1MjEyMDg4MSwiaWF0IjoxNzUyMTE3MjgxLCJqdGkiOiJkMzViYmE0Zi0xYzA2LTQ4ZGYtYTU5My0zMzdlOGJkODlmODgiLCJlbWFpbCI6ImlyYW1vc0B0cmFuc2ZlcmRpcmVjdG8uY29tIn0.QxuW0I83Eya1XYfwH1mvqFhf85X8KWIF6TzA4rFXKB8Qyp6_SGLDQ8hPfGvCfjS3Fy_ng4ct-Rdes2EpT5mHMw5fAk27hrCu0v6KmdH8Q3pjDWSwj9IE-LiYqj_qAzS0MWCPoSgXDJsA6Abn5SZCIskKtIo2EiSCaNC_4TXFfyDG64KcS59eLz5bEwBzilAhLtVb726sStur-SjNErd0nXRR5bu0fqCMRmkxI_hNnC-4UvaVrSZRfNwG1DSXoKCumLB0TaSqrcWiI63f4413S_ViB6dYlCzXIEpMwWVI9jZx8TGUrO2Ze4j6_48tQl8U8mi5CYo6_Q5uV2WE238g9g'),('d0b55626-7f0b-408a-8b15-8bcdec4f76be',660,1238,'ACTIVE','2025-07-10 17:07:48.738837',NULL,NULL,'eyJjdHkiOiJKV1QiLCJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiUlNBLU9BRVAifQ.bQ2rPfrQGrmXyVYZRs7QOmXr1fugothBwgxnLT_3X4eXli07zmsLP9RQLvCDHeVZZEKv5YqUVhyNV2xquMcmMbPeFgMKWZnSQxNHe1H3iEq-zTwoyk70PNA7--2mazE6gmN975a21wiaKSa6VbOHobq56N2uItPR2UQ_1rLO_36sfcG9KpcudtniU-QaiezRnNg8w1PhZnKMl1KTgB9L-f90a-p25QZh3vNVgIfCQljqK3LVld3PxPn52WOseMAmrczCwNrL0Rg2659CS_gKviQfgrOMyTtJa8qkPxf-eUoOU4lmck_vhjsK9_-w650pxmLynwBvWJmr4OVyrZhX2A.BEHPxWPR2FdrcBLr.P25aAkY0r9dRnetRzoM-p1Vf8dBJr-b2MGAyjgEmpEfRZBoAyn_uXuCVEDlUzRv-hkI4lmhh81vKnZWptfV3TZOMSXAugmQR5bj-nL8Fz-Mu9MJwRZbwFYv0aU-hKqnC40AjXKeyiCTe9IPHx4xRA7rhoTiCV-_Zd02VU0B7tIvletpvpbGzYQjhetZ1K2CidSpMpxDQfT8iasX3W8m5KprM8L_IJ-vvj3UgscNnJTHX-4stTYdaETA2ns2uTV3B0Tgz9lNAo0TGgSqibnm-N46-ATgVk9duEJPDEGG1Nc1akICIGK8HQaLIQa3Yp5x891rebdAzQ2pY7mTDFOnprWg0pRXgohu8kXjwP4SbA8-s-LkGuUzR3NjMoBnljYI6G0yuq99QwOMclY5P-vnEmK1MbDdBXq562vxJ60PtyNdDMAYefOdwJBY6UDGxUD2OkGFCo7E4-jasWaHQEHXXUpPJqHWDkwgyFu112fD2gOwjahGKYhCk_NM3JdZtkgySbit6A5iVyfzQnc4TRCw0y4Cl1VD4oZjqB1_fqx4ldS2pAv1wYE7TWnWu1EardTWtWXakixREa2B0QQ4UMpXiV61aMHNOdOHcPU5xDbOxiRZx4aeM_t6gmKtlASE8l8w02NS-wlxCFup4cHVBg6pQNb5GYgGUvICrdYGyYR-ReQwCQKs1Ohl5vHGYxfA4h2O5gV0VlRb-X7rMun1vFO7n0uTzhN-vELAqrXAcAKObokU0p5ThXcATGujlTYqMjV1gCP5LpJD-H5Ng78X_NpEmqAxCEl4C1rv_zJlKOg5ddDVfBAfL56viB4uTvaMyRmpnktAqNPaH7iaqUJRLJMhQKIX5ExKyygognYnlGeAOx1XSSMvMg4im7gJST_rINkluLKsuO6hobBmwXKR2DqO6sF08aM_fE7kyaOXCPuX23m3uL0yCoscIbM-UQ9WwbP9PV2Y8_Dl0uH1IdDdMM2i8ioma3MLmd-p8Bv4LQab0b16-udHmL9iR593_ZIBED9NhmbWUfRs7tMwd2u7Irbx8NCV899uQThJA7qIfd3yGpPBsWm3zFrSLuBaKTx7BHaF3ycn1oCw-c8lLZ6agP2IR-WnkMOvPUTiGM0EU__KoHiHasb6Qp2QISqP_w6heWO3q6xxKy4hV2c4hbmTZ4QcNCqHm-xcDDBZFl6joiuKr-GTnSg3nA30vsvDLY2fahXYfrNAS_lJ5GC00YIrJd5D44T6YrhfD-UQywuS3hmvMOHJokrglfa7YmRPjgtDkpNKYIfx9lbDzaws2BjZxCjJjL4--8nNrp2w7M3E8VkIPlSneuZczhXWl238fcA.hK3FciK03W8iD3RbDy1PuQ','eyJraWQiOiJGVHRFM2ZaQWwyVW01bmhTM3ZOS25PNjlFR0E0NmFna290XC8wK2ZxZEtWND0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI5NDg4NTQ1OC1kMDUxLTcwYmItZmI3Zi02MmI1YTBhNTAwM2MiLCJjb2duaXRvOmdyb3VwcyI6WyJhZG1pbiJdLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAudXMtZWFzdC0xLmFtYXpvbmF3cy5jb21cL3VzLWVhc3QtMV9NQU9PbDRmbW4iLCJjbGllbnRfaWQiOiI3YWJoYTdzNGx1cW8wajA5MWpyb2w2anA0biIsIm9yaWdpbl9qdGkiOiJkZTIyZmI4NS0yMDc4LTQzYWQtYWZlMC1iOWExZjAwNzkwMmQiLCJldmVudF9pZCI6ImM1MmE2NmE0LTMwNjYtNDg5Yy04ZWI4LTUzZTkxYjE3YjdmYyIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE3NTIxNjcyNjgsImV4cCI6MTc1MjE3MDg2OCwiaWF0IjoxNzUyMTY3MjY4LCJqdGkiOiJjYzMyMmU5Yi0xNTA2LTRjZTQtOWFjYy0yNDU3ZjU5NzkzYTEiLCJ1c2VybmFtZSI6Ijk0ODg1NDU4LWQwNTEtNzBiYi1mYjdmLTYyYjVhMGE1MDAzYyJ9.HAtGg-rvUzFQ14CJoTFv5Seu00R3ZCcw01J3ryTX132b0SiK_HqTir_GIi8j0lXAt8bl1jlvaywy6WgVrRzs9a-o3XL5CB1OnCczlbFpGAuKpY6fet4w7lklq70rJA3l6udAGN-2M_J_L3Ydea2vCeFtPAYXpiJ_ZpfO__TGiAvGVaGncCDn66JjosLhb3ukE_jE2Dutn_LU0wOrgazTVCDL84yBSI3noa6AVVIQ8Us16tXKPyB2Gl65NYB-VU871-PTSz0y0bN95sCANF9ivQRIEyOkg2jw47Hrtk0DKyCdlTRFZI500YP4CCFVrSBCyiRuA7RdxVg99yufhQfEwA','eyJraWQiOiJaK1NWXC9nXC9wR0hCQWE2dExDQ25JODZ0RGlkZWV0cUpFOFdNXC9la0FUREJRPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiI5NDg4NTQ1OC1kMDUxLTcwYmItZmI3Zi02MmI1YTBhNTAwM2MiLCJjb2duaXRvOmdyb3VwcyI6WyJhZG1pbiJdLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLWVhc3QtMS5hbWF6b25hd3MuY29tXC91cy1lYXN0LTFfTUFPT2w0Zm1uIiwiY29nbml0bzp1c2VybmFtZSI6Ijk0ODg1NDU4LWQwNTEtNzBiYi1mYjdmLTYyYjVhMGE1MDAzYyIsIm9yaWdpbl9qdGkiOiJkZTIyZmI4NS0yMDc4LTQzYWQtYWZlMC1iOWExZjAwNzkwMmQiLCJhdWQiOiI3YWJoYTdzNGx1cW8wajA5MWpyb2w2anA0biIsImV2ZW50X2lkIjoiYzUyYTY2YTQtMzA2Ni00ODljLThlYjgtNTNlOTFiMTdiN2ZjIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE3NTIxNjcyNjgsImV4cCI6MTc1MjE3MDg2OCwiaWF0IjoxNzUyMTY3MjY4LCJqdGkiOiJhNjVmMWM1Yy05Y2RjLTQ4YzYtOWFkOC01YWVlY2ZkMjNjZTIiLCJlbWFpbCI6ImpvZ29uemFsZXpAdHJhbnNmZXJkaXJlY3RvLmNvbSJ9.nO0CXrHF1P2yw5RU3pJ4MpwgW2QyfHtThgvAT7GjhS5bVeQGJPIscasNoR-mx4kV4yivQQGqu4W7h5f8D8-KH98b4lFyoqP6MWeFL4OvWydsraYzo947DRwQLxTqGcNqB81Oj2P1QBEhb75xgiZi7uOGjOTVBCTEHFlHXeUykHFkcq7hrKBpZO_JwFi0Jxvbu9-iwjsIK-m2HWEYERu7qqMC7hzujXqitDTrSu8jSDUmiLg2t8mBl2s8iyDg5cqdw8nKF_yFgOlaA7MrwUOl9Twi5Y4ZOVVlBWA5MyjL_vUWDcShOvYaf9sbWlYSJi9brLC47-EkihXTQffoBRYnYQ');
/*!40000 ALTER TABLE `UsersSessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuarioPerfil`
--

DROP TABLE IF EXISTS `UsuarioPerfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsuarioPerfil` (
  `nIdPerfil` int NOT NULL AUTO_INCREMENT,
  `sNombre` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sDescripcion` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`nIdPerfil`),
  UNIQUE KEY `IX_UsuarioPerfil_Nombre` (`sNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuarioPerfil`
--

LOCK TABLES `UsuarioPerfil` WRITE;
/*!40000 ALTER TABLE `UsuarioPerfil` DISABLE KEYS */;
INSERT INTO `UsuarioPerfil` VALUES (1,'admin','Perfil de administración','2025-07-09 21:08:02.000000',NULL),(2,'seguridad','Perfil de seguridad','2025-07-09 21:08:04.000000',NULL),(3,'contabilidad','Perfil de Contabilidad','2025-07-09 21:08:07.000000',NULL),(4,'kam','Perfil de KAM','2025-07-09 21:08:09.000000',NULL),(5,'cumplimiento_pld','Perfil de Cumplimiento de PLD','2025-07-09 21:08:11.000000',NULL),(6,'operaciones_spei','Perfil de Operaciones SPEI','2025-07-09 21:08:14.000000',NULL);
/*!40000 ALTER TABLE `UsuarioPerfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuarioPerfilProceso`
--

DROP TABLE IF EXISTS `UsuarioPerfilProceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsuarioPerfilProceso` (
  `nIdPerfil` int NOT NULL,
  `nIdUsuarioSeccion` int NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`nIdPerfil`,`nIdUsuarioSeccion`),
  KEY `IX_UsuarioPerfilProceso_nIdUsuarioSeccion` (`nIdUsuarioSeccion`),
  CONSTRAINT `FK_UsuarioPerfilProceso_UsuarioPerfil_nIdPerfil` FOREIGN KEY (`nIdPerfil`) REFERENCES `UsuarioPerfil` (`nIdPerfil`) ON DELETE CASCADE,
  CONSTRAINT `FK_UsuarioPerfilProceso_UsuarioProceso_nIdUsuarioSeccion` FOREIGN KEY (`nIdUsuarioSeccion`) REFERENCES `UsuarioProceso` (`nIdUsuarioProceso`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuarioPerfilProceso`
--

LOCK TABLES `UsuarioPerfilProceso` WRITE;
/*!40000 ALTER TABLE `UsuarioPerfilProceso` DISABLE KEYS */;
INSERT INTO `UsuarioPerfilProceso` VALUES (1,1,'2025-07-10 17:06:25.627000',NULL),(1,2,'2025-07-10 17:06:25.627000',NULL),(1,3,'2025-07-10 17:06:25.627000',NULL),(1,4,'2025-07-10 17:06:25.627000',NULL),(1,5,'2025-07-10 17:06:25.627000',NULL),(1,6,'2025-07-10 17:06:25.627000',NULL),(1,7,'2025-07-10 17:06:25.627000',NULL),(1,8,'2025-07-10 17:06:25.627000',NULL),(1,9,'2025-07-10 17:06:25.627000',NULL),(1,10,'2025-07-10 17:06:25.627000',NULL),(1,11,'2025-07-10 17:06:25.627000',NULL),(1,12,'2025-07-10 17:06:25.627000',NULL),(1,13,'2025-07-10 17:06:25.627000',NULL),(1,14,'2025-07-10 17:06:25.627000',NULL),(2,1,'2025-07-10 17:06:25.627000',NULL),(3,2,'2025-07-10 17:06:25.627000',NULL),(3,3,'2025-07-10 17:06:25.627000',NULL),(3,4,'2025-07-10 17:06:25.627000',NULL),(3,9,'2025-07-10 17:06:25.627000',NULL),(3,10,'2025-07-10 17:06:25.627000',NULL),(3,14,'2025-07-10 17:06:25.627000',NULL),(4,2,'2025-07-10 17:06:25.627000',NULL),(4,5,'2025-07-10 17:06:25.627000',NULL),(4,11,'2025-07-10 17:06:25.627000',NULL),(4,14,'2025-07-10 17:06:25.627000',NULL),(5,5,'2025-07-10 17:06:25.627000',NULL),(5,11,'2025-07-10 17:06:25.627000',NULL),(5,12,'2025-07-10 17:06:25.627000',NULL),(5,13,'2025-07-10 17:06:25.627000',NULL),(6,6,'2025-07-10 17:06:25.627000',NULL),(6,7,'2025-07-10 17:06:25.627000',NULL);
/*!40000 ALTER TABLE `UsuarioPerfilProceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuarioProceso`
--

DROP TABLE IF EXISTS `UsuarioProceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsuarioProceso` (
  `nIdUsuarioProceso` int NOT NULL AUTO_INCREMENT,
  `sNombre` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sDescripcion` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sRuta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bActivo` tinyint(1) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  `nIdUsuarioProcesoPadre` int DEFAULT NULL,
  PRIMARY KEY (`nIdUsuarioProceso`),
  UNIQUE KEY `IX_UsuarioProceso_Nombre` (`sNombre`),
  KEY `IX_UsuarioProceso_nIdUsuarioProcesoPadre` (`nIdUsuarioProcesoPadre`),
  CONSTRAINT `FK_UsuarioProceso_UsuarioProceso_nIdUsuarioProcesoPadre` FOREIGN KEY (`nIdUsuarioProcesoPadre`) REFERENCES `UsuarioProceso` (`nIdUsuarioProceso`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuarioProceso`
--

LOCK TABLES `UsuarioProceso` WRITE;
/*!40000 ALTER TABLE `UsuarioProceso` DISABLE KEYS */;
INSERT INTO `UsuarioProceso` VALUES (1,'bitacoras','Bitácoras','bitacoras',1,'2025-07-10 02:22:54.663000',NULL,NULL),(2,'mesa_de_control','Mesa de Control','mesa-de-control',1,'2025-07-10 04:51:56.963000',NULL,NULL),(3,'comisiones','Comisiones','comisiones',1,'2025-07-10 18:48:37.730000',NULL,NULL),(4,'cuenta_concentradora','Cuenta Concentradora','cuenta-concentradora',1,'2025-07-10 02:16:02.851000',NULL,NULL),(5,'prospectos','Prospectos (onboarding)','prospectos-a-clientes',1,'2025-07-10 04:48:34.864000',NULL,NULL),(6,'compensacion_demora','Compensación por demora','compensacion-demora',1,'2025-07-10 20:50:49.350000',NULL,NULL),(7,'cuenta_concentradora_resumen','Resumen de la cuenta concentradora','cuenta-concentradora/resumen',1,'2025-07-10 03:32:52.291000',NULL,4),(8,'cuenta_concentradora_movimientos','Movimientos de la Cuenta Concentradora','cuenta-concentradora/movimientos',1,'2025-07-10 12:41:34.059000',NULL,4),(9,'cuenta_concentradora_beneficiarios','Beneficiarios de la Cuenta Concentradora','cuenta-concentradora/beneficiarios',1,'2025-07-09 21:43:22.010000',NULL,4),(10,'cuenta_concentradora_ordenes','Ordenes de la Cuenta Concentradora','cuenta-concentradora/ordenes',1,'2025-07-10 14:33:17.544000',NULL,4),(11,'prospectos_detalle','Detalle de un prospectos','prospectos/detalle',1,'2025-07-10 12:20:42.966000',NULL,5),(12,'prospectos_aprobacion','Aprobación de un prospecto','prospectos/aprobación',1,'2025-07-10 02:21:33.907000',NULL,5),(13,'prospectos_rechazo','Rechazo de un prospecto','prospectos/rechazo',1,'2025-07-10 02:21:33.907000',NULL,5),(14,'mesa_control_clientes','Mesa de control clientes','mesa-control/clientes',1,'2025-07-10 02:21:33.907000',NULL,2);
/*!40000 ALTER TABLE `UsuarioProceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsuariosCliente`
--

DROP TABLE IF EXISTS `UsuariosCliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsuariosCliente` (
  `IdUsuariosCliente` bigint NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(250) DEFAULT NULL,
  `Email` varchar(150) NOT NULL,
  `nIdPerfil` int DEFAULT NULL,
  `bActivo` tinyint DEFAULT NULL,
  `ClienteId` bigint NOT NULL,
  PRIMARY KEY (`IdUsuariosCliente`),
  KEY `fk_UsuariosCliente_Cliente1_idx` (`ClienteId`),
  CONSTRAINT `fk_UsuariosCliente_Cliente1` FOREIGN KEY (`ClienteId`) REFERENCES `Cliente` (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsuariosCliente`
--

LOCK TABLES `UsuariosCliente` WRITE;
/*!40000 ALTER TABLE `UsuariosCliente` DISABLE KEYS */;
INSERT INTO `UsuariosCliente` VALUES (42,'Ismael Ramos','iramos@transferdirecto.com',2,1,4),(53,'test1','test1@gmail.com',3,1,35),(54,'test2','test2@gmail.com',2,1,35),(55,'nuevouser','nuevo@user.com',3,1,31),(56,'nuevouser2','nuevo@user2.com',2,1,31),(57,'Valentin','vmedellin+1@transferdirecto.com',2,1,43),(58,'Joaquin2','jnievas+17@transferdirecto.com',3,1,43),(59,'Joaquin','jnievas@transferdirecto.com',2,1,44),(61,'Adicional 1','jnievas@test.com',3,1,45),(66,'Emilio Carranza','ecarr1121@gmail.com',2,1,1),(67,'Emilio2 Carranza2','ecarr1121s@gmail.com',2,1,1),(68,'Ismael','iramos+05062025@transferdirecto.com',2,1,46),(69,'Joaquin','jnievas+18062025-10@trasnsferdirecto.com',2,1,50),(70,'test','test@test.com',3,1,49),(71,'test final','test@final.com',2,1,52),(72,'joaquin','joaquin@test.com',3,1,51),(73,'Rick','rlopez+50@transferdirecto.com',2,1,53),(74,'Joaquin','elmaildeltest@test.com',3,1,54);
/*!40000 ALTER TABLE `UsuariosCliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ValorUDIBanxico`
--

DROP TABLE IF EXISTS `ValorUDIBanxico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ValorUDIBanxico` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `dFecha` datetime NOT NULL,
  `nValor` decimal(18,6) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_ValorUDIBanxico_dFecha` (`dFecha`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ValorUDIBanxico`
--

LOCK TABLES `ValorUDIBanxico` WRITE;
/*!40000 ALTER TABLE `ValorUDIBanxico` DISABLE KEYS */;
INSERT INTO `ValorUDIBanxico` VALUES (2,'2025-11-03 00:00:00',8.406806,'2025-03-11 12:00:57','2025-03-11 12:00:57');
/*!40000 ALTER TABLE `ValorUDIBanxico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__EFMigrationsHistory`
--

LOCK TABLES `__EFMigrationsHistory` WRITE;
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory` VALUES ('20250305151332_HistoricoComisiones','8.0.2');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;
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

-- Dump completed on 2025-07-14 18:59:53
