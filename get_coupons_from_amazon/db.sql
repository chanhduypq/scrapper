/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-09 08:14:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `expire` timestamp NULL DEFAULT NULL,
  `used_today` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('145', '30% Off Aicok Stainless Steel Quiet Motor Slow Masticating Juicer', 'I4DSINR7', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('146', 'GOOLOO Sport Bluetooth V4.1 Earbuds for $12.97', 'ZDTJKQSX', 'https://www.retailmenot.com/view/amazon.com', null, '4', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('147', 'Listenman M6 Sport Bluetooth Headset for $10.99', 'Y95YZDL9', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('148', 'BUBM Large Double Layer Electronics Accessories BagÂ for $10.39', '77Q2LEBQ', 'https://www.retailmenot.com/view/amazon.com', null, '29', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('149', '40% Off Soldering Iron Welding Guns Series', 'VCC3TESW', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('150', '25% Off Aicok Stainless Steel Electric Water Kettle', 'LZH4WA7P', 'https://www.retailmenot.com/view/amazon.com', null, '3', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('151', '40% Off 2 Pack Solar Mason Jar Lights', 'HWDKUYR2', 'https://www.retailmenot.com/view/amazon.com', null, '3', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('152', '25% Off Deik 22.2V 2 In 1 Cordless Vacuum Cleaner With High-power Long-lasting', 'GYSC3X6B', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('153', '35% Off ZMSnow Vegan Leather Classic Large Tote Bag + Free Shipping', 'ADXXDDBB', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('210', '$25 Off + 30-Day Free Trial Code ', 'FRESH25', 'https://www.groupon.com/coupons/stores/amazon.com', null, '1392', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('211', 'Get A $5 Amazon Credit With Amazon Cash ', 'Discount Auto-Applied', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-12-16 00:00:00', '251', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('212', '$10 Off Your First $20 Order ', 'PRIME10', 'https://www.groupon.com/coupons/stores/amazon.com', '2018-01-01 00:00:00', '1072', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('213', '$5 Off With Amazon App ', 'J1751N', 'https://www.groupon.com/coupons/stores/amazon.com', null, '929', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('214', '$20 Off First Prime NOW Purchase ', 'GETITNOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, '348', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('215', '$10 Off Your First Amazon Prime Now Order | Promo Code ', '10PRIMENOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('216', 'Free 1-Hr Shipping | Amazon Prime Now ', 'ALLSTATE1HR', 'https://www.groupon.com/coupons/stores/amazon.com', null, '100', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('217', 'Free $8 Video Credit ', 'SOVWR7OU8F', 'https://www.groupon.com/coupons/stores/amazon.com', null, '83', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('218', 'Get A Free Snack When You Spend $25 With Amazon Prime ', 'PRIMESNACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, '69', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('219', 'Free Bottle Of Amazon Element Vitamins Or Supplements With $25 Order ', 'PRIMEVITAMIN', 'https://www.groupon.com/coupons/stores/amazon.com', null, '52', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('220', '$10 Credit + 1 Month Trial Of Amazon Music ', 'MOREMUSIC', 'https://www.groupon.com/coupons/stores/amazon.com', null, '35', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('221', '$30 Off Fire HD 8 Tablet With AMEX ', 'FIRE8TAB', 'https://www.groupon.com/coupons/stores/amazon.com', null, '22', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('222', '$10 Off Krispy Kreme Gift Card With Amazon Coupon ', 'KRISPY10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '22', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('223', 'All-New Amazon Echo (2nd Generation) + Free Shipping, Only $99.99 ', 'ECHO3PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, '21', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('224', '$5 Off Google Play Gift Card ', 'GOOGLE5', 'https://www.groupon.com/coupons/stores/amazon.com', null, '20', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('225', '$50 Famous Footwear Gift Card For $40 ', 'FAMOUS', 'https://www.groupon.com/coupons/stores/amazon.com', null, '18', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('226', 'New Today: All-New Amazon Cloud Indoor Security/Pet Camera ', '2CLOUDCAM', 'https://www.groupon.com/coupons/stores/amazon.com', null, '18', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('227', '$10 Off Paint &amp; Primer By Kilz Tribute With This Amazon Coupon ', '10TRIBUTE', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-19 00:00:00', '18', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('228', 'Save $10 On $50 Warehouse Deals ', 'EARTH10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '12', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('229', '15% Off Luxury Beauty &amp; Grooming Code ', 'NEW2LUX', 'https://www.groupon.com/coupons/stores/amazon.com', null, '7', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('230', 'Save $10 On Your First $20+ Amazon Restaurants Order ', 'DINEIN10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '6', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('231', '$5 Off First Baby Store Purchase ', 'FIVEOFFBABY', 'https://www.groupon.com/coupons/stores/amazon.com', null, '6', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('232', 'Get 50 Free Prints From Amazon ', 'FREE50PRINTS', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('233', 'Buy 5 Amazon Echo Dots, Get 1 Free ', 'DOT6PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('234', '15% Off Beauty Items With Code ', 'LUXBEAUTY', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('235', '$10 Off Your Mobile Restaurant Order ', 'MOBILE10', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-12-31 00:00:00', null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('236', '$10 Off Your First Amazon Restaurant Order ', 'EAT10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('237', 'Instant $5 Off Candy &amp; Food With Code! ', 'SMILES55', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('238', '$25 Back On Beauty Items For Amazon Prime Customers ', 'LUXPRIME25', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('239', '$10 Off Dollar Shave Club Gift Card ', 'SHAVE10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('240', 'Save 15% When You Buy Two 7-Inch Fire Tablets ', 'FIRE2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('241', '$100 Off 2 Amazon Echo Shows ', 'SHOW2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('242', '$25 Off Amazon Prime Fresh + 30 Days Free ', '25FRESH', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('243', '$80 Off 2 Echo Devices ', 'ECHO2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('244', 'Get $25 Back On Luxury $50 Beauty Purchase ', 'BEAUTYGIFT25', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('245', 'Save $10 On Dickey&#39;s Barbecue Gift Card ', 'DICKEYS10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('246', 'Try Amazon Restaurants, Save $10! ', 'EATNOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('247', 'Save $20 When You Buy 3 Echo Dots ', 'DOT3PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('248', '40% Off Apple Watch Screen Protector ', 'XSH9JU9N', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('249', '$10 Promo Code | Amazon Gift Cards ', '0816GCARDS', 'https://www.groupon.com/coupons/stores/amazon.com', null, '9', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('250', 'Extra 25% Off Suits Today ', 'SUITSTYLE', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('251', '4 Free Months Of Amazon Music Unlimited ', 'CITIMUSIC', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-15 00:00:00', '15', '2017-11-09 08:05:11', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('252', '$10 Off First Amazon Restaurants Order $20+', 'EAT10', 'https://www.retailmenot.com/view/amazon.com', null, '152', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('253', '35% Off Previous-Gen Fire HD8 Tablet', 'PREOWNED10', 'https://www.retailmenot.com/view/amazon.com', null, '62', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('254', '59% Off Best Silicone Baby Bibs for Boys And Girls', 'U2QA2LSP', 'https://www.retailmenot.com/view/amazon.com', null, '54', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('255', 'AGPTEK Curtain Icicle Lights, AGPtEK 3M X 3M 8 Modes White Fairy String Lights for $11', 'F6ETRTML', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon` VALUES ('256', '40% Off Double Wall Glass Tea Infuser Cup In a Beautiful Gift Box', '9UMZVROV', 'https://www.retailmenot.com/view/amazon.com', null, '18', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('257', '20% Off Remote Control Truck 4 Channels RC Cars + Free Shipping With Prime Or on Order $25+', 'WOUKQBHC', 'https://www.retailmenot.com/view/amazon.com', null, '7', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon` VALUES ('258', 'AUKEY LED Eye-Care And Space-Saving Floor Lamp for $45.09', 'AUKEYFL2', 'https://www.retailmenot.com/view/amazon.com', null, '3', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon` VALUES ('259', 'Vansky 2017 Upgraded Amazing Christmas Projector Lights Red And Green Star Shower for $34.49', 'KU2HOLOT', 'https://www.retailmenot.com/view/amazon.com', null, '3', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon` VALUES ('260', 'X-Chef Extra Long Silicone Gloves for $9.99', 'KJF9SJP5', 'https://www.retailmenot.com/view/amazon.com', null, '1', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon` VALUES ('261', 'Smart Robot Car Building Kit for $19.99', '50OFFMJT', 'https://www.retailmenot.com/view/amazon.com', null, '37', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('262', 'IClever Worldwide Travel Adapter, All In One Universal Wall Charger for $13.99', 'TRAVELOC', 'https://www.retailmenot.com/view/amazon.com', null, '1', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon` VALUES ('263', '20% Off Nekteck 4-port 72W USB Wall Charger', 'MX4VR9AC', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon` VALUES ('264', '2-Pack Anker PowerLine+ USB-C To USB Cables for $9.99', 'ANKER826', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon` VALUES ('265', 'AUKEY LED Desk Lamp for $33.49', 'AUKEYT16', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-09 08:05:15', '2017-11-09 00:00:00');

-- ----------------------------
-- Table structure for coupon_both
-- ----------------------------
DROP TABLE IF EXISTS `coupon_both`;
CREATE TABLE `coupon_both` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_groupon` varchar(1000) DEFAULT NULL,
  `title_retailmenot` varchar(1000) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `expire` timestamp NULL DEFAULT NULL,
  `used_today` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon_both
-- ----------------------------
INSERT INTO `coupon_both` VALUES ('217', null, '30% Off Aicok Stainless Steel Quiet Motor Slow Masticating Juicer', 'I4DSINR7', null, '2', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('218', null, 'GOOLOO Sport Bluetooth V4.1 Earbuds for $12.97', 'ZDTJKQSX', null, '4', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('219', null, 'Listenman M6 Sport Bluetooth Headset for $10.99', 'Y95YZDL9', null, '2', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('220', null, 'BUBM Large Double Layer Electronics Accessories BagÂ for $10.39', '77Q2LEBQ', null, '29', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('221', null, '40% Off Soldering Iron Welding Guns Series', 'VCC3TESW', null, '2', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('222', null, '25% Off Aicok Stainless Steel Electric Water Kettle', 'LZH4WA7P', null, '3', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('223', null, '40% Off 2 Pack Solar Mason Jar Lights', 'HWDKUYR2', null, '3', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('224', null, '25% Off Deik 22.2V 2 In 1 Cordless Vacuum Cleaner With High-power Long-lasting', 'GYSC3X6B', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('225', null, '35% Off ZMSnow Vegan Leather Classic Large Tote Bag + Free Shipping', 'ADXXDDBB', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('226', '$25 Off + 30-Day Free Trial Code ', null, 'FRESH25', null, '1392', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('227', 'Get A $5 Amazon Credit With Amazon Cash ', null, 'Discount Auto-Applied', '2017-12-16 00:00:00', '251', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('228', '$10 Off Your First $20 Order ', null, 'PRIME10', '2018-01-01 00:00:00', '1072', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('229', '$5 Off With Amazon App ', null, 'J1751N', null, '929', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('230', '$20 Off First Prime NOW Purchase ', null, 'GETITNOW', null, '348', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('231', '$10 Off Your First Amazon Prime Now Order | Promo Code ', null, '10PRIMENOW', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('232', 'Free 1-Hr Shipping | Amazon Prime Now ', null, 'ALLSTATE1HR', null, '100', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('233', 'Free $8 Video Credit ', null, 'SOVWR7OU8F', null, '83', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('234', 'Get A Free Snack When You Spend $25 With Amazon Prime ', null, 'PRIMESNACK', null, '69', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('235', 'Free Bottle Of Amazon Element Vitamins Or Supplements With $25 Order ', null, 'PRIMEVITAMIN', null, '52', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('236', '$10 Credit + 1 Month Trial Of Amazon Music ', null, 'MOREMUSIC', null, '35', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('237', '$30 Off Fire HD 8 Tablet With AMEX ', null, 'FIRE8TAB', null, '22', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('238', '$10 Off Krispy Kreme Gift Card With Amazon Coupon ', null, 'KRISPY10', null, '22', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('239', 'All-New Amazon Echo (2nd Generation) + Free Shipping, Only $99.99 ', null, 'ECHO3PACK', null, '21', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('240', '$5 Off Google Play Gift Card ', null, 'GOOGLE5', null, '20', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('241', '$50 Famous Footwear Gift Card For $40 ', null, 'FAMOUS', null, '18', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('242', 'New Today: All-New Amazon Cloud Indoor Security/Pet Camera ', null, '2CLOUDCAM', null, '18', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('243', '$10 Off Paint &amp; Primer By Kilz Tribute With This Amazon Coupon ', null, '10TRIBUTE', '2017-11-19 00:00:00', '18', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('244', 'Save $10 On $50 Warehouse Deals ', null, 'EARTH10', null, '12', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('245', '15% Off Luxury Beauty &amp; Grooming Code ', null, 'NEW2LUX', null, '7', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('246', 'Save $10 On Your First $20+ Amazon Restaurants Order ', null, 'DINEIN10', null, '6', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('247', '$5 Off First Baby Store Purchase ', null, 'FIVEOFFBABY', null, '6', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('248', 'Get 50 Free Prints From Amazon ', null, 'FREE50PRINTS', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('249', 'Buy 5 Amazon Echo Dots, Get 1 Free ', null, 'DOT6PACK', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('250', '15% Off Beauty Items With Code ', null, 'LUXBEAUTY', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('251', '$10 Off Your Mobile Restaurant Order ', null, 'MOBILE10', '2017-12-31 00:00:00', null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('252', '$10 Off Your First Amazon Restaurant Order ', '$10 Off First Amazon Restaurants Order $20+', 'EAT10', null, '152', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('253', 'Instant $5 Off Candy &amp; Food With Code! ', null, 'SMILES55', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('254', '$25 Back On Beauty Items For Amazon Prime Customers ', null, 'LUXPRIME25', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('255', '$10 Off Dollar Shave Club Gift Card ', null, 'SHAVE10', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('256', 'Save 15% When You Buy Two 7-Inch Fire Tablets ', null, 'FIRE2PACK', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('257', '$100 Off 2 Amazon Echo Shows ', null, 'SHOW2PACK', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('258', '$25 Off Amazon Prime Fresh + 30 Days Free ', null, '25FRESH', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('259', '$80 Off 2 Echo Devices ', null, 'ECHO2PACK', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('260', 'Get $25 Back On Luxury $50 Beauty Purchase ', null, 'BEAUTYGIFT25', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('261', 'Save $10 On Dickey&#39;s Barbecue Gift Card ', null, 'DICKEYS10', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('262', 'Try Amazon Restaurants, Save $10! ', null, 'EATNOW', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('263', 'Save $20 When You Buy 3 Echo Dots ', null, 'DOT3PACK', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('264', '40% Off Apple Watch Screen Protector ', null, 'XSH9JU9N', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('265', '$10 Promo Code | Amazon Gift Cards ', null, '0816GCARDS', null, '9', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('266', 'Extra 25% Off Suits Today ', null, 'SUITSTYLE', null, null, '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('267', '4 Free Months Of Amazon Music Unlimited ', null, 'CITIMUSIC', '2017-11-15 00:00:00', '15', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('268', null, '35% Off Previous-Gen Fire HD8 Tablet', 'PREOWNED10', null, '62', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('269', null, '59% Off Best Silicone Baby Bibs for Boys And Girls', 'U2QA2LSP', null, '54', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('270', null, 'AGPTEK Curtain Icicle Lights, AGPtEK 3M X 3M 8 Modes White Fairy String Lights for $11', 'F6ETRTML', null, '2', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon_both` VALUES ('271', null, '40% Off Double Wall Glass Tea Infuser Cup In a Beautiful Gift Box', '9UMZVROV', null, '18', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('272', null, '20% Off Remote Control Truck 4 Channels RC Cars + Free Shipping With Prime Or on Order $25+', 'WOUKQBHC', null, '7', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon_both` VALUES ('273', null, 'AUKEY LED Eye-Care And Space-Saving Floor Lamp for $45.09', 'AUKEYFL2', null, '3', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon_both` VALUES ('274', null, 'Vansky 2017 Upgraded Amazing Christmas Projector Lights Red And Green Star Shower for $34.49', 'KU2HOLOT', null, '3', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon_both` VALUES ('275', null, 'X-Chef Extra Long Silicone Gloves for $9.99', 'KJF9SJP5', null, '1', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon_both` VALUES ('276', null, 'Smart Robot Car Building Kit for $19.99', '50OFFMJT', null, '37', '2017-11-09 08:05:15', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('277', null, 'IClever Worldwide Travel Adapter, All In One Universal Wall Charger for $13.99', 'TRAVELOC', null, '1', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon_both` VALUES ('278', null, '20% Off Nekteck 4-port 72W USB Wall Charger', 'MX4VR9AC', null, null, '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon_both` VALUES ('279', null, '2-Pack Anker PowerLine+ USB-C To USB Cables for $9.99', 'ANKER826', null, '2', '2017-11-09 08:05:15', '2017-11-09 00:00:00');
INSERT INTO `coupon_both` VALUES ('280', null, 'AUKEY LED Desk Lamp for $33.49', 'AUKEYT16', null, null, '2017-11-09 08:05:15', '2017-11-09 00:00:00');
