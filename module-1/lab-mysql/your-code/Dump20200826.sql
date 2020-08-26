-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `Cars`
--

DROP TABLE IF EXISTS `Cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cars` (
  `idCars` int(11) NOT NULL AUTO_INCREMENT,
  `idetification _number` varchar(45) NOT NULL,
  `manufacturer` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`idCars`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
INSERT INTO `Cars` VALUES (1,'01','toyota','yaris',0000),(2,'02','mercedes','claseA',0000),(3,'03','toyota','auris',2017),(4,'04','audi','a4',2016),(5,'05','ford','focus',2013);
/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `idCustomer` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_number` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state/province` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,1,'pepe','2654874536','pepe@gmail.com','enramadilla 3','sevilla','andalucia','espana','41018'),(2,2,'juan','2654874586','juan@gmail.com','pera 3','sevilla','andalucia','espana','41028'),(3,3,'sara','2674874536','sara@gmail.com','enramadilla 3','sevilla','andalucia','espana','41018'),(4,4,'marta','2651874536','marta@gmail.com','enramadilla 3','sevilla','andalucia','espana','41018'),(5,5,'lucia','26545874536','lucia@gmail.com','enramadilla 3','sevilla','andalucia','espana','41018');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `idinvoices` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `salesperson_salesperson_id` int(11) NOT NULL,
  `Customer_idCustomer` int(11) NOT NULL,
  `Cars_idCars` int(11) NOT NULL,
  PRIMARY KEY (`idinvoices`),
  KEY `fk_invoices_salesperson_idx` (`salesperson_salesperson_id`),
  KEY `fk_invoices_Customer1_idx` (`Customer_idCustomer`),
  KEY `fk_invoices_Cars1_idx` (`Cars_idCars`),
  CONSTRAINT `comprador` FOREIGN KEY (`Customer_idCustomer`) REFERENCES `Customer` (`idCustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `modelo ` FOREIGN KEY (`Cars_idCars`) REFERENCES `Cars` (`idCars`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `vendedor` FOREIGN KEY (`salesperson_salesperson_id`) REFERENCES `salesperson` (`salesperson_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,'2020-02-02 00:00:00',1,2,3),(2,2,'2020-02-02 00:00:00',2,1,1),(3,3,'2020-02-02 00:00:00',3,3,2),(4,4,'2020-02-02 00:00:00',4,4,4),(5,5,'2020-02-02 00:00:00',5,5,5);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesperson`
--

DROP TABLE IF EXISTS `salesperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesperson` (
  `salesperson_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `store` varchar(45) NOT NULL,
  PRIMARY KEY (`salesperson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesperson`
--

LOCK TABLES `salesperson` WRITE;
/*!40000 ALTER TABLE `salesperson` DISABLE KEYS */;
INSERT INTO `salesperson` VALUES (1,1,'paca','sevilla'),(2,2,'paca','sevilla'),(3,3,'pac','sevilla'),(4,4,'paa','sevilla'),(5,5,'aca','sevilla');
/*!40000 ALTER TABLE `salesperson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-26  4:15:29
