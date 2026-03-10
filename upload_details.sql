-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 13, 2023 at 11:54 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heartdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `upload_details`
--

DROP TABLE IF EXISTS `upload_details`;
CREATE TABLE IF NOT EXISTS `upload_details` (
  `Admin_id` int NOT NULL AUTO_INCREMENT,
  `Files` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `File_size` varchar(100) DEFAULT NULL,
  `Time` time(6) DEFAULT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upload_details`
--

INSERT INTO `upload_details` (`Admin_id`, `Files`, `Date`, `File_size`, `Time`) VALUES
(13, 'Images/user/cb_lHZMRlt.jpg', '2023-03-13', '76048', '15:49:15.965428'),
(11, 'Images/user/cb_mjdaXgC.jpg', '2023-03-11', '76048', '17:05:02.073296'),
(7, 'Images/user/Screenshot_4.png', '2023-03-10', '439168', '17:15:08.934303'),
(10, 'Images/user/cb_Qu7nXMz.jpg', '2023-03-11', '76048', '16:35:43.554225'),
(12, 'Images/user/cb_NnCOuwd.jpg', '2023-03-11', '76048', '17:05:10.992078'),
(14, 'Images/user/cb_KAXSUHq.jpg', '2023-03-13', '76048', '15:49:27.143527');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
