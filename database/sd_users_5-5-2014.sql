-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2014 at 01:04 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sm`
--

-- --------------------------------------------------------

--
-- Table structure for table `sd_users`
--

CREATE TABLE IF NOT EXISTS `sd_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activkey` varchar(128) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `superuser` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `address` text,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `sd_users`
--

INSERT INTO `sd_users` (`id`, `username`, `password`, `email`, `activkey`, `create_at`, `lastvisit_at`, `superuser`, `status`, `birthday`, `address`, `firstname`, `lastname`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '21232f297a57a5a743894a0e4a801fc3', '2013-10-04 14:17:56', '2014-05-05 04:34:53', 1, 1, NULL, NULL, NULL, NULL),
(2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@example.com', 'fe01ce2a7fbac8fafaed7c982a04e229', '2013-10-04 14:17:56', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL),
(4, 'Mobi', 'e10adc3949ba59abbe56e057f20f883e', 'modi.bixa0@gmail.com', '7e3322831ed94481effd9052798999a7', '2013-10-06 17:07:30', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL),
(5, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin2@gmail.com', 'bb2c04555a60ea5282fa377e3c2c2abc', '2014-04-24 03:53:19', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
