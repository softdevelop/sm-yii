-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2014 at 09:37 AM
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
-- Table structure for table `authassignment`
--

DROP TABLE IF EXISTS `authassignment`;
CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('Admin', '1', NULL, NULL),
('Author', '2', NULL, 'N;'),
('Banners.Default.Index', '5', NULL, 'N;'),
('Banners.ManageBanners.Admin', '2', NULL, 'N;'),
('group 1', '2', NULL, 'N;'),
('Manage', '4', NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitem`
--

DROP TABLE IF EXISTS `authitem`;
CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('Admin', 2, NULL, NULL, NULL),
('Author', 2, 'Author', 'Author', 'N;'),
('Banners.Default.*', 1, NULL, NULL, 'N;'),
('Banners.Default.Index', 0, NULL, NULL, 'N;'),
('Banners.ManageBanners.*', 1, NULL, NULL, 'N;'),
('Banners.ManageBanners.Admin', 0, NULL, NULL, 'N;'),
('Banners.ManageBanners.Ajaxupdate', 0, NULL, NULL, 'N;'),
('Banners.ManageBanners.Create', 0, NULL, NULL, 'N;'),
('Banners.ManageBanners.Delete', 0, NULL, NULL, 'N;'),
('Banners.ManageBanners.Index', 0, NULL, NULL, 'N;'),
('Banners.ManageBanners.Update', 0, NULL, NULL, 'N;'),
('Banners.ManageBanners.View', 0, NULL, NULL, 'N;'),
('Contact.*', 1, NULL, NULL, 'N;'),
('Contact.Admin', 0, NULL, NULL, 'N;'),
('Contact.Create', 0, NULL, NULL, 'N;'),
('Contact.Delete', 0, NULL, NULL, 'N;'),
('Contact.Index', 0, NULL, NULL, 'N;'),
('Contact.Update', 0, NULL, NULL, 'N;'),
('Contact.View', 0, NULL, NULL, 'N;'),
('Contacts.Default.*', 1, NULL, NULL, 'N;'),
('Contacts.Default.Index', 0, NULL, NULL, 'N;'),
('Contacts.ManageContacts.*', 1, NULL, NULL, 'N;'),
('Contacts.ManageContacts.Admin', 0, NULL, NULL, 'N;'),
('Contacts.ManageContacts.Create', 0, NULL, NULL, 'N;'),
('Contacts.ManageContacts.Delete', 0, NULL, NULL, 'N;'),
('Contacts.ManageContacts.Index', 0, NULL, NULL, 'N;'),
('Contacts.ManageContacts.Update', 0, NULL, NULL, 'N;'),
('Contacts.ManageContacts.View', 0, NULL, NULL, 'N;'),
('Countries.Default.*', 1, NULL, NULL, 'N;'),
('Countries.Default.Index', 0, NULL, NULL, 'N;'),
('Countries.ManageCountries.*', 1, NULL, NULL, 'N;'),
('Countries.ManageCountries.Admin', 0, NULL, NULL, 'N;'),
('Countries.ManageCountries.Create', 0, NULL, NULL, 'N;'),
('Countries.ManageCountries.Delete', 0, NULL, NULL, 'N;'),
('Countries.ManageCountries.Index', 0, NULL, NULL, 'N;'),
('Countries.ManageCountries.Update', 0, NULL, NULL, 'N;'),
('Countries.ManageCountries.View', 0, NULL, NULL, 'N;'),
('Galleries.Default.*', 1, NULL, NULL, 'N;'),
('Galleries.Default.Index', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.*', 1, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.Admin', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.Ajaxactive', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.Ajaxupdate', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.Create', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.Delete', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.Index', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.Update', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.UpdateTarget', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleries.View', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleryImages.*', 1, NULL, NULL, 'N;'),
('Galleries.ManageGalleryImages.Admin', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleryImages.Create', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleryImages.Delete', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleryImages.Index', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleryImages.Update', 0, NULL, NULL, 'N;'),
('Galleries.ManageGalleryImages.View', 0, NULL, NULL, 'N;'),
('Galleries.ManageImagesByGallery.*', 1, NULL, NULL, 'N;'),
('Galleries.ManageImagesByGallery.Admin', 0, NULL, NULL, 'N;'),
('Galleries.ManageImagesByGallery.Ajaxactive', 0, NULL, NULL, 'N;'),
('Galleries.ManageImagesByGallery.Ajaxupdate', 0, NULL, NULL, 'N;'),
('Galleries.ManageImagesByGallery.Delete', 0, NULL, NULL, 'N;'),
('Galleries.ManageImagesByGallery.Update', 0, NULL, NULL, 'N;'),
('Galleries.ManageImagesByGallery.View', 0, NULL, NULL, 'N;'),
('Galleries.ManageUpload.*', 1, NULL, NULL, 'N;'),
('Galleries.ManageUpload.Delete', 0, NULL, NULL, 'N;'),
('Galleries.ManageUpload.Index', 0, NULL, NULL, 'N;'),
('Galleries.ManageUpload.Upload', 0, NULL, NULL, 'N;'),
('Galleries.MultiUpload.*', 1, NULL, NULL, 'N;'),
('Galleries.MultiUpload.Index', 0, NULL, NULL, 'N;'),
('Manage', 2, 'Manage', 'Manage', 'N;'),
('ManageTeam.*', 1, NULL, NULL, 'N;'),
('ManageTeam.Admin', 0, NULL, NULL, 'N;'),
('ManageTeam.Create', 0, NULL, NULL, 'N;'),
('ManageTeam.Delete', 0, NULL, NULL, 'N;'),
('ManageTeam.Index', 0, NULL, NULL, 'N;'),
('ManageTeam.Update', 0, NULL, NULL, 'N;'),
('ManageTeam.View', 0, NULL, NULL, 'N;'),
('News.Default.*', 1, NULL, NULL, 'N;'),
('News.Default.Index', 0, NULL, NULL, 'N;'),
('News.ManageNews.*', 1, NULL, NULL, 'N;'),
('News.ManageNews.Admin', 0, NULL, NULL, 'N;'),
('News.ManageNews.Ajaxactive', 0, NULL, NULL, 'N;'),
('News.ManageNews.Ajaxupdate', 0, NULL, NULL, 'N;'),
('News.ManageNews.Create', 0, NULL, NULL, 'N;'),
('News.ManageNews.Delete', 0, NULL, NULL, 'N;'),
('News.ManageNews.Index', 0, NULL, NULL, 'N;'),
('News.ManageNews.NewsInCategory', 0, NULL, NULL, 'N;'),
('News.ManageNews.Update', 0, NULL, NULL, 'N;'),
('News.ManageNews.View', 0, NULL, NULL, 'N;'),
('News.manageNewsACategory.*', 1, NULL, NULL, 'N;'),
('News.manageNewsACategory.Admin', 0, NULL, NULL, 'N;'),
('News.manageNewsACategory.Create', 0, NULL, NULL, 'N;'),
('News.manageNewsACategory.Delete', 0, NULL, NULL, 'N;'),
('News.manageNewsACategory.Index', 0, NULL, NULL, 'N;'),
('News.manageNewsACategory.Update', 0, NULL, NULL, 'N;'),
('News.manageNewsACategory.View', 0, NULL, NULL, 'N;'),
('News.manageNewsCategories.*', 1, NULL, NULL, 'N;'),
('News.manageNewsCategories.Admin', 0, NULL, NULL, 'N;'),
('News.manageNewsCategories.Create', 0, NULL, NULL, 'N;'),
('News.manageNewsCategories.Delete', 0, NULL, NULL, 'N;'),
('News.manageNewsCategories.Index', 0, NULL, NULL, 'N;'),
('News.manageNewsCategories.Update', 0, NULL, NULL, 'N;'),
('News.manageNewsCategories.View', 0, NULL, NULL, 'N;'),
('Operation 1', 0, 'Operation 1', 'Operation 1', 'N;'),
('Products.Default.*', 1, NULL, NULL, 'N;'),
('Products.Default.Index', 0, NULL, NULL, 'N;'),
('Products.ManageColorForAProduct.*', 1, NULL, NULL, 'N;'),
('Products.ManageColorForAProduct.Admin', 0, NULL, NULL, 'N;'),
('Products.ManageColorForAProduct.Create', 0, NULL, NULL, 'N;'),
('Products.ManageColorForAProduct.Delete', 0, NULL, NULL, 'N;'),
('Products.ManageColorForAProduct.Index', 0, NULL, NULL, 'N;'),
('Products.ManageColorForAProduct.Update', 0, NULL, NULL, 'N;'),
('Products.ManageColorForAProduct.View', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.*', 1, NULL, NULL, 'N;'),
('Products.ManageProductCategories.Admin', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.Create', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.Delete', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.FetchTree', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.Index', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.ManageByTree', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.Tree', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.Update', 0, NULL, NULL, 'N;'),
('Products.ManageProductCategories.View', 0, NULL, NULL, 'N;'),
('Products.ManageProductColor.*', 1, NULL, NULL, 'N;'),
('Products.ManageProductColor.Admin', 0, NULL, NULL, 'N;'),
('Products.ManageProductColor.Create', 0, NULL, NULL, 'N;'),
('Products.ManageProductColor.Delete', 0, NULL, NULL, 'N;'),
('Products.ManageProductColor.Index', 0, NULL, NULL, 'N;'),
('Products.ManageProductColor.Update', 0, NULL, NULL, 'N;'),
('Products.ManageProductColor.View', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.*', 1, NULL, NULL, 'N;'),
('Products.ManageProducts.Admin', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.Ajaxactive', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.Ajaxupdate', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.Create', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.Delete', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.Index', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.ProductsInCategory', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.Update', 0, NULL, NULL, 'N;'),
('Products.ManageProducts.View', 0, NULL, NULL, 'N;'),
('Products.Test.*', 1, NULL, NULL, 'N;'),
('Products.Test.Dynamiccities', 0, NULL, NULL, 'N;'),
('Products.Test.Khuong', 0, NULL, NULL, 'N;'),
('Services.Default.*', 1, NULL, NULL, 'N;'),
('Services.Default.Index', 0, NULL, NULL, 'N;'),
('Services.ManageServiceCategory.*', 1, NULL, NULL, 'N;'),
('Services.ManageServiceCategory.Admin', 0, NULL, NULL, 'N;'),
('Services.ManageServiceCategory.Create', 0, NULL, NULL, 'N;'),
('Services.ManageServiceCategory.Delete', 0, NULL, NULL, 'N;'),
('Services.ManageServiceCategory.Index', 0, NULL, NULL, 'N;'),
('Services.ManageServiceCategory.Tree', 0, NULL, NULL, 'N;'),
('Services.ManageServiceCategory.Update', 0, NULL, NULL, 'N;'),
('Services.ManageServiceCategory.View', 0, NULL, NULL, 'N;'),
('Services.ManageServices.*', 1, NULL, NULL, 'N;'),
('Services.ManageServices.Admin', 0, NULL, NULL, 'N;'),
('Services.ManageServices.Ajaxactive', 0, NULL, NULL, 'N;'),
('Services.ManageServices.Ajaxupdate', 0, NULL, NULL, 'N;'),
('Services.ManageServices.Create', 0, NULL, NULL, 'N;'),
('Services.ManageServices.Delete', 0, NULL, NULL, 'N;'),
('Services.ManageServices.Index', 0, NULL, NULL, 'N;'),
('Services.ManageServices.ServicesInCategory', 0, NULL, NULL, 'N;'),
('Services.ManageServices.Update', 0, NULL, NULL, 'N;'),
('Services.ManageServices.View', 0, NULL, NULL, 'N;'),
('Site.*', 1, NULL, NULL, 'N;'),
('Site.About', 0, NULL, NULL, 'N;'),
('Site.Contact', 0, NULL, NULL, 'N;'),
('Site.Error', 0, NULL, NULL, 'N;'),
('Site.Index', 0, NULL, NULL, 'N;'),
('Site.Partial', 0, NULL, NULL, 'N;'),
('Site.Project', 0, NULL, NULL, 'N;'),
('Staticpages.Default.*', 1, NULL, NULL, 'N;'),
('Staticpages.Default.Index', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.*', 1, NULL, NULL, 'N;'),
('Staticpages.Staticpage.Admin', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.Ajaxactive', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.Ajaxupdate', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.Create', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.Delete', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.Index', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.Test', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.TestWidget', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.Update', 0, NULL, NULL, 'N;'),
('Staticpages.Staticpage.View', 0, NULL, NULL, 'N;'),
('Teams.Default.*', 1, NULL, NULL, 'N;'),
('Teams.Default.Index', 0, NULL, NULL, 'N;'),
('Teams.ManageTeam.*', 1, NULL, NULL, 'N;'),
('Teams.ManageTeam.Admin', 0, NULL, NULL, 'N;'),
('Teams.ManageTeam.Create', 0, NULL, NULL, 'N;'),
('Teams.ManageTeam.Delete', 0, NULL, NULL, 'N;'),
('Teams.ManageTeam.Index', 0, NULL, NULL, 'N;'),
('Teams.ManageTeam.Update', 0, NULL, NULL, 'N;'),
('Teams.ManageTeam.View', 0, NULL, NULL, 'N;'),
('Test.Paypal.*', 1, NULL, NULL, 'N;'),
('Test.Paypal.Buy', 0, NULL, NULL, 'N;'),
('Test.Paypal.Cancel', 0, NULL, NULL, 'N;'),
('Test.Paypal.Confirm', 0, NULL, NULL, 'N;'),
('Test.Paypal.DirectPayment', 0, NULL, NULL, 'N;'),
('Test.Paypal.Test', 0, NULL, NULL, 'N;'),
('User.Activation.*', 1, NULL, NULL, 'N;'),
('User.Activation.Activation', 0, NULL, NULL, 'N;'),
('User.Admin.*', 1, NULL, NULL, 'N;'),
('User.Admin.Admin', 0, NULL, NULL, 'N;'),
('User.Admin.AjaxEdit', 0, NULL, NULL, 'N;'),
('User.Admin.Create', 0, NULL, NULL, 'N;'),
('User.Admin.Delete', 0, NULL, NULL, 'N;'),
('User.Admin.TestNewView', 0, NULL, NULL, 'N;'),
('User.Admin.Update', 0, NULL, NULL, 'N;'),
('User.Admin.View', 0, NULL, NULL, 'N;'),
('User.Default.*', 1, NULL, NULL, 'N;'),
('User.Default.Index', 0, NULL, NULL, 'N;'),
('User.Login.*', 1, NULL, NULL, 'N;'),
('User.Login.Login', 0, NULL, NULL, 'N;'),
('User.Logout.*', 1, NULL, NULL, 'N;'),
('User.Logout.Logout', 0, NULL, NULL, 'N;'),
('User.Profile.*', 1, NULL, NULL, 'N;'),
('User.Profile.Changepassword', 0, NULL, NULL, 'N;'),
('User.Profile.Edit', 0, NULL, NULL, 'N;'),
('User.Profile.Profile', 0, NULL, NULL, 'N;'),
('User.ProfileField.*', 1, NULL, NULL, 'N;'),
('User.ProfileField.Admin', 0, NULL, NULL, 'N;'),
('User.ProfileField.Create', 0, NULL, NULL, 'N;'),
('User.ProfileField.Delete', 0, NULL, NULL, 'N;'),
('User.ProfileField.Update', 0, NULL, NULL, 'N;'),
('User.ProfileField.View', 0, NULL, NULL, 'N;'),
('User.Recovery.*', 1, NULL, NULL, 'N;'),
('User.Recovery.Recovery', 0, NULL, NULL, 'N;'),
('User.Registration.*', 1, NULL, NULL, 'N;'),
('User.Registration.Registration', 0, NULL, NULL, 'N;'),
('User.User.*', 1, NULL, NULL, 'N;'),
('User.User.Index', 0, NULL, NULL, 'N;'),
('User.User.View', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitemchild`
--

DROP TABLE IF EXISTS `authitemchild`;
CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authitemchild`
--

INSERT INTO `authitemchild` (`parent`, `child`) VALUES
('Author', 'Banners.Default.Index'),
('Manage', 'Banners.Default.Index');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `root` tinyint(4) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `alias`, `image`, `created`, `modified`, `lft`, `rgt`, `level`, `root`, `parent_id`, `description`) VALUES
(1, 'Root', NULL, NULL, NULL, NULL, 1, 22, 1, 1, NULL, NULL),
(2, 'Music', NULL, NULL, NULL, NULL, 8, 15, 2, 1, 1, NULL),
(3, 'Movie', NULL, NULL, NULL, NULL, 16, 17, 2, 1, 1, NULL),
(4, 'Sport', NULL, NULL, NULL, NULL, 2, 3, 2, 1, 1, NULL),
(5, 'Football', NULL, NULL, NULL, NULL, 9, 10, 3, 1, 2, NULL),
(6, 'Swimming', 'swimming', NULL, NULL, NULL, 19, 20, 3, 1, 8, NULL),
(7, 'Dance', NULL, NULL, NULL, NULL, 6, 7, 2, 1, 1, NULL),
(8, 'Economic', NULL, NULL, NULL, NULL, 18, 21, 2, 1, 1, NULL),
(9, 'Action', NULL, NULL, NULL, NULL, 13, 14, 3, 1, 2, NULL),
(10, 'Classic', 'classic', NULL, NULL, NULL, 4, 5, 2, 1, 1, NULL),
(11, 'Romantic', 'romantic', NULL, NULL, NULL, 11, 12, 3, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(128) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `logtime` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

DROP TABLE IF EXISTS `rights`;
CREATE TABLE IF NOT EXISTS `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sd_banners`
--

DROP TABLE IF EXISTS `sd_banners`;
CREATE TABLE IF NOT EXISTS `sd_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sd_banners`
--

INSERT INTO `sd_banners` (`id`, `title`, `image`, `description`, `url`, `priority`, `create_time`, `update_time`) VALUES
(1, 'Testes', '13831038402.jpg', NULL, NULL, 3, NULL, '2013-11-20 05:12:04'),
(2, 'Test', '138492058313831038402.jpg', NULL, NULL, 2, '2013-11-20 05:09:43', '2013-11-20 05:12:04'),
(3, 'aaa', '138492059413831038402.jpg', NULL, NULL, 1, '2013-11-20 05:09:54', '2013-11-20 05:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `sd_contacts`
--

DROP TABLE IF EXISTS `sd_contacts`;
CREATE TABLE IF NOT EXISTS `sd_contacts` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `content` text,
  `phone` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_contacts`
--

INSERT INTO `sd_contacts` (`id`, `title`, `email`, `name`, `content`, `phone`, `address`, `city`, `country`, `created`, `status`) VALUES
(1, 'Test', 'khuong@gmail.com', 'khuong', 'qwerty', '123456789', 'Cam Le', 'Da Nang', 'Viet Nam', NULL, 1),
(2, 'Test', 'congkhuong1308@gmail.com', 'congkhuong', 'hello!', NULL, NULL, NULL, NULL, NULL, 0),
(3, 'Ten', 'khuong@gmail.com', 'Ten', 'TenTen', NULL, NULL, NULL, NULL, NULL, 0),
(4, 'Test contact', 'congkhuong1308@gmail.com', 'Test contact', 'Test contact', NULL, NULL, NULL, NULL, NULL, 0),
(5, 'Test contact2', 'congkhuong1308@gmail.com', 'Test contact2', 'Test contact2', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sd_countries`
--

DROP TABLE IF EXISTS `sd_countries`;
CREATE TABLE IF NOT EXISTS `sd_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `c_code` varchar(255) DEFAULT NULL,
  `priority` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=276 ;

--
-- Dumping data for table `sd_countries`
--

INSERT INTO `sd_countries` (`id`, `name`, `c_code`, `priority`) VALUES
(12, 'Aruba', '297', NULL),
(13, 'Ashmore & Cartier', '0', NULL),
(14, 'Australia', '61', 5),
(15, 'Austria', '43', NULL),
(16, 'Azerbaijan', '994', NULL),
(17, 'The Bahamas', '1242', NULL),
(18, 'Bahrain', '973', NULL),
(19, 'Baker Island', '0', NULL),
(20, 'Bangladesh', '880', NULL),
(21, 'Barbados', '1246', NULL),
(22, 'Bassas da India', '0', NULL),
(23, 'Belarus', '375', NULL),
(24, 'Belgium', '32', NULL),
(25, 'Belize', '501', NULL),
(26, 'Benin', '229', NULL),
(27, 'Bermuda', '1441', NULL),
(28, 'Bhutan', '975', NULL),
(29, 'Bolivia', '591', NULL),
(30, 'Bosnia & Herzegovina', '387', NULL),
(31, 'Botswana', '267', NULL),
(32, 'Bouvet Island', '0', NULL),
(33, 'Brazil', '55', NULL),
(34, 'British Indian Ocean Territory', '0', NULL),
(35, 'British Virgin Islands', '1', NULL),
(36, 'Brunei Darussalam', '673', NULL),
(37, 'Bulgaria', '359', NULL),
(38, 'Burkina Faso', '226', NULL),
(39, 'Burma', '95', NULL),
(40, 'Burundi', '257', NULL),
(41, 'Cambodia', '855', NULL),
(42, 'Cameroon', '237', NULL),
(43, 'Canada', '1204', NULL),
(44, 'Cape Verde', '238', NULL),
(45, 'Cayman Islands', '1345', NULL),
(46, 'Central African Republic', '236', NULL),
(47, 'Chad', '235', NULL),
(48, 'Chile', '56', NULL),
(49, 'China', '86', NULL),
(50, 'Christmas Island', '61', NULL),
(51, 'Clipperton Island', '0', NULL),
(52, 'Cocos (Keeling) Islands', '0', NULL),
(53, 'Colombia', '57', NULL),
(54, 'Comoros', '269', NULL),
(55, 'Congo ', '236', NULL),
(57, 'Cook Islands', '682', NULL),
(58, 'Coral Sea Islands', '0', NULL),
(59, 'Costa Rica', '506', NULL),
(60, 'Cote d''Ivoire', '225', NULL),
(61, 'Croatia', '385', NULL),
(62, 'Cuba', '53', NULL),
(63, 'Cyprus', '357', NULL),
(64, 'Czech Republic', '420', NULL),
(65, 'Denmark', '45', NULL),
(66, 'Djibouti', '253', NULL),
(67, 'Dominica', '1767', NULL),
(68, 'Dominican Republic', '1809', NULL),
(69, 'East Timor', '670', NULL),
(70, 'Ecuador', '593', NULL),
(71, 'Egypt', '20', NULL),
(72, 'El Salvador', '503', NULL),
(73, 'Equatorial Guinea', '240', NULL),
(74, 'Eritrea', '291', NULL),
(75, 'Estonia', '372', NULL),
(76, 'Ethiopia', '251', NULL),
(77, 'Europa Island', '0', NULL),
(78, 'Falkland Islands', '500', NULL),
(79, 'Faroe Islands', '298', NULL),
(80, 'Fiji', '679', NULL),
(81, 'Finland', '358', NULL),
(82, 'France', '33', NULL),
(84, 'French Guiana', '594', NULL),
(85, 'French Polynesia', '689', NULL),
(87, 'Gabon', '241', NULL),
(88, 'The Gambia', '220', NULL),
(89, 'Gaza Strip', '0', NULL),
(90, 'Georgia', '995', NULL),
(91, 'Germany', '49', NULL),
(92, 'Ghana', '233', NULL),
(93, 'Gibraltar', '350', NULL),
(94, 'Glorioso Islands', '0', NULL),
(95, 'Greece', '30', NULL),
(96, 'Greenland', '299', NULL),
(97, 'Grenada', '1473', NULL),
(98, 'Guadeloupe', '590', NULL),
(99, 'Guam', '1671', NULL),
(100, 'Guatemala', '502', NULL),
(101, 'Guernsey', '502', NULL),
(102, 'Guinea', '224', NULL),
(103, 'Guinea-Bissau', '245', NULL),
(104, 'Guyana', '592', NULL),
(105, 'Haiti', '509', NULL),
(107, 'Holy See (Vatican City)', '0', NULL),
(108, 'Honduras', '504', NULL),
(109, 'Hong Kong (SAR)', '852', NULL),
(110, 'Howland Island', '0', NULL),
(111, 'Hungary', '36', NULL),
(112, 'Iceland', '354', NULL),
(113, 'India', '91', NULL),
(114, 'Indonesia', '62', NULL),
(115, 'Iran', '98', NULL),
(116, 'Iraq', '964', NULL),
(117, 'Ireland', '353', NULL),
(118, 'Israel', '972', NULL),
(119, 'Italy', '39', NULL),
(120, 'Jamaica', '1876', NULL),
(121, 'Jan Mayen', '0', NULL),
(122, 'Japan', '81', NULL),
(123, 'Jarvis Island', '0', NULL),
(124, 'Jersey', '0', NULL),
(125, 'Johnston Atoll', '0', NULL),
(126, 'Jordan', '962', NULL),
(127, 'Juan de Nova Island', '0', NULL),
(128, 'Kazakhstan', '7', NULL),
(129, 'Kenya', '254', NULL),
(130, 'Kingman Reef', '0', NULL),
(131, 'Kiribati', '686', NULL),
(132, 'Korea   North', '850', NULL),
(133, 'Korea   South', '82', NULL),
(134, 'Kuwait', '965', NULL),
(135, 'Kyrgyzstan', '996', NULL),
(136, 'Laos', '856', NULL),
(137, 'Latvia', '371', NULL),
(138, 'Lebanon', '961', NULL),
(139, 'Lesotho', '266', NULL),
(140, 'Liberia', '231', NULL),
(141, 'Libya', '218', NULL),
(142, 'Liechtenstein', '423', NULL),
(143, 'Lithuania', '370', NULL),
(144, 'Luxembourg', '352', NULL),
(145, 'Macao', '853', NULL),
(146, 'Macedonia', '389', NULL),
(147, 'Madagascar', '261', NULL),
(148, 'Malawi', '265', NULL),
(149, 'Malaysia', '60', NULL),
(150, 'Maldives', '960', NULL),
(151, 'Mali', '223', NULL),
(152, 'Malta', '356', NULL),
(153, 'Isle of Man', '0', NULL),
(154, 'Marshall Islands', '692', NULL),
(155, 'Martinique', '596', NULL),
(156, 'Mauritania', '222', NULL),
(157, 'Mauritius', '230', NULL),
(158, 'Mayotte', '269', NULL),
(159, 'Mexico', '52', NULL),
(160, 'Micronesia ', '0', NULL),
(161, 'Midway Islands', '0', NULL),
(163, 'Moldova', '373', NULL),
(164, 'Monaco', '377', NULL),
(165, 'Mongolia', '976', NULL),
(166, 'Montenegro', '0', NULL),
(167, 'Montserrat', '1664', NULL),
(168, 'Morocco', '212', NULL),
(169, 'Mozambique', '258', NULL),
(170, 'Myanmar', '95', NULL),
(171, 'Namibia', '264', NULL),
(172, 'Nauru', '674', NULL),
(173, 'Navassa Island', '0', NULL),
(174, 'Nepal', '977', NULL),
(175, 'Netherlands', '31', NULL),
(176, 'Netherlands Antilles', '599', NULL),
(177, 'New Caledonia', '687', NULL),
(178, 'New Zealand', '64', 2),
(179, 'Nicaragua', '505', NULL),
(180, 'Niger', '227', NULL),
(181, 'Nigeria', '234', NULL),
(182, 'Niue', '683', NULL),
(183, 'Norfolk Island', '0', NULL),
(184, 'Northern Mariana Islands', '599', NULL),
(185, 'Norway', '47', NULL),
(186, 'Oman', '968', NULL),
(187, 'Pakistan', '92', NULL),
(188, 'Palau', '680', NULL),
(189, 'Palmyra Atoll', '0', NULL),
(190, 'Panama', '507', NULL),
(191, 'Papua New Guinea', '675', NULL),
(192, 'Paracel Islands', '0', NULL),
(193, 'Paraguay', '595', NULL),
(194, 'Peru', '51', NULL),
(195, 'Philippines', '63', NULL),
(196, 'Pitcairn Islands', '0', NULL),
(197, 'Poland', '48', NULL),
(198, 'Portugal', '351', NULL),
(199, 'Puerto Rico', '1787', NULL),
(200, 'Qatar', '974', NULL),
(201, 'Reunion', '262', NULL),
(202, 'Romania', '40', NULL),
(203, 'Russia', '7', NULL),
(204, 'Rwanda', '250', NULL),
(205, 'Saint Helena', '290', NULL),
(206, 'St Kitts & Nevis', '1869', NULL),
(207, 'Saint Lucia', '1758', NULL),
(208, 'St Pierre & Miquelon', '508', NULL),
(209, 'St Vincent & Grenadines', '1784', NULL),
(210, 'Samoa', '685', NULL),
(211, 'San Marino', '378', NULL),
(212, 'Sao Tom & Principe', '239', NULL),
(213, 'Saudi Arabia', '966', NULL),
(214, 'Senegal', '221', NULL),
(215, 'Serbia', '0', NULL),
(216, 'Serbia & Montenegro', '0', NULL),
(217, 'Seychelles', '248', NULL),
(218, 'Sierra Leone', '232', NULL),
(219, 'Singapore', '65', NULL),
(220, 'Slovakia', '421', NULL),
(221, 'Slovenia', '386', NULL),
(222, 'Solomon Islands', '677', NULL),
(223, 'Somalia', '252', NULL),
(224, 'South Africa', '27', NULL),
(226, 'Spain', '34', NULL),
(227, 'Spratly Islands', '0', NULL),
(228, 'Sri Lanka', '94', NULL),
(229, 'Sudan', '249', NULL),
(230, 'Suriname', '597', NULL),
(231, 'Svalbard', '0', NULL),
(232, 'Swaziland', '268', NULL),
(233, 'Sweden', '46', NULL),
(234, 'Switzerland', '41', NULL),
(235, 'Syria', '963', NULL),
(236, 'Taiwan', '886', NULL),
(237, 'Tajikistan', '992', NULL),
(238, 'Tanzania', '255', NULL),
(239, 'Thailand', '66', NULL),
(240, 'Togo', '228', NULL),
(241, 'Tokelau', '690', NULL),
(242, 'Tonga', '676', NULL),
(243, 'Trinidad & Tobago', '1868', NULL),
(244, 'Tromelin Island', '0', NULL),
(245, 'Tunisia', '216', NULL),
(246, 'Turkey', '90', NULL),
(247, 'Turkmenistan', '993', NULL),
(248, 'Turks & Caicos Islands', '1649', NULL),
(249, 'Tuvalu', '688', NULL),
(250, 'Uganda', '256', NULL),
(251, 'Ukraine', '380', NULL),
(252, 'United Arab Emirates', '971', NULL),
(253, 'United Kingdom', '44', 3),
(254, 'United States', '1', 4),
(256, 'Uruguay', '598', NULL),
(257, 'Uzbekistan', '998', NULL),
(258, 'Vanuatu', '678', NULL),
(259, 'Venezuela', '58', NULL),
(260, 'Vietnam', '84', NULL),
(261, 'Virgin Islands', '1284', NULL),
(262, 'Virgin Islands (UK)', '1284', NULL),
(263, 'Virgin Islands (US)', '1340', NULL),
(264, 'Wake Island', '0', NULL),
(265, 'Wallis and Futuna', '0', NULL),
(266, 'West Bank', '0', NULL),
(267, 'Western Sahara', '0', NULL),
(268, 'Western Samoa', '0', NULL),
(270, 'Yemen', '967', NULL),
(271, 'Yugoslavia', '381', NULL),
(272, 'Zaire', '0', NULL),
(273, 'Zambia', '260', NULL),
(274, 'Zimbabwe', '263', NULL),
(275, 'AAATestCountry', '9999', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sd_galleries`
--

DROP TABLE IF EXISTS `sd_galleries`;
CREATE TABLE IF NOT EXISTS `sd_galleries` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `priority` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_galleries`
--

INSERT INTO `sd_galleries` (`id`, `title`, `alias`, `image`, `description`, `content`, `priority`, `create_time`, `update_time`, `is_published`) VALUES
(1, 'Sport', 'sport', '13832057502.jpg', NULL, NULL, 4, '2013-10-31 08:49:10', '2013-11-22 13:02:00', 1),
(2, 'Family', 'family', '13832057611.jpg', NULL, NULL, 1, '2013-10-31 08:49:21', '2013-11-22 13:01:59', 1),
(3, 'Friend', 'friend', '13832057743.jpg', NULL, NULL, 1, '2013-10-31 08:49:34', '2013-11-22 13:02:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sd_gallery_images`
--

DROP TABLE IF EXISTS `sd_gallery_images`;
CREATE TABLE IF NOT EXISTS `sd_gallery_images` (
  `id` int(11) NOT NULL,
  `gallery_id` varchar(16) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '1',
  `priority` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_gallery_images`
--

INSERT INTO `sd_gallery_images` (`id`, `gallery_id`, `name`, `image`, `description`, `create_time`, `update_time`, `is_published`, `priority`) VALUES
(1, '1', 'teset 12', '138320581011.jpg', NULL, '2013-10-31 08:50:10', '2013-11-16 09:19:52', 1, 0),
(2, '1', 'Teset 2', '138320582112.jpg', NULL, '2013-10-31 08:50:21', '2013-11-16 09:24:49', 0, 0),
(3, '3', 'Test 3', '138320583915.jpg', NULL, '2013-10-31 08:50:39', '2013-11-19 07:09:42', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sd_news`
--

DROP TABLE IF EXISTS `sd_news`;
CREATE TABLE IF NOT EXISTS `sd_news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `description` text,
  `content` text,
  `priority` int(11) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `news_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_news`
--

INSERT INTO `sd_news` (`id`, `title`, `alias`, `image`, `description`, `content`, `priority`, `is_published`, `create_time`, `update_time`, `news_time`) VALUES
(2, 'Test', 'test', NULL, NULL, NULL, 3, 0, NULL, '2013-11-22 12:58:04', NULL),
(4, 'grfdf', 'grfdf', NULL, NULL, NULL, 2, 1, '0000-00-00 00:00:00', '2013-11-22 12:58:04', NULL),
(5, 'khuong', 'khuong', NULL, NULL, NULL, 3, 0, '2013-10-29 06:17:25', '2013-11-22 12:59:56', NULL),
(6, 'test new', 'test new', NULL, NULL, NULL, 1, 0, '2013-10-29 08:05:51', '2013-11-22 12:58:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sd_news_categories`
--

DROP TABLE IF EXISTS `sd_news_categories`;
CREATE TABLE IF NOT EXISTS `sd_news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `lft` int(4) DEFAULT NULL,
  `rght` int(4) DEFAULT NULL,
  `parent_id` int(4) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `is_published` tinyint(1) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_news_categories`
--

INSERT INTO `sd_news_categories` (`id`, `name`, `alias`, `lft`, `rght`, `parent_id`, `image`, `description`, `content`, `is_published`, `create_time`, `update_time`) VALUES
(1, 'Sport', 'Sport', NULL, NULL, NULL, NULL, 'Text', 'Text', 0, NULL, NULL),
(2, 'Family', 'family', 1, 2, 1, NULL, 'test', NULL, 0, NULL, NULL),
(3, 'Building-test', 'building-test', 1, 2, 1, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sd_news_middle`
--

DROP TABLE IF EXISTS `sd_news_middle`;
CREATE TABLE IF NOT EXISTS `sd_news_middle` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_news_middle`
--

INSERT INTO `sd_news_middle` (`id`, `category_id`, `news_id`) VALUES
(11, 3, 6),
(12, 1, 5),
(13, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sd_products`
--

DROP TABLE IF EXISTS `sd_products`;
CREATE TABLE IF NOT EXISTS `sd_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `special_price` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `style` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `is_special` tinyint(1) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_products`
--

INSERT INTO `sd_products` (`id`, `name`, `alias`, `description`, `content`, `image`, `price`, `special_price`, `quantity`, `style`, `priority`, `is_special`, `is_published`, `create_time`, `update_time`) VALUES
(1, 'test 4', 'test-4', NULL, NULL, '138328360420.jpg', NULL, NULL, 0, NULL, 1, 0, 0, NULL, '2014-02-12 08:47:52'),
(2, 'khuong', 'khuong', NULL, NULL, '138328361727.jpg', NULL, NULL, 0, NULL, 0, 0, 0, '2013-10-30 10:16:40', '2014-02-12 08:47:55'),
(3, 'testtete', 'testtete', NULL, NULL, '138321120416.jpg', NULL, NULL, 0, NULL, 2, 0, 0, '2013-10-31 10:20:04', '2014-02-12 08:47:58'),
(4, 'teat', 'teat', '<p>\r\n	da</p>\r\n', '<p>\r\n	dad</p>\r\n', '139228182013832796079.jpg', NULL, NULL, 0, NULL, 0, 1, 0, '2014-02-13 09:57:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sd_products_copy`
--

DROP TABLE IF EXISTS `sd_products_copy`;
CREATE TABLE IF NOT EXISTS `sd_products_copy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `special_price` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `style` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `is_special` tinyint(1) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_products_copy`
--

INSERT INTO `sd_products_copy` (`id`, `name`, `alias`, `description`, `content`, `image`, `price`, `special_price`, `quantity`, `style`, `priority`, `is_special`, `is_published`, `create_time`, `update_time`) VALUES
(1, 'test 4', 'test-4', NULL, NULL, '138328360420.jpg', NULL, NULL, 0, NULL, 1, 0, 0, NULL, '2014-02-12 08:47:52'),
(2, 'khuong', 'khuong', NULL, NULL, '138328361727.jpg', NULL, NULL, 0, NULL, 0, 0, 0, '2013-10-30 10:16:40', '2014-02-12 08:47:55'),
(3, 'testtete', 'testtete', NULL, NULL, '138321120416.jpg', NULL, NULL, 0, NULL, 2, 0, 0, '2013-10-31 10:20:04', '2014-02-12 08:47:58'),
(4, 'teat', 'teat', '<p>\r\n	da</p>\r\n', '<p>\r\n	dad</p>\r\n', '139228182013832796079.jpg', NULL, NULL, 0, NULL, 0, 1, 0, '2014-02-13 09:57:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sd_product_categories`
--

DROP TABLE IF EXISTS `sd_product_categories`;
CREATE TABLE IF NOT EXISTS `sd_product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `root` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_product_categories`
--

INSERT INTO `sd_product_categories` (`id`, `name`, `alias`, `image`, `description`, `lft`, `rght`, `parent_id`, `level`, `create_time`, `update_time`, `root`) VALUES
(1, 'Test categories2', 'test-categories2', NULL, 'ccc', 2, 3, 4, 2, NULL, NULL, 1),
(2, 'Test categories 5', 'test-categories-5', NULL, NULL, 4, 5, 4, 2, NULL, NULL, 1),
(3, 'Sprot', 'sprot', NULL, NULL, 6, 7, 4, 2, NULL, '2014-02-12 10:34:21', 1),
(4, 'root', NULL, NULL, NULL, 1, 8, NULL, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sd_product_images`
--

DROP TABLE IF EXISTS `sd_product_images`;
CREATE TABLE IF NOT EXISTS `sd_product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(16) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `priority` int(11) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `color` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sd_product_images`
--

INSERT INTO `sd_product_images` (`id`, `product_id`, `name`, `image`, `description`, `priority`, `is_published`, `create_time`, `update_time`, `color`) VALUES
(1, '1', NULL, '138327857416.jpg', NULL, 0, 1, NULL, NULL, '#FFFFFF'),
(2, '1', 'cc', '138327858715.jpg', NULL, 0, 1, NULL, NULL, '#808000'),
(4, '3', 'cscs', '13832796079.jpg', NULL, 0, 1, NULL, NULL, '#ff6600'),
(5, '1', 'khuong', '138328155415.jpg', NULL, 0, 1, NULL, NULL, '#ff0000'),
(6, '1', 'teste', '138328335117.jpg', NULL, 0, 1, NULL, NULL, '#ff0000'),
(7, '2', 'Test khuong', '138328378824.jpg', NULL, 0, 1, NULL, NULL, '#ff0000');

-- --------------------------------------------------------

--
-- Table structure for table `sd_product_middle`
--

DROP TABLE IF EXISTS `sd_product_middle`;
CREATE TABLE IF NOT EXISTS `sd_product_middle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `sd_product_middle`
--

INSERT INTO `sd_product_middle` (`id`, `category_id`, `product_id`) VALUES
(45, 1, 3),
(46, 2, 1),
(47, 1, 2),
(48, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sd_profiles`
--

DROP TABLE IF EXISTS `sd_profiles`;
CREATE TABLE IF NOT EXISTS `sd_profiles` (
  `user_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_profiles`
--

INSERT INTO `sd_profiles` (`user_id`, `lastname`, `firstname`) VALUES
(1, 'amin', 'admin'),
(5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sd_profiles_fields`
--

DROP TABLE IF EXISTS `sd_profiles_fields`;
CREATE TABLE IF NOT EXISTS `sd_profiles_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `field_type` varchar(50) NOT NULL,
  `field_size` int(3) DEFAULT '0',
  `field_size_min` int(3) DEFAULT '0',
  `required` int(1) DEFAULT '0',
  `matchs` varchar(255) NOT NULL,
  `ranges` varchar(255) NOT NULL,
  `error_message` varchar(255) NOT NULL,
  `other_validator` text NOT NULL,
  `defaults` varchar(255) NOT NULL,
  `widget` varchar(255) NOT NULL,
  `widgetparams` text NOT NULL,
  `position` int(3) DEFAULT '0',
  `visible` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sd_project`
--

DROP TABLE IF EXISTS `sd_project`;
CREATE TABLE IF NOT EXISTS `sd_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(127) DEFAULT NULL,
  `title` varchar(127) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sd_project`
--

INSERT INTO `sd_project` (`id`, `alias`, `title`, `short_description`, `description`, `create_time`, `update_time`) VALUES
(1, 'web-develop', 'Web develop', '<h3>\r\n	Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander</h3>\r\n', '<p>\r\n	<span style="font-size:14px;"><span style="font-family:arial, helvetica, sans-serif;"><span style="color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(249, 249, 249);">The Carnatic anchored at the quay near the custom-house, in the midst of a crowd of ships bearing the flags of all nations. Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander aimlessly through the streets of Yokohama. He found himself at first in a thoroughly European quarter, the houses having low fronts, and being adorned with verandas, beneath which he caught glimpses of neat peristyles. This quarter occupied, with its streets, squares, docks, and warehouses, all the space between the &quot;promontory of the Treaty&quot; and the river. Here, as at Hong Kong and Calcutta, were mixed crowds of all</span></span></span></p>\r\n', '2014-04-01 10:47:43', '2014-04-02 10:20:58'),
(2, 'android', 'Android', '<p>\r\n	<strong>&nbsp;Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android &nbsp;Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android</strong></p>\r\n', '<p>\r\n	<span style="font-size:14px;"><span style="font-family:arial, helvetica, sans-serif;">Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander</span></span></p>\r\n', '2014-04-01 10:51:02', NULL),
(5, 'ios', 'IOS', '<h3>\r\n	ios</h3>\r\n', '<p>\r\n	ios<span style="font-size: 12px;">iosios</span></p>\r\n', '2014-04-02 11:09:10', NULL),
(9, 'test', 'test', '<p>\r\n	test</p>\r\n', '<p>\r\n	test</p>\r\n', '2014-04-03 07:02:23', NULL),
(10, 'testa', 'testa', '<p>\r\n	testa</p>\r\n', '<p>\r\n	testa</p>\r\n', '2014-04-03 07:02:42', NULL),
(11, 'test3', 'test3', '<p>\r\n	test3</p>\r\n', '<p>\r\n	test3</p>\r\n', '2014-04-03 07:04:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sd_project_image`
--

DROP TABLE IF EXISTS `sd_project_image`;
CREATE TABLE IF NOT EXISTS `sd_project_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sd_project_image`
--

INSERT INTO `sd_project_image` (`id`, `project_id`, `image`, `create_time`, `update_time`) VALUES
(1, 1, '/upload_files/projects/detail/01.jpg', NULL, NULL),
(2, 1, '/upload_files/projects/detail/02.jpg', NULL, NULL),
(3, 1, '/upload_files/projects/detail/03.jpg', NULL, NULL),
(4, 1, '/upload_files/projects/detail/04.jpg', NULL, NULL),
(6, 11, '/upload_files/projects/detail/Desert.jpg', NULL, NULL),
(7, 11, '/upload_files/projects/detail/Hydrangeas.jpg', NULL, NULL),
(8, 11, '/upload_files/projects/detail/Jellyfish.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sd_services`
--

DROP TABLE IF EXISTS `sd_services`;
CREATE TABLE IF NOT EXISTS `sd_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `special_price` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `style` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `is_special` tinyint(1) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_services`
--

INSERT INTO `sd_services` (`id`, `name`, `alias`, `category_id`, `description`, `content`, `image`, `price`, `special_price`, `quantity`, `style`, `priority`, `is_special`, `is_published`, `create_time`, `update_time`) VALUES
(1, 'khi em ra di', 'khi-em-ra-di', 2, '<p>\r\n	<strong>cacs</strong></p>\r\n', '<p>\r\n	<strong>cacs</strong></p>\r\n', '1384576031Chrysanthemum.jpg', NULL, NULL, 0, NULL, 3, 0, 0, '2013-11-16 05:27:11', '2013-11-22 12:54:17'),
(2, 'vdsv', 'vdsvds', 3, NULL, NULL, '1384576500Tulips.jpg', NULL, NULL, 0, NULL, 2, 0, 0, '2013-11-16 05:35:01', '2013-11-22 12:54:15'),
(3, 'Server', 'server', 4, NULL, NULL, '1384923167Lighthouse.jpg', NULL, NULL, 0, NULL, 1, 0, 0, '2013-11-20 05:52:48', '2013-11-22 12:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `sd_service_categories`
--

DROP TABLE IF EXISTS `sd_service_categories`;
CREATE TABLE IF NOT EXISTS `sd_service_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `root` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_service_categories`
--

INSERT INTO `sd_service_categories` (`id`, `name`, `alias`, `image`, `description`, `lft`, `rght`, `parent_id`, `level`, `create_time`, `update_time`, `root`) VALUES
(1, 'ser 2', 'ser-2', NULL, NULL, 2, 3, 5, 2, NULL, '2014-02-12 11:25:43', 5),
(2, 'ser3', 'ser3', NULL, NULL, 4, 5, 5, 2, NULL, NULL, 5),
(3, 'Ser 4', 'ser-4', NULL, NULL, 6, 9, 5, 2, NULL, NULL, 5),
(4, 'ser 5', 'ser-5', NULL, NULL, 7, 8, 3, 3, NULL, '2014-02-12 11:30:22', 5),
(5, 'root', 'root', NULL, NULL, 1, 10, NULL, 1, NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sd_static_pages`
--

DROP TABLE IF EXISTS `sd_static_pages`;
CREATE TABLE IF NOT EXISTS `sd_static_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `alias` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `description` text,
  `content` text,
  `position` varchar(128) DEFAULT NULL,
  `section` varchar(128) DEFAULT NULL,
  `show_on_index` tinyint(1) DEFAULT '0',
  `priority` int(11) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sd_static_pages`
--

INSERT INTO `sd_static_pages` (`id`, `title`, `alias`, `image`, `description`, `content`, `position`, `section`, `show_on_index`, `priority`, `create_time`, `update_time`, `is_published`) VALUES
(1, 'About us', 'About-us', '13834673913.jpg', 'About us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us', NULL, NULL, NULL, 0, 0, '2013-10-29 05:07:23', '2013-11-22 12:50:12', 0),
(2, 'vdvdvd', 'vdvd', '13834673771.jpg', NULL, NULL, 'top', NULL, 0, 4, '2013-10-29 05:07:20', '2013-11-22 12:50:12', 1),
(3, 'kukd', 'kukd', '13831225142.jpg', NULL, NULL, 'top', NULL, 0, 3, '2013-10-30 09:34:00', '2013-11-22 12:50:18', 1),
(4, 'K-Teset', 'k-teset', '1384916900Desert.jpg', NULL, NULL, NULL, NULL, 0, 2, '2013-11-20 04:08:20', '2013-11-22 12:50:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sd_team`
--

DROP TABLE IF EXISTS `sd_team`;
CREATE TABLE IF NOT EXISTS `sd_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `position` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `showIndex` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sd_team`
--

INSERT INTO `sd_team` (`id`, `name`, `position`, `image`, `showIndex`) VALUES
(1, 'Hai Duong', 'CEO', '139228583213832796079.jpg', 1),
(2, 'Linh Duong', 'Founder', '1392283566linhduong.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sd_users`
--

DROP TABLE IF EXISTS `sd_users`;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sd_users`
--

INSERT INTO `sd_users` (`id`, `username`, `password`, `email`, `activkey`, `create_at`, `lastvisit_at`, `superuser`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '21232f297a57a5a743894a0e4a801fc3', '2013-10-04 14:17:56', '2014-04-25 01:50:21', 1, 1),
(2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@example.com', 'fe01ce2a7fbac8fafaed7c982a04e229', '2013-10-04 14:17:56', '0000-00-00 00:00:00', 0, 1),
(4, 'Mobi', 'e10adc3949ba59abbe56e057f20f883e', 'modi.bixa0@gmail.com', '7e3322831ed94481effd9052798999a7', '2013-10-06 17:07:30', '0000-00-00 00:00:00', 0, 1),
(5, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin2@gmail.com', 'bb2c04555a60ea5282fa377e3c2c2abc', '2014-04-24 03:53:19', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
CREATE TABLE IF NOT EXISTS `sqlite_sequence` (
  `name` varchar(127) NOT NULL,
  `seq` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('sd_banners', 3),
('sd_countries', 275),
('sd_product_images', 7),
('sd_product_middle', 48),
('sd_users', 4),
('sd_users', 4),
('sd_profiles_fields', 2),
('sd_product_middle', 47),
('sd_countries', 275),
('sd_banners', 2),
('sd_product_images', 7),
('_sd_team_old_20140213', 2),
('sd_team', 2),
('_sd_project_old_20140401', 2),
('sd_project', 11),
('_sd_project_image_old_20140402_1', 0),
('sd_project_image', 8);

-- --------------------------------------------------------

--
-- Table structure for table `_sd_product_categories_old_20140212`
--

DROP TABLE IF EXISTS `_sd_product_categories_old_20140212`;
CREATE TABLE IF NOT EXISTS `_sd_product_categories_old_20140212` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_sd_product_categories_old_20140212`
--

INSERT INTO `_sd_product_categories_old_20140212` (`id`, `name`, `alias`, `image`, `description`, `lft`, `rght`, `parent_id`, `level`, `create_time`, `update_time`) VALUES
(1, 'Test categories2', 'test-categories2', NULL, 'ccc', 1, 2, 3, NULL, NULL, NULL),
(2, 'Test categories 5', 'test-categories-5', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL),
(3, 'Sprot', 'sprot', NULL, NULL, 12, 2, 2, NULL, NULL, '2014-02-12 10:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `_sd_product_images_old_20131030`
--

DROP TABLE IF EXISTS `_sd_product_images_old_20131030`;
CREATE TABLE IF NOT EXISTS `_sd_product_images_old_20131030` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(16) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `priority` int(11) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_sd_project_image_old_20140402`
--

DROP TABLE IF EXISTS `_sd_project_image_old_20140402`;
CREATE TABLE IF NOT EXISTS `_sd_project_image_old_20140402` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_sd_project_image_old_20140402_1`
--

DROP TABLE IF EXISTS `_sd_project_image_old_20140402_1`;
CREATE TABLE IF NOT EXISTS `_sd_project_image_old_20140402_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `_sd_project_old_20140401`
--

DROP TABLE IF EXISTS `_sd_project_old_20140401`;
CREATE TABLE IF NOT EXISTS `_sd_project_old_20140401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(127) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `_sd_project_old_20140401`
--

INSERT INTO `_sd_project_old_20140401` (`id`, `title`, `short_description`, `description`, `create_time`, `update_time`) VALUES
(1, 'Web develop', '<p>\r\n	<strong>Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander</strong></p>\r\n', '<p>\r\n	<span style="font-size:14px;"><span style="font-family:arial, helvetica, sans-serif;"><span style="color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(249, 249, 249);">The Carnatic anchored at the quay near the custom-house, in the midst of a crowd of ships bearing the flags of all nations. Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander aimlessly through the streets of Yokohama. He found himself at first in a thoroughly European quarter, the houses having low fronts, and being adorned with verandas, beneath which he caught glimpses of neat peristyles. This quarter occupied, with its streets, squares, docks, and warehouses, all the space between the &quot;promontory of the Treaty&quot; and the river. Here, as at Hong Kong and Calcutta, were mixed crowds of all</span></span></span></p>\r\n', '2014-04-01 10:47:43', NULL),
(2, 'Android', '<p>\r\n	<strong>&nbsp;Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android &nbsp;Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android</strong></p>\r\n', '<p>\r\n	<span style="font-size:14px;"><span style="font-family:arial, helvetica, sans-serif;">Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander</span></span></p>\r\n', '2014-04-01 10:51:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_sd_service_categories_old_20140212`
--

DROP TABLE IF EXISTS `_sd_service_categories_old_20140212`;
CREATE TABLE IF NOT EXISTS `_sd_service_categories_old_20140212` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_sd_service_categories_old_20140212`
--

INSERT INTO `_sd_service_categories_old_20140212` (`id`, `name`, `alias`, `image`, `description`, `lft`, `rght`, `parent_id`, `level`, `create_time`, `update_time`) VALUES
(1, 'ser 2', 'ser-2', NULL, NULL, 2, 3, 4, 1, NULL, '2014-02-12 11:25:43'),
(2, 'ser3', 'ser3', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 'Ser 4', 'ser-4', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 'ser 5', 'ser-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'root', 'root', NULL, NULL, 1, 10, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_sd_static_pages_old_20131120`
--

DROP TABLE IF EXISTS `_sd_static_pages_old_20131120`;
CREATE TABLE IF NOT EXISTS `_sd_static_pages_old_20131120` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `alias` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `description` text,
  `content` text,
  `position` varchar(128) DEFAULT NULL,
  `section` varchar(128) DEFAULT NULL,
  `show_on_index` tinyint(1) DEFAULT '0',
  `priority` int(11) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_sd_static_pages_old_20131120`
--

INSERT INTO `_sd_static_pages_old_20131120` (`id`, `title`, `alias`, `image`, `description`, `content`, `position`, `section`, `show_on_index`, `priority`, `create_time`, `update_time`, `is_published`) VALUES
(1, 'About us', 'About-us', '13834673913.jpg', 'About us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us', NULL, NULL, NULL, 0, 2, NULL, '2013-11-20 04:01:12', 1),
(2, 'vdvdvd', 'vdvd', '13834673771.jpg', NULL, NULL, 'top', NULL, 0, 9, '2013-10-29 05:07:20', '2013-11-20 04:01:12', 1),
(3, 'kukd', 'kukd', '13831225142.jpg', NULL, NULL, 'top', NULL, 0, NULL, '2013-10-30 09:34:00', '2013-11-20 04:01:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `_sd_team_old_20140213`
--

DROP TABLE IF EXISTS `_sd_team_old_20140213`;
CREATE TABLE IF NOT EXISTS `_sd_team_old_20140213` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `position` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `showIndex` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `_sd_team_old_20140213`
--

INSERT INTO `_sd_team_old_20140213` (`id`, `name`, `position`, `image`, `showIndex`) VALUES
(1, 'Hai Duong', 'CEO', '139228338613832796079.jpg', 1),
(2, 'Linh Duong', 'Founder', '1392283566linhduong.jpg', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rights`
--
ALTER TABLE `rights`
  ADD CONSTRAINT `rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
