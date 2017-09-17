/*
 Navicat Premium Data Transfer

 Source Server         : localDatabase
 Source Server Type    : MySQL
 Source Server Version : 100116
 Source Host           : localhost
 Source Database       : affablebean

 Target Server Type    : MySQL
 Target Server Version : 100116
 File Encoding         : utf-8

 Date: 12/08/2016 10:58:01 AM
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='contains product categories, e.g., dairy, meats, etc.';

-- ----------------------------
--  Records of `category`
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES ('1', 'Action'), ('2', 'Adventure'), ('3', 'Comedy'), ('4', 'Drama'), ('5', 'Romance'), ('6', 'Horror');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
