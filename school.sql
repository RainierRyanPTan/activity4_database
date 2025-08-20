-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 20, 2025 at 03:04 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity4`
--

DROP TABLE IF EXISTS `activity4`;
CREATE TABLE IF NOT EXISTS `activity4` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` int NOT NULL,
  `id` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `activity4`
--

INSERT INTO `activity4` (`email`, `password`, `mobile`, `id`) VALUES
('rainierryantan@gmail.com', 'wowsitan01', 2147483647, '10342'),
('rodslibanan@gmail.com', 'makeitrods22', 2147483647, '10843'),
('onlychildbernz@gmail.com', 'maamjo101', 2147483647, '10963');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
