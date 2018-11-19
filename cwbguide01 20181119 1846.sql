-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.14


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cwbguide
--

CREATE DATABASE IF NOT EXISTS cwbguide;
USE cwbguide;

--
-- Definition of table `categorysystem`
--

DROP TABLE IF EXISTS `categorysystem`;
CREATE TABLE `categorysystem` (
  `idCategorySystem` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` int(11) NOT NULL,
  PRIMARY KEY (`idCategorySystem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorysystem`
--

/*!40000 ALTER TABLE `categorysystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorysystem` ENABLE KEYS */;


--
-- Definition of table `citiessystem`
--

DROP TABLE IF EXISTS `citiessystem`;
CREATE TABLE `citiessystem` (
  `idCitiesSystem` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(80) NOT NULL,
  `cityFlag` varchar(2) NOT NULL,
  PRIMARY KEY (`idCitiesSystem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citiessystem`
--

/*!40000 ALTER TABLE `citiessystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `citiessystem` ENABLE KEYS */;


--
-- Definition of table `neighborhoodsystem`
--

DROP TABLE IF EXISTS `neighborhoodsystem`;
CREATE TABLE `neighborhoodsystem` (
  `idNeighborhoodSystem` int(11) NOT NULL AUTO_INCREMENT,
  `idcitiesSystem` int(11) NOT NULL,
  `neighborhoodName` varchar(80) NOT NULL,
  PRIMARY KEY (`idNeighborhoodSystem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `neighborhoodsystem`
--

/*!40000 ALTER TABLE `neighborhoodsystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `neighborhoodsystem` ENABLE KEYS */;


--
-- Definition of table `subcategorysystem`
--

DROP TABLE IF EXISTS `subcategorysystem`;
CREATE TABLE `subcategorysystem` (
  `idSubCategorySystem` int(11) NOT NULL AUTO_INCREMENT,
  `idCategorySystem` int(11) NOT NULL,
  `SubCategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`idSubCategorySystem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategorysystem`
--

/*!40000 ALTER TABLE `subcategorysystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategorysystem` ENABLE KEYS */;


--
-- Definition of table `userregistrationsystem`
--

DROP TABLE IF EXISTS `userregistrationsystem`;
CREATE TABLE `userregistrationsystem` (
  `idUserRegistrationSystem` int(11) NOT NULL AUTO_INCREMENT,
  `firstNameUser` varchar(60) NOT NULL,
  `lastNameUser` varchar(60) NOT NULL,
  `loginUser` varchar(30) NOT NULL,
  `passwordUser` varchar(30) NOT NULL,
  `birthDateUser` date DEFAULT NULL,
  `emailUser` varchar(45) NOT NULL,
  `mobileNumberUser` varchar(20) NOT NULL,
  `zipCodeAddress` varchar(20) NOT NULL,
  `streetAddress` varchar(80) NOT NULL,
  `numberAddress` varchar(10) NOT NULL,
  `neighborhoodAddress` int(11) NOT NULL,
  `complementAddress` varchar(10) NOT NULL,
  `idCitiesAddress` int(11) DEFAULT NULL,
  `registrationDate` datetime NOT NULL,
  PRIMARY KEY (`idUserRegistrationSystem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistrationsystem`
--

/*!40000 ALTER TABLE `userregistrationsystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `userregistrationsystem` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
