-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 29, 2018 at 09:38 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `claim`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_acces`
--

DROP TABLE IF EXISTS `info_acces`;
CREATE TABLE IF NOT EXISTS `info_acces` (
  `Model_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Model` varchar(100) NOT NULL,
  `Serial_No` varchar(30) NOT NULL,
  `C_no` varchar(30) NOT NULL,
  `Sku` varchar(30) NOT NULL,
  `ShopID` int(10) NOT NULL,
  PRIMARY KEY (`Model_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1200103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_acces`
--

INSERT INTO `info_acces` (`Model_ID`, `Model`, `Serial_No`, `C_no`, `Sku`, `ShopID`) VALUES
(1200101, 'LED MONITOR AOC 27 IPS I2790VQ67', ' I2790VQ/67', 'CN521644633', 'AOC', 1500101),
(1200102, 'NOTEBOOK  ALIENWARE15 R3-W5691007THW10KBL', ' R3-W5691007THW10KBL', 'ALIENWARE15', 'AL15', 1500102);

-- --------------------------------------------------------

--
-- Table structure for table `info_shop`
--

DROP TABLE IF EXISTS `info_shop`;
CREATE TABLE IF NOT EXISTS `info_shop` (
  `ShopID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ReceiveDate` date NOT NULL,
  `Status` varchar(100) NOT NULL,
  PRIMARY KEY (`ShopID`)
) ENGINE=MyISAM AUTO_INCREMENT=1500141 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_shop`
--

INSERT INTO `info_shop` (`ShopID`, `Name`, `Address`, `ReceiveDate`, `Status`) VALUES
(1500101, 'Chakorn1', 'Phuket2', '2018-05-25', 'Normal'),
(1500102, 'Fair', 'Nakorn', '2018-05-25', 'Normal'),
(1500103, 'test', 'Phuket', '2018-05-25', 'Cancel'),
(1500104, 'Boom', 'Phuket', '2018-05-25', 'Normal'),
(1500105, 'Chabu indy', 'Phuket', '2018-05-24', 'Normal'),
(1500106, 'Chabu indy', 'Phuket', '2018-05-25', 'Normal'),
(1500107, 'Chabu indy', 'Phuket', '2018-05-25', 'Normal'),
(1500108, 'Chabu indy', 'Phuket', '2018-05-25', 'Normal'),
(1500109, 'Chabu indy', 'Phuket', '2018-05-25', 'Normal'),
(1500110, 'Chabu indy', 'Phuket', '2018-05-25', 'Normal'),
(1500111, 'Chabu indy', 'Phuket', '2018-05-25', 'Normal'),
(1500112, 'Chabu indy', 'Phuket', '2018-05-25', 'Normal'),
(1500113, 'Chabu indy', 'Phuket', '2018-05-24', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `info_status`
--

DROP TABLE IF EXISTS `info_status`;
CREATE TABLE IF NOT EXISTS `info_status` (
  `Status_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) NOT NULL,
  `Status_Date` date NOT NULL,
  `Model_ID` int(10) NOT NULL,
  PRIMARY KEY (`Status_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_user`
--

DROP TABLE IF EXISTS `info_user`;
CREATE TABLE IF NOT EXISTS `info_user` (
  `User_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Level` int(10) NOT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_user`
--

INSERT INTO `info_user` (`User_ID`, `Name`, `Username`, `Password`, `Level`) VALUES
(1, 'PIW', 'Myname', '123456', 500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
