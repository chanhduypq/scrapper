/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-08 21:53:56
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('99', '$25 Off + 30-Day Free Trial Code ', 'FRESH25', 'https://www.groupon.com/coupons/stores/amazon.com', null, '1539', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('100', '$40 Off + 2-Year Warranty | Amazon Fire 8 Kids Edition Tablet ', 'Discount Auto-Applied', 'https://www.groupon.com/coupons/stores/amazon.com', null, '158', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('101', '$10 Off Your First $20 Order ', 'PRIME10', 'https://www.groupon.com/coupons/stores/amazon.com', '2018-01-01 00:00:00', '1166', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('102', '$5 Off With Amazon App ', 'J1751N', 'https://www.groupon.com/coupons/stores/amazon.com', null, '1043', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('103', '$20 Off First Prime NOW Purchase ', 'GETITNOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, '356', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('104', '$10 Off Your First Amazon Prime Now Order | Promo Code ', '10PRIMENOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('105', 'Free 1-Hr Shipping | Amazon Prime Now ', 'ALLSTATE1HR', 'https://www.groupon.com/coupons/stores/amazon.com', null, '115', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('106', 'Free $8 Video Credit ', 'SOVWR7OU8F', 'https://www.groupon.com/coupons/stores/amazon.com', null, '75', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('107', 'Get A Free Snack When You Spend $25 With Amazon Prime ', 'PRIMESNACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, '73', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('108', 'Free Bottle Of Amazon Element Vitamins Or Supplements With $25 Order ', 'PRIMEVITAMIN', 'https://www.groupon.com/coupons/stores/amazon.com', null, '54', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('109', '$10 Credit + 1 Month Trial Of Amazon Music ', 'MOREMUSIC', 'https://www.groupon.com/coupons/stores/amazon.com', null, '48', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('110', '$10 Off Krispy Kreme Gift Card With Amazon Coupon ', 'KRISPY10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '21', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('111', '$10 Off Paint &amp; Primer By Kilz Tribute With This Amazon Coupon ', '10TRIBUTE', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-19 00:00:00', '19', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('112', 'All-New Amazon Echo (2nd Generation) + Free Shipping, Only $99.99 ', 'ECHO3PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, '18', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('113', '$50 Famous Footwear Gift Card For $40 ', 'FAMOUS', 'https://www.groupon.com/coupons/stores/amazon.com', null, '17', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('114', '$30 Off Fire HD 8 Tablet With AMEX ', 'FIRE8TAB', 'https://www.groupon.com/coupons/stores/amazon.com', null, '16', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('115', '$5 Off Google Play Gift Card ', 'GOOGLE5', 'https://www.groupon.com/coupons/stores/amazon.com', null, '15', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('116', 'New Today: All-New Amazon Cloud Indoor Security/Pet Camera ', '2CLOUDCAM', 'https://www.groupon.com/coupons/stores/amazon.com', null, '13', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('117', 'Get 50 Free Prints From Amazon ', 'FREE50PRINTS', 'https://www.groupon.com/coupons/stores/amazon.com', null, '11', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('118', 'Save $10 On $50 Warehouse Deals ', 'EARTH10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '10', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('119', '$5 Off First Baby Store Purchase ', 'FIVEOFFBABY', 'https://www.groupon.com/coupons/stores/amazon.com', null, '7', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('120', '15% Off Luxury Beauty &amp; Grooming Code ', 'NEW2LUX', 'https://www.groupon.com/coupons/stores/amazon.com', null, '7', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('121', 'Save $10 On Your First $20+ Amazon Restaurants Order ', 'DINEIN10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('122', 'Buy 5 Amazon Echo Dots, Get 1 Free ', 'DOT6PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('123', '15% Off Beauty Items With Code ', 'LUXBEAUTY', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('124', 'Instant $5 Off Candy &amp; Food With Code! ', 'SMILES55', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('125', '$10 Off Your Mobile Restaurant Order ', 'MOBILE10', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-12-31 00:00:00', null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('126', 'Save 15% When You Buy Two 7-Inch Fire Tablets ', 'FIRE2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('127', '$10 Off Your First Amazon Restaurant Order ', 'EAT10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('128', '$25 Back On Beauty Items For Amazon Prime Customers ', 'LUXPRIME25', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('129', '$10 Off Dollar Shave Club Gift Card ', 'SHAVE10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('130', '$100 Off 2 Amazon Echo Shows ', 'SHOW2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('131', '$25 Off Amazon Prime Fresh + 30 Days Free ', '25FRESH', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('132', '$80 Off 2 Echo Devices ', 'ECHO2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('133', 'Save $10 On Dickey&#39;s Barbecue Gift Card ', 'DICKEYS10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('134', 'Try Amazon Restaurants, Save $10! ', 'EATNOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('135', 'Get $25 Back On Luxury $50 Beauty Purchase ', 'BEAUTYGIFT25', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('136', 'Save $20 When You Buy 3 Echo Dots ', 'DOT3PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('137', '40% Off Apple Watch Screen Protector ', 'XSH9JU9N', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('138', '$10 Promo Code | Amazon Gift Cards ', '0816GCARDS', 'https://www.groupon.com/coupons/stores/amazon.com', null, '7', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('139', 'Extra 25% Off Suits Today ', 'SUITSTYLE', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('140', '4 Free Months Of Amazon Music Unlimited ', 'CITIMUSIC', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-15 00:00:00', '15', '2017-11-08 21:53:20', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('141', 'Smart Robot Car Building Kit for $19.99', '50OFFMJT', 'https://www.retailmenot.com/view/amazon.com', null, '6', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('142', '$10 Off First Amazon Restaurants Order $20+', 'EAT10', 'https://www.retailmenot.com/view/amazon.com', null, '173', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('143', '35% Off Previous-Gen Fire HD8 Tablet', 'PREOWNED10', 'https://www.retailmenot.com/view/amazon.com', null, '80', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('144', '59% Off Best Silicone Baby Bibs for Boys And Girls', 'U2QA2LSP', 'https://www.retailmenot.com/view/amazon.com', null, '64', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('145', '30% Off Aicok Stainless Steel Quiet Motor Slow Masticating Juicer', 'I4DSINR7', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('146', 'GOOLOO Sport Bluetooth V4.1 Earbuds for $12.97', 'ZDTJKQSX', 'https://www.retailmenot.com/view/amazon.com', null, '4', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('147', 'Listenman M6 Sport Bluetooth Headset for $10.99', 'Y95YZDL9', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('148', 'BUBM Large Double Layer Electronics Accessories BagÂ for $10.39', '77Q2LEBQ', 'https://www.retailmenot.com/view/amazon.com', null, '29', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('149', '40% Off Soldering Iron Welding Guns Series', 'VCC3TESW', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('150', '25% Off Aicok Stainless Steel Electric Water Kettle', 'LZH4WA7P', 'https://www.retailmenot.com/view/amazon.com', null, '3', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('151', '40% Off 2 Pack Solar Mason Jar Lights', 'HWDKUYR2', 'https://www.retailmenot.com/view/amazon.com', null, '3', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('152', '25% Off Deik 22.2V 2 In 1 Cordless Vacuum Cleaner With High-power Long-lasting', 'GYSC3X6B', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('153', '35% Off ZMSnow Vegan Leather Classic Large Tote Bag + Free Shipping', 'ADXXDDBB', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon` VALUES ('154', '40% Off Double Wall Glass Tea Infuser Cup In a Beautiful Gift Box', '9UMZVROV', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon_both
-- ----------------------------
INSERT INTO `coupon_both` VALUES ('98', '$25 Off + 30-Day Free Trial Code ', null, 'FRESH25', null, '1539', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('99', '$40 Off + 2-Year Warranty | Amazon Fire 8 Kids Edition Tablet ', null, 'Discount Auto-Applied', null, '158', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('100', '$10 Off Your First $20 Order ', null, 'PRIME10', '2018-01-01 00:00:00', '1166', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('101', '$5 Off With Amazon App ', null, 'J1751N', null, '1043', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('102', '$20 Off First Prime NOW Purchase ', null, 'GETITNOW', null, '356', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('103', '$10 Off Your First Amazon Prime Now Order | Promo Code ', null, '10PRIMENOW', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('104', 'Free 1-Hr Shipping | Amazon Prime Now ', null, 'ALLSTATE1HR', null, '115', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('105', 'Free $8 Video Credit ', null, 'SOVWR7OU8F', null, '75', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('106', 'Get A Free Snack When You Spend $25 With Amazon Prime ', null, 'PRIMESNACK', null, '73', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('107', 'Free Bottle Of Amazon Element Vitamins Or Supplements With $25 Order ', null, 'PRIMEVITAMIN', null, '54', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('108', '$10 Credit + 1 Month Trial Of Amazon Music ', null, 'MOREMUSIC', null, '48', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('109', '$10 Off Krispy Kreme Gift Card With Amazon Coupon ', null, 'KRISPY10', null, '21', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('110', '$10 Off Paint &amp; Primer By Kilz Tribute With This Amazon Coupon ', null, '10TRIBUTE', '2017-11-19 00:00:00', '19', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('111', 'All-New Amazon Echo (2nd Generation) + Free Shipping, Only $99.99 ', null, 'ECHO3PACK', null, '18', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('112', '$50 Famous Footwear Gift Card For $40 ', null, 'FAMOUS', null, '17', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('113', '$30 Off Fire HD 8 Tablet With AMEX ', null, 'FIRE8TAB', null, '16', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('114', '$5 Off Google Play Gift Card ', null, 'GOOGLE5', null, '15', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('115', 'New Today: All-New Amazon Cloud Indoor Security/Pet Camera ', null, '2CLOUDCAM', null, '13', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('116', 'Get 50 Free Prints From Amazon ', null, 'FREE50PRINTS', null, '11', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('117', 'Save $10 On $50 Warehouse Deals ', null, 'EARTH10', null, '10', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('118', '$5 Off First Baby Store Purchase ', null, 'FIVEOFFBABY', null, '7', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('119', '15% Off Luxury Beauty &amp; Grooming Code ', null, 'NEW2LUX', null, '7', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('120', 'Save $10 On Your First $20+ Amazon Restaurants Order ', null, 'DINEIN10', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('121', 'Buy 5 Amazon Echo Dots, Get 1 Free ', null, 'DOT6PACK', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('122', '15% Off Beauty Items With Code ', null, 'LUXBEAUTY', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('123', 'Instant $5 Off Candy &amp; Food With Code! ', null, 'SMILES55', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('124', '$10 Off Your Mobile Restaurant Order ', null, 'MOBILE10', '2017-12-31 00:00:00', null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('125', 'Save 15% When You Buy Two 7-Inch Fire Tablets ', null, 'FIRE2PACK', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('126', '$10 Off Your First Amazon Restaurant Order ', '$10 Off First Amazon Restaurants Order $20+', 'EAT10', null, '173', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('127', '$25 Back On Beauty Items For Amazon Prime Customers ', null, 'LUXPRIME25', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('128', '$10 Off Dollar Shave Club Gift Card ', null, 'SHAVE10', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('129', '$100 Off 2 Amazon Echo Shows ', null, 'SHOW2PACK', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('130', '$25 Off Amazon Prime Fresh + 30 Days Free ', null, '25FRESH', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('131', '$80 Off 2 Echo Devices ', null, 'ECHO2PACK', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('132', 'Save $10 On Dickey&#39;s Barbecue Gift Card ', null, 'DICKEYS10', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('133', 'Try Amazon Restaurants, Save $10! ', null, 'EATNOW', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('134', 'Get $25 Back On Luxury $50 Beauty Purchase ', null, 'BEAUTYGIFT25', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('135', 'Save $20 When You Buy 3 Echo Dots ', null, 'DOT3PACK', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('136', '40% Off Apple Watch Screen Protector ', null, 'XSH9JU9N', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('137', '$10 Promo Code | Amazon Gift Cards ', null, '0816GCARDS', null, '7', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('138', 'Extra 25% Off Suits Today ', null, 'SUITSTYLE', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('139', '4 Free Months Of Amazon Music Unlimited ', null, 'CITIMUSIC', '2017-11-15 00:00:00', '15', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('140', null, 'Smart Robot Car Building Kit for $19.99', '50OFFMJT', null, '6', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('141', null, '35% Off Previous-Gen Fire HD8 Tablet', 'PREOWNED10', null, '80', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('142', null, '59% Off Best Silicone Baby Bibs for Boys And Girls', 'U2QA2LSP', null, '64', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('143', null, '30% Off Aicok Stainless Steel Quiet Motor Slow Masticating Juicer', 'I4DSINR7', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('144', null, 'GOOLOO Sport Bluetooth V4.1 Earbuds for $12.97', 'ZDTJKQSX', null, '4', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('145', null, 'Listenman M6 Sport Bluetooth Headset for $10.99', 'Y95YZDL9', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('146', null, 'BUBM Large Double Layer Electronics Accessories BagÂ for $10.39', '77Q2LEBQ', null, '29', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('147', null, '40% Off Soldering Iron Welding Guns Series', 'VCC3TESW', null, '2', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('148', null, '25% Off Aicok Stainless Steel Electric Water Kettle', 'LZH4WA7P', null, '3', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('149', null, '40% Off 2 Pack Solar Mason Jar Lights', 'HWDKUYR2', null, '3', '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('150', null, '25% Off Deik 22.2V 2 In 1 Cordless Vacuum Cleaner With High-power Long-lasting', 'GYSC3X6B', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('151', null, '35% Off ZMSnow Vegan Leather Classic Large Tote Bag + Free Shipping', 'ADXXDDBB', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
INSERT INTO `coupon_both` VALUES ('152', null, '40% Off Double Wall Glass Tea Infuser Cup In a Beautiful Gift Box', '9UMZVROV', null, null, '2017-11-08 21:53:26', '2017-11-08 00:00:00');
