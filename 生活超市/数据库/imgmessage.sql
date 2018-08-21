/*
Navicat MySQL Data Transfer

Source Server         : imgdatas
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : imgmessage

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2018-08-21 18:32:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `beverages`
-- ----------------------------
DROP TABLE IF EXISTS `beverages`;
CREATE TABLE `beverages` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `adds` varchar(100) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `preprice` varchar(10) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of beverages
-- ----------------------------
INSERT INTO `beverages` VALUES ('1', '49.png', '5.00', '7.00', 'orange soft drink (250 ml)');
INSERT INTO `beverages` VALUES ('2', '14.png', '4.00', '5.00', 'prune juice - sunsweet (1 ltr)');
INSERT INTO `beverages` VALUES ('3', '15.png', '3.00', '5.00', 'coco cola zero can (330 ml)');
INSERT INTO `beverages` VALUES ('4', '16.png', '3.00', '4.00', 'sprite bottle (2 ltr)');
INSERT INTO `beverages` VALUES ('5', '13.png', '3.00', '4.00', 'mixed fruit juice (1 ltr)');
INSERT INTO `beverages` VALUES ('6', '50.png', '4.00', '5.00', 'aamras juice (250 ml)');
INSERT INTO `beverages` VALUES ('7', '51.png', '6.00', '8.00', 'coconut water (1000 ml)');
INSERT INTO `beverages` VALUES ('8', '52.png', '6.00', '8.00', 'ceres orange juice (1 ltr)');
INSERT INTO `beverages` VALUES ('9', '53.png', '10.00', '12.00', 'dabur glucose D (250 gm)');
INSERT INTO `beverages` VALUES ('10', '54.png', '8.00', '10.00', 'mix lemon flavour (50 gm)');
INSERT INTO `beverages` VALUES ('11', '55.png', '6.00', '7.00', 'schweppes water (250 ltr)');
INSERT INTO `beverages` VALUES ('12', '56.png', '7.00', '9.00', 'red bull energy drink (250 ml)');

-- ----------------------------
-- Table structure for `bread`
-- ----------------------------
DROP TABLE IF EXISTS `bread`;
CREATE TABLE `bread` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `adds` varchar(100) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `preprice` varchar(10) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bread
-- ----------------------------
INSERT INTO `bread` VALUES ('1', '37.png', '4.00', '5.00', 'raisin rolls  (2 in 1 pack)');
INSERT INTO `bread` VALUES ('2', '38.png', '2.00', '4.00', 'butter croissants (50 gm)');
INSERT INTO `bread` VALUES ('3', '39.png', '3.00', '5.00', 'bread wheat pita (250 gm)');
INSERT INTO `bread` VALUES ('4', '40.png', '4.00', '5.00', 'hot dog roll (150 gm)');
INSERT INTO `bread` VALUES ('5', '41.png', '3.00', '5.00', 'masala bread (500 gm)');
INSERT INTO `bread` VALUES ('6', '42.png', '5.00', '8.00', 'rolls chocolate (3 pcs)');
INSERT INTO `bread` VALUES ('7', '43.png', '6.00', '8.00', 'wheat masala pav (500 gm)');
INSERT INTO `bread` VALUES ('8', '44.png', '6.00', '8.00', 'baked - garlic bread (200 gm)');
INSERT INTO `bread` VALUES ('9', '45.png', '6.00', '8.00', 'eggless walnut (250 gm)');
INSERT INTO `bread` VALUES ('10', '46.png', '4.00', '5.00', 'assorted muffins (200 gm)');
INSERT INTO `bread` VALUES ('11', '47.png', '6.00', '7.00', 'bagels - sesame (200 gm)');
INSERT INTO `bread` VALUES ('12', '48.png', '7.00', '9.00', 'flax & walnut loaf (400 gm)');

-- ----------------------------
-- Table structure for `frozen`
-- ----------------------------
DROP TABLE IF EXISTS `frozen`;
CREATE TABLE `frozen` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `adds` varchar(100) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `preprice` varchar(10) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of frozen
-- ----------------------------
INSERT INTO `frozen` VALUES ('1', '64.png', '10.00', '12.00', 'pepper salami (250 gm)');
INSERT INTO `frozen` VALUES ('2', '65.png', '9.00', '11.00', 'sumeru green pees (500 gm)');
INSERT INTO `frozen` VALUES ('3', '66.png', '6.00', '8.00', 'tikka chicken (300 gm)');
INSERT INTO `frozen` VALUES ('4', '67.png', '6.00', '7.00', 'mixed vegetables (500 gm)');
INSERT INTO `frozen` VALUES ('5', '68.png', '9.00', '11.00', 'mango pulp (800 gm)');
INSERT INTO `frozen` VALUES ('6', '69.png', '5.00', '8.00', 'kesar mango pulp (800 gm)');
INSERT INTO `frozen` VALUES ('7', '70.png', '6.00', '8.00', 'frozen sweet corn (250 gm)');
INSERT INTO `frozen` VALUES ('8', '71.png', '4.00', '6.00', 'chicken nuggets (1 kg)');
INSERT INTO `frozen` VALUES ('9', '72.png', '5.00', '7.00', 'arlic fingers (400 gm)');
INSERT INTO `frozen` VALUES ('10', '73.png', '8.00', '10.00', 'catch fish finger (200 gm)');
INSERT INTO `frozen` VALUES ('11', '74.png', '11.00', '15.00', 'sumeru chicken (500 ml)');
INSERT INTO `frozen` VALUES ('12', '75.png', '7.00', '9.00', 'veggie fingers (400 gm)');

-- ----------------------------
-- Table structure for `hotoffers`
-- ----------------------------
DROP TABLE IF EXISTS `hotoffers`;
CREATE TABLE `hotoffers` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `adds` varchar(100) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `preprice` varchar(10) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotoffers
-- ----------------------------
INSERT INTO `hotoffers` VALUES ('1', '1.png', '7.99', '10.00', 'fortune sunflower oil');
INSERT INTO `hotoffers` VALUES ('2', '3.png', '11.99', '15.00', 'basmati rise (5 Kg)');
INSERT INTO `hotoffers` VALUES ('3', '2.png', '8.00', '10.00', 'Pepsi soft drink (2 Ltr)');
INSERT INTO `hotoffers` VALUES ('4', '4.png', '9.00', '11.00', 'dogs food (4 Kg)');

-- ----------------------------
-- Table structure for `household`
-- ----------------------------
DROP TABLE IF EXISTS `household`;
CREATE TABLE `household` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `adds` varchar(100) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `preprice` varchar(10) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of household
-- ----------------------------
INSERT INTO `household` VALUES ('1', '17.png', '8.00', '10.00', 'dishwash gel, lemon  (1.5 ltr)');
INSERT INTO `household` VALUES ('2', '18.png', '2.00', '4.00', 'dish wash bar (500 gm)');
INSERT INTO `household` VALUES ('3', '19.png', '3.00', '5.00', 'air freshener (50 gm)');
INSERT INTO `household` VALUES ('4', '20.png', '6.00', '7.00', 'toilet cleaner expert (1 ltr)');
INSERT INTO `household` VALUES ('5', '21.png', '8.00', '10.00', 'princeware packaging container pack (6 no\'s)');
INSERT INTO `household` VALUES ('6', '22.png', '5.00', '8.00', 'signoraware container center press (900 ml)');
INSERT INTO `household` VALUES ('7', '23.png', '6.00', '8.00', 'ship stainless steel sauce pan single (1 pc)');
INSERT INTO `household` VALUES ('8', '24.png', '6.00', '8.00', 'omega stainless steel puri dabba (1 pc)');
INSERT INTO `household` VALUES ('9', '25.png', '3.00', '4.00', 'food for adult dogs (80 gms)');
INSERT INTO `household` VALUES ('10', '26.png', '6.00', '10.00', 'young adult dogs (1.2 kg)');
INSERT INTO `household` VALUES ('11', '27.png', '6.00', '7.00', 'cat food ocean fish (1.4 kg)');
INSERT INTO `household` VALUES ('12', '28.png', '7.00', '9.00', 'chicken in jelly can (400 gm)');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', null, null, '147258', '123456qwer');

-- ----------------------------
-- Table structure for `pet`
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `adds` varchar(100) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `preprice` varchar(10) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES ('1', '57.png', '8.00', '10.00', 'can - tuna for cats (400 gm)');
INSERT INTO `pet` VALUES ('2', '58.png', '5.00', '6.00', 'junior pet food (90 gm)');
INSERT INTO `pet` VALUES ('3', '4.png', '9.00', '11.00', 'dogs food - junior (4 Kg)');
INSERT INTO `pet` VALUES ('4', '59.png', '15.00', '18.00', 'gravy food for dogs (20 kg)');
INSERT INTO `pet` VALUES ('5', '60.png', '8.00', '10.00', 'meat for dogs (100 gm)');
INSERT INTO `pet` VALUES ('6', '61.png', '5.00', '8.00', 'weekly pack (200 gm)');
INSERT INTO `pet` VALUES ('7', '62.png', '6.00', '8.00', 'dog munchies (500 gm)');
INSERT INTO `pet` VALUES ('8', '63.png', '6.00', '8.00', 'nutrition for cats (90 gm)');
INSERT INTO `pet` VALUES ('9', '25.png', '3.00', '4.00', 'food for adult dogs (80 gms)');
INSERT INTO `pet` VALUES ('10', '26.png', '6.00', '10.00', 'young adult dogs (1.2 kg)');
INSERT INTO `pet` VALUES ('11', '27.png', '6.00', '7.00', 'cat food ocean fish (1.4 kg)');
INSERT INTO `pet` VALUES ('12', '28.png', '7.00', '9.00', 'chicken in jelly can (400 gm)');

-- ----------------------------
-- Table structure for `popular`
-- ----------------------------
DROP TABLE IF EXISTS `popular`;
CREATE TABLE `popular` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `adds` varchar(100) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `preprice` varchar(10) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of popular
-- ----------------------------
INSERT INTO `popular` VALUES ('1', '5.png', '3.00', '5.00', 'knorr instant soup (100 gm)');
INSERT INTO `popular` VALUES ('2', '6.png', '5.00', '8.00', 'chings noodles (75 gm)');
INSERT INTO `popular` VALUES ('3', '7.png', '3.00', '5.00', 'lahsun sev (150 gm)');
INSERT INTO `popular` VALUES ('4', '8.png', '5.00', '7.00', 'premium bake rusk (300 gm)');
INSERT INTO `popular` VALUES ('5', '9.png', '2.00', '3.00', 'fresh spinach (palak)');
INSERT INTO `popular` VALUES ('6', '10.png', '5.00', '8.00', 'fresh mango dasheri (1 kg)');
INSERT INTO `popular` VALUES ('7', '11.png', '6.00', '8.00', 'fresh apple red (1 kg)');
INSERT INTO `popular` VALUES ('8', '12.png', '4.00', '6.00', 'fresh broccoli (500 gm)');
INSERT INTO `popular` VALUES ('9', '13.png', '3.00', '4.00', 'mixed fruit juice (1 ltr)');
INSERT INTO `popular` VALUES ('10', '14.png', '4.00', '5.00', 'prune juice - sunsweet (1 ltr)');
INSERT INTO `popular` VALUES ('11', '15.png', '3.00', '5.00', 'coco cola zero can (330 ml)');
INSERT INTO `popular` VALUES ('12', '16.png', '3.00', '4.00', 'sprite bottle (2 ltr)');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `username` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `telnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '651017427', '15202848022', '651017427@qq.com', '1520284802');

-- ----------------------------
-- Table structure for `vegetables`
-- ----------------------------
DROP TABLE IF EXISTS `vegetables`;
CREATE TABLE `vegetables` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `adds` varchar(100) DEFAULT NULL,
  `nowprice` varchar(10) DEFAULT NULL,
  `preprice` varchar(10) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vegetables
-- ----------------------------
INSERT INTO `vegetables` VALUES ('1', '29.png', '8.00', '9.00', 'Fresh Bananas (1 kg)');
INSERT INTO `vegetables` VALUES ('2', '30.png', '5.00', '8.00', 'fresh cauliflower (2 no\'s)');
INSERT INTO `vegetables` VALUES ('3', '31.png', '2.00', '3.00', 'fresh brinjal bharta (1 kg)');
INSERT INTO `vegetables` VALUES ('4', '32.png', '4.00', '6.00', 'fresh sweet lime (500 gm)');
INSERT INTO `vegetables` VALUES ('5', '9.png', '8.00', '10.00', 'fresh spinach (palak)');
INSERT INTO `vegetables` VALUES ('6', '10.png', '5.00', '8.00', 'fresh mango dasheri (1 kg)');
INSERT INTO `vegetables` VALUES ('7', '11.png', '6.00', '8.00', 'fresh apple red (1 kg)');
INSERT INTO `vegetables` VALUES ('8', '12.png', '4.00', '6.00', 'fresh broccoli (500 gm)');
INSERT INTO `vegetables` VALUES ('9', '33.png', '11.00', '14.00', 'fresh basket onion (1 kg)');
INSERT INTO `vegetables` VALUES ('10', '34.png', '4.00', '5.00', 'fresh muskmelon (1 kg)');
INSERT INTO `vegetables` VALUES ('11', '35.png', '11.00', '15.00', 'fresh mushroom (500 ml)');
INSERT INTO `vegetables` VALUES ('12', '36.png', '8.00', '7.00', 'fresh strawberry (1 pc)');
