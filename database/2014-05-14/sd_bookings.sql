/*
MySQL Data Transfer
Source Host: localhost
Source Database: sm
Target Host: localhost
Target Database: sm
Date: 5/14/2014 9:03:33 AM
*/

SET FOREIGN_KEY_CHECKS=0;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `sd_bookings` VALUES ('2', '123', '44', '5', 'Khuong', 'Da Nang', 'Da Nang', '988', null, null);
INSERT INTO `sd_bookings` VALUES ('3', '1000 $', '44', '23', 'Khuong', 'Da Nang', '+090909090909', '+09090909', null, null);
INSERT INTO `sd_bookings` VALUES ('4', '500 $', 'A90', '5', 'Khuong', 'Da Nang', 'Da Nang', '+8409090909', null, null);
INSERT INTO `sd_bookings` VALUES ('5', '1000 $', 'A901', '5', 'Khuong', 'Da Nang', '+0909090908', '+01029302', null, null);
INSERT INTO `sd_bookings` VALUES ('6', '500 $', 'B201', '5', 'Khoa', 'Da Nang', '+0829282', '988', null, null);
INSERT INTO `sd_bookings` VALUES ('7', '1023 $', 'V204', '5', 'Khuong', 'Cam Le', '+0123854859', '+029387454', null, null);
INSERT INTO `sd_bookings` VALUES ('8', '100 $', 'A205', '5', 'Khuong', 'Da Nng', '09090909', '988', null, null);
INSERT INTO `sd_bookings` VALUES ('9', '123', '44', '1', 'Khuong', 'Da Nang', 'Da Nang', '988', null, null);
