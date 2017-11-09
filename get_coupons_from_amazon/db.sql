/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-09 15:36:45
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('113', '$25 Off + 30-Day Free Trial Code ', 'FRESH25', 'https://www.groupon.com/coupons/stores/amazon.com', null, '1805', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('114', 'Get A $5 Amazon Credit With Amazon Cash ', 'Discount Auto-Applied', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-12-16 00:00:00', '673', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('115', '$10 Off Your First $20 Order ', 'PRIME10', 'https://www.groupon.com/coupons/stores/amazon.com', '2018-01-01 00:00:00', '1440', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('116', '$5 Off With Amazon App ', 'J1751N', 'https://www.groupon.com/coupons/stores/amazon.com', null, '1128', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('117', '$20 Off First Prime NOW Purchase ', 'GETITNOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, '498', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('118', '$10 Off Your First Amazon Prime Now Order | Promo Code ', '10PRIMENOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('119', 'Free 1-Hr Shipping | Amazon Prime Now ', 'ALLSTATE1HR', 'https://www.groupon.com/coupons/stores/amazon.com', null, '130', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('120', 'Free $8 Video Credit ', 'SOVWR7OU8F', 'https://www.groupon.com/coupons/stores/amazon.com', null, '109', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('121', 'Get A Free Snack When You Spend $25 With Amazon Prime ', 'PRIMESNACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, '78', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('122', 'Free Bottle Of Amazon Element Vitamins Or Supplements With $25 Order ', 'PRIMEVITAMIN', 'https://www.groupon.com/coupons/stores/amazon.com', null, '58', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('123', '$10 Credit + 1 Month Trial Of Amazon Music ', 'MOREMUSIC', 'https://www.groupon.com/coupons/stores/amazon.com', null, '45', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('124', '$10 Off Paint &amp; Primer By Kilz Tribute With This Amazon Coupon ', '10TRIBUTE', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-19 00:00:00', '25', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('125', 'Save $10 On $50 Warehouse Deals ', 'EARTH10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '25', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('126', '$50 Famous Footwear Gift Card For $40 ', 'FAMOUS', 'https://www.groupon.com/coupons/stores/amazon.com', null, '24', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('127', 'All-New Amazon Echo (2nd Generation) + Free Shipping, Only $99.99 ', 'ECHO3PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, '24', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('128', '$30 Off Fire HD 8 Tablet With AMEX ', 'FIRE8TAB', 'https://www.groupon.com/coupons/stores/amazon.com', null, '23', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('129', '$10 Off Krispy Kreme Gift Card With Amazon Coupon ', 'KRISPY10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '18', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('130', '$5 Off Google Play Gift Card ', 'GOOGLE5', 'https://www.groupon.com/coupons/stores/amazon.com', null, '18', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('131', 'New Today: All-New Amazon Cloud Indoor Security/Pet Camera ', '2CLOUDCAM', 'https://www.groupon.com/coupons/stores/amazon.com', null, '18', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('132', 'Save $10 On Your First $20+ Amazon Restaurants Order ', 'DINEIN10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '11', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('133', '15% Off Luxury Beauty &amp; Grooming Code ', 'NEW2LUX', 'https://www.groupon.com/coupons/stores/amazon.com', null, '8', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('134', '$5 Off First Baby Store Purchase ', 'FIVEOFFBABY', 'https://www.groupon.com/coupons/stores/amazon.com', null, '7', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('135', 'Buy 5 Amazon Echo Dots, Get 1 Free ', 'DOT6PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('136', 'Get 50 Free Prints From Amazon ', 'FREE50PRINTS', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('137', '15% Off Beauty Items With Code ', 'LUXBEAUTY', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('138', '$10 Off Your Mobile Restaurant Order ', 'MOBILE10', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-12-31 00:00:00', null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('139', '$10 Off Your First Amazon Restaurant Order ', 'EAT10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('140', '$25 Back On Beauty Items For Amazon Prime Customers ', 'LUXPRIME25', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('141', 'Instant $5 Off Candy &amp; Food With Code! ', 'SMILES55', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('142', 'Save 15% When You Buy Two 7-Inch Fire Tablets ', 'FIRE2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('143', '$10 Off Dollar Shave Club Gift Card ', 'SHAVE10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('144', '$100 Off 2 Amazon Echo Shows ', 'SHOW2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('145', '$25 Off Amazon Prime Fresh + 30 Days Free ', '25FRESH', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('146', '$80 Off 2 Echo Devices ', 'ECHO2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('147', 'Save $20 When You Buy 3 Echo Dots ', 'DOT3PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('148', 'Get $25 Back On Luxury $50 Beauty Purchase ', 'BEAUTYGIFT25', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('149', 'Try Amazon Restaurants, Save $10! ', 'EATNOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('150', 'Save $10 On Dickey&#39;s Barbecue Gift Card ', 'DICKEYS10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('151', '40% Off Apple Watch Screen Protector ', 'XSH9JU9N', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('152', '$10 Promo Code | Amazon Gift Cards ', '0816GCARDS', 'https://www.groupon.com/coupons/stores/amazon.com', null, '7', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('153', 'Extra 25% Off Suits Today ', 'SUITSTYLE', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('154', '4 Free Months Of Amazon Music Unlimited ', 'CITIMUSIC', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-15 00:00:00', '18', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('155', '$10 Off First Amazon Restaurants Order $20+', 'EAT10', 'https://www.retailmenot.com/view/amazon.com', null, '166', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('156', '35% Off Previous-Gen Fire HD8 Tablet', 'PREOWNED10', 'https://www.retailmenot.com/view/amazon.com', null, '65', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('157', '59% Off Best Silicone Baby Bibs for Boys And Girls', 'U2QA2LSP', 'https://www.retailmenot.com/view/amazon.com', null, '52', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('158', '30% Off Marigold 9 Inch Thermal Laminator', 'ARVVDW9A', 'https://www.retailmenot.com/view/amazon.com', null, '8', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('159', '60% Off Smartphone Lanyard Neck Strap for Cell Phone', 'PYFEJMYD', 'https://www.retailmenot.com/view/amazon.com', null, '8', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('160', '20% Off Bluetooth Headphones Wireless In Ear Earbud Headphones Sport Earphone', 'WBMWMHDF', 'https://www.retailmenot.com/view/amazon.com', null, '13', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('161', '30% Off 3-4 Sleeve Dress', 'NTOLQFIB', 'https://www.retailmenot.com/view/amazon.com', null, '9', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('162', '50% Off Type C Car Charger', '8PMUTNRB', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('163', '35% Off COULAX IPX7 Waterproof Bluetooth Headphones', 'COULAX36', 'https://www.retailmenot.com/view/amazon.com', null, '3', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('164', '60% Off Ginasy Black Leather Like Leggings Pants, Stretchy High Waisted Tights for Women Girls', 'ASGZIEMF', 'https://www.retailmenot.com/view/amazon.com', null, '6', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('165', '40% Off Each Manicure Pedicure Set Offered By CrazyRinbow When You Purchase 1+', 'YVGLO5W8', 'https://www.retailmenot.com/view/amazon.com', null, '4', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('166', '30% Off Rabbitgoo 3D No Glue Static Decorative Films Glass Window Film', 'RTO88TSV', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('167', '35% Off DuaFire Travel Adapter, Universal Power Adapter Plug International Wall Charger', 'LJFGAAW7', 'https://www.retailmenot.com/view/amazon.com', null, '1', '2017-11-09 15:35:19', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('168', 'DUALF Traction Cleats, Snow Grips Ice Creepers Over Shoe Boot,Anti Slip 10-Studs TPE Rubber Crampons From $7', 'VGOCKKWT', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-09 15:35:19', '2017-11-07 00:00:00');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `used_today_groupon` int(11) DEFAULT NULL,
  `used_today_retailmenot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon_both
-- ----------------------------
INSERT INTO `coupon_both` VALUES ('111', '$25 Off + 30-Day Free Trial Code ', null, 'FRESH25', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '1805', null);
INSERT INTO `coupon_both` VALUES ('112', 'Get A $5 Amazon Credit With Amazon Cash ', null, 'Discount Auto-Applied', '2017-12-16 00:00:00', '2017-11-09 15:35:19', '2017-11-07 00:00:00', '673', null);
INSERT INTO `coupon_both` VALUES ('113', '$10 Off Your First $20 Order ', null, 'PRIME10', '2018-01-01 00:00:00', '2017-11-09 15:35:19', '2017-11-07 00:00:00', '1440', null);
INSERT INTO `coupon_both` VALUES ('114', '$5 Off With Amazon App ', null, 'J1751N', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '1128', null);
INSERT INTO `coupon_both` VALUES ('115', '$20 Off First Prime NOW Purchase ', null, 'GETITNOW', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '498', null);
INSERT INTO `coupon_both` VALUES ('116', '$10 Off Your First Amazon Prime Now Order | Promo Code ', null, '10PRIMENOW', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('117', 'Free 1-Hr Shipping | Amazon Prime Now ', null, 'ALLSTATE1HR', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '130', null);
INSERT INTO `coupon_both` VALUES ('118', 'Free $8 Video Credit ', null, 'SOVWR7OU8F', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '109', null);
INSERT INTO `coupon_both` VALUES ('119', 'Get A Free Snack When You Spend $25 With Amazon Prime ', null, 'PRIMESNACK', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '78', null);
INSERT INTO `coupon_both` VALUES ('120', 'Free Bottle Of Amazon Element Vitamins Or Supplements With $25 Order ', null, 'PRIMEVITAMIN', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '58', null);
INSERT INTO `coupon_both` VALUES ('121', '$10 Credit + 1 Month Trial Of Amazon Music ', null, 'MOREMUSIC', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '45', null);
INSERT INTO `coupon_both` VALUES ('122', '$10 Off Paint &amp; Primer By Kilz Tribute With This Amazon Coupon ', null, '10TRIBUTE', '2017-11-19 00:00:00', '2017-11-09 15:35:19', '2017-11-07 00:00:00', '25', null);
INSERT INTO `coupon_both` VALUES ('123', 'Save $10 On $50 Warehouse Deals ', null, 'EARTH10', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '25', null);
INSERT INTO `coupon_both` VALUES ('124', '$50 Famous Footwear Gift Card For $40 ', null, 'FAMOUS', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '24', null);
INSERT INTO `coupon_both` VALUES ('125', 'All-New Amazon Echo (2nd Generation) + Free Shipping, Only $99.99 ', null, 'ECHO3PACK', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '24', null);
INSERT INTO `coupon_both` VALUES ('126', '$30 Off Fire HD 8 Tablet With AMEX ', null, 'FIRE8TAB', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '23', null);
INSERT INTO `coupon_both` VALUES ('127', '$10 Off Krispy Kreme Gift Card With Amazon Coupon ', null, 'KRISPY10', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '18', null);
INSERT INTO `coupon_both` VALUES ('128', '$5 Off Google Play Gift Card ', null, 'GOOGLE5', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '18', null);
INSERT INTO `coupon_both` VALUES ('129', 'New Today: All-New Amazon Cloud Indoor Security/Pet Camera ', null, '2CLOUDCAM', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '18', null);
INSERT INTO `coupon_both` VALUES ('130', 'Save $10 On Your First $20+ Amazon Restaurants Order ', null, 'DINEIN10', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '11', null);
INSERT INTO `coupon_both` VALUES ('131', '15% Off Luxury Beauty &amp; Grooming Code ', null, 'NEW2LUX', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '8', null);
INSERT INTO `coupon_both` VALUES ('132', '$5 Off First Baby Store Purchase ', null, 'FIVEOFFBABY', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '7', null);
INSERT INTO `coupon_both` VALUES ('133', 'Buy 5 Amazon Echo Dots, Get 1 Free ', null, 'DOT6PACK', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('134', 'Get 50 Free Prints From Amazon ', null, 'FREE50PRINTS', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('135', '15% Off Beauty Items With Code ', null, 'LUXBEAUTY', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('136', '$10 Off Your Mobile Restaurant Order ', null, 'MOBILE10', '2017-12-31 00:00:00', '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('137', '$10 Off Your First Amazon Restaurant Order ', '$10 Off First Amazon Restaurants Order $20+', 'EAT10', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '166');
INSERT INTO `coupon_both` VALUES ('138', '$25 Back On Beauty Items For Amazon Prime Customers ', null, 'LUXPRIME25', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('139', 'Instant $5 Off Candy &amp; Food With Code! ', null, 'SMILES55', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('140', 'Save 15% When You Buy Two 7-Inch Fire Tablets ', null, 'FIRE2PACK', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('141', '$10 Off Dollar Shave Club Gift Card ', null, 'SHAVE10', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('142', '$100 Off 2 Amazon Echo Shows ', null, 'SHOW2PACK', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('143', '$25 Off Amazon Prime Fresh + 30 Days Free ', null, '25FRESH', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('144', '$80 Off 2 Echo Devices ', null, 'ECHO2PACK', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('145', 'Save $20 When You Buy 3 Echo Dots ', null, 'DOT3PACK', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('146', 'Get $25 Back On Luxury $50 Beauty Purchase ', null, 'BEAUTYGIFT25', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('147', 'Try Amazon Restaurants, Save $10! ', null, 'EATNOW', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('148', 'Save $10 On Dickey&#39;s Barbecue Gift Card ', null, 'DICKEYS10', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('149', '40% Off Apple Watch Screen Protector ', null, 'XSH9JU9N', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('150', '$10 Promo Code | Amazon Gift Cards ', null, '0816GCARDS', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', '7', null);
INSERT INTO `coupon_both` VALUES ('151', 'Extra 25% Off Suits Today ', null, 'SUITSTYLE', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('152', '4 Free Months Of Amazon Music Unlimited ', null, 'CITIMUSIC', '2017-11-15 00:00:00', '2017-11-09 15:35:19', '2017-11-07 00:00:00', '18', null);
INSERT INTO `coupon_both` VALUES ('153', null, '35% Off Previous-Gen Fire HD8 Tablet', 'PREOWNED10', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '65');
INSERT INTO `coupon_both` VALUES ('154', null, '59% Off Best Silicone Baby Bibs for Boys And Girls', 'U2QA2LSP', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '52');
INSERT INTO `coupon_both` VALUES ('155', null, '30% Off Marigold 9 Inch Thermal Laminator', 'ARVVDW9A', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '8');
INSERT INTO `coupon_both` VALUES ('156', null, '60% Off Smartphone Lanyard Neck Strap for Cell Phone', 'PYFEJMYD', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '8');
INSERT INTO `coupon_both` VALUES ('157', null, '20% Off Bluetooth Headphones Wireless In Ear Earbud Headphones Sport Earphone', 'WBMWMHDF', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '13');
INSERT INTO `coupon_both` VALUES ('158', null, '30% Off 3-4 Sleeve Dress', 'NTOLQFIB', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '9');
INSERT INTO `coupon_both` VALUES ('159', null, '50% Off Type C Car Charger', '8PMUTNRB', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '2');
INSERT INTO `coupon_both` VALUES ('160', null, '35% Off COULAX IPX7 Waterproof Bluetooth Headphones', 'COULAX36', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '3');
INSERT INTO `coupon_both` VALUES ('161', null, '60% Off Ginasy Black Leather Like Leggings Pants, Stretchy High Waisted Tights for Women Girls', 'ASGZIEMF', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '6');
INSERT INTO `coupon_both` VALUES ('162', null, '40% Off Each Manicure Pedicure Set Offered By CrazyRinbow When You Purchase 1+', 'YVGLO5W8', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '4');
INSERT INTO `coupon_both` VALUES ('163', null, '30% Off Rabbitgoo 3D No Glue Static Decorative Films Glass Window Film', 'RTO88TSV', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('164', null, '35% Off DuaFire Travel Adapter, Universal Power Adapter Plug International Wall Charger', 'LJFGAAW7', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, '1');
INSERT INTO `coupon_both` VALUES ('165', null, 'DUALF Traction Cleats, Snow Grips Ice Creepers Over Shoe Boot,Anti Slip 10-Studs TPE Rubber Crampons From $7', 'VGOCKKWT', null, '2017-11-09 15:35:19', '2017-11-07 00:00:00', null, null);

-- ----------------------------
-- Table structure for coupon_detail
-- ----------------------------
DROP TABLE IF EXISTS `coupon_detail`;
CREATE TABLE `coupon_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(100) DEFAULT NULL,
  `used_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `used_groupon` int(11) DEFAULT NULL,
  `used_retailmenot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon_detail
-- ----------------------------
INSERT INTO `coupon_detail` VALUES ('1', 'FRESH25', '2017-11-07 15:34:33', '1805', null);
INSERT INTO `coupon_detail` VALUES ('2', 'Discount Auto-Applied', '2017-11-07 15:34:33', '673', null);
INSERT INTO `coupon_detail` VALUES ('3', 'PRIME10', '2017-11-07 15:34:33', '1440', null);
INSERT INTO `coupon_detail` VALUES ('4', 'J1751N', '2017-11-07 15:34:33', '1128', null);
INSERT INTO `coupon_detail` VALUES ('5', 'GETITNOW', '2017-11-07 15:34:33', '498', null);
INSERT INTO `coupon_detail` VALUES ('6', '10PRIMENOW', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('7', 'ALLSTATE1HR', '2017-11-07 15:34:33', '130', null);
INSERT INTO `coupon_detail` VALUES ('8', 'SOVWR7OU8F', '2017-11-07 15:34:33', '109', null);
INSERT INTO `coupon_detail` VALUES ('9', 'PRIMESNACK', '2017-11-07 15:34:33', '78', null);
INSERT INTO `coupon_detail` VALUES ('10', 'PRIMEVITAMIN', '2017-11-07 15:34:33', '58', null);
INSERT INTO `coupon_detail` VALUES ('11', 'MOREMUSIC', '2017-11-07 15:34:33', '45', null);
INSERT INTO `coupon_detail` VALUES ('12', '10TRIBUTE', '2017-11-07 15:34:33', '25', null);
INSERT INTO `coupon_detail` VALUES ('13', 'ECHO3PACK', '2017-11-07 15:34:33', '24', null);
INSERT INTO `coupon_detail` VALUES ('14', 'FIRE8TAB', '2017-11-07 15:34:33', '23', null);
INSERT INTO `coupon_detail` VALUES ('15', 'FAMOUS', '2017-11-07 15:34:33', '18', null);
INSERT INTO `coupon_detail` VALUES ('16', 'GOOGLE5', '2017-11-07 15:34:33', '18', null);
INSERT INTO `coupon_detail` VALUES ('17', '2CLOUDCAM', '2017-11-07 15:34:33', '18', null);
INSERT INTO `coupon_detail` VALUES ('18', 'KRISPY10', '2017-11-07 15:34:33', '18', null);
INSERT INTO `coupon_detail` VALUES ('19', 'EARTH10', '2017-11-07 15:34:33', '9', null);
INSERT INTO `coupon_detail` VALUES ('20', 'NEW2LUX', '2017-11-07 15:34:33', '8', null);
INSERT INTO `coupon_detail` VALUES ('21', 'DINEIN10', '2017-11-07 15:34:33', '7', null);
INSERT INTO `coupon_detail` VALUES ('22', 'FIVEOFFBABY', '2017-11-07 15:34:33', '7', null);
INSERT INTO `coupon_detail` VALUES ('23', 'DOT6PACK', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('24', 'FREE50PRINTS', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('25', 'LUXBEAUTY', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('26', 'MOBILE10', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('27', 'EAT10', '2017-11-07 15:34:33', null, '166');
INSERT INTO `coupon_detail` VALUES ('28', 'LUXPRIME25', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('29', 'SMILES55', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('30', 'FIRE2PACK', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('31', 'SHAVE10', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('32', 'SHOW2PACK', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('33', '25FRESH', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('34', 'ECHO2PACK', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('35', 'DOT3PACK', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('36', 'BEAUTYGIFT25', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('37', 'EATNOW', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('38', 'DICKEYS10', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('39', 'XSH9JU9N', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('40', '0816GCARDS', '2017-11-07 15:34:33', '7', null);
INSERT INTO `coupon_detail` VALUES ('41', 'SUITSTYLE', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('42', 'CITIMUSIC', '2017-11-07 15:34:33', '18', null);
INSERT INTO `coupon_detail` VALUES ('43', 'PREOWNED10', '2017-11-07 15:34:33', null, '65');
INSERT INTO `coupon_detail` VALUES ('44', 'U2QA2LSP', '2017-11-07 15:34:33', null, '53');
INSERT INTO `coupon_detail` VALUES ('45', 'ARVVDW9A', '2017-11-07 15:34:33', null, '8');
INSERT INTO `coupon_detail` VALUES ('46', 'PYFEJMYD', '2017-11-07 15:34:33', null, '8');
INSERT INTO `coupon_detail` VALUES ('47', 'WBMWMHDF', '2017-11-07 15:34:33', null, '13');
INSERT INTO `coupon_detail` VALUES ('48', 'NTOLQFIB', '2017-11-07 15:34:33', null, '9');
INSERT INTO `coupon_detail` VALUES ('49', '8PMUTNRB', '2017-11-07 15:34:33', null, '2');
INSERT INTO `coupon_detail` VALUES ('50', 'COULAX36', '2017-11-07 15:34:33', null, '3');
INSERT INTO `coupon_detail` VALUES ('51', 'ASGZIEMF', '2017-11-07 15:34:33', null, '6');
INSERT INTO `coupon_detail` VALUES ('52', 'YVGLO5W8', '2017-11-07 15:34:33', null, '4');
INSERT INTO `coupon_detail` VALUES ('53', 'RTO88TSV', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('54', 'LJFGAAW7', '2017-11-07 15:34:33', null, '1');
INSERT INTO `coupon_detail` VALUES ('55', 'VGOCKKWT', '2017-11-07 15:34:33', null, null);
INSERT INTO `coupon_detail` VALUES ('56', 'FRESH25', '2017-11-08 15:34:55', '1805', null);
INSERT INTO `coupon_detail` VALUES ('57', 'Discount Auto-Applied', '2017-11-08 15:34:55', '673', null);
INSERT INTO `coupon_detail` VALUES ('58', 'PRIME10', '2017-11-08 15:34:55', '1440', null);
INSERT INTO `coupon_detail` VALUES ('59', 'J1751N', '2017-11-08 15:34:55', '1128', null);
INSERT INTO `coupon_detail` VALUES ('60', 'GETITNOW', '2017-11-08 15:34:55', '498', null);
INSERT INTO `coupon_detail` VALUES ('61', '10PRIMENOW', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('62', 'ALLSTATE1HR', '2017-11-08 15:34:55', '130', null);
INSERT INTO `coupon_detail` VALUES ('63', 'SOVWR7OU8F', '2017-11-08 15:34:55', '109', null);
INSERT INTO `coupon_detail` VALUES ('64', 'PRIMESNACK', '2017-11-08 15:34:55', '78', null);
INSERT INTO `coupon_detail` VALUES ('65', 'PRIMEVITAMIN', '2017-11-08 15:34:55', '58', null);
INSERT INTO `coupon_detail` VALUES ('66', 'MOREMUSIC', '2017-11-08 15:34:55', '45', null);
INSERT INTO `coupon_detail` VALUES ('67', '10TRIBUTE', '2017-11-08 15:34:55', '25', null);
INSERT INTO `coupon_detail` VALUES ('68', 'ECHO3PACK', '2017-11-08 15:34:55', '24', null);
INSERT INTO `coupon_detail` VALUES ('69', 'FIRE8TAB', '2017-11-08 15:34:55', '23', null);
INSERT INTO `coupon_detail` VALUES ('70', 'FAMOUS', '2017-11-08 15:34:55', '18', null);
INSERT INTO `coupon_detail` VALUES ('71', 'GOOGLE5', '2017-11-08 15:34:55', '18', null);
INSERT INTO `coupon_detail` VALUES ('72', '2CLOUDCAM', '2017-11-08 15:34:55', '18', null);
INSERT INTO `coupon_detail` VALUES ('73', 'KRISPY10', '2017-11-08 15:34:55', '18', null);
INSERT INTO `coupon_detail` VALUES ('74', 'EARTH10', '2017-11-08 15:34:55', '9', null);
INSERT INTO `coupon_detail` VALUES ('75', 'NEW2LUX', '2017-11-08 15:34:55', '8', null);
INSERT INTO `coupon_detail` VALUES ('76', 'DINEIN10', '2017-11-08 15:34:55', '7', null);
INSERT INTO `coupon_detail` VALUES ('77', 'FIVEOFFBABY', '2017-11-08 15:34:55', '7', null);
INSERT INTO `coupon_detail` VALUES ('78', 'DOT6PACK', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('79', 'FREE50PRINTS', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('80', 'LUXBEAUTY', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('81', 'MOBILE10', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('82', 'EAT10', '2017-11-08 15:34:55', null, '166');
INSERT INTO `coupon_detail` VALUES ('83', 'LUXPRIME25', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('84', 'SMILES55', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('85', 'FIRE2PACK', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('86', 'SHAVE10', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('87', 'SHOW2PACK', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('88', '25FRESH', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('89', 'ECHO2PACK', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('90', 'DOT3PACK', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('91', 'BEAUTYGIFT25', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('92', 'EATNOW', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('93', 'DICKEYS10', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('94', 'XSH9JU9N', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('95', '0816GCARDS', '2017-11-08 15:34:55', '7', null);
INSERT INTO `coupon_detail` VALUES ('96', 'SUITSTYLE', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('97', 'CITIMUSIC', '2017-11-08 15:34:55', '18', null);
INSERT INTO `coupon_detail` VALUES ('98', 'PREOWNED10', '2017-11-08 15:34:55', null, '65');
INSERT INTO `coupon_detail` VALUES ('99', 'U2QA2LSP', '2017-11-08 15:34:55', null, '52');
INSERT INTO `coupon_detail` VALUES ('100', 'ARVVDW9A', '2017-11-08 15:34:55', null, '8');
INSERT INTO `coupon_detail` VALUES ('101', 'PYFEJMYD', '2017-11-08 15:34:55', null, '8');
INSERT INTO `coupon_detail` VALUES ('102', 'WBMWMHDF', '2017-11-08 15:34:55', null, '13');
INSERT INTO `coupon_detail` VALUES ('103', 'NTOLQFIB', '2017-11-08 15:34:55', null, '9');
INSERT INTO `coupon_detail` VALUES ('104', '8PMUTNRB', '2017-11-08 15:34:55', null, '2');
INSERT INTO `coupon_detail` VALUES ('105', 'COULAX36', '2017-11-08 15:34:55', null, '3');
INSERT INTO `coupon_detail` VALUES ('106', 'ASGZIEMF', '2017-11-08 15:34:55', null, '6');
INSERT INTO `coupon_detail` VALUES ('107', 'YVGLO5W8', '2017-11-08 15:34:55', null, '4');
INSERT INTO `coupon_detail` VALUES ('108', 'RTO88TSV', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('109', 'LJFGAAW7', '2017-11-08 15:34:55', null, '1');
INSERT INTO `coupon_detail` VALUES ('110', 'VGOCKKWT', '2017-11-08 15:34:55', null, null);
INSERT INTO `coupon_detail` VALUES ('111', 'FRESH25', '2017-11-09 15:35:19', '1805', null);
INSERT INTO `coupon_detail` VALUES ('112', 'Discount Auto-Applied', '2017-11-09 15:35:19', '673', null);
INSERT INTO `coupon_detail` VALUES ('113', 'PRIME10', '2017-11-09 15:35:19', '1440', null);
INSERT INTO `coupon_detail` VALUES ('114', 'J1751N', '2017-11-09 15:35:19', '1128', null);
INSERT INTO `coupon_detail` VALUES ('115', 'GETITNOW', '2017-11-09 15:35:19', '498', null);
INSERT INTO `coupon_detail` VALUES ('116', '10PRIMENOW', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('117', 'ALLSTATE1HR', '2017-11-09 15:35:19', '130', null);
INSERT INTO `coupon_detail` VALUES ('118', 'SOVWR7OU8F', '2017-11-09 15:35:19', '109', null);
INSERT INTO `coupon_detail` VALUES ('119', 'PRIMESNACK', '2017-11-09 15:35:19', '78', null);
INSERT INTO `coupon_detail` VALUES ('120', 'PRIMEVITAMIN', '2017-11-09 15:35:19', '58', null);
INSERT INTO `coupon_detail` VALUES ('121', 'MOREMUSIC', '2017-11-09 15:35:19', '45', null);
INSERT INTO `coupon_detail` VALUES ('122', '10TRIBUTE', '2017-11-09 15:35:19', '25', null);
INSERT INTO `coupon_detail` VALUES ('123', 'EARTH10', '2017-11-09 15:35:19', '25', null);
INSERT INTO `coupon_detail` VALUES ('124', 'FAMOUS', '2017-11-09 15:35:19', '24', null);
INSERT INTO `coupon_detail` VALUES ('125', 'ECHO3PACK', '2017-11-09 15:35:19', '24', null);
INSERT INTO `coupon_detail` VALUES ('126', 'FIRE8TAB', '2017-11-09 15:35:19', '23', null);
INSERT INTO `coupon_detail` VALUES ('127', 'KRISPY10', '2017-11-09 15:35:19', '18', null);
INSERT INTO `coupon_detail` VALUES ('128', 'GOOGLE5', '2017-11-09 15:35:19', '18', null);
INSERT INTO `coupon_detail` VALUES ('129', '2CLOUDCAM', '2017-11-09 15:35:19', '18', null);
INSERT INTO `coupon_detail` VALUES ('130', 'DINEIN10', '2017-11-09 15:35:19', '11', null);
INSERT INTO `coupon_detail` VALUES ('131', 'NEW2LUX', '2017-11-09 15:35:19', '8', null);
INSERT INTO `coupon_detail` VALUES ('132', 'FIVEOFFBABY', '2017-11-09 15:35:19', '7', null);
INSERT INTO `coupon_detail` VALUES ('133', 'DOT6PACK', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('134', 'FREE50PRINTS', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('135', 'LUXBEAUTY', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('136', 'MOBILE10', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('137', 'EAT10', '2017-11-09 15:35:19', null, '166');
INSERT INTO `coupon_detail` VALUES ('138', 'LUXPRIME25', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('139', 'SMILES55', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('140', 'FIRE2PACK', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('141', 'SHAVE10', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('142', 'SHOW2PACK', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('143', '25FRESH', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('144', 'ECHO2PACK', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('145', 'DOT3PACK', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('146', 'BEAUTYGIFT25', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('147', 'EATNOW', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('148', 'DICKEYS10', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('149', 'XSH9JU9N', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('150', '0816GCARDS', '2017-11-09 15:35:19', '7', null);
INSERT INTO `coupon_detail` VALUES ('151', 'SUITSTYLE', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('152', 'CITIMUSIC', '2017-11-09 15:35:19', '18', null);
INSERT INTO `coupon_detail` VALUES ('153', 'PREOWNED10', '2017-11-09 15:35:19', null, '65');
INSERT INTO `coupon_detail` VALUES ('154', 'U2QA2LSP', '2017-11-09 15:35:19', null, '52');
INSERT INTO `coupon_detail` VALUES ('155', 'ARVVDW9A', '2017-11-09 15:35:19', null, '8');
INSERT INTO `coupon_detail` VALUES ('156', 'PYFEJMYD', '2017-11-09 15:35:19', null, '8');
INSERT INTO `coupon_detail` VALUES ('157', 'WBMWMHDF', '2017-11-09 15:35:19', null, '13');
INSERT INTO `coupon_detail` VALUES ('158', 'NTOLQFIB', '2017-11-09 15:35:19', null, '9');
INSERT INTO `coupon_detail` VALUES ('159', '8PMUTNRB', '2017-11-09 15:35:19', null, '2');
INSERT INTO `coupon_detail` VALUES ('160', 'COULAX36', '2017-11-09 15:35:19', null, '3');
INSERT INTO `coupon_detail` VALUES ('161', 'ASGZIEMF', '2017-11-09 15:35:19', null, '6');
INSERT INTO `coupon_detail` VALUES ('162', 'YVGLO5W8', '2017-11-09 15:35:19', null, '4');
INSERT INTO `coupon_detail` VALUES ('163', 'RTO88TSV', '2017-11-09 15:35:19', null, null);
INSERT INTO `coupon_detail` VALUES ('164', 'LJFGAAW7', '2017-11-09 15:35:19', null, '1');
INSERT INTO `coupon_detail` VALUES ('165', 'VGOCKKWT', '2017-11-09 15:35:19', null, null);
