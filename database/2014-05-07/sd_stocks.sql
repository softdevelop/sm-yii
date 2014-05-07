/*
MySQL Data Transfer
Source Host: localhost
Source Database: sm
Target Host: localhost
Target Database: sm
Date: 5/7/2014 3:04:53 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sd_stocks
-- ----------------------------
DROP TABLE IF EXISTS `sd_stocks`;
CREATE TABLE `sd_stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockname` varchar(50) NOT NULL,
  `price` varchar(127) NOT NULL,
  `timedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `sd_stocks` VALUES ('1', 'vangua', '1000', '2014-05-07 06:53:58');
INSERT INTO `sd_stocks` VALUES ('2', 'device', '500', '2014-05-07 09:15:27');
INSERT INTO `sd_stocks` VALUES ('3', 'device', '600', '2014-05-07 09:15:38');
INSERT INTO `sd_stocks` VALUES ('4', 'device', '700', '2014-05-07 06:14:57');
INSERT INTO `sd_stocks` VALUES ('5', 'vangua', '2000', '2014-05-07 09:15:49');
INSERT INTO `sd_stocks` VALUES ('6', 'vangua', '600', '2014-05-07 09:28:04');
