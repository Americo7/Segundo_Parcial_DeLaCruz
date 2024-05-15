/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3307
 Source Schema         : bd_internet

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 15/05/2024 01:30:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for estudiantes
-- ----------------------------
DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE `estudiantes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seminario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `confirmado` tinyint(1) NULL DEFAULT NULL,
  `fecha_inscripcion` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of estudiantes
-- ----------------------------
INSERT INTO `estudiantes` VALUES (2, 'AMERICO', 'DE LA CRUZ', 'ESTEGANOGRAFIA', 1, '2024-05-13');
INSERT INTO `estudiantes` VALUES (4, 'NICOL', 'DEL PRADO', 'CRIPTOGRAFIA', 0, '2024-05-14');
INSERT INTO `estudiantes` VALUES (5, 'BRUNO', 'CASA BLANCA', 'HACKING WEB', 1, '2024-05-15');

SET FOREIGN_KEY_CHECKS = 1;
