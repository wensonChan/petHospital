/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : pet_hospital

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 05/12/2023 17:38:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chongwuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `chongwuxinxi`;
CREATE TABLE `chongwuxinxi`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `chongwubianhao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物编号',
  `chongwumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '宠物名称',
  `pinzhong` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '品种',
  `tupian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `nianling` decimal(11, 0) NULL DEFAULT NULL COMMENT '年龄',
  `chongwuxiangqing` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '宠物详情',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` decimal(11, 0) NULL DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `chongwubianhao`(`chongwubianhao` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '宠物信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chongwuxinxi
-- ----------------------------
INSERT INTO `chongwuxinxi` VALUES (1701762407786, '2023-12-05 15:46:47', '1701762376908', '贵妇犬', '犬类', 'http://localhost:8080/petHospital/upload/1701762389654.png', 5, '<p>优雅</p>', '2023-12-05 16:12:13', 6);
INSERT INTO `chongwuxinxi` VALUES (1701762481947, '2023-12-05 15:48:01', '1701762460345', '雷鸣仙', '鱼类', 'http://localhost:8080/petHospital/upload/1701762464308.png', 1, '<p>霸气</p>', '2023-12-05 16:01:41', 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/petHospital/upload/1701626986582.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/petHospital/upload/1701626995592.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/petHospital/upload/1701627003284.jpg');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/petHospital/upload/1701627025473.jpg');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '帖子内容',
  `parentid` decimal(20, 0) NULL DEFAULT NULL COMMENT '父节点id',
  `userid` decimal(20, 0) NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '宠物论坛' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1701762194679, '2023-12-05 15:43:14', 'test', '<p>666</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: -235px; top: -12px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>', 0, 1618488891531, '01', '开放');

-- ----------------------------
-- Table structure for guahaoyuyue
-- ----------------------------
DROP TABLE IF EXISTS `guahaoyuyue`;
CREATE TABLE `guahaoyuyue`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `shouling` decimal(11, 0) NULL DEFAULT NULL COMMENT '兽龄',
  `chongwuxinxi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '宠物信息',
  `yishengxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `yuyueshijian` datetime NULL DEFAULT NULL COMMENT '预约时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '挂号预约' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guahaoyuyue
-- ----------------------------
INSERT INTO `guahaoyuyue` VALUES (1701761541976, '2023-12-05 15:32:34', 41, NULL, '医生姓名1', '2023-12-05 00:00:00', '01', '01', NULL, NULL);
INSERT INTO `guahaoyuyue` VALUES (1701762183355, '2023-12-05 15:43:02', 18, NULL, '医生姓名1', '2023-12-12 00:00:00', '01', '01', NULL, NULL);

-- ----------------------------
-- Table structure for jiyang
-- ----------------------------
DROP TABLE IF EXISTS `jiyang`;
CREATE TABLE `jiyang`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `chongwumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物名称',
  `shouling` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '兽龄',
  `chongwuxiangqing` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '宠物详情',
  `riqi` datetime NULL DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '寄养' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiyang
-- ----------------------------
INSERT INTO `jiyang` VALUES (1701764006733, '2023-12-05 16:13:25', '01', '01', '玳龟', '64', NULL, '2023-12-07 00:00:00', '是', NULL);

-- ----------------------------
-- Table structure for jiyangjieguo
-- ----------------------------
DROP TABLE IF EXISTS `jiyangjieguo`;
CREATE TABLE `jiyangjieguo`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `chongwumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物名称',
  `lingyangriqi` datetime NULL DEFAULT NULL COMMENT '领养日期',
  `jiyangjieguo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '寄养结果',
  `lingyangrenxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '领养人姓名',
  `lianxifangshi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '寄养结果' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiyangjieguo
-- ----------------------------
INSERT INTO `jiyangjieguo` VALUES (71, '2023-08-15 20:04:52', '用户1', '姓名1', '宠物名称1', '2023-08-15 20:04:52', '成功', '领养人姓名1', '13823888881');
INSERT INTO `jiyangjieguo` VALUES (72, '2023-08-15 20:04:52', '用户2', '姓名2', '宠物名称2', '2023-08-15 20:04:52', '成功', '领养人姓名2', '13823888882');
INSERT INTO `jiyangjieguo` VALUES (73, '2023-08-15 20:04:52', '用户3', '姓名3', '宠物名称3', '2023-08-15 20:04:52', '成功', '领养人姓名3', '13823888883');
INSERT INTO `jiyangjieguo` VALUES (74, '2023-08-15 20:04:52', '用户4', '姓名4', '宠物名称4', '2023-08-15 20:04:52', '成功', '领养人姓名4', '13823888884');
INSERT INTO `jiyangjieguo` VALUES (75, '2023-08-15 20:04:52', '用户5', '姓名5', '宠物名称5', '2023-08-15 20:04:52', '成功', '领养人姓名5', '13823888885');
INSERT INTO `jiyangjieguo` VALUES (76, '2023-08-15 20:04:52', '用户6', '姓名6', '宠物名称6', '2023-08-15 20:04:52', '成功', '领养人姓名6', '13823888886');
INSERT INTO `jiyangjieguo` VALUES (1618489227471, '2023-08-15 20:20:26', '01', '01', '旺财', '2023-08-15 20:20:15', '成功', '123', '12345678912');
INSERT INTO `jiyangjieguo` VALUES (1694410602545, '2023-09-11 13:36:41', '用户1', '姓名1', '宠物狗', '2023-09-11 13:36:32', '成功', '张三', '15073171170');

-- ----------------------------
-- Table structure for lingyang
-- ----------------------------
DROP TABLE IF EXISTS `lingyang`;
CREATE TABLE `lingyang`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `chongwubianhao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物编号',
  `chongwumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '宠物名称',
  `riqi` datetime NULL DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '领养' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lingyang
-- ----------------------------
INSERT INTO `lingyang` VALUES (31, '2023-08-15 20:04:52', '用户1', '姓名1', '宠物编号1', '宠物名称1', '2023-08-15 20:04:52', '是', NULL);
INSERT INTO `lingyang` VALUES (32, '2023-08-15 20:04:52', '用户2', '姓名2', '宠物编号2', '宠物名称2', '2023-08-15 20:04:52', '是', NULL);
INSERT INTO `lingyang` VALUES (33, '2023-08-15 20:04:52', '用户3', '姓名3', '宠物编号3', '宠物名称3', '2023-08-15 20:04:52', '是', NULL);
INSERT INTO `lingyang` VALUES (34, '2023-08-15 20:04:52', '用户4', '姓名4', '宠物编号4', '宠物名称4', '2023-08-15 20:04:52', '是', NULL);
INSERT INTO `lingyang` VALUES (35, '2023-08-15 20:04:52', '用户5', '姓名5', '宠物编号5', '宠物名称5', '2023-08-15 20:04:52', '是', NULL);
INSERT INTO `lingyang` VALUES (36, '2023-08-15 20:04:52', '用户6', '姓名6', '宠物编号6', '宠物名称6', '2023-08-15 20:04:52', '是', NULL);
INSERT INTO `lingyang` VALUES (1618488939796, '2023-08-15 20:15:39', '01', '01', '宠物编号2', '宠物名称2', '2023-08-15 20:15:38', '是', '好好待它');
INSERT INTO `lingyang` VALUES (1694410433657, '2023-09-11 13:33:52', '用户1', '姓名1', '宠物编号3', '宠物名称3', '2023-09-11 13:33:48', '否', NULL);
INSERT INTO `lingyang` VALUES (1701763931885, '2023-12-05 16:12:10', '01', '01', '1701762376908', '贵妇犬', '2023-12-05 16:12:08', NULL, NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '网站公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (101, '2023-12-05 20:04:52', '标题1', '简介1', 'http://localhost:8080/petHospital/upload/1701763734456.png', '<p>内容1</p>');
INSERT INTO `news` VALUES (102, '2023-12-05 20:04:52', '标题2', '简介2', 'http://localhost:8080/petHospital/upload/1701763744981.png', '<p>内容2</p>');
INSERT INTO `news` VALUES (103, '2023-12-05 20:04:52', '标题3', '简介3', 'http://localhost:8080/petHospital/upload/1701763754922.png', '<p>内容3</p>');
INSERT INTO `news` VALUES (104, '2023-12-05 20:04:52', '标题4', '简介4', 'http://localhost:8080/petHospital/upload/1701763770501.png', '<p>内容4</p>');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `userid` decimal(20, 0) NOT NULL COMMENT '用户id',
  `refid` decimal(20, 0) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1618489031694, '2023-08-15 20:17:10', 1618488891531, 21, 'chongwuxinxi', '宠物名称1', 'http://localhost:8080/petHospital/upload/1701762635188.png');
INSERT INTO `storeup` VALUES (1694410424268, '2023-09-11 13:33:43', 11, 23, 'chongwuxinxi', '宠物名称3', 'http://localhost:8080/petHospital/upload/chongwuxinxi_tupian3.jpg');
INSERT INTO `storeup` VALUES (1701763925669, '2023-12-05 16:12:05', 1618488891531, 1701762407786, 'chongwuxinxi', '贵妇犬', 'http://localhost:8080/petHospital/upload/1701762389654.png');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` decimal(20, 0) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `addtime` datetime NOT NULL COMMENT '新增时间',
  `expiratedtime` datetime NOT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1618488891531, '01', 'yonghu', '用户', 'zfch41fa989wm7qn62nd2aqdclq4sokp', '2023-08-15 20:18:47', '2023-12-05 18:37:53');
INSERT INTO `token` VALUES (2, 1, 'admin', 'users', '管理员', '8zi2z7u8y2vkoxlnxejuricd6jfkq3d3', '2023-08-15 20:18:47', '2023-12-05 18:38:03');
INSERT INTO `token` VALUES (3, 11, '用户1', 'yonghu', '用户', 'i2q07qcw80zb5glqk7dc1a472b8ha6s0', '2023-09-11 13:29:20', '2023-09-11 14:33:38');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色',
  `addtime` datetime NOT NULL COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2023-08-15 20:04:52');

-- ----------------------------
-- Table structure for yishengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yishengxinxi`;
CREATE TABLE `yishengxinxi`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `yishengxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `yishengjianjie` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '医生简介',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '医生信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yishengxinxi
-- ----------------------------
INSERT INTO `yishengxinxi` VALUES (41, '2023-08-15 20:04:52', '医生姓名1', '职称1', '女', '<p>医生简介1</p>', '13823888881', '773890001@qq.com', 'http://localhost:8080/petHospital/upload/1701626588368.png');
INSERT INTO `yishengxinxi` VALUES (43, '2023-08-15 20:04:52', '医生姓名3', '职称3', '女', '<p>医生简介3</p>', '13823888883', '773890003@qq.com', 'http://localhost:8080/petHospital/upload/1701626653029.png');
INSERT INTO `yishengxinxi` VALUES (45, '2023-08-15 20:04:52', '医生姓名5', '职称5', '女', '<p>医生简介5</p>', '13823888885', '773890005@qq.com', 'http://localhost:8080/petHospital/upload/1701626665490.png');
INSERT INTO `yishengxinxi` VALUES (46, '2023-08-15 20:04:52', '医生姓名6', '职称6', '女', '<p>医生简介6</p>', '13823888886', '773890006@qq.com', 'http://localhost:8080/petHospital/upload/1701626677314.png');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` decimal(20, 0) NOT NULL COMMENT '主键',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` decimal(11, 0) NULL DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2023-08-15 20:04:52', '用户1', '123456', '姓名1', '女', 1, '13823888881', '773890001@qq.com', 'http://localhost:8080/petHospital/upload/1701626757524.png');
INSERT INTO `yonghu` VALUES (12, '2023-08-15 20:04:52', '用户2', '123456', '姓名2', '男', 2, '13823888882', '773890002@qq.com', 'http://localhost:8080/petHospital/upload/1701626767134.png');
INSERT INTO `yonghu` VALUES (13, '2023-08-15 20:04:52', '用户3', '123456', '姓名3', '男', 3, '13823888883', '773890003@qq.com', 'http://localhost:8080/petHospital/upload/1701626776245.png');
INSERT INTO `yonghu` VALUES (14, '2023-08-15 20:04:52', '用户4', '123456', '姓名4', '男', 4, '13823888884', '773890004@qq.com', 'http://localhost:8080/petHospital/upload/1701626786814.png');
INSERT INTO `yonghu` VALUES (15, '2023-08-15 20:04:52', '用户5', '123456', '姓名5', '男', 5, '13823888885', '773890005@qq.com', 'http://localhost:8080/petHospital/upload/1701626795891.png');
INSERT INTO `yonghu` VALUES (16, '2023-08-15 20:04:52', '用户6', '123456', '姓名6', '男', 6, '13823888886', '773890006@qq.com', 'http://localhost:8080/petHospital/upload/1701626807915.png');
INSERT INTO `yonghu` VALUES (1618488891531, '2023-08-15 20:14:51', '01', '01', '01', '女', 33, NULL, NULL, 'http://localhost:8080/petHospital/upload/1701626817220.png');
INSERT INTO `yonghu` VALUES (1701764322363, '2023-12-05 16:18:42', '02', '02', '02', '男', 18, NULL, NULL, NULL);
INSERT INTO `yonghu` VALUES (1701769093163, '2023-12-05 17:38:13', '1', '1', '1', '', NULL, '', '', '');

SET FOREIGN_KEY_CHECKS = 1;
