/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : antelope

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2014-05-26 09:53:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for registration_form
-- ----------------------------
DROP TABLE IF EXISTS `registration_form`;
CREATE TABLE `registration_form` (
  `id` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `admission_ticket_number` varchar(255) DEFAULT NULL,
  `affiliation` varchar(255) DEFAULT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `is_resit` bit(1) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `organization_id` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `test_id` varchar(255) NOT NULL,
  `valid_identification_number` varchar(255) DEFAULT NULL,
  `bank_account_title` varchar(255) DEFAULT NULL,
  `is_from_classes` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admission_ticket_number` (`admission_ticket_number`),
  KEY `FKAFC8688AC1658EC2` (`organization_id`),
  KEY `FKAFC8688A82BDC662` (`test_id`),
  CONSTRAINT `FKAFC8688A82BDC662` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`),
  CONSTRAINT `FKAFC8688AC1658EC2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
