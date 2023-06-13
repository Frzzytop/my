/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : cinema

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 10/09/2021 21:55:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin123');
INSERT INTO `admin` VALUES (2, '宇哥', '123');
INSERT INTO `admin` VALUES (3, '马哥', '234');
INSERT INTO `admin` VALUES (4, '文哥', '345');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `place` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `actor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '八佰', '战争', '9月7日14:25', '2号厅', '王千源，张译', '38.5元');
INSERT INTO `movie` VALUES (2, '美人鱼', '喜剧', '10月6日21:56', '2号厅', '邓超，罗志祥', '43元');
INSERT INTO `movie` VALUES (3, '复仇者联盟', '科幻', '8月25日9:26', '1号厅', '小罗伯特·唐尼', '100元');
INSERT INTO `movie` VALUES (4, '疯狂动物城', '动画', '12月20日11:30', '3号厅', '金妮弗·古德温，杰森·贝特曼', '42.6元');
INSERT INTO `movie` VALUES (5, '战狼2', '战争', '1月3日14:00', '2号厅', '吴京', '55元');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '12345', '男', '21', '14785296301');
INSERT INTO `user` VALUES (2, '马江', '123', '男', '18', '13547896325');
INSERT INTO `user` VALUES (3, '阿文', '123', '女', '23', '17412589631');
INSERT INTO `user` VALUES (4, '123', '1234', '女', '21', '18396978505');
INSERT INTO `user` VALUES (5, 'user1', '12345', '男', '20', '12345678912');
INSERT INTO `user` VALUES (6, '12345', '12345', '男', '12', '12345678912');

SET FOREIGN_KEY_CHECKS = 1;
