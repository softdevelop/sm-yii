/*
Navicat SQLite Data Transfer

Source Server         : bhp
Source Server Version : 30706
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 30706
File Encoding         : 65001

Date: 2013-10-09 16:19:17
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for "main"."tbl_abouts"
-- ----------------------------
CREATE TABLE "tbl_abouts" (
	"id" INTEGER PRIMARY KEY  NOT NULL ,
	"title" varchar(128) NOT NULL ,
	"alias" varchar(128) NOT NULL ,
	"image" varchar(128) DEFAULT (NULL) ,
	"description" text,"content" text,
	"priority" int(11) DEFAULT ('0') ,
	"create_time" datetime DEFAULT (NULL) ,
	"update_time" datetime DEFAULT (NULL) ,
	"is_published" tinyint(1) DEFAULT ('1') 
);