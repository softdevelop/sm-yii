/*
MySQL Data Transfer
Source Host: localhost
Source Database: sm
Target Host: localhost
Target Database: sm
Date: 5/13/2014 2:53:02 PM
*/

SET FOREIGN_KEY_CHECKS=0;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `sd_users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '21232f297a57a5a743894a0e4a801fc3', '2013-10-04 21:17:56', '2014-05-07 09:15:13', '1', '1', null, null, null, null, 'en');
INSERT INTO `sd_users` VALUES ('2', 'demo2', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demoo@example.com', 'fe01ce2a7fbac8fafaed7c982a04e229', '2013-10-04 21:17:56', '0000-00-00 00:00:00', '0', '0', null, null, null, null, 'fr');
INSERT INTO `sd_users` VALUES ('4', 'Mobi', 'e10adc3949ba59abbe56e057f20f883e', 'modi.bixa0@gmail.com', '7e3322831ed94481effd9052798999a7', '2013-10-07 00:07:30', '0000-00-00 00:00:00', '0', '0', null, null, null, null, 'fr');
INSERT INTO `sd_users` VALUES ('5', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin112@gmail.com', 'bb2c04555a60ea5282fa377e3c2c2abc', '2014-04-24 10:53:19', '0000-00-00 00:00:00', '0', '1', null, null, null, null, 'fr');
