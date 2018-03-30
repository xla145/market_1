
DROP TABLE IF EXISTS `cas_case`;
CREATE TABLE `cas_case` (
  `id` int(11) NOT NULL COMMENT '病例编号',
  `patient_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitime` datetime DEFAULT NULL COMMENT '就诊时间',
  `pulse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '脉象',
  `tongue_quality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '舌质',
  `fur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '舌苔',
  `tongue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '舌体',
  `six_channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `face` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '面部皮肤',
  `cough` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '咳嗽',
  `excrement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大便',
  `pee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '小便',
  `cold_hot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '冷热',
  `sweat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '汗',
  `head_body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头身',
  `diet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '饮食',
  `thirsty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渴',
  `ear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '耳',
  `ear_oil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '耳油',
  `menstruation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '月经',
  `liver_function` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '肝功能',
  `renal_function` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '肾功能',
  `blood_routine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '血常规',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `cas_patient`;
CREATE TABLE `cas_patient` (
  `patient_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '病人编号',
  `patient_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '病人姓名',
  `patient_sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '病人性别 0:男 1：女',
  `patient_age` int(11) unsigned zerofill NOT NULL COMMENT '病人年龄',
  `patient_nation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '病人民族',
  `patient_marriage` tinyint(4) NOT NULL DEFAULT '0' COMMENT '病人婚姻状况 0:未婚 1：已婚',
  `patient_birthplace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '病人出生地',
  `patient_job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '病人职业',
  `patient_phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '病人联系方式',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 -1：删除',
  `remark` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`patient_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `cas_patient` VALUES ('A_10001', '2222222', '1', '00000000002', '22', '0', '22', '22', '22', '2018-03-26 21:40:00', '2018-03-30 15:29:13', '0', null);
INSERT INTO `cas_patient` VALUES ('CPT-643243-5444BB', '1243', '0', '00000000011', '11', '0', '11', '11   ', '111', '2018-03-29 10:27:02', '2018-03-30 10:54:06', '0', null);


DROP TABLE IF EXISTS `sys_login_record`;
CREATE TABLE `sys_login_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` varchar(50) NOT NULL COMMENT '用户编号（关联用户表）',
  `user_name` varchar(50) NOT NULL COMMENT '用户昵称',
  `login_ip` varchar(150) NOT NULL COMMENT '登陆IP',
  `login_time` datetime NOT NULL COMMENT '登陆时间',
  `operate_content` varchar(350) NOT NULL COMMENT '操作内容',
  `operate_type` int(11) DEFAULT NULL COMMENT '操作类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;


INSERT INTO `sys_login_record` VALUES ('1', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 08:18:14', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('2', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 09:22:58', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('3', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 10:57:59', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('4', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 11:10:20', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('5', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 14:53:12', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('6', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 14:54:32', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('7', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-22 20:16:32', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('8', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-22 20:39:50', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('9', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:24:48', '密码错误，登录失败', '1');
INSERT INTO `sys_login_record` VALUES ('10', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:25:01', '密码错误，登录失败', '1');
INSERT INTO `sys_login_record` VALUES ('11', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:25:43', '密码错误，登录失败', '1');
INSERT INTO `sys_login_record` VALUES ('12', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:25:53', '密码错误，登录失败', '1');
INSERT INTO `sys_login_record` VALUES ('13', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:26:00', '密码错误，登录失败', '1');
INSERT INTO `sys_login_record` VALUES ('14', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:27:45', '密码错误，登录失败', '1');
INSERT INTO `sys_login_record` VALUES ('15', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:29:20', '密码错误，登录失败', '1');
INSERT INTO `sys_login_record` VALUES ('16', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:29:21', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('17', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:46:52', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('18', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:48:15', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('19', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:51:31', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('20', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 10:52:26', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('21', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:00:52', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('22', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:02:02', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('23', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:02:21', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('24', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:02:53', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('25', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:03:12', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('26', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:05:51', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('27', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:07:43', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('28', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:08:33', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('29', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:09:13', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('30', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:10:30', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('31', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:10:40', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('32', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:11:21', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('33', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:12:46', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('34', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:13:26', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('35', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:19:33', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('36', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:24:03', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('37', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:26:54', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('38', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:29:17', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('39', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:33:09', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('40', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:34:09', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('41', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:36:54', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('42', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:38:41', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('43', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:38:58', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('44', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:40:52', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('45', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 11:41:59', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('46', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 12:04:49', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('47', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 12:04:55', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('48', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 12:05:05', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('49', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:00:36', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('50', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:00:45', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('51', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:03:34', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('52', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:03:41', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('53', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:09:25', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('54', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:09:40', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('55', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:09:58', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('56', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:11:15', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('57', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:12:50', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('58', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:15:07', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('59', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:18:20', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('60', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:18:50', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('61', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:21:10', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('62', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:21:58', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('63', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:22:27', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('64', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:23:10', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('65', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:24:31', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('66', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:25:31', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('67', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:26:34', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('68', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:27:49', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('69', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:27:58', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('70', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:29:54', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('71', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:31:43', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('72', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:35:19', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('73', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:36:06', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('74', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:36:37', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('75', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:36:53', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('76', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:37:03', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('77', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:37:12', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('78', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:37:20', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('79', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:37:29', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('80', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:37:35', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('81', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:37:47', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('82', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:38:04', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('83', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:38:11', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('84', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:38:49', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('85', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:39:45', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('86', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:40:21', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('87', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:40:44', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('88', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:41:02', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('89', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:41:54', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('90', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:42:02', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('91', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:42:18', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('92', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:44:23', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('93', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:46:43', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('94', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:53:33', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('95', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:53:41', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('96', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:55:38', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('97', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:55:42', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('98', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:55:49', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('99', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:56:01', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('100', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:56:09', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('101', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:56:35', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('102', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 14:58:01', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('103', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:01:36', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('104', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:02:03', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('105', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:02:12', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('106', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:02:25', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('107', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:04:43', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('108', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:04:50', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('109', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:09:25', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('110', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:17:04', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('111', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:18:41', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('112', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:18:46', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('113', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:19:18', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('114', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:20:31', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('115', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:20:56', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('116', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:21:43', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('117', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:22:19', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('118', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:23:14', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('119', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:28:43', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('120', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:34:43', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('121', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:37:33', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('122', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:37:48', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('123', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:37:55', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('124', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:38:14', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('125', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:41:09', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('126', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:41:18', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('127', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:53:27', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('128', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:54:53', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('129', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:56:03', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('130', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:57:05', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('131', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:57:56', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('132', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:58:31', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('133', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 15:58:59', '登录成功', '1');
INSERT INTO `sys_login_record` VALUES ('134', '10001', 'admin', '0:0:0:0:0:0:0:1', '2018-03-30 16:01:20', '登录成功', '1');


DROP TABLE IF EXISTS `sys_right`;
CREATE TABLE `sys_right` (
  `right_id` varchar(50) NOT NULL COMMENT '权限编号',
  `right_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `resource_path` varchar(250) DEFAULT NULL COMMENT '资源路径:(暂时不使用：可以访问的路径)',
  `right_type` int(4) DEFAULT NULL COMMENT '权限类别',
  `right_sort_order` int(4) DEFAULT NULL COMMENT '排序序号',
  PRIMARY KEY (`right_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限';


INSERT INTO `sys_right` VALUES ('addBanner', '添加Banner', null, null, '52');
INSERT INTO `sys_right` VALUES ('addComTag', '添加标签（主题）库', null, null, '37');
INSERT INTO `sys_right` VALUES ('addFunction', '新增产品', null, null, '1');
INSERT INTO `sys_right` VALUES ('addMerchantUnit', '添加商家（单位）', null, null, '25');
INSERT INTO `sys_right` VALUES ('addRaider', '新增攻略', null, null, '14');
INSERT INTO `sys_right` VALUES ('addRight', '添加权限', null, null, '34');
INSERT INTO `sys_right` VALUES ('addRole', '添加角色', null, null, '31');
INSERT INTO `sys_right` VALUES ('addTourProduct', '新增景点', null, null, '5');
INSERT INTO `sys_right` VALUES ('addUser', '添加用户', null, null, '28');
INSERT INTO `sys_right` VALUES ('addVouchers', '添加代金券', null, null, '42');
INSERT INTO `sys_right` VALUES ('deleteBanner', '删除Banner', null, null, '54');
INSERT INTO `sys_right` VALUES ('deleteComTag', '删除标签（主题）库', null, null, '39');
INSERT INTO `sys_right` VALUES ('deleteFunction', '删除产品', null, null, '3');
INSERT INTO `sys_right` VALUES ('deleteLoginRecord', '删除登陆记录', null, null, '40');
INSERT INTO `sys_right` VALUES ('deleteMerchantUnit', '删除商家（单位）', null, null, '27');
INSERT INTO `sys_right` VALUES ('deleteRaider', '删除攻略', null, null, '47');
INSERT INTO `sys_right` VALUES ('deleteRight', '删除权限', null, null, '36');
INSERT INTO `sys_right` VALUES ('deleteRole', '删除角色', null, null, '33');
INSERT INTO `sys_right` VALUES ('deleteTourProduct', '删除景点', null, null, '7');
INSERT INTO `sys_right` VALUES ('deleteTripMate', '删除结伴游', null, null, '51');
INSERT INTO `sys_right` VALUES ('deleteUser', '删除用户', null, null, '30');
INSERT INTO `sys_right` VALUES ('deleteUserFeedback', '删除用户反馈记录', null, null, '55');
INSERT INTO `sys_right` VALUES ('editArea', '修改区域', null, null, '56');
INSERT INTO `sys_right` VALUES ('editBanner', '修改Banner', null, null, '53');
INSERT INTO `sys_right` VALUES ('editComTag', '修改标签（主题）库', null, null, '38');
INSERT INTO `sys_right` VALUES ('editFunction', '修改产品', null, null, '2');
INSERT INTO `sys_right` VALUES ('editMerchantUnit', '修改商家（单位）', null, null, '26');
INSERT INTO `sys_right` VALUES ('editRaider', '修改攻略', null, null, '46');
INSERT INTO `sys_right` VALUES ('editRight', '修改权限', null, null, '35');
INSERT INTO `sys_right` VALUES ('editRole', '修改角色', null, null, '32');
INSERT INTO `sys_right` VALUES ('editTourProduct', '修改景点', null, null, '6');
INSERT INTO `sys_right` VALUES ('editTripMate', '修改结伴游', null, null, '50');
INSERT INTO `sys_right` VALUES ('editUser', '修改用户', null, null, '29');
INSERT INTO `sys_right` VALUES ('editVouchers', '修改代金券', null, null, '43');
INSERT INTO `sys_right` VALUES ('recom', '推荐景点、产品', null, null, '9');
INSERT INTO `sys_right` VALUES ('userFeedback', '用户反馈', null, null, '11');
INSERT INTO `sys_right` VALUES ('useVoucher', '使用代金券', null, null, '17');
INSERT INTO `sys_right` VALUES ('useVouchers', '使用代金券', null, null, '45');
INSERT INTO `sys_right` VALUES ('viewFunction', '查看产品', null, null, '4');
INSERT INTO `sys_right` VALUES ('viewMessage', '查看短信记录', null, null, '41');
INSERT INTO `sys_right` VALUES ('viewRaider', '查看攻略', null, null, '48');
INSERT INTO `sys_right` VALUES ('viewTourProduct', '查看景点', null, null, '8');
INSERT INTO `sys_right` VALUES ('viewTripMate', '查看结伴游', null, null, '49');
INSERT INTO `sys_right` VALUES ('viewVouchers', '查看代金券', null, null, '44');


DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` varchar(50) NOT NULL COMMENT '角色编号（英文，不能重复）',
  `role_name` varchar(255) NOT NULL COMMENT '角色名称',
  `role_sort_order` int(4) DEFAULT NULL COMMENT '排序序号',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';


INSERT INTO `sys_role` VALUES ('product_admin', '产品（景点）管理员', '2');
INSERT INTO `sys_role` VALUES ('super_admin', '超级管理员', '1');
INSERT INTO `sys_role` VALUES ('yulin_admin', '玉林管理员', '2');


DROP TABLE IF EXISTS `sys_role_right`;
CREATE TABLE `sys_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `right_id` varchar(50) DEFAULT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='角色权限表';


INSERT INTO `sys_role_right` VALUES ('42', 'product_admin', 'addFunction');
INSERT INTO `sys_role_right` VALUES ('43', 'product_admin', 'addRaider');
INSERT INTO `sys_role_right` VALUES ('44', 'product_admin', 'addTourProduct');
INSERT INTO `sys_role_right` VALUES ('45', 'product_admin', 'editFunction');
INSERT INTO `sys_role_right` VALUES ('46', 'product_admin', 'editTourProduct');
INSERT INTO `sys_role_right` VALUES ('47', 'product_admin', 'raiderManage');
INSERT INTO `sys_role_right` VALUES ('48', 'product_admin', 'viewFunction');
INSERT INTO `sys_role_right` VALUES ('49', 'product_admin', 'viewTourProduct');
INSERT INTO `sys_role_right` VALUES ('51', 'super_admin', 'addFunction');
INSERT INTO `sys_role_right` VALUES ('52', 'super_admin', 'editFunction');
INSERT INTO `sys_role_right` VALUES ('53', 'super_admin', 'deleteFunction');
INSERT INTO `sys_role_right` VALUES ('54', 'super_admin', 'viewFunction');
INSERT INTO `sys_role_right` VALUES ('55', 'super_admin', 'addTourProduct');
INSERT INTO `sys_role_right` VALUES ('56', 'super_admin', 'editTourProduct');
INSERT INTO `sys_role_right` VALUES ('57', 'super_admin', 'deleteTourProduct');
INSERT INTO `sys_role_right` VALUES ('58', 'super_admin', 'viewTourProduct');
INSERT INTO `sys_role_right` VALUES ('59', 'super_admin', 'recom');
INSERT INTO `sys_role_right` VALUES ('60', 'super_admin', 'userFeedback');
INSERT INTO `sys_role_right` VALUES ('61', 'super_admin', 'addRaider');
INSERT INTO `sys_role_right` VALUES ('62', 'super_admin', 'useVoucher');
INSERT INTO `sys_role_right` VALUES ('63', 'super_admin', 'addMerchantUnit');
INSERT INTO `sys_role_right` VALUES ('64', 'super_admin', 'editMerchantUnit');
INSERT INTO `sys_role_right` VALUES ('65', 'super_admin', 'deleteMerchantUnit');
INSERT INTO `sys_role_right` VALUES ('66', 'super_admin', 'addUser');
INSERT INTO `sys_role_right` VALUES ('67', 'super_admin', 'editUser');
INSERT INTO `sys_role_right` VALUES ('68', 'super_admin', 'deleteUser');
INSERT INTO `sys_role_right` VALUES ('69', 'super_admin', 'addRole');
INSERT INTO `sys_role_right` VALUES ('70', 'super_admin', 'editRole');
INSERT INTO `sys_role_right` VALUES ('71', 'super_admin', 'deleteRole');
INSERT INTO `sys_role_right` VALUES ('72', 'super_admin', 'addRight');
INSERT INTO `sys_role_right` VALUES ('73', 'super_admin', 'editRight');
INSERT INTO `sys_role_right` VALUES ('74', 'super_admin', 'deleteRight');
INSERT INTO `sys_role_right` VALUES ('75', 'super_admin', 'addComTag');
INSERT INTO `sys_role_right` VALUES ('76', 'super_admin', 'editComTag');
INSERT INTO `sys_role_right` VALUES ('77', 'super_admin', 'deleteComTag');
INSERT INTO `sys_role_right` VALUES ('78', 'super_admin', 'deleteLoginRecord');
INSERT INTO `sys_role_right` VALUES ('79', 'super_admin', 'viewMessage');
INSERT INTO `sys_role_right` VALUES ('80', 'super_admin', 'addVouchers');
INSERT INTO `sys_role_right` VALUES ('81', 'super_admin', 'editVouchers');
INSERT INTO `sys_role_right` VALUES ('82', 'super_admin', 'viewVouchers');
INSERT INTO `sys_role_right` VALUES ('83', 'super_admin', 'useVouchers');
INSERT INTO `sys_role_right` VALUES ('84', 'super_admin', 'editRaider');
INSERT INTO `sys_role_right` VALUES ('85', 'super_admin', 'deleteRaider');
INSERT INTO `sys_role_right` VALUES ('86', 'super_admin', 'viewRaider');
INSERT INTO `sys_role_right` VALUES ('87', 'super_admin', 'viewTripMate');
INSERT INTO `sys_role_right` VALUES ('88', 'super_admin', 'editTripMate');
INSERT INTO `sys_role_right` VALUES ('89', 'super_admin', 'deleteTripMate');
INSERT INTO `sys_role_right` VALUES ('90', 'super_admin', 'addBanner');
INSERT INTO `sys_role_right` VALUES ('91', 'super_admin', 'editBanner');
INSERT INTO `sys_role_right` VALUES ('92', 'super_admin', 'deleteBanner');
INSERT INTO `sys_role_right` VALUES ('93', 'super_admin', 'deleteUserFeedback');
INSERT INTO `sys_role_right` VALUES ('94', 'super_admin', 'editArea');
INSERT INTO `sys_role_right` VALUES ('95', 'yulin_admin', 'addFunction');
INSERT INTO `sys_role_right` VALUES ('96', 'yulin_admin', 'editFunction');
INSERT INTO `sys_role_right` VALUES ('97', 'yulin_admin', 'deleteFunction');
INSERT INTO `sys_role_right` VALUES ('98', 'yulin_admin', 'viewFunction');
INSERT INTO `sys_role_right` VALUES ('99', 'yulin_admin', 'addTourProduct');
INSERT INTO `sys_role_right` VALUES ('100', 'yulin_admin', 'editTourProduct');
INSERT INTO `sys_role_right` VALUES ('101', 'yulin_admin', 'deleteTourProduct');
INSERT INTO `sys_role_right` VALUES ('102', 'yulin_admin', 'viewTourProduct');
INSERT INTO `sys_role_right` VALUES ('103', 'yulin_admin', 'recom');
INSERT INTO `sys_role_right` VALUES ('104', 'yulin_admin', 'userFeedback');
INSERT INTO `sys_role_right` VALUES ('105', 'yulin_admin', 'addRaider');
INSERT INTO `sys_role_right` VALUES ('106', 'yulin_admin', 'useVoucher');
INSERT INTO `sys_role_right` VALUES ('107', 'yulin_admin', 'addVouchers');
INSERT INTO `sys_role_right` VALUES ('108', 'yulin_admin', 'editVouchers');
INSERT INTO `sys_role_right` VALUES ('109', 'yulin_admin', 'viewVouchers');
INSERT INTO `sys_role_right` VALUES ('110', 'yulin_admin', 'useVouchers');
INSERT INTO `sys_role_right` VALUES ('111', 'yulin_admin', 'editRaider');
INSERT INTO `sys_role_right` VALUES ('112', 'yulin_admin', 'deleteRaider');
INSERT INTO `sys_role_right` VALUES ('113', 'yulin_admin', 'viewRaider');
INSERT INTO `sys_role_right` VALUES ('114', 'yulin_admin', 'viewTripMate');
INSERT INTO `sys_role_right` VALUES ('115', 'yulin_admin', 'editTripMate');
INSERT INTO `sys_role_right` VALUES ('116', 'yulin_admin', 'deleteTripMate');


DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL COMMENT '手机号/邮箱',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `user_real_name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `user_sex` int(4) DEFAULT '9' COMMENT '性别:1-男；2-女',
  `user_age` int(4) DEFAULT '0' COMMENT '年龄',
  `user_password` varchar(300) DEFAULT NULL COMMENT '密码',
  `user_img` varchar(250) DEFAULT NULL COMMENT '头像',
  `user_type` int(4) DEFAULT NULL COMMENT '用户级别',
  `user_address` varchar(350) DEFAULT NULL COMMENT '地址',
  `user_telephone` varchar(50) DEFAULT NULL COMMENT '手机',
  `user_email` varchar(75) DEFAULT NULL COMMENT '邮箱',
  `user_weixin` varchar(75) DEFAULT NULL COMMENT '微信',
  `user_weibo` varchar(75) DEFAULT NULL COMMENT '微博',
  `user_qq` varchar(75) DEFAULT NULL COMMENT 'QQ',
  `user_per_id` varchar(75) DEFAULT NULL COMMENT '证件号码',
  `user_per_type` int(11) DEFAULT NULL COMMENT '证件类别',
  `qqid` varchar(125) DEFAULT NULL COMMENT 'qq登录唯一码',
  `weiboid` varchar(125) DEFAULT NULL COMMENT '微博登录唯一码',
  `weixinid` varchar(125) DEFAULT NULL COMMENT '微信登录唯一码',
  `sign` varchar(250) DEFAULT NULL COMMENT '令牌：登录成功之后返回给手机端，手机端每次响应要权限的链接，都要传用户编号+令牌',
  `merchant_id` varchar(50) DEFAULT NULL COMMENT '商户编号(单位编号)，商家表的主键，这里不关联',
  `tour_product_province` varchar(150) DEFAULT NULL COMMENT '省',
  `tour_product_city` varchar(150) DEFAULT NULL COMMENT '市',
  `tour_product_county` varchar(150) DEFAULT NULL COMMENT '县',
  `tour_product_town` varchar(150) DEFAULT NULL COMMENT '镇',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';


INSERT INTO `sys_user` VALUES ('5', '10001', 'admin', '管理员', null, null, '87bc8f2507056280662111b8822eed3b9b29a51612fcb49c8bc031162a52eaf18a6f525a77b1c584', null, '3', '', '13457481234', '', '', '', '', null, null, null, null, null, null, '', '', '', null, null);


DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` varchar(50) NOT NULL COMMENT '角色编号（角色主表键）',
  `user_id` varchar(50) NOT NULL COMMENT '用户编号（用户表主键）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户角色表';


INSERT INTO `sys_user_role` VALUES ('1', 'super_admin', '10009');
INSERT INTO `sys_user_role` VALUES ('2', 'Input_user', 'test');
INSERT INTO `sys_user_role` VALUES ('3', 'Input_user', '11119');
INSERT INTO `sys_user_role` VALUES ('7', 'product_admin', 'padmin');
INSERT INTO `sys_user_role` VALUES ('8', 'yulin_admin', 'yladmin');
INSERT INTO `sys_user_role` VALUES ('9', 'super_admin', '10001');
