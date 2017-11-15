/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-10 15:08:44
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('154', '4 Free Months Of Amazon Music Unlimited ', 'CITIMUSIC', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-15 00:00:00', '18', '2017-11-09 15:35:17', '2017-11-07 00:00:00');
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
INSERT INTO `coupon` VALUES ('169', '$25 Off + 30-Day Free Trial Code ', 'FRESH25', 'https://www.groupon.com/coupons/stores/amazon.com', null, '2045', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('170', '15% Off Select Baby Items For Select Amex Card Holders ', 'AMEXBABY', 'https://www.groupon.com/coupons/stores/amazon.com', null, '27', '2017-11-10 09:27:18', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('171', '15% Off Select Automotive Purchases For Select Amex Cardholders ', 'AMEXAUTO', 'https://www.groupon.com/coupons/stores/amazon.com', null, '40', '2017-11-10 09:27:18', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('172', '15% Off Select Outdoors Products For Select Amex Card Holders ', 'AMEXOUTDOOR', 'https://www.groupon.com/coupons/stores/amazon.com', null, '43', '2017-11-10 09:27:18', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('173', '15% Off Select Pet Supplies For Select Amex Cardholders ', 'AMEXPET', 'https://www.groupon.com/coupons/stores/amazon.com', null, '20', '2017-11-10 09:27:18', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('174', '$5 Off With Amazon App ', 'J1751N', 'https://www.groupon.com/coupons/stores/amazon.com', null, '1423', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('175', '$10 Off Your First $20 Order ', 'PRIME10', 'https://www.groupon.com/coupons/stores/amazon.com', '2018-01-01 00:00:00', '1570', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('176', '$65 Off + 2-Year Warranty | Amazon Fire 8 Kids Edition Tablets ', 'Discount Auto-Applied', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-19 00:00:00', '94', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('177', '$20 Off First Prime NOW Purchase ', 'GETITNOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, '557', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('178', '$10 Off Your First Amazon Prime Now Order | Promo Code ', '10PRIMENOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('179', 'Free 1-Hr Shipping | Amazon Prime Now ', 'ALLSTATE1HR', 'https://www.groupon.com/coupons/stores/amazon.com', null, '152', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('180', 'Free $8 Video Credit ', 'SOVWR7OU8F', 'https://www.groupon.com/coupons/stores/amazon.com', null, '98', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('181', 'Free Bottle Of Amazon Element Vitamins Or Supplements With $25 Order ', 'PRIMEVITAMIN', 'https://www.groupon.com/coupons/stores/amazon.com', null, '75', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('182', 'Get A Free Snack When You Spend $25 With Amazon Prime ', 'PRIMESNACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, '57', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('183', '$10 Credit + 1 Month Trial Of Amazon Music ', 'MOREMUSIC', 'https://www.groupon.com/coupons/stores/amazon.com', null, '43', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('184', 'Save $10 On $50 Warehouse Deals ', 'EARTH10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '26', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('185', '$10 Off Paint &amp; Primer By Kilz Tribute With This Amazon Coupon ', '10TRIBUTE', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-11-19 00:00:00', '24', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('186', '$50 Famous Footwear Gift Card For $40 ', 'FAMOUS', 'https://www.groupon.com/coupons/stores/amazon.com', null, '22', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('187', '$5 Off Google Play Gift Card ', 'GOOGLE5', 'https://www.groupon.com/coupons/stores/amazon.com', null, '21', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('188', 'All-New Amazon Echo (2nd Generation) + Free Shipping, Only $99.99 ', 'ECHO3PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, '18', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('189', '$30 Off Fire HD 8 Tablet With AMEX ', 'FIRE8TAB', 'https://www.groupon.com/coupons/stores/amazon.com', null, '17', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('190', '$10 Off Krispy Kreme Gift Card With Amazon Coupon ', 'KRISPY10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '15', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('191', '15% Off Beauty Items With Code ', 'LUXBEAUTY', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('192', 'New Today: All-New Amazon Cloud Indoor Security/Pet Camera ', '2CLOUDCAM', 'https://www.groupon.com/coupons/stores/amazon.com', null, '8', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('193', 'Save $10 On Your First $20+ Amazon Restaurants Order ', 'DINEIN10', 'https://www.groupon.com/coupons/stores/amazon.com', null, '7', '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('194', '$5 Off First Baby Store Purchase ', 'FIVEOFFBABY', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('195', '15% Off Luxury Beauty &amp; Grooming Code ', 'NEW2LUX', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('196', '$10 Off Your Mobile Restaurant Order ', 'MOBILE10', 'https://www.groupon.com/coupons/stores/amazon.com', '2017-12-31 00:00:00', null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('197', '$25 Back On Beauty Items For Amazon Prime Customers ', 'LUXPRIME25', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('198', 'Instant $5 Off Candy &amp; Food With Code! ', 'SMILES55', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('199', '$10 Off Your First Amazon Restaurant Order ', 'EAT10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('200', 'Save 15% When You Buy Two 7-Inch Fire Tablets ', 'FIRE2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('201', 'Get 50 Free Prints From Amazon ', 'FREE50PRINTS', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('202', '$10 Off Dollar Shave Club Gift Card ', 'SHAVE10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('203', '$100 Off 2 Amazon Echo Shows ', 'SHOW2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('204', '$25 Off Amazon Prime Fresh + 30 Days Free ', '25FRESH', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('205', 'Save $10 On Dickey&#39;s Barbecue Gift Card ', 'DICKEYS10', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('206', 'Save $20 When You Buy 3 Echo Dots ', 'DOT3PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('207', 'Get $25 Back On Luxury $50 Beauty Purchase ', 'BEAUTYGIFT25', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('208', 'Buy 5 Amazon Echo Dots, Get 1 Free ', 'DOT6PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('209', 'Try Amazon Restaurants, Save $10! ', 'EATNOW', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('210', '$80 Off 2 Echo Devices ', 'ECHO2PACK', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('211', '40% Off Apple Watch Screen Protector ', 'XSH9JU9N', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('212', '$10 Promo Code | Amazon Gift Cards ', '0816GCARDS', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('213', 'Extra 25% Off Suits Today ', 'SUITSTYLE', 'https://www.groupon.com/coupons/stores/amazon.com', null, null, '2017-11-10 09:27:18', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('214', '$10 Off First Amazon Restaurants Order $20+', 'EAT10', 'https://www.retailmenot.com/view/amazon.com', null, '152', '2017-11-10 09:27:24', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('215', '35% Off Previous-Gen Fire HD8 Tablet', 'PREOWNED10', 'https://www.retailmenot.com/view/amazon.com', null, '46', '2017-11-10 09:27:24', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('216', '59% Off Best Silicone Baby Bibs for Boys And Girls', 'U2QA2LSP', 'https://www.retailmenot.com/view/amazon.com', null, '43', '2017-11-10 09:27:24', '2017-11-07 00:00:00');
INSERT INTO `coupon` VALUES ('217', 'Anker Universal Magnetic Car Mount for $10', 'SELL7149', 'https://www.retailmenot.com/view/amazon.com', null, '7', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('218', 'Deluxe Travel Makeup Brush Set for $9.59', '5RI9COBR', 'https://www.retailmenot.com/view/amazon.com', null, null, '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('219', 'ILIFE A4S Robotic Vacuum for $150', 'QPOTQBA7', 'https://www.retailmenot.com/view/amazon.com', null, '16', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('220', 'GHB Portable Electric Pump Air Compressor Rechargeable Electric Pneumatic Inflator for $34', 'B2W24ADJ', 'https://www.retailmenot.com/view/amazon.com', null, '15', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('221', 'Azure Cosmetics Sheet Mask 5-Pack for $7', 'AD7CZZRA', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('222', 'AUKEY Surge Protector With 5 Outlets for $21', 'AUKEYD01', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('223', 'Heeta Fitbit Blaze Bands Leather, Replacement Genuine Leather for $11.24', '4Q75UUJ4', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('224', 'Heat Resistant Cooking Gloves for $8.79', 'L8ERJCOU', 'https://www.retailmenot.com/view/amazon.com', null, '5', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('225', 'Dr. Meter Wake Up Light, Digital Sunrise Alarm Clock for $25', 'GTTKH9YP', 'https://www.retailmenot.com/view/amazon.com', null, '6', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('226', 'Abl B19 Performance Stretch Carbon Fiber Belts From $24-$30', '4KINJA25', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-10 09:27:24', '2017-11-10 00:00:00');
INSERT INTO `coupon` VALUES ('227', 'AUKEY Surge Protector With 8 Outlets And 2 USB Charging Ports for $25', 'AUKEYD02', 'https://www.retailmenot.com/view/amazon.com', null, '2', '2017-11-10 09:27:24', '2017-11-10 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon_both
-- ----------------------------
INSERT INTO `coupon_both` VALUES ('166', '4 Free Months Of Amazon Music Unlimited ', null, 'CITIMUSIC', '2017-11-15 00:00:00', '2017-11-10 09:27:24', '2017-11-07 00:00:00', '18', null);
INSERT INTO `coupon_both` VALUES ('167', null, '30% Off Marigold 9 Inch Thermal Laminator', 'ARVVDW9A', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '8');
INSERT INTO `coupon_both` VALUES ('168', null, '60% Off Smartphone Lanyard Neck Strap for Cell Phone', 'PYFEJMYD', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '8');
INSERT INTO `coupon_both` VALUES ('169', null, '20% Off Bluetooth Headphones Wireless In Ear Earbud Headphones Sport Earphone', 'WBMWMHDF', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '13');
INSERT INTO `coupon_both` VALUES ('170', null, '30% Off 3-4 Sleeve Dress', 'NTOLQFIB', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '9');
INSERT INTO `coupon_both` VALUES ('171', null, '50% Off Type C Car Charger', '8PMUTNRB', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '2');
INSERT INTO `coupon_both` VALUES ('172', null, '35% Off COULAX IPX7 Waterproof Bluetooth Headphones', 'COULAX36', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '3');
INSERT INTO `coupon_both` VALUES ('173', null, '60% Off Ginasy Black Leather Like Leggings Pants, Stretchy High Waisted Tights for Women Girls', 'ASGZIEMF', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '6');
INSERT INTO `coupon_both` VALUES ('174', null, '40% Off Each Manicure Pedicure Set Offered By CrazyRinbow When You Purchase 1+', 'YVGLO5W8', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '4');
INSERT INTO `coupon_both` VALUES ('175', null, '30% Off Rabbitgoo 3D No Glue Static Decorative Films Glass Window Film', 'RTO88TSV', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('176', null, '35% Off DuaFire Travel Adapter, Universal Power Adapter Plug International Wall Charger', 'LJFGAAW7', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '1');
INSERT INTO `coupon_both` VALUES ('177', null, 'DUALF Traction Cleats, Snow Grips Ice Creepers Over Shoe Boot,Anti Slip 10-Studs TPE Rubber Crampons From $7', 'VGOCKKWT', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('178', '$25 Off + 30-Day Free Trial Code ', null, 'FRESH25', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '2045', null);
INSERT INTO `coupon_both` VALUES ('179', '15% Off Select Baby Items For Select Amex Card Holders ', null, 'AMEXBABY', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', '27', null);
INSERT INTO `coupon_both` VALUES ('180', '15% Off Select Automotive Purchases For Select Amex Cardholders ', null, 'AMEXAUTO', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', '40', null);
INSERT INTO `coupon_both` VALUES ('181', '15% Off Select Outdoors Products For Select Amex Card Holders ', null, 'AMEXOUTDOOR', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', '43', null);
INSERT INTO `coupon_both` VALUES ('182', '15% Off Select Pet Supplies For Select Amex Cardholders ', null, 'AMEXPET', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', '20', null);
INSERT INTO `coupon_both` VALUES ('183', '$5 Off With Amazon App ', null, 'J1751N', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '1423', null);
INSERT INTO `coupon_both` VALUES ('184', '$10 Off Your First $20 Order ', null, 'PRIME10', '2018-01-01 00:00:00', '2017-11-10 09:27:24', '2017-11-07 00:00:00', '1570', null);
INSERT INTO `coupon_both` VALUES ('185', '$65 Off + 2-Year Warranty | Amazon Fire 8 Kids Edition Tablets ', null, 'Discount Auto-Applied', '2017-11-19 00:00:00', '2017-11-10 09:27:24', '2017-11-07 00:00:00', '94', null);
INSERT INTO `coupon_both` VALUES ('186', '$20 Off First Prime NOW Purchase ', null, 'GETITNOW', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '557', null);
INSERT INTO `coupon_both` VALUES ('187', '$10 Off Your First Amazon Prime Now Order | Promo Code ', null, '10PRIMENOW', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('188', 'Free 1-Hr Shipping | Amazon Prime Now ', null, 'ALLSTATE1HR', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '152', null);
INSERT INTO `coupon_both` VALUES ('189', 'Free $8 Video Credit ', null, 'SOVWR7OU8F', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '98', null);
INSERT INTO `coupon_both` VALUES ('190', 'Free Bottle Of Amazon Element Vitamins Or Supplements With $25 Order ', null, 'PRIMEVITAMIN', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '75', null);
INSERT INTO `coupon_both` VALUES ('191', 'Get A Free Snack When You Spend $25 With Amazon Prime ', null, 'PRIMESNACK', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '57', null);
INSERT INTO `coupon_both` VALUES ('192', '$10 Credit + 1 Month Trial Of Amazon Music ', null, 'MOREMUSIC', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '43', null);
INSERT INTO `coupon_both` VALUES ('193', 'Save $10 On $50 Warehouse Deals ', null, 'EARTH10', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '26', null);
INSERT INTO `coupon_both` VALUES ('194', '$10 Off Paint &amp; Primer By Kilz Tribute With This Amazon Coupon ', null, '10TRIBUTE', '2017-11-19 00:00:00', '2017-11-10 09:27:24', '2017-11-07 00:00:00', '24', null);
INSERT INTO `coupon_both` VALUES ('195', '$50 Famous Footwear Gift Card For $40 ', null, 'FAMOUS', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '22', null);
INSERT INTO `coupon_both` VALUES ('196', '$5 Off Google Play Gift Card ', null, 'GOOGLE5', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '21', null);
INSERT INTO `coupon_both` VALUES ('197', 'All-New Amazon Echo (2nd Generation) + Free Shipping, Only $99.99 ', null, 'ECHO3PACK', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '18', null);
INSERT INTO `coupon_both` VALUES ('198', '$30 Off Fire HD 8 Tablet With AMEX ', null, 'FIRE8TAB', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '17', null);
INSERT INTO `coupon_both` VALUES ('199', '$10 Off Krispy Kreme Gift Card With Amazon Coupon ', null, 'KRISPY10', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '15', null);
INSERT INTO `coupon_both` VALUES ('200', '15% Off Beauty Items With Code ', null, 'LUXBEAUTY', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('201', 'New Today: All-New Amazon Cloud Indoor Security/Pet Camera ', null, '2CLOUDCAM', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '8', null);
INSERT INTO `coupon_both` VALUES ('202', 'Save $10 On Your First $20+ Amazon Restaurants Order ', null, 'DINEIN10', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', '7', null);
INSERT INTO `coupon_both` VALUES ('203', '$5 Off First Baby Store Purchase ', null, 'FIVEOFFBABY', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('204', '15% Off Luxury Beauty &amp; Grooming Code ', null, 'NEW2LUX', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('205', '$10 Off Your Mobile Restaurant Order ', null, 'MOBILE10', '2017-12-31 00:00:00', '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('206', '$25 Back On Beauty Items For Amazon Prime Customers ', null, 'LUXPRIME25', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('207', 'Instant $5 Off Candy &amp; Food With Code! ', null, 'SMILES55', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('208', '$10 Off Your First Amazon Restaurant Order ', '$10 Off First Amazon Restaurants Order $20+', 'EAT10', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '152');
INSERT INTO `coupon_both` VALUES ('209', 'Save 15% When You Buy Two 7-Inch Fire Tablets ', null, 'FIRE2PACK', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('210', 'Get 50 Free Prints From Amazon ', null, 'FREE50PRINTS', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('211', '$10 Off Dollar Shave Club Gift Card ', null, 'SHAVE10', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('212', '$100 Off 2 Amazon Echo Shows ', null, 'SHOW2PACK', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('213', '$25 Off Amazon Prime Fresh + 30 Days Free ', null, '25FRESH', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('214', 'Save $10 On Dickey&#39;s Barbecue Gift Card ', null, 'DICKEYS10', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('215', 'Save $20 When You Buy 3 Echo Dots ', null, 'DOT3PACK', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('216', 'Get $25 Back On Luxury $50 Beauty Purchase ', null, 'BEAUTYGIFT25', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('217', 'Buy 5 Amazon Echo Dots, Get 1 Free ', null, 'DOT6PACK', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('218', 'Try Amazon Restaurants, Save $10! ', null, 'EATNOW', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('219', '$80 Off 2 Echo Devices ', null, 'ECHO2PACK', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('220', '40% Off Apple Watch Screen Protector ', null, 'XSH9JU9N', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('221', '$10 Promo Code | Amazon Gift Cards ', null, '0816GCARDS', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('222', 'Extra 25% Off Suits Today ', null, 'SUITSTYLE', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('223', null, '35% Off Previous-Gen Fire HD8 Tablet', 'PREOWNED10', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '46');
INSERT INTO `coupon_both` VALUES ('224', null, '59% Off Best Silicone Baby Bibs for Boys And Girls', 'U2QA2LSP', null, '2017-11-10 09:27:24', '2017-11-07 00:00:00', null, '43');
INSERT INTO `coupon_both` VALUES ('225', null, 'Anker Universal Magnetic Car Mount for $10', 'SELL7149', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '7');
INSERT INTO `coupon_both` VALUES ('226', null, 'Deluxe Travel Makeup Brush Set for $9.59', '5RI9COBR', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, null);
INSERT INTO `coupon_both` VALUES ('227', null, 'ILIFE A4S Robotic Vacuum for $150', 'QPOTQBA7', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '16');
INSERT INTO `coupon_both` VALUES ('228', null, 'GHB Portable Electric Pump Air Compressor Rechargeable Electric Pneumatic Inflator for $34', 'B2W24ADJ', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '15');
INSERT INTO `coupon_both` VALUES ('229', null, 'Azure Cosmetics Sheet Mask 5-Pack for $7', 'AD7CZZRA', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '2');
INSERT INTO `coupon_both` VALUES ('230', null, 'AUKEY Surge Protector With 5 Outlets for $21', 'AUKEYD01', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '2');
INSERT INTO `coupon_both` VALUES ('231', null, 'Heeta Fitbit Blaze Bands Leather, Replacement Genuine Leather for $11.24', '4Q75UUJ4', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '2');
INSERT INTO `coupon_both` VALUES ('232', null, 'Heat Resistant Cooking Gloves for $8.79', 'L8ERJCOU', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '5');
INSERT INTO `coupon_both` VALUES ('233', null, 'Dr. Meter Wake Up Light, Digital Sunrise Alarm Clock for $25', 'GTTKH9YP', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '6');
INSERT INTO `coupon_both` VALUES ('234', null, 'Abl B19 Performance Stretch Carbon Fiber Belts From $24-$30', '4KINJA25', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '2');
INSERT INTO `coupon_both` VALUES ('235', null, 'AUKEY Surge Protector With 8 Outlets And 2 USB Charging Ports for $25', 'AUKEYD02', null, '2017-11-10 09:27:24', '2017-11-10 00:00:00', null, '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

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
INSERT INTO `coupon_detail` VALUES ('166', 'CITIMUSIC', '2017-11-10 09:27:24', '18', null);
INSERT INTO `coupon_detail` VALUES ('167', 'ARVVDW9A', '2017-11-10 09:27:24', null, '8');
INSERT INTO `coupon_detail` VALUES ('168', 'PYFEJMYD', '2017-11-10 09:27:24', null, '8');
INSERT INTO `coupon_detail` VALUES ('169', 'WBMWMHDF', '2017-11-10 09:27:24', null, '13');
INSERT INTO `coupon_detail` VALUES ('170', 'NTOLQFIB', '2017-11-10 09:27:24', null, '9');
INSERT INTO `coupon_detail` VALUES ('171', '8PMUTNRB', '2017-11-10 09:27:24', null, '2');
INSERT INTO `coupon_detail` VALUES ('172', 'COULAX36', '2017-11-10 09:27:24', null, '3');
INSERT INTO `coupon_detail` VALUES ('173', 'ASGZIEMF', '2017-11-10 09:27:24', null, '6');
INSERT INTO `coupon_detail` VALUES ('174', 'YVGLO5W8', '2017-11-10 09:27:24', null, '4');
INSERT INTO `coupon_detail` VALUES ('175', 'RTO88TSV', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('176', 'LJFGAAW7', '2017-11-10 09:27:24', null, '1');
INSERT INTO `coupon_detail` VALUES ('177', 'VGOCKKWT', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('178', 'FRESH25', '2017-11-10 09:27:24', '2045', null);
INSERT INTO `coupon_detail` VALUES ('179', 'AMEXBABY', '2017-11-10 09:27:24', '27', null);
INSERT INTO `coupon_detail` VALUES ('180', 'AMEXAUTO', '2017-11-10 09:27:24', '40', null);
INSERT INTO `coupon_detail` VALUES ('181', 'AMEXOUTDOOR', '2017-11-10 09:27:24', '43', null);
INSERT INTO `coupon_detail` VALUES ('182', 'AMEXPET', '2017-11-10 09:27:24', '20', null);
INSERT INTO `coupon_detail` VALUES ('183', 'J1751N', '2017-11-10 09:27:24', '1423', null);
INSERT INTO `coupon_detail` VALUES ('184', 'PRIME10', '2017-11-10 09:27:24', '1570', null);
INSERT INTO `coupon_detail` VALUES ('185', 'Discount Auto-Applied', '2017-11-10 09:27:24', '94', null);
INSERT INTO `coupon_detail` VALUES ('186', 'GETITNOW', '2017-11-10 09:27:24', '557', null);
INSERT INTO `coupon_detail` VALUES ('187', '10PRIMENOW', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('188', 'ALLSTATE1HR', '2017-11-10 09:27:24', '152', null);
INSERT INTO `coupon_detail` VALUES ('189', 'SOVWR7OU8F', '2017-11-10 09:27:24', '98', null);
INSERT INTO `coupon_detail` VALUES ('190', 'PRIMEVITAMIN', '2017-11-10 09:27:24', '75', null);
INSERT INTO `coupon_detail` VALUES ('191', 'PRIMESNACK', '2017-11-10 09:27:24', '57', null);
INSERT INTO `coupon_detail` VALUES ('192', 'MOREMUSIC', '2017-11-10 09:27:24', '43', null);
INSERT INTO `coupon_detail` VALUES ('193', 'EARTH10', '2017-11-10 09:27:24', '26', null);
INSERT INTO `coupon_detail` VALUES ('194', '10TRIBUTE', '2017-11-10 09:27:24', '24', null);
INSERT INTO `coupon_detail` VALUES ('195', 'FAMOUS', '2017-11-10 09:27:24', '22', null);
INSERT INTO `coupon_detail` VALUES ('196', 'GOOGLE5', '2017-11-10 09:27:24', '21', null);
INSERT INTO `coupon_detail` VALUES ('197', 'ECHO3PACK', '2017-11-10 09:27:24', '18', null);
INSERT INTO `coupon_detail` VALUES ('198', 'FIRE8TAB', '2017-11-10 09:27:24', '17', null);
INSERT INTO `coupon_detail` VALUES ('199', 'KRISPY10', '2017-11-10 09:27:24', '15', null);
INSERT INTO `coupon_detail` VALUES ('200', 'LUXBEAUTY', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('201', '2CLOUDCAM', '2017-11-10 09:27:24', '8', null);
INSERT INTO `coupon_detail` VALUES ('202', 'DINEIN10', '2017-11-10 09:27:24', '7', null);
INSERT INTO `coupon_detail` VALUES ('203', 'FIVEOFFBABY', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('204', 'NEW2LUX', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('205', 'MOBILE10', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('206', 'LUXPRIME25', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('207', 'SMILES55', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('208', 'EAT10', '2017-11-10 09:27:24', null, '152');
INSERT INTO `coupon_detail` VALUES ('209', 'FIRE2PACK', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('210', 'FREE50PRINTS', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('211', 'SHAVE10', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('212', 'SHOW2PACK', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('213', '25FRESH', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('214', 'DICKEYS10', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('215', 'DOT3PACK', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('216', 'BEAUTYGIFT25', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('217', 'DOT6PACK', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('218', 'EATNOW', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('219', 'ECHO2PACK', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('220', 'XSH9JU9N', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('221', '0816GCARDS', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('222', 'SUITSTYLE', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('223', 'PREOWNED10', '2017-11-10 09:27:24', null, '46');
INSERT INTO `coupon_detail` VALUES ('224', 'U2QA2LSP', '2017-11-10 09:27:24', null, '43');
INSERT INTO `coupon_detail` VALUES ('225', 'SELL7149', '2017-11-10 09:27:24', null, '7');
INSERT INTO `coupon_detail` VALUES ('226', '5RI9COBR', '2017-11-10 09:27:24', null, null);
INSERT INTO `coupon_detail` VALUES ('227', 'QPOTQBA7', '2017-11-10 09:27:24', null, '16');
INSERT INTO `coupon_detail` VALUES ('228', 'B2W24ADJ', '2017-11-10 09:27:24', null, '15');
INSERT INTO `coupon_detail` VALUES ('229', 'AD7CZZRA', '2017-11-10 09:27:24', null, '2');
INSERT INTO `coupon_detail` VALUES ('230', 'AUKEYD01', '2017-11-10 09:27:24', null, '2');
INSERT INTO `coupon_detail` VALUES ('231', '4Q75UUJ4', '2017-11-10 09:27:24', null, '2');
INSERT INTO `coupon_detail` VALUES ('232', 'L8ERJCOU', '2017-11-10 09:27:24', null, '5');
INSERT INTO `coupon_detail` VALUES ('233', 'GTTKH9YP', '2017-11-10 09:27:24', null, '6');
INSERT INTO `coupon_detail` VALUES ('234', '4KINJA25', '2017-11-10 09:27:24', null, '2');
INSERT INTO `coupon_detail` VALUES ('235', 'AUKEYD02', '2017-11-10 09:27:24', null, '2');
