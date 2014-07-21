/*
MySQL Data Transfer
Source Host: localhost
Source Database: sm
Target Host: localhost
Target Database: sm
Date: 7/21/2014 4:56:34 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for _sd_product_categories_old_20140212
-- ----------------------------
DROP TABLE IF EXISTS `_sd_product_categories_old_20140212`;
CREATE TABLE `_sd_product_categories_old_20140212` (
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

-- ----------------------------
-- Table structure for _sd_product_images_old_20131030
-- ----------------------------
DROP TABLE IF EXISTS `_sd_product_images_old_20131030`;
CREATE TABLE `_sd_product_images_old_20131030` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for _sd_project_image_old_20140402
-- ----------------------------
DROP TABLE IF EXISTS `_sd_project_image_old_20140402`;
CREATE TABLE `_sd_project_image_old_20140402` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for _sd_project_image_old_20140402_1
-- ----------------------------
DROP TABLE IF EXISTS `_sd_project_image_old_20140402_1`;
CREATE TABLE `_sd_project_image_old_20140402_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for _sd_project_old_20140401
-- ----------------------------
DROP TABLE IF EXISTS `_sd_project_old_20140401`;
CREATE TABLE `_sd_project_old_20140401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(127) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for _sd_service_categories_old_20140212
-- ----------------------------
DROP TABLE IF EXISTS `_sd_service_categories_old_20140212`;
CREATE TABLE `_sd_service_categories_old_20140212` (
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

-- ----------------------------
-- Table structure for _sd_static_pages_old_20131120
-- ----------------------------
DROP TABLE IF EXISTS `_sd_static_pages_old_20131120`;
CREATE TABLE `_sd_static_pages_old_20131120` (
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

-- ----------------------------
-- Table structure for _sd_team_old_20140213
-- ----------------------------
DROP TABLE IF EXISTS `_sd_team_old_20140213`;
CREATE TABLE `_sd_team_old_20140213` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `position` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `showIndex` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authassignment
-- ----------------------------
DROP TABLE IF EXISTS `authassignment`;
CREATE TABLE `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authitem
-- ----------------------------
DROP TABLE IF EXISTS `authitem`;
CREATE TABLE `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authitemchild
-- ----------------------------
DROP TABLE IF EXISTS `authitemchild`;
CREATE TABLE `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
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

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(128) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `logtime` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rights
-- ----------------------------
DROP TABLE IF EXISTS `rights`;
CREATE TABLE `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`),
  CONSTRAINT `rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_banners
-- ----------------------------
DROP TABLE IF EXISTS `sd_banners`;
CREATE TABLE `sd_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_bookings
-- ----------------------------
DROP TABLE IF EXISTS `sd_bookings`;
CREATE TABLE `sd_bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(50) NOT NULL,
  `room` varchar(50) NOT NULL,
  `days` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `agree` binary(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_contacts
-- ----------------------------
DROP TABLE IF EXISTS `sd_contacts`;
CREATE TABLE `sd_contacts` (
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

-- ----------------------------
-- Table structure for sd_countries
-- ----------------------------
DROP TABLE IF EXISTS `sd_countries`;
CREATE TABLE `sd_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `c_code` varchar(255) DEFAULT NULL,
  `priority` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_galleries
-- ----------------------------
DROP TABLE IF EXISTS `sd_galleries`;
CREATE TABLE `sd_galleries` (
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

-- ----------------------------
-- Table structure for sd_gallery_images
-- ----------------------------
DROP TABLE IF EXISTS `sd_gallery_images`;
CREATE TABLE `sd_gallery_images` (
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

-- ----------------------------
-- Table structure for sd_news
-- ----------------------------
DROP TABLE IF EXISTS `sd_news`;
CREATE TABLE `sd_news` (
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

-- ----------------------------
-- Table structure for sd_news_categories
-- ----------------------------
DROP TABLE IF EXISTS `sd_news_categories`;
CREATE TABLE `sd_news_categories` (
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

-- ----------------------------
-- Table structure for sd_news_middle
-- ----------------------------
DROP TABLE IF EXISTS `sd_news_middle`;
CREATE TABLE `sd_news_middle` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_product_categories
-- ----------------------------
DROP TABLE IF EXISTS `sd_product_categories`;
CREATE TABLE `sd_product_categories` (
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

-- ----------------------------
-- Table structure for sd_product_images
-- ----------------------------
DROP TABLE IF EXISTS `sd_product_images`;
CREATE TABLE `sd_product_images` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_product_middle
-- ----------------------------
DROP TABLE IF EXISTS `sd_product_middle`;
CREATE TABLE `sd_product_middle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_products
-- ----------------------------
DROP TABLE IF EXISTS `sd_products`;
CREATE TABLE `sd_products` (
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

-- ----------------------------
-- Table structure for sd_products_copy
-- ----------------------------
DROP TABLE IF EXISTS `sd_products_copy`;
CREATE TABLE `sd_products_copy` (
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

-- ----------------------------
-- Table structure for sd_profiles
-- ----------------------------
DROP TABLE IF EXISTS `sd_profiles`;
CREATE TABLE `sd_profiles` (
  `user_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_profiles_fields
-- ----------------------------
DROP TABLE IF EXISTS `sd_profiles_fields`;
CREATE TABLE `sd_profiles_fields` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_project
-- ----------------------------
DROP TABLE IF EXISTS `sd_project`;
CREATE TABLE `sd_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(127) DEFAULT NULL,
  `title` varchar(127) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_project_image
-- ----------------------------
DROP TABLE IF EXISTS `sd_project_image`;
CREATE TABLE `sd_project_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_service_categories
-- ----------------------------
DROP TABLE IF EXISTS `sd_service_categories`;
CREATE TABLE `sd_service_categories` (
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

-- ----------------------------
-- Table structure for sd_services
-- ----------------------------
DROP TABLE IF EXISTS `sd_services`;
CREATE TABLE `sd_services` (
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

-- ----------------------------
-- Table structure for sd_static_pages
-- ----------------------------
DROP TABLE IF EXISTS `sd_static_pages`;
CREATE TABLE `sd_static_pages` (
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

-- ----------------------------
-- Table structure for sd_stocks
-- ----------------------------
DROP TABLE IF EXISTS `sd_stocks`;
CREATE TABLE `sd_stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockname` varchar(50) NOT NULL,
  `price` varchar(127) NOT NULL,
  `timedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `des` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_team
-- ----------------------------
DROP TABLE IF EXISTS `sd_team`;
CREATE TABLE `sd_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `position` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `showIndex` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_login
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_login`;
CREATE TABLE `sd_user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_visit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_users
-- ----------------------------
DROP TABLE IF EXISTS `sd_users`;
CREATE TABLE `sd_users` (
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
  `language` varchar(20) DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS `sqlite_sequence`;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(127) NOT NULL,
  `seq` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `_sd_product_categories_old_20140212` VALUES ('1', 'Test categories2', 'test-categories2', null, 'ccc', '1', '2', '3', null, null, null);
INSERT INTO `_sd_product_categories_old_20140212` VALUES ('2', 'Test categories 5', 'test-categories-5', null, null, '2', '1', null, null, null, null);
INSERT INTO `_sd_product_categories_old_20140212` VALUES ('3', 'Sprot', 'sprot', null, null, '12', '2', '2', null, null, '2014-02-12 10:24:07');
INSERT INTO `_sd_project_old_20140401` VALUES ('1', 'Web develop', '<p>\r\n	<strong>Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander</strong></p>\r\n', '<p>\r\n	<span style=\"font-size:14px;\"><span style=\"font-family:arial, helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(249, 249, 249);\">The Carnatic anchored at the quay near the custom-house, in the midst of a crowd of ships bearing the flags of all nations. Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander aimlessly through the streets of Yokohama. He found himself at first in a thoroughly European quarter, the houses having low fronts, and being adorned with verandas, beneath which he caught glimpses of neat peristyles. This quarter occupied, with its streets, squares, docks, and warehouses, all the space between the &quot;promontory of the Treaty&quot; and the river. Here, as at Hong Kong and Calcutta, were mixed crowds of all</span></span></span></p>\r\n', '2014-04-01 10:47:43', null);
INSERT INTO `_sd_project_old_20140401` VALUES ('2', 'Android', '<p>\r\n	<strong>&nbsp;Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android &nbsp;Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android</strong></p>\r\n', '<p>\r\n	<span style=\"font-size:14px;\"><span style=\"font-family:arial, helvetica, sans-serif;\">Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander</span></span></p>\r\n', '2014-04-01 10:51:02', null);
INSERT INTO `_sd_service_categories_old_20140212` VALUES ('1', 'ser 2', 'ser-2', null, null, '2', '3', '4', '1', null, '2014-02-12 11:25:43');
INSERT INTO `_sd_service_categories_old_20140212` VALUES ('2', 'ser3', 'ser3', null, null, null, null, null, '1', null, null);
INSERT INTO `_sd_service_categories_old_20140212` VALUES ('3', 'Ser 4', 'ser-4', null, null, null, null, null, '1', null, null);
INSERT INTO `_sd_service_categories_old_20140212` VALUES ('4', 'ser 5', 'ser-5', null, null, null, null, null, null, null, null);
INSERT INTO `_sd_service_categories_old_20140212` VALUES ('5', 'root', 'root', null, null, '1', '10', null, '1', null, null);
INSERT INTO `_sd_static_pages_old_20131120` VALUES ('1', 'About us', 'About-us', '13834673913.jpg', 'About us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us', null, null, null, '0', '2', null, '2013-11-20 04:01:12', '1');
INSERT INTO `_sd_static_pages_old_20131120` VALUES ('2', 'vdvdvd', 'vdvd', '13834673771.jpg', null, null, 'top', null, '0', '9', '2013-10-29 05:07:20', '2013-11-20 04:01:12', '1');
INSERT INTO `_sd_static_pages_old_20131120` VALUES ('3', 'kukd', 'kukd', '13831225142.jpg', null, null, 'top', null, '0', null, '2013-10-30 09:34:00', '2013-11-20 04:01:14', '1');
INSERT INTO `_sd_team_old_20140213` VALUES ('1', 'Hai Duong', 'CEO', '139228338613832796079.jpg', '1');
INSERT INTO `_sd_team_old_20140213` VALUES ('2', 'Linh Duong', 'Founder', '1392283566linhduong.jpg', '1');
INSERT INTO `authassignment` VALUES ('admin', '1', null, 'N;');
INSERT INTO `authassignment` VALUES ('Author', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('Author', '5', null, 'N;');
INSERT INTO `authassignment` VALUES ('Contacts.Default.Index', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('Contacts.Default.Index', '5', null, 'N;');
INSERT INTO `authassignment` VALUES ('Contacts.ManageContacts.Admin', '1', null, 'N;');
INSERT INTO `authassignment` VALUES ('Contacts.ManageContacts.Admin', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('DeletleGroup', '5', null, 'N;');
INSERT INTO `authassignment` VALUES ('group 1', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('Group2', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('Group4', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('Group4', '5', null, 'N;');
INSERT INTO `authassignment` VALUES ('Manage', '4', null, 'N;');
INSERT INTO `authitem` VALUES ('Admin', '2', null, null, null);
INSERT INTO `authitem` VALUES ('Author', '2', 'Author', 'Author', 'N;');
INSERT INTO `authitem` VALUES ('Banners.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.UpdateTarget', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageUpload.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageUpload.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageUpload.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageUpload.Upload', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.MultiUpload.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.MultiUpload.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Group10', '2', 'Group10', null, 'N;');
INSERT INTO `authitem` VALUES ('Group2', '2', 'Group2', null, 'N;');
INSERT INTO `authitem` VALUES ('Group20', '2', 'Group20', null, 'N;');
INSERT INTO `authitem` VALUES ('Group5', '2', 'Group5', null, 'N;');
INSERT INTO `authitem` VALUES ('Group6', '2', 'Group6', null, 'N;');
INSERT INTO `authitem` VALUES ('Group7', '2', 'Group7', null, 'N;');
INSERT INTO `authitem` VALUES ('Group8', '2', 'Group8', null, 'N;');
INSERT INTO `authitem` VALUES ('Group9', '2', 'Group9', null, 'N;');
INSERT INTO `authitem` VALUES ('khuong', '2', 'khuong', null, 'N;');
INSERT INTO `authitem` VALUES ('Manage', '2', 'Manage', 'Manage', 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('newgroup', '2', 'newgroup', null, 'N;');
INSERT INTO `authitem` VALUES ('News.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.NewsInCategory', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.FetchTree', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.ManageByTree', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Tree', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.ProductsInCategory', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Test.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Test.Dynamiccities', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Test.Khuong', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('QA', '2', 'QA', null, 'N;');
INSERT INTO `authitem` VALUES ('Services.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Tree', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.ServicesInCategory', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.About', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Contact', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Error', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Partial', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Project', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Test', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.TestWidget', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.Buy', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.Cancel', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.Confirm', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.DirectPayment', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.Test', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test22', '0', 'Test22', null, 'N;');
INSERT INTO `authitem` VALUES ('User.Activation.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Activation.Activation', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.AjaxEdit', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.TestNewView', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Login.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Login.Login', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Logout.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Logout.Logout', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Profile.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Profile.Changepassword', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Profile.Edit', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Profile.Profile', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Recovery.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Recovery.Recovery', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Registration.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Registration.Registration', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.User.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.User.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.User.View', '0', null, null, 'N;');
INSERT INTO `authitemchild` VALUES ('DeletleGroup', 'Banners.Default.*');
INSERT INTO `authitemchild` VALUES ('Group10', 'Banners.Default.Index');
INSERT INTO `authitemchild` VALUES ('Group10', 'Banners.ManageBanners.Ajaxupdate');
INSERT INTO `authitemchild` VALUES ('Group2', 'Contacts.ManageContacts.View');
INSERT INTO `authitemchild` VALUES ('Group2', 'Countries.Default.Index');
INSERT INTO `authitemchild` VALUES ('Group2', 'Countries.ManageCountries.Admin');
INSERT INTO `authitemchild` VALUES ('Group2', 'Countries.ManageCountries.Create');
INSERT INTO `authitemchild` VALUES ('Group4', 'Contact.Admin');
INSERT INTO `authitemchild` VALUES ('Group4', 'Contact.Create');
INSERT INTO `authitemchild` VALUES ('Group6', 'Banners.ManageBanners.Admin');
INSERT INTO `authitemchild` VALUES ('Group8', 'Banners.Default.Index');
INSERT INTO `authitemchild` VALUES ('Manage', 'Contact.Create');
INSERT INTO `authitemchild` VALUES ('newgroup', 'Contact.Delete');
INSERT INTO `categories` VALUES ('1', 'Root', null, null, null, null, '1', '22', '1', '1', null, null);
INSERT INTO `categories` VALUES ('2', 'Music', null, null, null, null, '8', '15', '2', '1', '1', null);
INSERT INTO `categories` VALUES ('3', 'Movie', null, null, null, null, '16', '17', '2', '1', '1', null);
INSERT INTO `categories` VALUES ('4', 'Sport', null, null, null, null, '2', '3', '2', '1', '1', null);
INSERT INTO `categories` VALUES ('5', 'Football', null, null, null, null, '9', '10', '3', '1', '2', null);
INSERT INTO `categories` VALUES ('6', 'Swimming', 'swimming', null, null, null, '19', '20', '3', '1', '8', null);
INSERT INTO `categories` VALUES ('7', 'Dance', null, null, null, null, '6', '7', '2', '1', '1', null);
INSERT INTO `categories` VALUES ('8', 'Economic', null, null, null, null, '18', '21', '2', '1', '1', null);
INSERT INTO `categories` VALUES ('9', 'Action', null, null, null, null, '13', '14', '3', '1', '2', null);
INSERT INTO `categories` VALUES ('10', 'Classic', 'classic', null, null, null, '4', '5', '2', '1', '1', null);
INSERT INTO `categories` VALUES ('11', 'Romantic', 'romantic', null, null, null, '11', '12', '3', '1', '2', null);
INSERT INTO `rights` VALUES ('Admin', '2', '3');
INSERT INTO `rights` VALUES ('Author', '2', '6');
INSERT INTO `rights` VALUES ('Banners.ManageBanners.Admin', '0', '1');
INSERT INTO `rights` VALUES ('Banners.ManageBanners.Ajaxupdate', '0', '2');
INSERT INTO `rights` VALUES ('Banners.ManageBanners.Create', '0', '3');
INSERT INTO `rights` VALUES ('Banners.ManageBanners.Delete', '0', '4');
INSERT INTO `rights` VALUES ('Banners.ManageBanners.Index', '0', '5');
INSERT INTO `rights` VALUES ('Banners.ManageBanners.Update', '0', '6');
INSERT INTO `rights` VALUES ('Banners.ManageBanners.View', '0', '7');
INSERT INTO `rights` VALUES ('Contact.Admin', '0', '8');
INSERT INTO `rights` VALUES ('Contact.Create', '0', '9');
INSERT INTO `rights` VALUES ('Contact.Delete', '0', '10');
INSERT INTO `rights` VALUES ('Contact.Index', '0', '11');
INSERT INTO `rights` VALUES ('Contact.Update', '0', '12');
INSERT INTO `rights` VALUES ('Contact.View', '0', '13');
INSERT INTO `rights` VALUES ('Contacts.Default.Index', '0', '14');
INSERT INTO `rights` VALUES ('Contacts.ManageContacts.Admin', '0', '15');
INSERT INTO `rights` VALUES ('Contacts.ManageContacts.Create', '0', '16');
INSERT INTO `rights` VALUES ('Contacts.ManageContacts.Delete', '0', '17');
INSERT INTO `rights` VALUES ('Contacts.ManageContacts.Index', '0', '18');
INSERT INTO `rights` VALUES ('Contacts.ManageContacts.Update', '0', '19');
INSERT INTO `rights` VALUES ('Contacts.ManageContacts.View', '0', '20');
INSERT INTO `rights` VALUES ('Countries.Default.Index', '0', '21');
INSERT INTO `rights` VALUES ('Countries.ManageCountries.Admin', '0', '22');
INSERT INTO `rights` VALUES ('Countries.ManageCountries.Create', '0', '23');
INSERT INTO `rights` VALUES ('Countries.ManageCountries.Delete', '0', '24');
INSERT INTO `rights` VALUES ('Countries.ManageCountries.Index', '0', '25');
INSERT INTO `rights` VALUES ('Countries.ManageCountries.Update', '0', '26');
INSERT INTO `rights` VALUES ('Countries.ManageCountries.View', '0', '27');
INSERT INTO `rights` VALUES ('Galleries.Default.Index', '0', '28');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.Admin', '0', '29');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.Ajaxactive', '0', '30');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.Ajaxupdate', '0', '31');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.Create', '0', '32');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.Delete', '0', '33');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.Index', '0', '34');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.Update', '0', '35');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.UpdateTarget', '0', '36');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleries.View', '0', '37');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleryImages.Admin', '0', '38');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleryImages.Create', '0', '39');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleryImages.Delete', '0', '40');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleryImages.Index', '0', '41');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleryImages.Update', '0', '42');
INSERT INTO `rights` VALUES ('Galleries.ManageGalleryImages.View', '0', '43');
INSERT INTO `rights` VALUES ('Galleries.ManageImagesByGallery.Admin', '0', '44');
INSERT INTO `rights` VALUES ('Galleries.ManageImagesByGallery.Ajaxactive', '0', '45');
INSERT INTO `rights` VALUES ('Galleries.ManageImagesByGallery.Ajaxupdate', '0', '46');
INSERT INTO `rights` VALUES ('Galleries.ManageImagesByGallery.Delete', '0', '47');
INSERT INTO `rights` VALUES ('Galleries.ManageImagesByGallery.Update', '0', '48');
INSERT INTO `rights` VALUES ('Galleries.ManageImagesByGallery.View', '0', '49');
INSERT INTO `rights` VALUES ('Galleries.ManageUpload.Delete', '0', '50');
INSERT INTO `rights` VALUES ('Galleries.ManageUpload.Index', '0', '51');
INSERT INTO `rights` VALUES ('Galleries.ManageUpload.Upload', '0', '52');
INSERT INTO `rights` VALUES ('Galleries.MultiUpload.Index', '0', '53');
INSERT INTO `rights` VALUES ('Group10', '2', '7');
INSERT INTO `rights` VALUES ('Group2', '2', '11');
INSERT INTO `rights` VALUES ('Group20', '2', '10');
INSERT INTO `rights` VALUES ('Group5', '2', '5');
INSERT INTO `rights` VALUES ('Group6', '2', '12');
INSERT INTO `rights` VALUES ('Group7', '2', '8');
INSERT INTO `rights` VALUES ('Group8', '2', '2');
INSERT INTO `rights` VALUES ('Group9', '2', '4');
INSERT INTO `rights` VALUES ('khuong', '2', '0');
INSERT INTO `rights` VALUES ('Manage', '2', '9');
INSERT INTO `rights` VALUES ('ManageTeam.Admin', '0', '54');
INSERT INTO `rights` VALUES ('ManageTeam.Create', '0', '55');
INSERT INTO `rights` VALUES ('ManageTeam.Delete', '0', '56');
INSERT INTO `rights` VALUES ('ManageTeam.Index', '0', '57');
INSERT INTO `rights` VALUES ('ManageTeam.Update', '0', '58');
INSERT INTO `rights` VALUES ('ManageTeam.View', '0', '59');
INSERT INTO `rights` VALUES ('newgroup', '2', '1');
INSERT INTO `rights` VALUES ('News.Default.Index', '0', '60');
INSERT INTO `rights` VALUES ('News.ManageNews.Admin', '0', '61');
INSERT INTO `rights` VALUES ('News.ManageNews.Ajaxactive', '0', '62');
INSERT INTO `rights` VALUES ('News.ManageNews.Ajaxupdate', '0', '63');
INSERT INTO `rights` VALUES ('News.ManageNews.Create', '0', '64');
INSERT INTO `rights` VALUES ('News.ManageNews.Delete', '0', '65');
INSERT INTO `rights` VALUES ('News.ManageNews.Index', '0', '66');
INSERT INTO `rights` VALUES ('News.ManageNews.NewsInCategory', '0', '67');
INSERT INTO `rights` VALUES ('News.ManageNews.Update', '0', '68');
INSERT INTO `rights` VALUES ('News.ManageNews.View', '0', '69');
INSERT INTO `rights` VALUES ('News.manageNewsACategory.Admin', '0', '70');
INSERT INTO `rights` VALUES ('News.manageNewsACategory.Create', '0', '71');
INSERT INTO `rights` VALUES ('News.manageNewsACategory.Delete', '0', '72');
INSERT INTO `rights` VALUES ('News.manageNewsACategory.Index', '0', '73');
INSERT INTO `rights` VALUES ('News.manageNewsACategory.Update', '0', '74');
INSERT INTO `rights` VALUES ('News.manageNewsACategory.View', '0', '75');
INSERT INTO `rights` VALUES ('News.manageNewsCategories.Admin', '0', '76');
INSERT INTO `rights` VALUES ('News.manageNewsCategories.Create', '0', '77');
INSERT INTO `rights` VALUES ('News.manageNewsCategories.Delete', '0', '78');
INSERT INTO `rights` VALUES ('News.manageNewsCategories.Index', '0', '79');
INSERT INTO `rights` VALUES ('News.manageNewsCategories.Update', '0', '80');
INSERT INTO `rights` VALUES ('News.manageNewsCategories.View', '0', '81');
INSERT INTO `rights` VALUES ('Products.Default.Index', '0', '82');
INSERT INTO `rights` VALUES ('Products.ManageColorForAProduct.Admin', '0', '83');
INSERT INTO `rights` VALUES ('Products.ManageColorForAProduct.Create', '0', '84');
INSERT INTO `rights` VALUES ('Products.ManageColorForAProduct.Delete', '0', '85');
INSERT INTO `rights` VALUES ('Products.ManageColorForAProduct.Index', '0', '86');
INSERT INTO `rights` VALUES ('Products.ManageColorForAProduct.Update', '0', '87');
INSERT INTO `rights` VALUES ('Products.ManageColorForAProduct.View', '0', '88');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.Admin', '0', '89');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.Create', '0', '90');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.Delete', '0', '91');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.FetchTree', '0', '92');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.Index', '0', '93');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.ManageByTree', '0', '94');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.Tree', '0', '95');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.Update', '0', '96');
INSERT INTO `rights` VALUES ('Products.ManageProductCategories.View', '0', '97');
INSERT INTO `rights` VALUES ('Products.ManageProductColor.Admin', '0', '98');
INSERT INTO `rights` VALUES ('Products.ManageProductColor.Create', '0', '99');
INSERT INTO `rights` VALUES ('Products.ManageProductColor.Delete', '0', '100');
INSERT INTO `rights` VALUES ('Products.ManageProductColor.Index', '0', '101');
INSERT INTO `rights` VALUES ('Products.ManageProductColor.Update', '0', '102');
INSERT INTO `rights` VALUES ('Products.ManageProductColor.View', '0', '103');
INSERT INTO `rights` VALUES ('Products.ManageProducts.Admin', '0', '104');
INSERT INTO `rights` VALUES ('Products.ManageProducts.Ajaxactive', '0', '105');
INSERT INTO `rights` VALUES ('Products.ManageProducts.Ajaxupdate', '0', '106');
INSERT INTO `rights` VALUES ('Products.ManageProducts.Create', '0', '107');
INSERT INTO `rights` VALUES ('Products.ManageProducts.Delete', '0', '108');
INSERT INTO `rights` VALUES ('Products.ManageProducts.Index', '0', '109');
INSERT INTO `rights` VALUES ('Products.ManageProducts.ProductsInCategory', '0', '110');
INSERT INTO `rights` VALUES ('Products.ManageProducts.Update', '0', '111');
INSERT INTO `rights` VALUES ('Products.ManageProducts.View', '0', '112');
INSERT INTO `rights` VALUES ('Products.Test.Dynamiccities', '0', '113');
INSERT INTO `rights` VALUES ('Products.Test.Khuong', '0', '114');
INSERT INTO `rights` VALUES ('QA', '2', '13');
INSERT INTO `rights` VALUES ('Services.Default.Index', '0', '115');
INSERT INTO `rights` VALUES ('Services.ManageServiceCategory.Admin', '0', '116');
INSERT INTO `rights` VALUES ('Services.ManageServiceCategory.Create', '0', '117');
INSERT INTO `rights` VALUES ('Services.ManageServiceCategory.Delete', '0', '118');
INSERT INTO `rights` VALUES ('Services.ManageServiceCategory.Index', '0', '119');
INSERT INTO `rights` VALUES ('Services.ManageServiceCategory.Tree', '0', '120');
INSERT INTO `rights` VALUES ('Services.ManageServiceCategory.Update', '0', '121');
INSERT INTO `rights` VALUES ('Services.ManageServiceCategory.View', '0', '122');
INSERT INTO `rights` VALUES ('Services.ManageServices.Admin', '0', '123');
INSERT INTO `rights` VALUES ('Services.ManageServices.Ajaxactive', '0', '124');
INSERT INTO `rights` VALUES ('Services.ManageServices.Ajaxupdate', '0', '125');
INSERT INTO `rights` VALUES ('Services.ManageServices.Create', '0', '126');
INSERT INTO `rights` VALUES ('Services.ManageServices.Delete', '0', '127');
INSERT INTO `rights` VALUES ('Services.ManageServices.Index', '0', '128');
INSERT INTO `rights` VALUES ('Services.ManageServices.ServicesInCategory', '0', '129');
INSERT INTO `rights` VALUES ('Services.ManageServices.Update', '0', '130');
INSERT INTO `rights` VALUES ('Services.ManageServices.View', '0', '131');
INSERT INTO `rights` VALUES ('Site.About', '0', '132');
INSERT INTO `rights` VALUES ('Site.Contact', '0', '133');
INSERT INTO `rights` VALUES ('Site.Error', '0', '134');
INSERT INTO `rights` VALUES ('Site.Index', '0', '135');
INSERT INTO `rights` VALUES ('Site.Partial', '0', '136');
INSERT INTO `rights` VALUES ('Site.Project', '0', '137');
INSERT INTO `rights` VALUES ('Staticpages.Default.Index', '0', '138');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.Admin', '0', '139');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.Ajaxactive', '0', '140');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.Ajaxupdate', '0', '141');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.Create', '0', '142');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.Delete', '0', '143');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.Index', '0', '144');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.Test', '0', '145');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.TestWidget', '0', '146');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.Update', '0', '147');
INSERT INTO `rights` VALUES ('Staticpages.Staticpage.View', '0', '148');
INSERT INTO `rights` VALUES ('Teams.Default.Index', '0', '149');
INSERT INTO `rights` VALUES ('Teams.ManageTeam.Admin', '0', '150');
INSERT INTO `rights` VALUES ('Teams.ManageTeam.Create', '0', '151');
INSERT INTO `rights` VALUES ('Teams.ManageTeam.Delete', '0', '152');
INSERT INTO `rights` VALUES ('Teams.ManageTeam.Index', '0', '153');
INSERT INTO `rights` VALUES ('Teams.ManageTeam.Update', '0', '154');
INSERT INTO `rights` VALUES ('Teams.ManageTeam.View', '0', '155');
INSERT INTO `rights` VALUES ('Test.Paypal.Buy', '0', '156');
INSERT INTO `rights` VALUES ('Test.Paypal.Cancel', '0', '157');
INSERT INTO `rights` VALUES ('Test.Paypal.Confirm', '0', '158');
INSERT INTO `rights` VALUES ('Test.Paypal.DirectPayment', '0', '159');
INSERT INTO `rights` VALUES ('Test.Paypal.Test', '0', '160');
INSERT INTO `rights` VALUES ('User.Activation.Activation', '0', '161');
INSERT INTO `rights` VALUES ('User.Admin.Admin', '0', '162');
INSERT INTO `rights` VALUES ('User.Admin.AjaxEdit', '0', '163');
INSERT INTO `rights` VALUES ('User.Admin.Create', '0', '164');
INSERT INTO `rights` VALUES ('User.Admin.Delete', '0', '165');
INSERT INTO `rights` VALUES ('User.Admin.TestNewView', '0', '166');
INSERT INTO `rights` VALUES ('User.Admin.Update', '0', '167');
INSERT INTO `rights` VALUES ('User.Admin.View', '0', '168');
INSERT INTO `rights` VALUES ('User.Default.Index', '0', '169');
INSERT INTO `rights` VALUES ('User.Login.Login', '0', '170');
INSERT INTO `rights` VALUES ('User.Logout.Logout', '0', '171');
INSERT INTO `rights` VALUES ('User.Profile.Changepassword', '0', '172');
INSERT INTO `rights` VALUES ('User.Profile.Edit', '0', '173');
INSERT INTO `rights` VALUES ('User.Profile.Profile', '0', '174');
INSERT INTO `rights` VALUES ('User.ProfileField.Admin', '0', '175');
INSERT INTO `rights` VALUES ('User.ProfileField.Create', '0', '176');
INSERT INTO `rights` VALUES ('User.ProfileField.Delete', '0', '177');
INSERT INTO `rights` VALUES ('User.ProfileField.Update', '0', '178');
INSERT INTO `rights` VALUES ('User.ProfileField.View', '0', '179');
INSERT INTO `rights` VALUES ('User.Recovery.Recovery', '0', '180');
INSERT INTO `rights` VALUES ('User.Registration.Registration', '0', '181');
INSERT INTO `rights` VALUES ('User.User.Index', '0', '182');
INSERT INTO `rights` VALUES ('User.User.View', '0', '183');
INSERT INTO `sd_banners` VALUES ('1', 'Testes', '13831038402.jpg', null, null, '3', null, '2013-11-20 05:12:04');
INSERT INTO `sd_banners` VALUES ('2', 'Test', '138492058313831038402.jpg', null, null, '2', '2013-11-20 05:09:43', '2013-11-20 05:12:04');
INSERT INTO `sd_banners` VALUES ('3', 'aaa', '138492059413831038402.jpg', null, null, '1', '2013-11-20 05:09:54', '2013-11-20 05:12:04');
INSERT INTO `sd_bookings` VALUES ('2', '123', '44', '5', 'Khuong', 'Da Nang', 'Da Nang', '988', null, null);
INSERT INTO `sd_bookings` VALUES ('3', '1000 $', '44', '23', 'Khuong', 'Da Nang', '+090909090909', '+09090909', null, null);
INSERT INTO `sd_bookings` VALUES ('4', '500 $', 'A90', '5', 'Khuong', 'Da Nang', 'Da Nang', '+8409090909', null, null);
INSERT INTO `sd_bookings` VALUES ('5', '1000 $', 'A901', '5', 'Khuong', 'Da Nang', '+0909090908', '+01029302', null, null);
INSERT INTO `sd_bookings` VALUES ('6', '500 $', 'B201', '5', 'Khoa', 'Da Nang', '+0829282', '988', null, null);
INSERT INTO `sd_bookings` VALUES ('7', '1023 $', 'V204', '5', 'Khuong', 'Cam Le', '+0123854859', '+029387454', null, null);
INSERT INTO `sd_bookings` VALUES ('8', '100 $', 'A205', '5', 'Khuong', 'Da Nng', '09090909', '988', null, null);
INSERT INTO `sd_bookings` VALUES ('9', '123', '44', '1', 'Khuong', 'Da Nang', 'Da Nang', '988', null, null);
INSERT INTO `sd_bookings` VALUES ('10', '500 $', 'A201', '4', 'Khuong', 'Da Nang', '0909080909', '988', null, null);
INSERT INTO `sd_bookings` VALUES ('11', '123', 'A90', null, 'Khuong', 's', 's', '988', null, null);
INSERT INTO `sd_contacts` VALUES ('1', 'Test', 'khuong@gmail.com', 'khuong', 'qwerty', '123456789', 'Cam Le', 'Da Nang', 'Viet Nam', null, '1');
INSERT INTO `sd_contacts` VALUES ('2', 'Test', 'congkhuong1308@gmail.com', 'congkhuong', 'hello!', null, null, null, null, null, '0');
INSERT INTO `sd_contacts` VALUES ('3', 'Ten', 'khuong@gmail.com', 'Ten', 'TenTen', null, null, null, null, null, '0');
INSERT INTO `sd_contacts` VALUES ('4', 'Test contact', 'congkhuong1308@gmail.com', 'Test contact', 'Test contact', null, null, null, null, null, '0');
INSERT INTO `sd_contacts` VALUES ('5', 'Test contact2', 'congkhuong1308@gmail.com', 'Test contact2', 'Test contact2', null, null, null, null, null, '0');
INSERT INTO `sd_countries` VALUES ('12', 'Aruba', '297', null);
INSERT INTO `sd_countries` VALUES ('13', 'Ashmore & Cartier', '0', null);
INSERT INTO `sd_countries` VALUES ('14', 'Australia', '61', '5');
INSERT INTO `sd_countries` VALUES ('15', 'Austria', '43', null);
INSERT INTO `sd_countries` VALUES ('16', 'Azerbaijan', '994', null);
INSERT INTO `sd_countries` VALUES ('17', 'The Bahamas', '1242', null);
INSERT INTO `sd_countries` VALUES ('18', 'Bahrain', '973', null);
INSERT INTO `sd_countries` VALUES ('19', 'Baker Island', '0', null);
INSERT INTO `sd_countries` VALUES ('20', 'Bangladesh', '880', null);
INSERT INTO `sd_countries` VALUES ('21', 'Barbados', '1246', null);
INSERT INTO `sd_countries` VALUES ('22', 'Bassas da India', '0', null);
INSERT INTO `sd_countries` VALUES ('23', 'Belarus', '375', null);
INSERT INTO `sd_countries` VALUES ('24', 'Belgium', '32', null);
INSERT INTO `sd_countries` VALUES ('25', 'Belize', '501', null);
INSERT INTO `sd_countries` VALUES ('26', 'Benin', '229', null);
INSERT INTO `sd_countries` VALUES ('27', 'Bermuda', '1441', null);
INSERT INTO `sd_countries` VALUES ('28', 'Bhutan', '975', null);
INSERT INTO `sd_countries` VALUES ('29', 'Bolivia', '591', null);
INSERT INTO `sd_countries` VALUES ('30', 'Bosnia & Herzegovina', '387', null);
INSERT INTO `sd_countries` VALUES ('31', 'Botswana', '267', null);
INSERT INTO `sd_countries` VALUES ('32', 'Bouvet Island', '0', null);
INSERT INTO `sd_countries` VALUES ('33', 'Brazil', '55', null);
INSERT INTO `sd_countries` VALUES ('34', 'British Indian Ocean Territory', '0', null);
INSERT INTO `sd_countries` VALUES ('35', 'British Virgin Islands', '1', null);
INSERT INTO `sd_countries` VALUES ('36', 'Brunei Darussalam', '673', null);
INSERT INTO `sd_countries` VALUES ('37', 'Bulgaria', '359', null);
INSERT INTO `sd_countries` VALUES ('38', 'Burkina Faso', '226', null);
INSERT INTO `sd_countries` VALUES ('39', 'Burma', '95', null);
INSERT INTO `sd_countries` VALUES ('40', 'Burundi', '257', null);
INSERT INTO `sd_countries` VALUES ('41', 'Cambodia', '855', null);
INSERT INTO `sd_countries` VALUES ('42', 'Cameroon', '237', null);
INSERT INTO `sd_countries` VALUES ('43', 'Canada', '1204', null);
INSERT INTO `sd_countries` VALUES ('44', 'Cape Verde', '238', null);
INSERT INTO `sd_countries` VALUES ('45', 'Cayman Islands', '1345', null);
INSERT INTO `sd_countries` VALUES ('46', 'Central African Republic', '236', null);
INSERT INTO `sd_countries` VALUES ('47', 'Chad', '235', null);
INSERT INTO `sd_countries` VALUES ('48', 'Chile', '56', null);
INSERT INTO `sd_countries` VALUES ('49', 'China', '86', null);
INSERT INTO `sd_countries` VALUES ('50', 'Christmas Island', '61', null);
INSERT INTO `sd_countries` VALUES ('51', 'Clipperton Island', '0', null);
INSERT INTO `sd_countries` VALUES ('52', 'Cocos (Keeling) Islands', '0', null);
INSERT INTO `sd_countries` VALUES ('53', 'Colombia', '57', null);
INSERT INTO `sd_countries` VALUES ('54', 'Comoros', '269', null);
INSERT INTO `sd_countries` VALUES ('55', 'Congo ', '236', null);
INSERT INTO `sd_countries` VALUES ('57', 'Cook Islands', '682', null);
INSERT INTO `sd_countries` VALUES ('58', 'Coral Sea Islands', '0', null);
INSERT INTO `sd_countries` VALUES ('59', 'Costa Rica', '506', null);
INSERT INTO `sd_countries` VALUES ('60', 'Cote d\'Ivoire', '225', null);
INSERT INTO `sd_countries` VALUES ('61', 'Croatia', '385', null);
INSERT INTO `sd_countries` VALUES ('62', 'Cuba', '53', null);
INSERT INTO `sd_countries` VALUES ('63', 'Cyprus', '357', null);
INSERT INTO `sd_countries` VALUES ('64', 'Czech Republic', '420', null);
INSERT INTO `sd_countries` VALUES ('65', 'Denmark', '45', null);
INSERT INTO `sd_countries` VALUES ('66', 'Djibouti', '253', null);
INSERT INTO `sd_countries` VALUES ('67', 'Dominica', '1767', null);
INSERT INTO `sd_countries` VALUES ('68', 'Dominican Republic', '1809', null);
INSERT INTO `sd_countries` VALUES ('69', 'East Timor', '670', null);
INSERT INTO `sd_countries` VALUES ('70', 'Ecuador', '593', null);
INSERT INTO `sd_countries` VALUES ('71', 'Egypt', '20', null);
INSERT INTO `sd_countries` VALUES ('72', 'El Salvador', '503', null);
INSERT INTO `sd_countries` VALUES ('73', 'Equatorial Guinea', '240', null);
INSERT INTO `sd_countries` VALUES ('74', 'Eritrea', '291', null);
INSERT INTO `sd_countries` VALUES ('75', 'Estonia', '372', null);
INSERT INTO `sd_countries` VALUES ('76', 'Ethiopia', '251', null);
INSERT INTO `sd_countries` VALUES ('77', 'Europa Island', '0', null);
INSERT INTO `sd_countries` VALUES ('78', 'Falkland Islands', '500', null);
INSERT INTO `sd_countries` VALUES ('79', 'Faroe Islands', '298', null);
INSERT INTO `sd_countries` VALUES ('80', 'Fiji', '679', null);
INSERT INTO `sd_countries` VALUES ('81', 'Finland', '358', null);
INSERT INTO `sd_countries` VALUES ('82', 'France', '33', null);
INSERT INTO `sd_countries` VALUES ('84', 'French Guiana', '594', null);
INSERT INTO `sd_countries` VALUES ('85', 'French Polynesia', '689', null);
INSERT INTO `sd_countries` VALUES ('87', 'Gabon', '241', null);
INSERT INTO `sd_countries` VALUES ('88', 'The Gambia', '220', null);
INSERT INTO `sd_countries` VALUES ('89', 'Gaza Strip', '0', null);
INSERT INTO `sd_countries` VALUES ('90', 'Georgia', '995', null);
INSERT INTO `sd_countries` VALUES ('91', 'Germany', '49', null);
INSERT INTO `sd_countries` VALUES ('92', 'Ghana', '233', null);
INSERT INTO `sd_countries` VALUES ('93', 'Gibraltar', '350', null);
INSERT INTO `sd_countries` VALUES ('94', 'Glorioso Islands', '0', null);
INSERT INTO `sd_countries` VALUES ('95', 'Greece', '30', null);
INSERT INTO `sd_countries` VALUES ('96', 'Greenland', '299', null);
INSERT INTO `sd_countries` VALUES ('97', 'Grenada', '1473', null);
INSERT INTO `sd_countries` VALUES ('98', 'Guadeloupe', '590', null);
INSERT INTO `sd_countries` VALUES ('99', 'Guam', '1671', null);
INSERT INTO `sd_countries` VALUES ('100', 'Guatemala', '502', null);
INSERT INTO `sd_countries` VALUES ('101', 'Guernsey', '502', null);
INSERT INTO `sd_countries` VALUES ('102', 'Guinea', '224', null);
INSERT INTO `sd_countries` VALUES ('103', 'Guinea-Bissau', '245', null);
INSERT INTO `sd_countries` VALUES ('104', 'Guyana', '592', null);
INSERT INTO `sd_countries` VALUES ('105', 'Haiti', '509', null);
INSERT INTO `sd_countries` VALUES ('107', 'Holy See (Vatican City)', '0', null);
INSERT INTO `sd_countries` VALUES ('108', 'Honduras', '504', null);
INSERT INTO `sd_countries` VALUES ('109', 'Hong Kong (SAR)', '852', null);
INSERT INTO `sd_countries` VALUES ('110', 'Howland Island', '0', null);
INSERT INTO `sd_countries` VALUES ('111', 'Hungary', '36', null);
INSERT INTO `sd_countries` VALUES ('112', 'Iceland', '354', null);
INSERT INTO `sd_countries` VALUES ('113', 'India', '91', null);
INSERT INTO `sd_countries` VALUES ('114', 'Indonesia', '62', null);
INSERT INTO `sd_countries` VALUES ('115', 'Iran', '98', null);
INSERT INTO `sd_countries` VALUES ('116', 'Iraq', '964', null);
INSERT INTO `sd_countries` VALUES ('117', 'Ireland', '353', null);
INSERT INTO `sd_countries` VALUES ('118', 'Israel', '972', null);
INSERT INTO `sd_countries` VALUES ('119', 'Italy', '39', null);
INSERT INTO `sd_countries` VALUES ('120', 'Jamaica', '1876', null);
INSERT INTO `sd_countries` VALUES ('121', 'Jan Mayen', '0', null);
INSERT INTO `sd_countries` VALUES ('122', 'Japan', '81', null);
INSERT INTO `sd_countries` VALUES ('123', 'Jarvis Island', '0', null);
INSERT INTO `sd_countries` VALUES ('124', 'Jersey', '0', null);
INSERT INTO `sd_countries` VALUES ('125', 'Johnston Atoll', '0', null);
INSERT INTO `sd_countries` VALUES ('126', 'Jordan', '962', null);
INSERT INTO `sd_countries` VALUES ('127', 'Juan de Nova Island', '0', null);
INSERT INTO `sd_countries` VALUES ('128', 'Kazakhstan', '7', null);
INSERT INTO `sd_countries` VALUES ('129', 'Kenya', '254', null);
INSERT INTO `sd_countries` VALUES ('130', 'Kingman Reef', '0', null);
INSERT INTO `sd_countries` VALUES ('131', 'Kiribati', '686', null);
INSERT INTO `sd_countries` VALUES ('132', 'Korea   North', '850', null);
INSERT INTO `sd_countries` VALUES ('133', 'Korea   South', '82', null);
INSERT INTO `sd_countries` VALUES ('134', 'Kuwait', '965', null);
INSERT INTO `sd_countries` VALUES ('135', 'Kyrgyzstan', '996', null);
INSERT INTO `sd_countries` VALUES ('136', 'Laos', '856', null);
INSERT INTO `sd_countries` VALUES ('137', 'Latvia', '371', null);
INSERT INTO `sd_countries` VALUES ('138', 'Lebanon', '961', null);
INSERT INTO `sd_countries` VALUES ('139', 'Lesotho', '266', null);
INSERT INTO `sd_countries` VALUES ('140', 'Liberia', '231', null);
INSERT INTO `sd_countries` VALUES ('141', 'Libya', '218', null);
INSERT INTO `sd_countries` VALUES ('142', 'Liechtenstein', '423', null);
INSERT INTO `sd_countries` VALUES ('143', 'Lithuania', '370', null);
INSERT INTO `sd_countries` VALUES ('144', 'Luxembourg', '352', null);
INSERT INTO `sd_countries` VALUES ('145', 'Macao', '853', null);
INSERT INTO `sd_countries` VALUES ('146', 'Macedonia', '389', null);
INSERT INTO `sd_countries` VALUES ('147', 'Madagascar', '261', null);
INSERT INTO `sd_countries` VALUES ('148', 'Malawi', '265', null);
INSERT INTO `sd_countries` VALUES ('149', 'Malaysia', '60', null);
INSERT INTO `sd_countries` VALUES ('150', 'Maldives', '960', null);
INSERT INTO `sd_countries` VALUES ('151', 'Mali', '223', null);
INSERT INTO `sd_countries` VALUES ('152', 'Malta', '356', null);
INSERT INTO `sd_countries` VALUES ('153', 'Isle of Man', '0', null);
INSERT INTO `sd_countries` VALUES ('154', 'Marshall Islands', '692', null);
INSERT INTO `sd_countries` VALUES ('155', 'Martinique', '596', null);
INSERT INTO `sd_countries` VALUES ('156', 'Mauritania', '222', null);
INSERT INTO `sd_countries` VALUES ('157', 'Mauritius', '230', null);
INSERT INTO `sd_countries` VALUES ('158', 'Mayotte', '269', null);
INSERT INTO `sd_countries` VALUES ('159', 'Mexico', '52', null);
INSERT INTO `sd_countries` VALUES ('160', 'Micronesia ', '0', null);
INSERT INTO `sd_countries` VALUES ('161', 'Midway Islands', '0', null);
INSERT INTO `sd_countries` VALUES ('163', 'Moldova', '373', null);
INSERT INTO `sd_countries` VALUES ('164', 'Monaco', '377', null);
INSERT INTO `sd_countries` VALUES ('165', 'Mongolia', '976', null);
INSERT INTO `sd_countries` VALUES ('166', 'Montenegro', '0', null);
INSERT INTO `sd_countries` VALUES ('167', 'Montserrat', '1664', null);
INSERT INTO `sd_countries` VALUES ('168', 'Morocco', '212', null);
INSERT INTO `sd_countries` VALUES ('169', 'Mozambique', '258', null);
INSERT INTO `sd_countries` VALUES ('170', 'Myanmar', '95', null);
INSERT INTO `sd_countries` VALUES ('171', 'Namibia', '264', null);
INSERT INTO `sd_countries` VALUES ('172', 'Nauru', '674', null);
INSERT INTO `sd_countries` VALUES ('173', 'Navassa Island', '0', null);
INSERT INTO `sd_countries` VALUES ('174', 'Nepal', '977', null);
INSERT INTO `sd_countries` VALUES ('175', 'Netherlands', '31', null);
INSERT INTO `sd_countries` VALUES ('176', 'Netherlands Antilles', '599', null);
INSERT INTO `sd_countries` VALUES ('177', 'New Caledonia', '687', null);
INSERT INTO `sd_countries` VALUES ('178', 'New Zealand', '64', '2');
INSERT INTO `sd_countries` VALUES ('179', 'Nicaragua', '505', null);
INSERT INTO `sd_countries` VALUES ('180', 'Niger', '227', null);
INSERT INTO `sd_countries` VALUES ('181', 'Nigeria', '234', null);
INSERT INTO `sd_countries` VALUES ('182', 'Niue', '683', null);
INSERT INTO `sd_countries` VALUES ('183', 'Norfolk Island', '0', null);
INSERT INTO `sd_countries` VALUES ('184', 'Northern Mariana Islands', '599', null);
INSERT INTO `sd_countries` VALUES ('185', 'Norway', '47', null);
INSERT INTO `sd_countries` VALUES ('186', 'Oman', '968', null);
INSERT INTO `sd_countries` VALUES ('187', 'Pakistan', '92', null);
INSERT INTO `sd_countries` VALUES ('188', 'Palau', '680', null);
INSERT INTO `sd_countries` VALUES ('189', 'Palmyra Atoll', '0', null);
INSERT INTO `sd_countries` VALUES ('190', 'Panama', '507', null);
INSERT INTO `sd_countries` VALUES ('191', 'Papua New Guinea', '675', null);
INSERT INTO `sd_countries` VALUES ('192', 'Paracel Islands', '0', null);
INSERT INTO `sd_countries` VALUES ('193', 'Paraguay', '595', null);
INSERT INTO `sd_countries` VALUES ('194', 'Peru', '51', null);
INSERT INTO `sd_countries` VALUES ('195', 'Philippines', '63', null);
INSERT INTO `sd_countries` VALUES ('196', 'Pitcairn Islands', '0', null);
INSERT INTO `sd_countries` VALUES ('197', 'Poland', '48', null);
INSERT INTO `sd_countries` VALUES ('198', 'Portugal', '351', null);
INSERT INTO `sd_countries` VALUES ('199', 'Puerto Rico', '1787', null);
INSERT INTO `sd_countries` VALUES ('200', 'Qatar', '974', null);
INSERT INTO `sd_countries` VALUES ('201', 'Reunion', '262', null);
INSERT INTO `sd_countries` VALUES ('202', 'Romania', '40', null);
INSERT INTO `sd_countries` VALUES ('203', 'Russia', '7', null);
INSERT INTO `sd_countries` VALUES ('204', 'Rwanda', '250', null);
INSERT INTO `sd_countries` VALUES ('205', 'Saint Helena', '290', null);
INSERT INTO `sd_countries` VALUES ('206', 'St Kitts & Nevis', '1869', null);
INSERT INTO `sd_countries` VALUES ('207', 'Saint Lucia', '1758', null);
INSERT INTO `sd_countries` VALUES ('208', 'St Pierre & Miquelon', '508', null);
INSERT INTO `sd_countries` VALUES ('209', 'St Vincent & Grenadines', '1784', null);
INSERT INTO `sd_countries` VALUES ('210', 'Samoa', '685', null);
INSERT INTO `sd_countries` VALUES ('211', 'San Marino', '378', null);
INSERT INTO `sd_countries` VALUES ('212', 'Sao Tom & Principe', '239', null);
INSERT INTO `sd_countries` VALUES ('213', 'Saudi Arabia', '966', null);
INSERT INTO `sd_countries` VALUES ('214', 'Senegal', '221', null);
INSERT INTO `sd_countries` VALUES ('215', 'Serbia', '0', null);
INSERT INTO `sd_countries` VALUES ('216', 'Serbia & Montenegro', '0', null);
INSERT INTO `sd_countries` VALUES ('217', 'Seychelles', '248', null);
INSERT INTO `sd_countries` VALUES ('218', 'Sierra Leone', '232', null);
INSERT INTO `sd_countries` VALUES ('219', 'Singapore', '65', null);
INSERT INTO `sd_countries` VALUES ('220', 'Slovakia', '421', null);
INSERT INTO `sd_countries` VALUES ('221', 'Slovenia', '386', null);
INSERT INTO `sd_countries` VALUES ('222', 'Solomon Islands', '677', null);
INSERT INTO `sd_countries` VALUES ('223', 'Somalia', '252', null);
INSERT INTO `sd_countries` VALUES ('224', 'South Africa', '27', null);
INSERT INTO `sd_countries` VALUES ('226', 'Spain', '34', null);
INSERT INTO `sd_countries` VALUES ('227', 'Spratly Islands', '0', null);
INSERT INTO `sd_countries` VALUES ('228', 'Sri Lanka', '94', null);
INSERT INTO `sd_countries` VALUES ('229', 'Sudan', '249', null);
INSERT INTO `sd_countries` VALUES ('230', 'Suriname', '597', null);
INSERT INTO `sd_countries` VALUES ('231', 'Svalbard', '0', null);
INSERT INTO `sd_countries` VALUES ('232', 'Swaziland', '268', null);
INSERT INTO `sd_countries` VALUES ('233', 'Sweden', '46', null);
INSERT INTO `sd_countries` VALUES ('234', 'Switzerland', '41', null);
INSERT INTO `sd_countries` VALUES ('235', 'Syria', '963', null);
INSERT INTO `sd_countries` VALUES ('236', 'Taiwan', '886', null);
INSERT INTO `sd_countries` VALUES ('237', 'Tajikistan', '992', null);
INSERT INTO `sd_countries` VALUES ('238', 'Tanzania', '255', null);
INSERT INTO `sd_countries` VALUES ('239', 'Thailand', '66', null);
INSERT INTO `sd_countries` VALUES ('240', 'Togo', '228', null);
INSERT INTO `sd_countries` VALUES ('241', 'Tokelau', '690', null);
INSERT INTO `sd_countries` VALUES ('242', 'Tonga', '676', null);
INSERT INTO `sd_countries` VALUES ('243', 'Trinidad & Tobago', '1868', null);
INSERT INTO `sd_countries` VALUES ('244', 'Tromelin Island', '0', null);
INSERT INTO `sd_countries` VALUES ('245', 'Tunisia', '216', null);
INSERT INTO `sd_countries` VALUES ('246', 'Turkey', '90', null);
INSERT INTO `sd_countries` VALUES ('247', 'Turkmenistan', '993', null);
INSERT INTO `sd_countries` VALUES ('248', 'Turks & Caicos Islands', '1649', null);
INSERT INTO `sd_countries` VALUES ('249', 'Tuvalu', '688', null);
INSERT INTO `sd_countries` VALUES ('250', 'Uganda', '256', null);
INSERT INTO `sd_countries` VALUES ('251', 'Ukraine', '380', null);
INSERT INTO `sd_countries` VALUES ('252', 'United Arab Emirates', '971', null);
INSERT INTO `sd_countries` VALUES ('253', 'United Kingdom', '44', '3');
INSERT INTO `sd_countries` VALUES ('254', 'United States', '1', '4');
INSERT INTO `sd_countries` VALUES ('256', 'Uruguay', '598', null);
INSERT INTO `sd_countries` VALUES ('257', 'Uzbekistan', '998', null);
INSERT INTO `sd_countries` VALUES ('258', 'Vanuatu', '678', null);
INSERT INTO `sd_countries` VALUES ('259', 'Venezuela', '58', null);
INSERT INTO `sd_countries` VALUES ('260', 'Vietnam', '84', null);
INSERT INTO `sd_countries` VALUES ('261', 'Virgin Islands', '1284', null);
INSERT INTO `sd_countries` VALUES ('262', 'Virgin Islands (UK)', '1284', null);
INSERT INTO `sd_countries` VALUES ('263', 'Virgin Islands (US)', '1340', null);
INSERT INTO `sd_countries` VALUES ('264', 'Wake Island', '0', null);
INSERT INTO `sd_countries` VALUES ('265', 'Wallis and Futuna', '0', null);
INSERT INTO `sd_countries` VALUES ('266', 'West Bank', '0', null);
INSERT INTO `sd_countries` VALUES ('267', 'Western Sahara', '0', null);
INSERT INTO `sd_countries` VALUES ('268', 'Western Samoa', '0', null);
INSERT INTO `sd_countries` VALUES ('270', 'Yemen', '967', null);
INSERT INTO `sd_countries` VALUES ('271', 'Yugoslavia', '381', null);
INSERT INTO `sd_countries` VALUES ('272', 'Zaire', '0', null);
INSERT INTO `sd_countries` VALUES ('273', 'Zambia', '260', null);
INSERT INTO `sd_countries` VALUES ('274', 'Zimbabwe', '263', null);
INSERT INTO `sd_countries` VALUES ('275', 'AAATestCountry', '9999', '0');
INSERT INTO `sd_galleries` VALUES ('1', 'Sport', 'sport', '13832057502.jpg', null, null, '4', '2013-10-31 08:49:10', '2013-11-22 13:02:00', '1');
INSERT INTO `sd_galleries` VALUES ('2', 'Family', 'family', '13832057611.jpg', null, null, '1', '2013-10-31 08:49:21', '2013-11-22 13:01:59', '1');
INSERT INTO `sd_galleries` VALUES ('3', 'Friend', 'friend', '13832057743.jpg', null, null, '1', '2013-10-31 08:49:34', '2013-11-22 13:02:21', '0');
INSERT INTO `sd_gallery_images` VALUES ('1', '1', 'teset 12', '138320581011.jpg', null, '2013-10-31 08:50:10', '2013-11-16 09:19:52', '1', '0');
INSERT INTO `sd_gallery_images` VALUES ('2', '1', 'Teset 2', '138320582112.jpg', null, '2013-10-31 08:50:21', '2013-11-16 09:24:49', '0', '0');
INSERT INTO `sd_gallery_images` VALUES ('3', '3', 'Test 3', '138320583915.jpg', null, '2013-10-31 08:50:39', '2013-11-19 07:09:42', '0', '0');
INSERT INTO `sd_news` VALUES ('2', 'Test', 'test', null, null, null, '3', '0', null, '2013-11-22 12:58:04', null);
INSERT INTO `sd_news` VALUES ('4', 'grfdf', 'grfdf', null, null, null, '2', '1', '0000-00-00 00:00:00', '2013-11-22 12:58:04', null);
INSERT INTO `sd_news` VALUES ('5', 'khuong', 'khuong', null, null, null, '3', '0', '2013-10-29 06:17:25', '2013-11-22 12:59:56', null);
INSERT INTO `sd_news` VALUES ('6', 'test new', 'test new', null, null, null, '1', '0', '2013-10-29 08:05:51', '2013-11-22 12:58:04', null);
INSERT INTO `sd_news_categories` VALUES ('1', 'Sport', 'Sport', null, null, null, null, 'Text', 'Text', '0', null, null);
INSERT INTO `sd_news_categories` VALUES ('2', 'Family', 'family', '1', '2', '1', null, 'test', null, '0', null, null);
INSERT INTO `sd_news_categories` VALUES ('3', 'Building-test', 'building-test', '1', '2', '1', null, null, null, '1', null, null);
INSERT INTO `sd_news_middle` VALUES ('11', '3', '6');
INSERT INTO `sd_news_middle` VALUES ('12', '1', '5');
INSERT INTO `sd_news_middle` VALUES ('13', '3', '5');
INSERT INTO `sd_product_categories` VALUES ('1', 'Test categories2', 'test-categories2', null, 'ccc', '2', '3', '4', '2', null, null, '1');
INSERT INTO `sd_product_categories` VALUES ('2', 'Test categories 5', 'test-categories-5', null, null, '4', '5', '4', '2', null, null, '1');
INSERT INTO `sd_product_categories` VALUES ('3', 'Sprot', 'sprot', null, null, '6', '7', '4', '2', null, '2014-02-12 10:34:21', '1');
INSERT INTO `sd_product_categories` VALUES ('4', 'root', null, null, null, '1', '8', null, '1', null, null, '1');
INSERT INTO `sd_product_images` VALUES ('1', '1', null, '138327857416.jpg', null, '0', '1', null, null, '#FFFFFF');
INSERT INTO `sd_product_images` VALUES ('2', '1', 'cc', '138327858715.jpg', null, '0', '1', null, null, '#808000');
INSERT INTO `sd_product_images` VALUES ('4', '3', 'cscs', '13832796079.jpg', null, '0', '1', null, null, '#ff6600');
INSERT INTO `sd_product_images` VALUES ('5', '1', 'khuong', '138328155415.jpg', null, '0', '1', null, null, '#ff0000');
INSERT INTO `sd_product_images` VALUES ('6', '1', 'teste', '138328335117.jpg', null, '0', '1', null, null, '#ff0000');
INSERT INTO `sd_product_images` VALUES ('7', '2', 'Test khuong', '138328378824.jpg', null, '0', '1', null, null, '#ff0000');
INSERT INTO `sd_product_middle` VALUES ('45', '1', '3');
INSERT INTO `sd_product_middle` VALUES ('46', '2', '1');
INSERT INTO `sd_product_middle` VALUES ('47', '1', '2');
INSERT INTO `sd_product_middle` VALUES ('48', '4', '4');
INSERT INTO `sd_products` VALUES ('1', 'test 4', 'test-4', null, null, '138328360420.jpg', null, null, '0', null, '1', '0', '0', null, '2014-02-12 08:47:52');
INSERT INTO `sd_products` VALUES ('2', 'khuong', 'khuong', null, null, '138328361727.jpg', null, null, '0', null, '0', '0', '0', '2013-10-30 10:16:40', '2014-02-12 08:47:55');
INSERT INTO `sd_products` VALUES ('3', 'testtete', 'testtete', null, null, '138321120416.jpg', null, null, '0', null, '2', '0', '0', '2013-10-31 10:20:04', '2014-02-12 08:47:58');
INSERT INTO `sd_products` VALUES ('4', 'teat', 'teat', '<p>\r\n	da</p>\r\n', '<p>\r\n	dad</p>\r\n', '139228182013832796079.jpg', null, null, '0', null, '0', '1', '0', '2014-02-13 09:57:00', null);
INSERT INTO `sd_products_copy` VALUES ('1', 'test 4', 'test-4', null, null, '138328360420.jpg', null, null, '0', null, '1', '0', '0', null, '2014-02-12 08:47:52');
INSERT INTO `sd_products_copy` VALUES ('2', 'khuong', 'khuong', null, null, '138328361727.jpg', null, null, '0', null, '0', '0', '0', '2013-10-30 10:16:40', '2014-02-12 08:47:55');
INSERT INTO `sd_products_copy` VALUES ('3', 'testtete', 'testtete', null, null, '138321120416.jpg', null, null, '0', null, '2', '0', '0', '2013-10-31 10:20:04', '2014-02-12 08:47:58');
INSERT INTO `sd_products_copy` VALUES ('4', 'teat', 'teat', '<p>\r\n	da</p>\r\n', '<p>\r\n	dad</p>\r\n', '139228182013832796079.jpg', null, null, '0', null, '0', '1', '0', '2014-02-13 09:57:00', null);
INSERT INTO `sd_profiles` VALUES ('1', 'amin', 'admin');
INSERT INTO `sd_profiles` VALUES ('5', '', '');
INSERT INTO `sd_project` VALUES ('1', 'web-develop', 'Web develop', '<h3>\r\n	Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander</h3>\r\n', '<p>\r\n	<span style=\"font-size:14px;\"><span style=\"font-family:arial, helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); line-height: 25px; background-color: rgb(249, 249, 249);\">The Carnatic anchored at the quay near the custom-house, in the midst of a crowd of ships bearing the flags of all nations. Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander aimlessly through the streets of Yokohama. He found himself at first in a thoroughly European quarter, the houses having low fronts, and being adorned with verandas, beneath which he caught glimpses of neat peristyles. This quarter occupied, with its streets, squares, docks, and warehouses, all the space between the &quot;promontory of the Treaty&quot; and the river. Here, as at Hong Kong and Calcutta, were mixed crowds of all</span></span></span></p>\r\n', '2014-04-01 10:47:43', '2014-04-02 10:20:58');
INSERT INTO `sd_project` VALUES ('2', 'android', 'Android', '<p>\r\n	<strong>&nbsp;Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android &nbsp;Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android Android&nbsp;Android&nbsp;Android</strong></p>\r\n', '<p>\r\n	<span style=\"font-size:14px;\"><span style=\"font-family:arial, helvetica, sans-serif;\">Passepartout went timidly ashore on this so curious territory of the Sons of the Sun. He had nothing better to do than, taking chance for his guide, to wander</span></span></p>\r\n', '2014-04-01 10:51:02', null);
INSERT INTO `sd_project` VALUES ('5', 'ios', 'IOS', '<h3>\r\n	ios</h3>\r\n', '<p>\r\n	ios<span style=\"font-size: 12px;\">iosios</span></p>\r\n', '2014-04-02 11:09:10', null);
INSERT INTO `sd_project` VALUES ('9', 'test', 'test', '<p>\r\n	test</p>\r\n', '<p>\r\n	test</p>\r\n', '2014-04-03 07:02:23', null);
INSERT INTO `sd_project` VALUES ('10', 'testa', 'testa', '<p>\r\n	testa</p>\r\n', '<p>\r\n	testa</p>\r\n', '2014-04-03 07:02:42', null);
INSERT INTO `sd_project` VALUES ('11', 'test3', 'test3', '<p>\r\n	test3</p>\r\n', '<p>\r\n	test3</p>\r\n', '2014-04-03 07:04:44', null);
INSERT INTO `sd_project_image` VALUES ('1', '1', '/upload_files/projects/detail/01.jpg', null, null);
INSERT INTO `sd_project_image` VALUES ('2', '1', '/upload_files/projects/detail/02.jpg', null, null);
INSERT INTO `sd_project_image` VALUES ('3', '1', '/upload_files/projects/detail/03.jpg', null, null);
INSERT INTO `sd_project_image` VALUES ('4', '1', '/upload_files/projects/detail/04.jpg', null, null);
INSERT INTO `sd_project_image` VALUES ('6', '11', '/upload_files/projects/detail/Desert.jpg', null, null);
INSERT INTO `sd_project_image` VALUES ('7', '11', '/upload_files/projects/detail/Hydrangeas.jpg', null, null);
INSERT INTO `sd_project_image` VALUES ('8', '11', '/upload_files/projects/detail/Jellyfish.jpg', null, null);
INSERT INTO `sd_service_categories` VALUES ('1', 'ser 2', 'ser-2', null, null, '2', '3', '5', '2', null, '2014-02-12 11:25:43', '5');
INSERT INTO `sd_service_categories` VALUES ('2', 'ser3', 'ser3', null, null, '4', '5', '5', '2', null, null, '5');
INSERT INTO `sd_service_categories` VALUES ('3', 'Ser 4', 'ser-4', null, null, '6', '9', '5', '2', null, null, '5');
INSERT INTO `sd_service_categories` VALUES ('4', 'ser 5', 'ser-5', null, null, '7', '8', '3', '3', null, '2014-02-12 11:30:22', '5');
INSERT INTO `sd_service_categories` VALUES ('5', 'root', 'root', null, null, '1', '10', null, '1', null, null, '5');
INSERT INTO `sd_services` VALUES ('1', 'khi em ra di', 'khi-em-ra-di', '2', '<p>\r\n	<strong>cacs</strong></p>\r\n', '<p>\r\n	<strong>cacs</strong></p>\r\n', '1384576031Chrysanthemum.jpg', null, null, '0', null, '3', '0', '0', '2013-11-16 05:27:11', '2013-11-22 12:54:17');
INSERT INTO `sd_services` VALUES ('2', 'vdsv', 'vdsvds', '3', null, null, '1384576500Tulips.jpg', null, null, '0', null, '2', '0', '0', '2013-11-16 05:35:01', '2013-11-22 12:54:15');
INSERT INTO `sd_services` VALUES ('3', 'Server', 'server', '4', null, null, '1384923167Lighthouse.jpg', null, null, '0', null, '1', '0', '0', '2013-11-20 05:52:48', '2013-11-22 12:54:16');
INSERT INTO `sd_static_pages` VALUES ('1', 'About us', 'About-us', '13834673913.jpg', 'About us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us\r\nAbout us About us About us', null, null, null, '0', '0', '2013-10-29 05:07:23', '2013-11-22 12:50:12', '0');
INSERT INTO `sd_static_pages` VALUES ('2', 'vdvdvd', 'vdvd', '13834673771.jpg', null, null, 'top', null, '0', '4', '2013-10-29 05:07:20', '2013-11-22 12:50:12', '1');
INSERT INTO `sd_static_pages` VALUES ('3', 'kukd', 'kukd', '13831225142.jpg', null, null, 'top', null, '0', '3', '2013-10-30 09:34:00', '2013-11-22 12:50:18', '1');
INSERT INTO `sd_static_pages` VALUES ('4', 'K-Teset', 'k-teset', '1384916900Desert.jpg', null, null, null, null, '0', '2', '2013-11-20 04:08:20', '2013-11-22 12:50:19', '1');
INSERT INTO `sd_stocks` VALUES ('1', 'vangua', '1000', '2014-05-07 06:53:58', null);
INSERT INTO `sd_stocks` VALUES ('2', 'device', '500', '2014-05-07 09:15:27', null);
INSERT INTO `sd_stocks` VALUES ('3', 'device', '600', '2014-05-07 09:15:38', null);
INSERT INTO `sd_stocks` VALUES ('4', 'device', '700', '2014-05-07 06:14:57', null);
INSERT INTO `sd_stocks` VALUES ('5', 'vangua', '2000', '2014-05-07 09:15:49', null);
INSERT INTO `sd_stocks` VALUES ('6', 'vangua', '600', '2014-05-07 09:28:04', null);
INSERT INTO `sd_stocks` VALUES ('7', 'Hahathanks', '500 $', '2014-05-26 21:37:35', null);
INSERT INTO `sd_team` VALUES ('1', 'Hai Duong', 'CEO', '139228583213832796079.jpg', '1');
INSERT INTO `sd_team` VALUES ('2', 'Linh Duong', 'Founder', '1392283566linhduong.jpg', '1');
INSERT INTO `sd_user_login` VALUES ('2', '1', '2014-05-19 05:44:01');
INSERT INTO `sd_user_login` VALUES ('8', '1', '2014-05-19 05:42:01');
INSERT INTO `sd_user_login` VALUES ('9', '1', '2014-05-19 06:24:00');
INSERT INTO `sd_user_login` VALUES ('10', '1', '2014-05-20 03:49:40');
INSERT INTO `sd_user_login` VALUES ('11', '1', '2014-05-20 05:25:03');
INSERT INTO `sd_user_login` VALUES ('12', '1', '2014-05-23 06:46:13');
INSERT INTO `sd_user_login` VALUES ('13', '1', '2014-05-23 09:08:28');
INSERT INTO `sd_user_login` VALUES ('14', '1', '2014-05-26 16:07:06');
INSERT INTO `sd_user_login` VALUES ('15', '1', '2014-05-27 18:31:56');
INSERT INTO `sd_user_login` VALUES ('16', '1', '2014-06-07 06:39:05');
INSERT INTO `sd_user_login` VALUES ('17', '1', '2014-06-13 05:24:06');
INSERT INTO `sd_user_login` VALUES ('18', '1', '2014-06-16 11:00:07');
INSERT INTO `sd_user_login` VALUES ('19', '1', '2014-06-16 17:57:59');
INSERT INTO `sd_user_login` VALUES ('20', '1', '2014-06-17 04:00:00');
INSERT INTO `sd_user_login` VALUES ('21', '1', '2014-06-18 17:14:12');
INSERT INTO `sd_user_login` VALUES ('22', '1', '2014-06-18 17:15:24');
INSERT INTO `sd_user_login` VALUES ('23', '1', '2014-06-18 17:15:58');
INSERT INTO `sd_user_login` VALUES ('24', '1', '2014-06-18 17:18:57');
INSERT INTO `sd_user_login` VALUES ('25', '1', '2014-06-18 17:19:13');
INSERT INTO `sd_user_login` VALUES ('26', '1', '2014-06-18 18:01:39');
INSERT INTO `sd_user_login` VALUES ('27', '1', '2014-06-18 18:03:37');
INSERT INTO `sd_user_login` VALUES ('28', '1', '2014-06-18 18:10:58');
INSERT INTO `sd_user_login` VALUES ('29', '1', '2014-06-18 18:11:59');
INSERT INTO `sd_user_login` VALUES ('30', '1', '2014-06-19 04:02:09');
INSERT INTO `sd_user_login` VALUES ('31', '1', '2014-06-19 04:20:40');
INSERT INTO `sd_user_login` VALUES ('32', '1', '2014-06-20 17:36:14');
INSERT INTO `sd_user_login` VALUES ('33', '1', '2014-07-02 06:14:20');
INSERT INTO `sd_user_login` VALUES ('34', '1', '2014-07-14 10:32:18');
INSERT INTO `sd_users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '21232f297a57a5a743894a0e4a801fc3', '2013-10-04 21:17:56', '2014-05-19 05:44:01', '1', '1', null, null, null, null, 'en');
INSERT INTO `sd_users` VALUES ('2', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demoo@example.com', 'fe01ce2a7fbac8fafaed7c982a04e229', '2013-10-04 21:17:56', '0000-00-00 00:00:00', '0', '1', null, null, null, null, 'fr');
INSERT INTO `sd_users` VALUES ('4', 'Mobi', 'e10adc3949ba59abbe56e057f20f883e', 'modi.bixa0@gmail.com', '7e3322831ed94481effd9052798999a7', '2013-10-07 00:07:30', '0000-00-00 00:00:00', '0', '0', null, null, null, null, 'fr');
INSERT INTO `sd_users` VALUES ('5', 'admin333', 'e10adc3949ba59abbe56e057f20f883e', 'admin112@gmail.com', '926db83cf542b8cbaf68ec6c35f85412', '2014-04-24 10:53:19', '2014-05-14 06:35:16', '0', '1', null, null, null, null, 'en');
INSERT INTO `sd_users` VALUES ('6', 'khidixaxah', 'c9130efba1317c16406d67270f657af3', 'ase@gmail.com', '', '2014-05-14 06:19:50', '0000-00-00 00:00:00', '0', '0', null, null, null, null, 'en');
INSERT INTO `sd_users` VALUES ('7', 'Kun', 'e10adc3949ba59abbe56e057f20f883e', 'ka@gmail.com', '', '2014-05-19 05:32:41', '0000-00-00 00:00:00', '0', '0', null, null, null, null, 'en');
INSERT INTO `sqlite_sequence` VALUES ('sd_banners', '3');
INSERT INTO `sqlite_sequence` VALUES ('sd_countries', '275');
INSERT INTO `sqlite_sequence` VALUES ('sd_product_images', '7');
INSERT INTO `sqlite_sequence` VALUES ('sd_product_middle', '48');
INSERT INTO `sqlite_sequence` VALUES ('sd_users', '4');
INSERT INTO `sqlite_sequence` VALUES ('sd_users', '4');
INSERT INTO `sqlite_sequence` VALUES ('sd_profiles_fields', '2');
INSERT INTO `sqlite_sequence` VALUES ('sd_product_middle', '47');
INSERT INTO `sqlite_sequence` VALUES ('sd_countries', '275');
INSERT INTO `sqlite_sequence` VALUES ('sd_banners', '2');
INSERT INTO `sqlite_sequence` VALUES ('sd_product_images', '7');
INSERT INTO `sqlite_sequence` VALUES ('_sd_team_old_20140213', '2');
INSERT INTO `sqlite_sequence` VALUES ('sd_team', '2');
INSERT INTO `sqlite_sequence` VALUES ('_sd_project_old_20140401', '2');
INSERT INTO `sqlite_sequence` VALUES ('sd_project', '11');
INSERT INTO `sqlite_sequence` VALUES ('_sd_project_image_old_20140402_1', '0');
INSERT INTO `sqlite_sequence` VALUES ('sd_project_image', '8');
