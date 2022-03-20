/*
 Navicat Premium Data Transfer

 Source Server         : Mysql8_Local_root
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : 127.0.0.1:3306
 Source Schema         : ssrt-cloud

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 20/03/2022 21:16:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) COLLATE utf8mb4_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) COLLATE utf8mb4_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) COLLATE utf8mb4_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, 'Main frame page - default skin style name', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-03-19 01:05:35', 'admin', '2022-03-20 11:36:43', 'Blue skin-blue、Green skin-green、Purple skin-purple、Red skin-red、Yellow skin-yellow');
INSERT INTO `sys_config` VALUES (2, 'User Management - Account Initial Password', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-03-19 01:05:35', 'admin', '2022-03-20 11:37:03', 'Default Password 123456');
INSERT INTO `sys_config` VALUES (3, 'Main Frame Page - Sidebar Theme', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-03-19 01:05:35', 'admin', '2022-03-20 11:37:25', 'Dark theme-dark，ligh theme-light');
INSERT INTO `sys_config` VALUES (4, 'Account self-service - whether to enable the user registration function', 'sys.account.registerUser', 'true', 'Y', 'admin', '2022-03-19 01:05:35', 'admin', '2022-03-20 11:37:58', 'Enable Register feature?（true/false）');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'CIti', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', 'PBW-Digital-SH', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', 'PBW-Digital-DL', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', 'Dev Team', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', 'Infra&Deployment', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', 'UTT Team', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', 'Biz Group', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', 'BA Team', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', 'PMO Team', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 1, 'Male', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, 'Female', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, 'None？', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, 'Show', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, 'Hidden', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, 'Enabled', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, 'Disabled', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, 'Normal', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, 'Pause', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, 'Default', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, 'System', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, 'Yes', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, 'No', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, 'Notify', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, 'Announcement', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, 'Open', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, 'Closed', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, 'Add', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, 'Modify', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, 'Delete', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, 'Export', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, 'Import', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, 'Force logout', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, 'Success', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, 'Failure', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '停用状态');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, 'User gender', 'sys_user_sex', '0', 'admin', '2022-03-19 01:05:35', 'admin', '2022-03-20 11:49:58', 'User gender list');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-03-19 01:05:35', '', NULL, '登录状态列表');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) COLLATE utf8mb4_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-03-19 01:05:35', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='定时任务调度日志表';

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录IP地址',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '提示信息',
  `access_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-19 01:56:55');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-19 16:36:08');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '1', '用户密码错误', '2022-03-19 16:36:31');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '1', '用户密码错误', '2022-03-19 16:36:44');
INSERT INTO `sys_logininfor` VALUES (104, 'ssrt', '127.0.0.1', '0', '注册成功', '2022-03-19 16:37:47');
INSERT INTO `sys_logininfor` VALUES (105, 'ssrt', '127.0.0.1', '0', '登录成功', '2022-03-19 16:38:08');
INSERT INTO `sys_logininfor` VALUES (106, 'ssrt', '127.0.0.1', '0', '退出成功', '2022-03-19 16:40:02');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '1', '用户密码错误', '2022-03-19 16:40:20');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '1', '用户密码错误', '2022-03-19 16:40:28');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-19 16:42:01');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-19 21:00:21');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-19 21:00:23');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-19 21:00:33');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-19 21:12:24');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-19 21:12:50');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-19 21:18:08');
INSERT INTO `sys_logininfor` VALUES (116, 'ssrt', '127.0.0.1', '0', '登录成功', '2022-03-19 21:18:23');
INSERT INTO `sys_logininfor` VALUES (117, 'ssrt', '127.0.0.1', '0', '退出成功', '2022-03-19 22:10:36');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-19 22:10:52');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-20 11:30:08');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-20 11:30:17');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-20 11:41:16');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-20 11:41:22');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-20 20:15:44');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-20 20:16:49');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-20 20:34:33');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-20 20:35:30');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '0', '退出成功', '2022-03-20 20:54:48');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '0', '登录成功', '2022-03-20 20:59:12');
INSERT INTO `sys_logininfor` VALUES (129, 'ssrt', '127.0.0.1', '0', '登录成功', '2022-03-20 21:14:02');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 'Sys-Management', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-03-19 01:05:34', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, 'Sys-Monitor', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-03-19 01:05:34', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, 'Sys-Tool', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-03-19 01:05:34', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, 'User-Management', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-03-19 01:05:35', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, 'Role-Management', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-03-19 01:05:35', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, 'Menu-Management', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-03-19 01:05:35', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, 'Dep-Management', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-03-19 01:05:35', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, 'Post-Management', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-03-19 01:05:35', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, 'Dict-Management', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-03-19 01:05:35', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, 'Parameter Setting', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-03-19 01:05:35', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, 'Notifications', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-03-19 01:05:35', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, 'Logs Management', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-03-19 01:05:35', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, 'Online User', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-03-19 01:05:35', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, 'Job Tasks', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-03-19 01:05:35', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, 'Sentinel Console', 2, 3, 'http://localhost:8718', '', '', 0, 0, 'C', '0', '0', 'monitor:sentinel:list', 'sentinel', 'admin', '2022-03-19 01:05:35', '', NULL, '流量控制菜单');
INSERT INTO `sys_menu` VALUES (112, 'Nacos Console', 2, 4, 'http://localhost:8848/nacos', '', '', 0, 0, 'C', '0', '0', 'monitor:nacos:list', 'nacos', 'admin', '2022-03-19 01:05:35', '', NULL, '服务治理菜单');
INSERT INTO `sys_menu` VALUES (113, 'Admin Console', 2, 5, 'http://localhost:9100/login', '', '', 0, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-03-19 01:05:35', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (114, 'Form Building', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-03-19 01:05:35', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, 'Codes Generation', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-03-19 01:05:35', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, 'Swagger Interface', 3, 3, 'http://localhost:8080/swagger-ui/index.html', '', '', 0, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-03-19 01:05:35', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, 'Operation Log', 108, 1, 'operlog', 'system/operlog/index', '', 1, 0, 'C', '0', '0', 'system:operlog:list', 'form', 'admin', '2022-03-19 01:05:35', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, 'Login Information', 108, 2, 'logininfor', 'system/logininfor/index', '', 1, 0, 'C', '0', '0', 'system:logininfor:list', 'logininfor', 'admin', '2022-03-19 01:05:35', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, 'User-Query', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, 'User-Add', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, 'User-Modify', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, 'User-Del', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, 'User-Export', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, 'User-Import', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, 'Reset Password', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, 'Role-Query', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, 'Role-Add', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, 'Role-Modify', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, 'Role-Del', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, 'Role-Export', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, 'Menu-Query', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, 'Menu-Add', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, 'Menu-Modify', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, 'Menu-Del', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, 'Dep-Query', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, 'Dep-Add', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, 'Dep-Modify', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, 'Dep-Del', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, 'Post-Query', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, 'Post-Add', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, 'Post-Modify', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, 'Post-Del', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, 'Post-Export', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, 'Dict-Query', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, 'Dict-Add', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, 'Dict-Modify', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, 'Dict-Del', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, 'Dict-Export', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, 'Param-Query', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, 'Param-Add', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, 'Param-Modify', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, 'Param-Del', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, 'Param-Export', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:export', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:export', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-03-19 01:05:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, 'User-Tool', 0, 4, 'usertool', NULL, NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-03-20 12:19:30', 'admin', '2022-03-20 12:20:52', '');
INSERT INTO `sys_menu` VALUES (2001, 'DB Query', 2000, 1, '/test', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'input', 'admin', '2022-03-20 12:22:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, 'My Jobs', 2000, 2, '/test', NULL, NULL, 1, 0, 'M', '0', '0', '', 'job', 'admin', '2022-03-20 12:23:38', 'admin', '2022-03-20 12:37:27', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` VALUES (1, 'Warm reminder: SSRT new version is released', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-03-19 01:05:35', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, 'Maintenance : 2022-03-19 SSRT system maintenance', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-03-19 01:05:35', '', NULL, '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` VALUES (100, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"17601348588\",\"admin\":true,\"loginDate\":1647651934000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"2212925883@qq.com\",\"nickName\":\"SSRT\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1647651934000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 19:14:57');
INSERT INTO `sys_oper_log` VALUES (101, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 19:29:57');
INSERT INTO `sys_oper_log` VALUES (102, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 19:30:11');
INSERT INTO `sys_oper_log` VALUES (103, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 19:30:13');
INSERT INTO `sys_oper_log` VALUES (104, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 19:31:40');
INSERT INTO `sys_oper_log` VALUES (105, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 19:31:43');
INSERT INTO `sys_oper_log` VALUES (106, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 19:31:44');
INSERT INTO `sys_oper_log` VALUES (107, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 19:31:45');
INSERT INTO `sys_oper_log` VALUES (108, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/03/19/blob_20220319193217A001.jpeg\",\"code\":200}', 0, NULL, '2022-03-19 19:32:17');
INSERT INTO `sys_oper_log` VALUES (109, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"17601348588\",\"admin\":true,\"loginDate\":1647651934000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"2212925883@qq.com\",\"nickName\":\"SSRT\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1647651934000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 19:32:21');
INSERT INTO `sys_oper_log` VALUES (110, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/03/19/blob_20220319194228A002.jpeg\",\"code\":200}', 0, NULL, '2022-03-19 19:42:28');
INSERT INTO `sys_oper_log` VALUES (111, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"17601348588\",\"admin\":true,\"loginDate\":1647651934000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"2212925883@qq.com\",\"nickName\":\"SSRT\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"http://127.0.0.1:9300/statics/2022/03/19/blob_20220319193217A001.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1647651934000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 19:42:32');
INSERT INTO `sys_oper_log` VALUES (112, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 21:13:14');
INSERT INTO `sys_oper_log` VALUES (113, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2022-03-19 21:13:16');
INSERT INTO `sys_oper_log` VALUES (114, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/03/19/blob_20220319211500A001.jpeg\",\"code\":200}', 0, NULL, '2022-03-19 21:15:00');
INSERT INTO `sys_oper_log` VALUES (115, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"17601348588\",\"admin\":true,\"loginDate\":1647651934000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"2212925883@qq.com\",\"nickName\":\"SSRT\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"http://127.0.0.1:9300/statics/2022/03/19/blob_20220319193217A001.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1647651934000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 21:15:04');
INSERT INTO `sys_oper_log` VALUES (116, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'ssrt', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17601348588\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"$2a$10$ZzduAFoWWg25dN0n77p9a.MJRLjSCwvZxMvBR1DqGLOJFX/wkIjEe\",\"loginIp\":\"\",\"email\":\"2212925883@qq.com\",\"nickName\":\"ssrt\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"ssrt\",\"userId\":100,\"createBy\":\"\",\"createTime\":1647707867000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'ssrt\'失败，手机号码已存在\",\"code\":500}', 0, NULL, '2022-03-19 21:18:58');
INSERT INTO `sys_oper_log` VALUES (117, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'ssrt', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17601348588\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"$2a$10$ZzduAFoWWg25dN0n77p9a.MJRLjSCwvZxMvBR1DqGLOJFX/wkIjEe\",\"loginIp\":\"\",\"email\":\"2212925883@qq.com\",\"nickName\":\"ssrt\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"ssrt\",\"userId\":100,\"createBy\":\"\",\"createTime\":1647707867000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'ssrt\'失败，手机号码已存在\",\"code\":500}', 0, NULL, '2022-03-19 21:19:07');
INSERT INTO `sys_oper_log` VALUES (118, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'ssrt', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17601348589\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"$2a$10$ZzduAFoWWg25dN0n77p9a.MJRLjSCwvZxMvBR1DqGLOJFX/wkIjEe\",\"loginIp\":\"\",\"email\":\"2212925883@qq.com\",\"nickName\":\"ssrt\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"ssrt\",\"userId\":100,\"createBy\":\"\",\"createTime\":1647707867000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'ssrt\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2022-03-19 21:19:17');
INSERT INTO `sys_oper_log` VALUES (119, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'ssrt', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17601348588\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"$2a$10$ZzduAFoWWg25dN0n77p9a.MJRLjSCwvZxMvBR1DqGLOJFX/wkIjEe\",\"loginIp\":\"\",\"email\":\"2212925883@qq.com\",\"nickName\":\"ssrt\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"ssrt\",\"userId\":100,\"createBy\":\"\",\"createTime\":1647707867000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'ssrt\'失败，手机号码已存在\",\"code\":500}', 0, NULL, '2022-03-19 21:19:57');
INSERT INTO `sys_oper_log` VALUES (120, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'ssrt', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17601348589\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"$2a$10$ZzduAFoWWg25dN0n77p9a.MJRLjSCwvZxMvBR1DqGLOJFX/wkIjEe\",\"loginIp\":\"\",\"email\":\"2212925883@qq.com\",\"nickName\":\"ssrt\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"ssrt\",\"userId\":100,\"createBy\":\"\",\"createTime\":1647707867000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'ssrt\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2022-03-19 21:20:03');
INSERT INTO `sys_oper_log` VALUES (121, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'ssrt', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17601348589\",\"admin\":false,\"delFlag\":\"0\",\"loginIp\":\"\",\"email\":\"2212925885@qq.com\",\"nickName\":\"ssrt\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"ssrt\",\"userId\":100,\"createBy\":\"\",\"createTime\":1647707867000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 21:20:11');
INSERT INTO `sys_oper_log` VALUES (122, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'ssrt', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/03/19/blob_20220319212028A002.jpeg\",\"code\":200}', 0, NULL, '2022-03-19 21:20:28');
INSERT INTO `sys_oper_log` VALUES (123, '个人信息', 2, 'com.ssrt.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'ssrt', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[],\"phonenumber\":\"17601348589\",\"admin\":false,\"delFlag\":\"0\",\"loginIp\":\"\",\"email\":\"2212925885@qq.com\",\"nickName\":\"ssrt\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"ssrt\",\"userId\":100,\"createBy\":\"\",\"createTime\":1647707867000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 21:20:31');
INSERT INTO `sys_oper_log` VALUES (124, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/03/19/blob_20220319221159A003.jpeg\",\"code\":200}', 0, NULL, '2022-03-19 22:12:00');
INSERT INTO `sys_oper_log` VALUES (125, '用户管理', 3, 'com.ssrt.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/2', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 22:12:51');
INSERT INTO `sys_oper_log` VALUES (126, '角色管理', 1, 'com.ssrt.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"Dev\",\"roleName\":\"Dev User\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,3,114,115,1055,1058,1056,1057,1059,1060,116],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 22:15:11');
INSERT INTO `sys_oper_log` VALUES (127, '角色管理', 1, 'com.ssrt.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"audit\",\"roleName\":\"Audit User\",\"deptIds\":[],\"menuIds\":[2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 22:17:03');
INSERT INTO `sys_oper_log` VALUES (128, '角色管理', 2, 'com.ssrt.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1647728223000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"audit\",\"roleName\":\"Audit User\",\"menuIds\":[2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 22:17:18');
INSERT INTO `sys_oper_log` VALUES (129, '角色管理', 1, 'com.ssrt.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"biz\",\"roleName\":\"Biz User\",\"deptIds\":[],\"menuIds\":[2,110,1049,1050,1051,1052,1053,1054],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 22:17:52');
INSERT INTO `sys_oper_log` VALUES (130, '角色管理', 2, 'com.ssrt.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createTime\":1647728272000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"biz\",\"roleName\":\"Biz User\",\"menuIds\":[2,110,1049,1050,1051,1052,1053,1054],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-19 22:18:00');
INSERT INTO `sys_oper_log` VALUES (131, '参数管理', 2, 'com.ssrt.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"Main frame page - default skin style name\",\"configKey\":\"sys.index.skinName\",\"createBy\":\"admin\",\"createTime\":1647651935000,\"updateBy\":\"admin\",\"configId\":1,\"remark\":\"Blue skin-blue、Green skin-green、Purple skin-purple、Red skin-red、Yellow skin-yellow\",\"configType\":\"Y\",\"configValue\":\"skin-blue\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 11:36:43');
INSERT INTO `sys_oper_log` VALUES (132, '参数管理', 2, 'com.ssrt.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"User Management - Account Initial Password\",\"configKey\":\"sys.user.initPassword\",\"createBy\":\"admin\",\"createTime\":1647651935000,\"updateBy\":\"admin\",\"configId\":2,\"remark\":\"Default Password 123456\",\"configType\":\"Y\",\"configValue\":\"123456\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 11:37:03');
INSERT INTO `sys_oper_log` VALUES (133, '参数管理', 2, 'com.ssrt.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"Main Frame Page - Sidebar Theme\",\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1647651935000,\"updateBy\":\"admin\",\"configId\":3,\"remark\":\"Dark theme-dark，ligh theme-light\",\"configType\":\"Y\",\"configValue\":\"theme-dark\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 11:37:25');
INSERT INTO `sys_oper_log` VALUES (134, '参数管理', 2, 'com.ssrt.system.controller.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/config', '127.0.0.1', '', '{\"configName\":\"Account self-service - whether to enable the user registration function\",\"configKey\":\"sys.account.registerUser\",\"createBy\":\"admin\",\"createTime\":1647651935000,\"updateBy\":\"admin\",\"configId\":4,\"remark\":\"Enable Register feature?（true/false）\",\"configType\":\"Y\",\"configValue\":\"true\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 11:37:58');
INSERT INTO `sys_oper_log` VALUES (135, '操作日志', 5, 'com.ssrt.system.controller.SysOperlogController.export()', 'POST', 1, 'admin', NULL, '/operlog/export', '127.0.0.1', '', '{\"params\":{}}', NULL, 0, NULL, '2022-03-20 11:38:40');
INSERT INTO `sys_oper_log` VALUES (136, '字典类型', 2, 'com.ssrt.system.controller.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/dict/type', '127.0.0.1', '', '{\"createBy\":\"admin\",\"createTime\":1647651935000,\"updateBy\":\"admin\",\"dictName\":\"User gender\",\"remark\":\"User gender list\",\"dictId\":1,\"params\":{},\"dictType\":\"sys_user_sex\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 11:49:59');
INSERT INTO `sys_oper_log` VALUES (137, '岗位管理', 2, 'com.ssrt.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1647651934000,\"updateBy\":\"admin\",\"postName\":\"ceo\",\"postCode\":\"ceo\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:00:49');
INSERT INTO `sys_oper_log` VALUES (138, '岗位管理', 2, 'com.ssrt.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1647651934000,\"updateBy\":\"admin\",\"postName\":\"pmo\",\"postCode\":\"pmo\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:01:23');
INSERT INTO `sys_oper_log` VALUES (139, '岗位管理', 2, 'com.ssrt.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"postSort\":\"3\",\"flag\":false,\"remark\":\"\",\"postId\":3,\"params\":{},\"createBy\":\"admin\",\"createTime\":1647651934000,\"updateBy\":\"admin\",\"postName\":\"hr\",\"postCode\":\"hr\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:01:41');
INSERT INTO `sys_oper_log` VALUES (140, '岗位管理', 2, 'com.ssrt.system.controller.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"postSort\":\"4\",\"flag\":false,\"remark\":\"\",\"postId\":4,\"params\":{},\"createBy\":\"admin\",\"createTime\":1647651934000,\"updateBy\":\"admin\",\"postName\":\"user\",\"postCode\":\"user\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:01:58');
INSERT INTO `sys_oper_log` VALUES (141, '岗位管理', 1, 'com.ssrt.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"postSort\":\"0\",\"flag\":false,\"postId\":5,\"params\":{},\"createBy\":\"admin\",\"postName\":\"dev\",\"postCode\":\"dev\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:02:10');
INSERT INTO `sys_oper_log` VALUES (142, '岗位管理', 1, 'com.ssrt.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/post', '127.0.0.1', '', '{\"postSort\":\"0\",\"flag\":false,\"postId\":6,\"params\":{},\"createBy\":\"admin\",\"postName\":\"infra\",\"postCode\":\"infra\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:02:22');
INSERT INTO `sys_oper_log` VALUES (143, '岗位管理', 5, 'com.ssrt.system.controller.SysPostController.export()', 'POST', 1, 'admin', NULL, '/post/export', '127.0.0.1', '', '{\"flag\":false,\"params\":{}}', NULL, 0, NULL, '2022-03-20 12:04:24');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 1, 'com.ssrt.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":4,\"menuName\":\"User-Tool\",\"params\":{},\"isCache\":\"0\",\"path\":\"usertool\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:19:30');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.ssrt.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":4,\"menuName\":\"User-Tool\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"usertool\",\"children\":[],\"createTime\":1647778770000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:20:52');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 1, 'com.ssrt.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"input\",\"orderNum\":1,\"menuName\":\"DB Query\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/test\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:22:13');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 1, 'com.ssrt.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":2,\"menuName\":\"My Favorite Jobs\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/test\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:23:38');
INSERT INTO `sys_oper_log` VALUES (148, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/03/20/blob_20220320122722A001.jpeg\",\"code\":200}', 0, NULL, '2022-03-20 12:27:22');
INSERT INTO `sys_oper_log` VALUES (149, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/03/20/blob_20220320122722A002.jpeg\",\"code\":200}', 0, NULL, '2022-03-20 12:27:22');
INSERT INTO `sys_oper_log` VALUES (150, '用户头像', 2, 'com.ssrt.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2022/03/20/blob_20220320122722A003.jpeg\",\"code\":200}', 0, NULL, '2022-03-20 12:27:22');
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 2, 'com.ssrt.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":2,\"menuName\":\"My Jobs\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/test\",\"children\":[],\"createTime\":1647779018000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-03-20 12:37:27');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, 'ceo', 'ceo', 1, '0', 'admin', '2022-03-19 01:05:34', 'admin', '2022-03-20 12:00:48', '');
INSERT INTO `sys_post` VALUES (2, 'pmo', 'pmo', 2, '0', 'admin', '2022-03-19 01:05:34', 'admin', '2022-03-20 12:01:23', '');
INSERT INTO `sys_post` VALUES (3, 'hr', 'hr', 3, '0', 'admin', '2022-03-19 01:05:34', 'admin', '2022-03-20 12:01:41', '');
INSERT INTO `sys_post` VALUES (4, 'user', 'user', 4, '0', 'admin', '2022-03-19 01:05:34', 'admin', '2022-03-20 12:01:58', '');
INSERT INTO `sys_post` VALUES (5, 'dev', 'dev', 0, '0', 'admin', '2022-03-20 12:02:09', '', NULL, NULL);
INSERT INTO `sys_post` VALUES (6, 'infra', 'infra', 0, '0', 'admin', '2022-03-20 12:02:22', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 'Supoer Admin', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, 'Common User', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-03-19 01:05:34', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, 'Dev User', 'Dev', 3, '1', 1, 1, '0', '0', 'admin', '2022-03-19 22:15:11', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (101, 'Audit User', 'audit', 4, '1', 1, 1, '0', '0', 'admin', '2022-03-19 22:17:03', 'admin', '2022-03-19 22:17:18', NULL);
INSERT INTO `sys_role` VALUES (102, 'Biz User', 'biz', 5, '1', 1, 1, '0', '0', 'admin', '2022-03-19 22:17:52', 'admin', '2022-03-19 22:18:00', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 3);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 102);
INSERT INTO `sys_role_menu` VALUES (100, 103);
INSERT INTO `sys_role_menu` VALUES (100, 104);
INSERT INTO `sys_role_menu` VALUES (100, 105);
INSERT INTO `sys_role_menu` VALUES (100, 106);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 110);
INSERT INTO `sys_role_menu` VALUES (100, 111);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 113);
INSERT INTO `sys_role_menu` VALUES (100, 114);
INSERT INTO `sys_role_menu` VALUES (100, 115);
INSERT INTO `sys_role_menu` VALUES (100, 116);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1012);
INSERT INTO `sys_role_menu` VALUES (100, 1013);
INSERT INTO `sys_role_menu` VALUES (100, 1014);
INSERT INTO `sys_role_menu` VALUES (100, 1015);
INSERT INTO `sys_role_menu` VALUES (100, 1016);
INSERT INTO `sys_role_menu` VALUES (100, 1017);
INSERT INTO `sys_role_menu` VALUES (100, 1018);
INSERT INTO `sys_role_menu` VALUES (100, 1019);
INSERT INTO `sys_role_menu` VALUES (100, 1020);
INSERT INTO `sys_role_menu` VALUES (100, 1021);
INSERT INTO `sys_role_menu` VALUES (100, 1022);
INSERT INTO `sys_role_menu` VALUES (100, 1023);
INSERT INTO `sys_role_menu` VALUES (100, 1024);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1026);
INSERT INTO `sys_role_menu` VALUES (100, 1027);
INSERT INTO `sys_role_menu` VALUES (100, 1028);
INSERT INTO `sys_role_menu` VALUES (100, 1029);
INSERT INTO `sys_role_menu` VALUES (100, 1030);
INSERT INTO `sys_role_menu` VALUES (100, 1031);
INSERT INTO `sys_role_menu` VALUES (100, 1032);
INSERT INTO `sys_role_menu` VALUES (100, 1033);
INSERT INTO `sys_role_menu` VALUES (100, 1034);
INSERT INTO `sys_role_menu` VALUES (100, 1035);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 1049);
INSERT INTO `sys_role_menu` VALUES (100, 1050);
INSERT INTO `sys_role_menu` VALUES (100, 1051);
INSERT INTO `sys_role_menu` VALUES (100, 1052);
INSERT INTO `sys_role_menu` VALUES (100, 1053);
INSERT INTO `sys_role_menu` VALUES (100, 1054);
INSERT INTO `sys_role_menu` VALUES (100, 1055);
INSERT INTO `sys_role_menu` VALUES (100, 1056);
INSERT INTO `sys_role_menu` VALUES (100, 1057);
INSERT INTO `sys_role_menu` VALUES (100, 1058);
INSERT INTO `sys_role_menu` VALUES (100, 1059);
INSERT INTO `sys_role_menu` VALUES (100, 1060);
INSERT INTO `sys_role_menu` VALUES (101, 2);
INSERT INTO `sys_role_menu` VALUES (101, 109);
INSERT INTO `sys_role_menu` VALUES (101, 110);
INSERT INTO `sys_role_menu` VALUES (101, 111);
INSERT INTO `sys_role_menu` VALUES (101, 112);
INSERT INTO `sys_role_menu` VALUES (101, 113);
INSERT INTO `sys_role_menu` VALUES (101, 1046);
INSERT INTO `sys_role_menu` VALUES (101, 1047);
INSERT INTO `sys_role_menu` VALUES (101, 1048);
INSERT INTO `sys_role_menu` VALUES (101, 1049);
INSERT INTO `sys_role_menu` VALUES (101, 1050);
INSERT INTO `sys_role_menu` VALUES (101, 1051);
INSERT INTO `sys_role_menu` VALUES (101, 1052);
INSERT INTO `sys_role_menu` VALUES (101, 1053);
INSERT INTO `sys_role_menu` VALUES (101, 1054);
INSERT INTO `sys_role_menu` VALUES (102, 2);
INSERT INTO `sys_role_menu` VALUES (102, 110);
INSERT INTO `sys_role_menu` VALUES (102, 1049);
INSERT INTO `sys_role_menu` VALUES (102, 1050);
INSERT INTO `sys_role_menu` VALUES (102, 1051);
INSERT INTO `sys_role_menu` VALUES (102, 1052);
INSERT INTO `sys_role_menu` VALUES (102, 1053);
INSERT INTO `sys_role_menu` VALUES (102, 1054);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) COLLATE utf8mb4_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'admin', '00', '2212925883@qq.com', '17601348588', '0', 'http://127.0.0.1:9300/statics/2022/03/20/blob_20220320122722A002.jpeg', '$2a$10$ZzduAFoWWg25dN0n77p9a.MJRLjSCwvZxMvBR1DqGLOJFX/wkIjEe', '0', '0', '127.0.0.1', '2022-03-19 01:05:34', 'admin', '2022-03-19 01:05:34', '', '2022-03-19 21:15:04', '管理员');
INSERT INTO `sys_user` VALUES (100, NULL, 'ssrt', 'ssrt', '00', '2212925883@qq.com', '17601348589', '0', 'http://127.0.0.1:9300/statics/2022/03/19/blob_20220319212028A002.jpeg', '$2a$10$ZzduAFoWWg25dN0n77p9a.MJRLjSCwvZxMvBR1DqGLOJFX/wkIjEe', '0', '0', '', NULL, '', '2022-03-19 16:37:47', '', '2022-03-19 21:20:31', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
