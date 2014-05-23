/*
MySQL Data Transfer
Source Host: localhost
Source Database: sm
Target Host: localhost
Target Database: sm
Date: 5/19/2014 5:56:57 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sd_user_login
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_login`;
CREATE TABLE `sd_user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_visit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `sd_user_login` VALUES ('2', '1', '2014-05-19 05:44:01');
INSERT INTO `sd_user_login` VALUES ('8', '1', '2014-05-19 05:42:01');
INSERT INTO `sd_user_login` VALUES ('9', '1', '2014-05-19 06:24:00');
