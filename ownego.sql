-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2013 at 10:19 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ownego`
--
CREATE DATABASE IF NOT EXISTS `ownego` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ownego`;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `departmentID` varchar(5) NOT NULL,
  `department_name` varchar(150) NOT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` varchar(5) CHARACTER SET utf8 NOT NULL,
  `emp_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `emp_age` int(11) NOT NULL,
  `emp_phone` int(11) NOT NULL,
  `emp_gender` tinyint(4) NOT NULL COMMENT '1-nam 0-nu',
  `emp_dayofbirth` date NOT NULL,
  `emp_family` text CHARACTER SET utf8 NOT NULL,
  `emp_department` varchar(5) CHARACTER SET utf8 NOT NULL,
  `emp_position` varchar(5) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `pos_id` varchar(5) CHARACTER SET utf8 NOT NULL,
  `pos_name` varchar(100) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
