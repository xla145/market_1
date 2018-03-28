/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : daoa_db

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2016-03-07 17:12:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `sys_login_record`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_login_record
-- ----------------------------
INSERT INTO sys_login_record VALUES ('1', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 08:18:14', '登录成功', '1');
INSERT INTO sys_login_record VALUES ('2', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 09:22:58', '登录成功', '1');
INSERT INTO sys_login_record VALUES ('3', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 10:57:59', '登录成功', '1');
INSERT INTO sys_login_record VALUES ('4', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 11:10:20', '登录成功', '1');
INSERT INTO sys_login_record VALUES ('5', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 14:53:12', '登录成功', '1');
INSERT INTO sys_login_record VALUES ('6', '10001', 'admin', '0:0:0:0:0:0:0:1', '2016-02-23 14:54:32', '登录成功', '1');

-- ----------------------------
-- Table structure for `sys_right`
-- ----------------------------
DROP TABLE IF EXISTS `sys_right`;
CREATE TABLE `sys_right` (
  `right_id` varchar(50) NOT NULL COMMENT '权限编号',
  `right_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `resource_path` varchar(250) DEFAULT NULL COMMENT '资源路径:(暂时不使用：可以访问的路径)',
  `right_type` int(4) DEFAULT NULL COMMENT '权限类别',
  `right_sort_order` int(4) DEFAULT NULL COMMENT '排序序号',
  PRIMARY KEY (`right_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限';

-- ----------------------------
-- Records of sys_right
-- ----------------------------
INSERT INTO sys_right VALUES ('addBanner', '添加Banner', null, null, '52');
INSERT INTO sys_right VALUES ('addComTag', '添加标签（主题）库', null, null, '37');
INSERT INTO sys_right VALUES ('addFunction', '新增产品', null, null, '1');
INSERT INTO sys_right VALUES ('addMerchantUnit', '添加商家（单位）', null, null, '25');
INSERT INTO sys_right VALUES ('addRaider', '新增攻略', null, null, '14');
INSERT INTO sys_right VALUES ('addRight', '添加权限', null, null, '34');
INSERT INTO sys_right VALUES ('addRole', '添加角色', null, null, '31');
INSERT INTO sys_right VALUES ('addTourProduct', '新增景点', null, null, '5');
INSERT INTO sys_right VALUES ('addUser', '添加用户', null, null, '28');
INSERT INTO sys_right VALUES ('addVouchers', '添加代金券', null, null, '42');
INSERT INTO sys_right VALUES ('deleteBanner', '删除Banner', null, null, '54');
INSERT INTO sys_right VALUES ('deleteComTag', '删除标签（主题）库', null, null, '39');
INSERT INTO sys_right VALUES ('deleteFunction', '删除产品', null, null, '3');
INSERT INTO sys_right VALUES ('deleteLoginRecord', '删除登陆记录', null, null, '40');
INSERT INTO sys_right VALUES ('deleteMerchantUnit', '删除商家（单位）', null, null, '27');
INSERT INTO sys_right VALUES ('deleteRaider', '删除攻略', null, null, '47');
INSERT INTO sys_right VALUES ('deleteRight', '删除权限', null, null, '36');
INSERT INTO sys_right VALUES ('deleteRole', '删除角色', null, null, '33');
INSERT INTO sys_right VALUES ('deleteTourProduct', '删除景点', null, null, '7');
INSERT INTO sys_right VALUES ('deleteTripMate', '删除结伴游', null, null, '51');
INSERT INTO sys_right VALUES ('deleteUser', '删除用户', null, null, '30');
INSERT INTO sys_right VALUES ('deleteUserFeedback', '删除用户反馈记录', null, null, '55');
INSERT INTO sys_right VALUES ('editArea', '修改区域', null, null, '56');
INSERT INTO sys_right VALUES ('editBanner', '修改Banner', null, null, '53');
INSERT INTO sys_right VALUES ('editComTag', '修改标签（主题）库', null, null, '38');
INSERT INTO sys_right VALUES ('editFunction', '修改产品', null, null, '2');
INSERT INTO sys_right VALUES ('editMerchantUnit', '修改商家（单位）', null, null, '26');
INSERT INTO sys_right VALUES ('editRaider', '修改攻略', null, null, '46');
INSERT INTO sys_right VALUES ('editRight', '修改权限', null, null, '35');
INSERT INTO sys_right VALUES ('editRole', '修改角色', null, null, '32');
INSERT INTO sys_right VALUES ('editTourProduct', '修改景点', null, null, '6');
INSERT INTO sys_right VALUES ('editTripMate', '修改结伴游', null, null, '50');
INSERT INTO sys_right VALUES ('editUser', '修改用户', null, null, '29');
INSERT INTO sys_right VALUES ('editVouchers', '修改代金券', null, null, '43');
INSERT INTO sys_right VALUES ('recom', '推荐景点、产品', null, null, '9');
INSERT INTO sys_right VALUES ('userFeedback', '用户反馈', null, null, '11');
INSERT INTO sys_right VALUES ('useVoucher', '使用代金券', null, null, '17');
INSERT INTO sys_right VALUES ('useVouchers', '使用代金券', null, null, '45');
INSERT INTO sys_right VALUES ('viewFunction', '查看产品', null, null, '4');
INSERT INTO sys_right VALUES ('viewMessage', '查看短信记录', null, null, '41');
INSERT INTO sys_right VALUES ('viewRaider', '查看攻略', null, null, '48');
INSERT INTO sys_right VALUES ('viewTourProduct', '查看景点', null, null, '8');
INSERT INTO sys_right VALUES ('viewTripMate', '查看结伴游', null, null, '49');
INSERT INTO sys_right VALUES ('viewVouchers', '查看代金券', null, null, '44');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` varchar(50) NOT NULL COMMENT '角色编号（英文，不能重复）',
  `role_name` varchar(255) NOT NULL COMMENT '角色名称',
  `role_sort_order` int(4) DEFAULT NULL COMMENT '排序序号',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role VALUES ('product_admin', '产品（景点）管理员', '2');
INSERT INTO sys_role VALUES ('super_admin', '超级管理员', '1');
INSERT INTO sys_role VALUES ('yulin_admin', '玉林管理员', '2');

-- ----------------------------
-- Table structure for `sys_role_right`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_right`;
CREATE TABLE `sys_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `right_id` varchar(50) DEFAULT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of sys_role_right
-- ----------------------------
INSERT INTO sys_role_right VALUES ('42', 'product_admin', 'addFunction');
INSERT INTO sys_role_right VALUES ('43', 'product_admin', 'addRaider');
INSERT INTO sys_role_right VALUES ('44', 'product_admin', 'addTourProduct');
INSERT INTO sys_role_right VALUES ('45', 'product_admin', 'editFunction');
INSERT INTO sys_role_right VALUES ('46', 'product_admin', 'editTourProduct');
INSERT INTO sys_role_right VALUES ('47', 'product_admin', 'raiderManage');
INSERT INTO sys_role_right VALUES ('48', 'product_admin', 'viewFunction');
INSERT INTO sys_role_right VALUES ('49', 'product_admin', 'viewTourProduct');
INSERT INTO sys_role_right VALUES ('51', 'super_admin', 'addFunction');
INSERT INTO sys_role_right VALUES ('52', 'super_admin', 'editFunction');
INSERT INTO sys_role_right VALUES ('53', 'super_admin', 'deleteFunction');
INSERT INTO sys_role_right VALUES ('54', 'super_admin', 'viewFunction');
INSERT INTO sys_role_right VALUES ('55', 'super_admin', 'addTourProduct');
INSERT INTO sys_role_right VALUES ('56', 'super_admin', 'editTourProduct');
INSERT INTO sys_role_right VALUES ('57', 'super_admin', 'deleteTourProduct');
INSERT INTO sys_role_right VALUES ('58', 'super_admin', 'viewTourProduct');
INSERT INTO sys_role_right VALUES ('59', 'super_admin', 'recom');
INSERT INTO sys_role_right VALUES ('60', 'super_admin', 'userFeedback');
INSERT INTO sys_role_right VALUES ('61', 'super_admin', 'addRaider');
INSERT INTO sys_role_right VALUES ('62', 'super_admin', 'useVoucher');
INSERT INTO sys_role_right VALUES ('63', 'super_admin', 'addMerchantUnit');
INSERT INTO sys_role_right VALUES ('64', 'super_admin', 'editMerchantUnit');
INSERT INTO sys_role_right VALUES ('65', 'super_admin', 'deleteMerchantUnit');
INSERT INTO sys_role_right VALUES ('66', 'super_admin', 'addUser');
INSERT INTO sys_role_right VALUES ('67', 'super_admin', 'editUser');
INSERT INTO sys_role_right VALUES ('68', 'super_admin', 'deleteUser');
INSERT INTO sys_role_right VALUES ('69', 'super_admin', 'addRole');
INSERT INTO sys_role_right VALUES ('70', 'super_admin', 'editRole');
INSERT INTO sys_role_right VALUES ('71', 'super_admin', 'deleteRole');
INSERT INTO sys_role_right VALUES ('72', 'super_admin', 'addRight');
INSERT INTO sys_role_right VALUES ('73', 'super_admin', 'editRight');
INSERT INTO sys_role_right VALUES ('74', 'super_admin', 'deleteRight');
INSERT INTO sys_role_right VALUES ('75', 'super_admin', 'addComTag');
INSERT INTO sys_role_right VALUES ('76', 'super_admin', 'editComTag');
INSERT INTO sys_role_right VALUES ('77', 'super_admin', 'deleteComTag');
INSERT INTO sys_role_right VALUES ('78', 'super_admin', 'deleteLoginRecord');
INSERT INTO sys_role_right VALUES ('79', 'super_admin', 'viewMessage');
INSERT INTO sys_role_right VALUES ('80', 'super_admin', 'addVouchers');
INSERT INTO sys_role_right VALUES ('81', 'super_admin', 'editVouchers');
INSERT INTO sys_role_right VALUES ('82', 'super_admin', 'viewVouchers');
INSERT INTO sys_role_right VALUES ('83', 'super_admin', 'useVouchers');
INSERT INTO sys_role_right VALUES ('84', 'super_admin', 'editRaider');
INSERT INTO sys_role_right VALUES ('85', 'super_admin', 'deleteRaider');
INSERT INTO sys_role_right VALUES ('86', 'super_admin', 'viewRaider');
INSERT INTO sys_role_right VALUES ('87', 'super_admin', 'viewTripMate');
INSERT INTO sys_role_right VALUES ('88', 'super_admin', 'editTripMate');
INSERT INTO sys_role_right VALUES ('89', 'super_admin', 'deleteTripMate');
INSERT INTO sys_role_right VALUES ('90', 'super_admin', 'addBanner');
INSERT INTO sys_role_right VALUES ('91', 'super_admin', 'editBanner');
INSERT INTO sys_role_right VALUES ('92', 'super_admin', 'deleteBanner');
INSERT INTO sys_role_right VALUES ('93', 'super_admin', 'deleteUserFeedback');
INSERT INTO sys_role_right VALUES ('94', 'super_admin', 'editArea');
INSERT INTO sys_role_right VALUES ('95', 'yulin_admin', 'addFunction');
INSERT INTO sys_role_right VALUES ('96', 'yulin_admin', 'editFunction');
INSERT INTO sys_role_right VALUES ('97', 'yulin_admin', 'deleteFunction');
INSERT INTO sys_role_right VALUES ('98', 'yulin_admin', 'viewFunction');
INSERT INTO sys_role_right VALUES ('99', 'yulin_admin', 'addTourProduct');
INSERT INTO sys_role_right VALUES ('100', 'yulin_admin', 'editTourProduct');
INSERT INTO sys_role_right VALUES ('101', 'yulin_admin', 'deleteTourProduct');
INSERT INTO sys_role_right VALUES ('102', 'yulin_admin', 'viewTourProduct');
INSERT INTO sys_role_right VALUES ('103', 'yulin_admin', 'recom');
INSERT INTO sys_role_right VALUES ('104', 'yulin_admin', 'userFeedback');
INSERT INTO sys_role_right VALUES ('105', 'yulin_admin', 'addRaider');
INSERT INTO sys_role_right VALUES ('106', 'yulin_admin', 'useVoucher');
INSERT INTO sys_role_right VALUES ('107', 'yulin_admin', 'addVouchers');
INSERT INTO sys_role_right VALUES ('108', 'yulin_admin', 'editVouchers');
INSERT INTO sys_role_right VALUES ('109', 'yulin_admin', 'viewVouchers');
INSERT INTO sys_role_right VALUES ('110', 'yulin_admin', 'useVouchers');
INSERT INTO sys_role_right VALUES ('111', 'yulin_admin', 'editRaider');
INSERT INTO sys_role_right VALUES ('112', 'yulin_admin', 'deleteRaider');
INSERT INTO sys_role_right VALUES ('113', 'yulin_admin', 'viewRaider');
INSERT INTO sys_role_right VALUES ('114', 'yulin_admin', 'viewTripMate');
INSERT INTO sys_role_right VALUES ('115', 'yulin_admin', 'editTripMate');
INSERT INTO sys_role_right VALUES ('116', 'yulin_admin', 'deleteTripMate');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
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

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO sys_user VALUES ('5', '10001', 'admin', '管理员', null, null, '23446549f2f528c0064707e142ab563b9ff1f2680f7f91ba08604c490deb9950861428f1babe41d8', null, '3', '', '13457481234', '', '', '', '', null, null, null, null, null, null, '', '', '', null, null);

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` varchar(50) NOT NULL COMMENT '角色编号（角色主表键）',
  `user_id` varchar(50) NOT NULL COMMENT '用户编号（用户表主键）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO sys_user_role VALUES ('1', 'super_admin', '10009');
INSERT INTO sys_user_role VALUES ('2', 'Input_user', 'test');
INSERT INTO sys_user_role VALUES ('3', 'Input_user', '11119');
INSERT INTO sys_user_role VALUES ('7', 'product_admin', 'padmin');
INSERT INTO sys_user_role VALUES ('8', 'yulin_admin', 'yladmin');
INSERT INTO sys_user_role VALUES ('9', 'super_admin', '10001');
