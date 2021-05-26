/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100417
Source Host           : localhost:3306
Source Database       : bd_aclfrias

Target Server Type    : MYSQL
Target Server Version : 100417
File Encoding         : 65001

Date: 2021-05-25 22:49:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permisos
-- ----------------------------
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permisos
-- ----------------------------
INSERT INTO `permisos` VALUES ('1', '1', '2');
INSERT INTO `permisos` VALUES ('2', '5', '2');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Editor');
INSERT INTO `roles` VALUES ('2', 'Autor');
INSERT INTO `roles` VALUES ('3', 'Revisor');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'frias', 'friasyoyo@gmail.com', 'c17a28f3870138bcf239ab8a7664ac2f');
INSERT INTO `usuarios` VALUES ('2', 'uno', 'uno@gmail.com', 'dc0fa7df3d07904a09288bd2d2bb5f40');
INSERT INTO `usuarios` VALUES ('3', 'dos', 'dos@gmail.com', 'd5ee2eedfcf7adc285db4967bd86910d');
INSERT INTO `usuarios` VALUES ('4', 'tres', 'tres@gmail.com', '5246dfd1e210928293a9fcfeb02d9d82');
INSERT INTO `usuarios` VALUES ('5', 'BATMAN', 'batman@gmail.com', 'b56a18e0eacdf51aa2a5306b0f533204');
SET FOREIGN_KEY_CHECKS=1;
