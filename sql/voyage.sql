/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : voyage

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-07-23 09:49:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(12) NOT NULL,
  `question_id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('2', '5', '1', '0', '正大的骄傲开发', '2017-07-16 19:10:32', '33');
INSERT INTO `answer` VALUES ('3', '1', '2', '0', '正大的骄傲开发', '2017-07-15 20:40:37', '32');
INSERT INTO `answer` VALUES ('4', '2', '1', '0', '正大的骄傲开发', '2017-07-16 19:10:30', '43');
INSERT INTO `answer` VALUES ('5', '4', '1', '0', '正大的骄傲开发', '2017-07-16 19:10:26', '65');
INSERT INTO `answer` VALUES ('6', '1', '2', '0', '正大的骄傲开发', '2017-07-16 19:10:28', '123');
INSERT INTO `answer` VALUES ('7', '5', '1', '0', '正大的骄傲开发', '2017-07-16 19:10:16', '534');
INSERT INTO `answer` VALUES ('8', '6', '1', '0', '正大的骄傲开发', '2017-07-16 19:10:18', '12');
INSERT INTO `answer` VALUES ('9', '8', '3', '0', '正大的骄傲开发', '2017-07-16 19:10:22', '56');
INSERT INTO `answer` VALUES ('10', '2', '1', '0', '正大的骄傲开发', '2017-07-15 20:40:31', '76');
INSERT INTO `answer` VALUES ('11', '2', '1', '0', '正大的骄傲开发', '2017-07-15 20:40:35', '98');
INSERT INTO `answer` VALUES ('12', '2', '3', '0', '正大的骄傲开发', '2017-07-16 19:09:59', '4');
INSERT INTO `answer` VALUES ('13', '4', '1', '0', '正大的骄傲开发', '2017-07-16 19:10:14', '23');
INSERT INTO `answer` VALUES ('14', '2017010001', '2', null, 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 14:53:58', null);
INSERT INTO `answer` VALUES ('15', '2017010001', '2', null, 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 14:57:04', null);
INSERT INTO `answer` VALUES ('16', '2017010001', '2', null, 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 15:02:27', null);
INSERT INTO `answer` VALUES ('17', '2017010001', '2', null, 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 15:23:44', null);
INSERT INTO `answer` VALUES ('18', '2017010001', '2', null, '呵呵哒', '2017-07-16 15:55:34', null);
INSERT INTO `answer` VALUES ('19', '2017010001', '2', null, 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 16:02:37', null);
INSERT INTO `answer` VALUES ('20', '2017010001', '37', null, 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 16:07:14', null);
INSERT INTO `answer` VALUES ('21', '2017010001', '2', null, 'fixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 16:09:38', null);
INSERT INTO `answer` VALUES ('22', '2017010001', '38', null, 'fixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 16:10:09', null);
INSERT INTO `answer` VALUES ('23', '2017010001', '2', null, 'static	默认值。没有定位，元素出现在正常的流中（忽略 top, bottom, left, right 或者 z-index 声明）。\n\ninherit	规定应该从父元素继承 position ', '2017-07-16 16:32:22', null);
INSERT INTO `answer` VALUES ('24', '2017010001', '2', null, '这是个测试的评论', '2017-07-16 19:15:38', null);
INSERT INTO `answer` VALUES ('25', '2017010001', '39', null, '2019:37测试测绘师的绝杀肯德基as', '2017-07-16 19:37:49', null);
INSERT INTO `answer` VALUES ('26', '2017010001', '39', null, '再猜实打实地阿虎大的', '2017-07-16 19:37:55', null);
INSERT INTO `answer` VALUES ('27', '2017010001', '39', null, '不知道说什么', '2017-07-20 14:38:39', null);

-- ----------------------------
-- Table structure for audio
-- ----------------------------
DROP TABLE IF EXISTS `audio`;
CREATE TABLE `audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `user_id` varchar(12) DEFAULT NULL,
  `resource_ids` varchar(100) DEFAULT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audio
-- ----------------------------
INSERT INTO `audio` VALUES ('1', 'Anchor - Novo Amor', null, '10060', 'a410e8ea89dc18fab8a054de679a155d.mp3', null, null, '2017-07-20 10:06:09');
INSERT INTO `audio` VALUES ('2', '12월 24일 - d.ear', null, '8762', 'fd613c855a82d2948539d799a9ff4908.mp3', null, null, '2017-07-21 15:22:20');
INSERT INTO `audio` VALUES ('3', 'Adele - Hello', null, '11605', '4f4011ebecaba208fcca0747b22202fe.mp3', null, null, '2017-07-21 15:23:52');
INSERT INTO `audio` VALUES ('4', 'Andrei Machado - Sobre a brevidade da vida', null, '5095', 'e4f8e31708a244a8a14ba136f90f37cf.mp3', null, null, '2017-07-21 15:32:56');
INSERT INTO `audio` VALUES ('5', 'All We Do - Oh Wonder', null, '5026', '319b396ffedc35619c317117c166a386.mp3', null, null, '2017-07-21 15:32:56');
INSERT INTO `audio` VALUES ('6', 'Anchor - Novo Amor', null, '10060', 'e45e8964edc059f4793d8b71fef474c8.mp3', null, null, '2017-07-21 15:32:57');
INSERT INTO `audio` VALUES ('7', 'Ashram - Elizabeth', null, '6165', 'c3e7a66a52f11d3e25afda806b55da41.mp3', null, null, '2017-07-21 16:14:09');
INSERT INTO `audio` VALUES ('8', 'Ashram - Il Mostro', null, '8137', 'e5a04aad5d4c6c21b813fc74f7ef67ef.mp3', null, null, '2017-07-21 16:14:56');
INSERT INTO `audio` VALUES ('9', 'Ashram - Fragile', null, '8719', '9aade70269840e51907bce5f697e02eb.mp3', null, null, '2017-07-21 16:14:56');
INSERT INTO `audio` VALUES ('10', 'Audrey Assad - I Shall Not Want', null, '11171', '2a025999cf4da265f841d51c2bcff977.mp3', null, null, '2017-07-21 16:14:56');
INSERT INTO `audio` VALUES ('11', 'DJ Snake,Justin Bieber,Andrew Watt - Let Me Love You (Andrew Watt Acoustic Remix)', null, '8235', '45ae8043f1b25969146cb64d70a7a168.mp3', null, null, '2017-07-21 16:21:54');
INSERT INTO `audio` VALUES ('12', 'Delay Trees - Desert Island Song', null, '10089', '7d9d3cd7d480a72582baaeec9202ae7a.mp3', null, null, '2017-07-21 16:21:54');
INSERT INTO `audio` VALUES ('13', 'Dig Deep - Mazde,Lissa', null, '10444', '81369925ac43c98ac685ef96c0f1335c.mp3', null, null, '2017-07-21 16:21:55');
INSERT INTO `audio` VALUES ('14', 'Let It Out - Frances', null, '9248', 'f5b770513c71e6655ea2a619108f5b92.mp3', null, null, '2017-07-22 15:42:41');
INSERT INTO `audio` VALUES ('15', 'Lukas Graham - 7 Years', null, '9379', '8ec6719ee3c60ce6f7ca0644232ff0c8.mp3', null, null, '2017-07-22 15:42:41');
INSERT INTO `audio` VALUES ('16', 'Lost control - Painless Destiny', null, '3533', 'a13ced860dcca5eace9706be9bae340b.mp3', null, null, '2017-07-22 15:42:41');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_id` varchar(12) DEFAULT NULL,
  `admin_id` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'public', '默认公开课程', '2017-07-21 09:56:37', '1', '1');
INSERT INTO `course` VALUES ('2', 'private', '默认私有课程', '2017-07-21 09:56:45', '1', '1');
INSERT INTO `course` VALUES ('3', 'java', 'java课程体系', '2017-07-22 11:45:29', null, null);
INSERT INTO `course` VALUES ('4', 'Android', 'Android课程体系', '2017-07-22 11:45:50', null, null);
INSERT INTO `course` VALUES ('5', 'PHP', 'php课程体系', '2017-07-22 11:46:06', null, null);
INSERT INTO `course` VALUES ('6', 'C/C++', 'C/C++课程体系', '2017-07-22 11:46:27', null, null);
INSERT INTO `course` VALUES ('7', '\r\nimageIdentify', '图像识别', '2017-07-22 11:47:30', null, null);

-- ----------------------------
-- Table structure for course_file
-- ----------------------------
DROP TABLE IF EXISTS `course_file`;
CREATE TABLE `course_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `file_type` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_file
-- ----------------------------
INSERT INTO `course_file` VALUES ('17', '2', '3', '2');
INSERT INTO `course_file` VALUES ('18', '2', '4', '2');
INSERT INTO `course_file` VALUES ('19', '2', '5', '2');
INSERT INTO `course_file` VALUES ('20', '2', '6', '2');
INSERT INTO `course_file` VALUES ('21', '2', '7', '2');
INSERT INTO `course_file` VALUES ('22', '2', '8', '2');
INSERT INTO `course_file` VALUES ('23', '2', '9', '2');
INSERT INTO `course_file` VALUES ('24', '2', '10', '2');
INSERT INTO `course_file` VALUES ('25', '2', '16', '3');
INSERT INTO `course_file` VALUES ('26', '2', '14', '3');
INSERT INTO `course_file` VALUES ('27', '2', '15', '3');
INSERT INTO `course_file` VALUES ('28', '2', '11', '2');
INSERT INTO `course_file` VALUES ('29', '2', '12', '2');
INSERT INTO `course_file` VALUES ('30', '2', '13', '2');
INSERT INTO `course_file` VALUES ('31', '2', '14', '2');
INSERT INTO `course_file` VALUES ('32', '5', '15', '2');
INSERT INTO `course_file` VALUES ('33', '2', '16', '2');
INSERT INTO `course_file` VALUES ('34', '6', '17', '2');
INSERT INTO `course_file` VALUES ('35', '5', '17', '2');
INSERT INTO `course_file` VALUES ('36', '6', '18', '2');
INSERT INTO `course_file` VALUES ('37', '5', '18', '2');
INSERT INTO `course_file` VALUES ('38', '2', '18', '2');
INSERT INTO `course_file` VALUES ('39', '4', '18', '2');
INSERT INTO `course_file` VALUES ('40', '7', '18', '2');
INSERT INTO `course_file` VALUES ('41', '6', '21', '2');
INSERT INTO `course_file` VALUES ('42', '6', '19', '2');
INSERT INTO `course_file` VALUES ('43', '6', '20', '2');
INSERT INTO `course_file` VALUES ('44', '5', '21', '2');
INSERT INTO `course_file` VALUES ('45', '5', '20', '2');
INSERT INTO `course_file` VALUES ('46', '5', '19', '2');
INSERT INTO `course_file` VALUES ('47', '2', '21', '2');
INSERT INTO `course_file` VALUES ('48', '2', '20', '2');
INSERT INTO `course_file` VALUES ('49', '2', '19', '2');
INSERT INTO `course_file` VALUES ('50', '4', '20', '2');
INSERT INTO `course_file` VALUES ('51', '4', '21', '2');
INSERT INTO `course_file` VALUES ('52', '4', '19', '2');
INSERT INTO `course_file` VALUES ('53', '7', '20', '2');
INSERT INTO `course_file` VALUES ('54', '7', '21', '2');
INSERT INTO `course_file` VALUES ('55', '7', '19', '2');
INSERT INTO `course_file` VALUES ('56', '6', '22', '2');
INSERT INTO `course_file` VALUES ('57', '5', '22', '2');
INSERT INTO `course_file` VALUES ('58', '2', '22', '2');
INSERT INTO `course_file` VALUES ('59', '4', '22', '2');
INSERT INTO `course_file` VALUES ('60', '7', '22', '2');

-- ----------------------------
-- Table structure for course_organization
-- ----------------------------
DROP TABLE IF EXISTS `course_organization`;
CREATE TABLE `course_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_organization
-- ----------------------------
INSERT INTO `course_organization` VALUES ('1', '1', '1');
INSERT INTO `course_organization` VALUES ('2', '2', '2');
INSERT INTO `course_organization` VALUES ('3', '3', '2');

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(12) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `discuss_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discuss
-- ----------------------------
INSERT INTO `discuss` VALUES ('1', '1', '呵呵哒', '2017-07-12 16:57:29', '1');
INSERT INTO `discuss` VALUES ('2', '1', 'hehda', '2017-07-12 17:00:18', '1');
INSERT INTO `discuss` VALUES ('3', '1', 'memda ', '2017-07-13 09:29:12', '2');
INSERT INTO `discuss` VALUES ('4', '1', 'hehda ', '2017-07-13 09:29:19', '3');
INSERT INTO `discuss` VALUES ('5', '2', '蓝瘦香菇', '2017-07-13 09:29:24', '1');
INSERT INTO `discuss` VALUES ('6', '2', '大会上大师', '2017-07-13 09:29:25', '2');
INSERT INTO `discuss` VALUES ('7', '2', '黄寺大街多好', '2017-07-13 09:29:27', '1');
INSERT INTO `discuss` VALUES ('8', '2', '呵呵哒', '2017-07-13 09:29:30', '3');
INSERT INTO `discuss` VALUES ('9', '1', '我真的是', '2017-07-13 09:29:35', '3');
INSERT INTO `discuss` VALUES ('10', '1', 'tml的h1到h5标签的字体大小各是什么呀？', '2017-07-13 13:44:43', '1');
INSERT INTO `discuss` VALUES ('11', '1', 'heheda', '2017-07-13 13:49:19', '1');
INSERT INTO `discuss` VALUES ('12', '1', '难受仙姑', '2017-07-13 14:01:41', '1');
INSERT INTO `discuss` VALUES ('13', '1', 'l的h1到h5标签的', '2017-07-13 14:05:09', '1');
INSERT INTO `discuss` VALUES ('14', '1', '呵呵哒', '2017-07-13 14:19:12', '1');
INSERT INTO `discuss` VALUES ('15', '1', '呵呵哒', '2017-07-13 14:19:19', '1');
INSERT INTO `discuss` VALUES ('16', '1', 'tml的h1到h5标签的字体', '2017-07-13 14:19:28', '1');
INSERT INTO `discuss` VALUES ('17', '1', 'css中的position的定位，absolute和fixed有什么区别？', '2017-07-13 14:19:37', '1');
INSERT INTO `discuss` VALUES ('18', '1', 'heheda', '2017-07-13 14:24:12', '1');
INSERT INTO `discuss` VALUES ('19', '1', 'heheda', '2017-07-13 14:24:14', '1');
INSERT INTO `discuss` VALUES ('20', '1', 'heheda', '2017-07-13 14:24:18', '1');
INSERT INTO `discuss` VALUES ('21', '1', 'heheda', '2017-07-13 14:24:20', '1');
INSERT INTO `discuss` VALUES ('22', '1', 'heheda', '2017-07-13 14:24:21', '1');
INSERT INTO `discuss` VALUES ('23', '1', 'heheda', '2017-07-13 14:24:28', '1');
INSERT INTO `discuss` VALUES ('24', '1', 'heheda', '2017-07-13 14:24:35', '1');
INSERT INTO `discuss` VALUES ('25', '1', 'heheda', '2017-07-13 14:24:36', '1');
INSERT INTO `discuss` VALUES ('26', '1', 'heheda', '2017-07-13 14:24:38', '1');
INSERT INTO `discuss` VALUES ('27', '1', 'heheda', '2017-07-13 14:24:39', '1');
INSERT INTO `discuss` VALUES ('28', '1', 'heheda', '2017-07-13 14:24:43', '1');
INSERT INTO `discuss` VALUES ('29', '1', 'dasdasd', '2017-07-13 14:27:28', '1');
INSERT INTO `discuss` VALUES ('30', '1', 'dasdasd', '2017-07-13 14:27:31', '1');
INSERT INTO `discuss` VALUES ('31', '1', 'dasdas', '2017-07-13 14:29:22', '1');
INSERT INTO `discuss` VALUES ('32', '1', 'dasdas', '2017-07-13 14:29:25', '1');
INSERT INTO `discuss` VALUES ('33', '1', 'dasdas', '2017-07-13 14:29:27', '1');
INSERT INTO `discuss` VALUES ('34', '1', 'dasdas', '2017-07-13 14:29:33', '1');
INSERT INTO `discuss` VALUES ('35', '1', 'dasdasda', '2017-07-13 14:30:51', '1');
INSERT INTO `discuss` VALUES ('36', '1', 'asdasdasda', '2017-07-13 14:30:54', '1');
INSERT INTO `discuss` VALUES ('37', '1', '是大概是大师傅实打实大，电压是打算打速度爱哦都市睡到大', '2017-07-15 08:58:40', '1');
INSERT INTO `discuss` VALUES ('38', '2017010001', 'html的h1到h5标签的字体大小各是什么呀？', '2017-07-16 20:04:55', '1');
INSERT INTO `discuss` VALUES ('39', '2017010001', 'dasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三', '2017-07-16 20:17:52', '1');
INSERT INTO `discuss` VALUES ('40', '2017010001', 'dasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三', '2017-07-16 20:19:00', '1');
INSERT INTO `discuss` VALUES ('41', '2017010001', 'html的h1到h5标签的字体大小各是什么呀？', '2017-07-16 20:47:40', '1');
INSERT INTO `discuss` VALUES ('42', '2017010001', 'css中的position的定位，absolute和fixed有什么区别？', '2017-07-16 20:48:31', '1');
INSERT INTO `discuss` VALUES ('43', '2017010001', 'da class=\"discuss-content\"sdasdasdadasdadasdassdasdadadasdhasdhasdadlas', '2017-07-16 20:53:47', '1');
INSERT INTO `discuss` VALUES ('44', '2017010001', 'css中的position的定位，absolute和fixed有什么区别？', '2017-07-16 20:55:25', '1');
INSERT INTO `discuss` VALUES ('45', '2017010001', '初识Html5和CSS', '2017-07-17 21:07:11', '1');
INSERT INTO `discuss` VALUES ('46', '2017010001', '这是个测试讨论', '2017-07-23 09:26:21', '1');

-- ----------------------------
-- Table structure for excel
-- ----------------------------
DROP TABLE IF EXISTS `excel`;
CREATE TABLE `excel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `resource_ids` varchar(100) DEFAULT NULL,
  `user_id` varchar(12) DEFAULT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of excel
-- ----------------------------
INSERT INTO `excel` VALUES ('1', '数据库表', '11', 'b7de0634d44a51b3763a2e297d9efa23.xlsx', null, null, '2017-07-20 09:56:53');
INSERT INTO `excel` VALUES ('2', '数据库表', '11', '9920021d6c0ade07c5665b0dd3c8b70f.xlsx', null, null, '2017-07-21 10:51:15');

-- ----------------------------
-- Table structure for last_view_video
-- ----------------------------
DROP TABLE IF EXISTS `last_view_video`;
CREATE TABLE `last_view_video` (
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of last_view_video
-- ----------------------------

-- ----------------------------
-- Table structure for ppt_file
-- ----------------------------
DROP TABLE IF EXISTS `ppt_file`;
CREATE TABLE `ppt_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `page` int(11) DEFAULT NULL COMMENT 'ppt的页数',
  `size` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `resource_ids` varchar(100) DEFAULT NULL,
  `user_id` varchar(12) DEFAULT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ppt_file
-- ----------------------------
INSERT INTO `ppt_file` VALUES ('1', '互连网络-2017', null, '2556', 'd0e37c3ef10023c1add2813abd37340e.pptx', null, null, '2017-07-20 10:04:01');
INSERT INTO `ppt_file` VALUES ('2', '第7章-互连网络', null, '883', '910ca62b803e2559f92692715675675f.ppt', null, null, '2017-07-20 10:04:11');
INSERT INTO `ppt_file` VALUES ('3', 'chap1-系统结构的基本概念', null, '1702', 'a11b396f2660bcee729758cded55dadd.ppt', null, null, '2017-07-22 13:50:52');
INSERT INTO `ppt_file` VALUES ('4', '第7章-互连网络', null, '883', 'f39be00a2385a4a4ced1d0944981b468.ppt', null, null, '2017-07-22 13:52:58');
INSERT INTO `ppt_file` VALUES ('5', '第4章-向量处理机', null, '1847', '149737ec535d603a14df114bc84e4813.ppt', null, null, '2017-07-22 13:52:58');
INSERT INTO `ppt_file` VALUES ('6', '互连网络-2017', null, '2556', 'c534a163a85e62a703f8c43f27b3d456.pptx', null, null, '2017-07-22 13:52:58');
INSERT INTO `ppt_file` VALUES ('7', '第5章--存储层次（带图）-2016-1', null, '3840', '4aae706ab8c55e63846558d4d2161f47.ppt', null, null, '2017-07-22 13:52:58');
INSERT INTO `ppt_file` VALUES ('8', 'chp2 例题', null, '898', '64e629bd8ae6a81eda93816467a32e54.pptx', null, null, '2017-07-22 13:53:24');
INSERT INTO `ppt_file` VALUES ('9', 'chp1 例题', null, '502', '212f73e482b3b878ec97f2e99dc70758.pptx', null, null, '2017-07-22 13:56:54');
INSERT INTO `ppt_file` VALUES ('10', 'Chap6-输入输出系统', null, '2677', 'd0b8b4c6c8c477c1b3a9b298697be5b7.ppt', null, null, '2017-07-22 13:57:14');
INSERT INTO `ppt_file` VALUES ('11', 'chp1 例题', null, '502', 'e505f0b831775afa146055f6c58e4a86.pptx', null, null, '2017-07-22 16:11:48');
INSERT INTO `ppt_file` VALUES ('12', '第7章-互连网络', null, '883', 'e2848cfe5514f0c419763cbe75e9e4b7.ppt', null, null, '2017-07-22 16:12:39');
INSERT INTO `ppt_file` VALUES ('13', '互连网络-2017', null, '2556', '1ab53a1310858d4fb7b7782ca57a9521.pptx', null, null, '2017-07-22 16:13:52');
INSERT INTO `ppt_file` VALUES ('14', '第7章-互连网络', null, '883', '58a7ce6dd751f4b6986a53bdc89b80c4.ppt', null, null, '2017-07-22 16:14:18');
INSERT INTO `ppt_file` VALUES ('15', '第7章-互连网络', null, '883', 'bedd9007993dd53e1241128ce2a073b4.ppt', null, null, '2017-07-22 16:18:30');
INSERT INTO `ppt_file` VALUES ('16', '互连网络-2017', null, '2556', '9bd9777e490bb47d8a7dc846cd6ba191.pptx', null, null, '2017-07-22 16:26:15');
INSERT INTO `ppt_file` VALUES ('17', '第7章-互连网络', null, '883', 'c89a6152fdf1cc21990b52abfb66ec94.ppt', null, null, '2017-07-22 16:26:32');
INSERT INTO `ppt_file` VALUES ('18', 'chap3-流水线技术（带图）', null, '4710', '4afbbca0f88e6c0473b8278ca1e6f251.PPT', null, null, '2017-07-22 16:27:17');
INSERT INTO `ppt_file` VALUES ('19', '第7章-互连网络', null, '883', '67920b2d1a0f36aa2f9ed587307c688d.ppt', null, null, '2017-07-22 16:27:34');
INSERT INTO `ppt_file` VALUES ('20', '互连网络-2017', null, '2556', '80f91df0f3977a86c41412ff3bc5b65d.pptx', null, null, '2017-07-22 16:27:34');
INSERT INTO `ppt_file` VALUES ('21', '第4章-向量处理机', null, '1847', '89ffa3813b5b3a8a64e793f0b1f80896.ppt', null, null, '2017-07-22 16:27:34');
INSERT INTO `ppt_file` VALUES ('22', '第5章--存储层次（带图）-2016-1', null, '3840', 'bd70c6c93560501888f02676ef1574ec.ppt', null, null, '2017-07-22 16:27:34');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(12) NOT NULL,
  `video_id` int(11) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '2', '1', '多实打实大哈傻傻地绿1231', '2017-07-13 16:58:08', '0');
INSERT INTO `question` VALUES ('2', '2', '1', '多哈傻傻地绿', '2017-07-13 16:05:09', '0');
INSERT INTO `question` VALUES ('3', '2', '1', '多哈傻傻地绿大飒飒', '2017-07-13 16:57:59', '0');
INSERT INTO `question` VALUES ('4', '2', '1', '多哈傻大大傻地绿', '2017-07-13 16:57:57', '0');
INSERT INTO `question` VALUES ('5', '2', '1', '多哈132131傻傻地绿', '2017-07-13 16:58:11', '0');
INSERT INTO `question` VALUES ('6', '2', '1', '31313哈傻傻地绿', '2017-07-13 16:58:12', '0');
INSERT INTO `question` VALUES ('7', '2', '1', '多实打实大傻傻地绿', '2017-07-13 16:58:03', '0');
INSERT INTO `question` VALUES ('8', '2', '2', '13131大大傻傻地绿', '2017-07-15 16:59:46', '0');
INSERT INTO `question` VALUES ('9', '2017010001', '1', null, '2017-07-16 08:41:43', '0');
INSERT INTO `question` VALUES ('10', '2017010001', '1', 'css的position属性各有什么区别', '2017-07-16 08:43:05', '0');
INSERT INTO `question` VALUES ('11', '2017010001', '1', 'bsolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 08:44:17', '0');
INSERT INTO `question` VALUES ('12', '2017010001', '1', 'relative 生成相对定位的元素，相对于其正常位置进行定位。 因此，\"left:20\" 会向元素的 LEFT 位置添加 20 像素', '2017-07-16 09:03:31', '0');
INSERT INTO `question` VALUES ('13', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定', '2017-07-16 09:16:47', '0');
INSERT INTO `question` VALUES ('14', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定', '2017-07-16 09:30:54', '0');
INSERT INTO `question` VALUES ('15', '2017010001', '1', 'fixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nrelative 生成相对定位的元素，相对于其正常位置进行定位。 因此，\"left:20\" 会向元素的 LEFT 位置添加 20 像素。', '2017-07-16 09:33:16', '0');
INSERT INTO `question` VALUES ('16', '2017010001', '1', 'fixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 10:06:31', '0');
INSERT INTO `question` VALUES ('17', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 10:07:22', '0');
INSERT INTO `question` VALUES ('18', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 10:09:37', '0');
INSERT INTO `question` VALUES ('19', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定', '2017-07-16 10:20:04', '0');
INSERT INTO `question` VALUES ('20', '2017010001', '1', 'ute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进', '2017-07-16 10:20:39', '0');
INSERT INTO `question` VALUES ('21', '2017010001', '1', 'fixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 10:28:05', '0');
INSERT INTO `question` VALUES ('22', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定', '2017-07-16 10:29:01', '0');
INSERT INTO `question` VALUES ('23', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 10:31:11', '0');
INSERT INTO `question` VALUES ('24', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定', '2017-07-16 10:39:03', '0');
INSERT INTO `question` VALUES ('25', '2017010001', '1', 'fixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定', '2017-07-16 10:41:02', '0');
INSERT INTO `question` VALUES ('26', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 11:01:10', '0');
INSERT INTO `question` VALUES ('27', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 11:04:23', '0');
INSERT INTO `question` VALUES ('28', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定', '2017-07-16 11:16:31', '0');
INSERT INTO `question` VALUES ('29', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 11:17:07', '0');
INSERT INTO `question` VALUES ('30', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 11:18:10', '0');
INSERT INTO `question` VALUES ('31', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 11:30:43', '0');
INSERT INTO `question` VALUES ('32', '2017010001', '1', 'absolute 生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。\n\nfixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 14:20:40', '0');
INSERT INTO `question` VALUES ('33', '2017010001', '1', 'fixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定', '2017-07-16 15:39:22', '0');
INSERT INTO `question` VALUES ('34', '2017010001', '1', 'css的position属性各有什么区别？', '2017-07-16 15:46:32', '0');
INSERT INTO `question` VALUES ('35', '2017010001', '1', 'css的position属性各有什么区别？', '2017-07-16 15:48:07', '0');
INSERT INTO `question` VALUES ('36', '2017010001', '1', 'fixed 生成绝对定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 \"left\", \"top\", \"right\" 以及 \"bottom\" 属性进行规定。', '2017-07-16 15:49:25', '0');
INSERT INTO `question` VALUES ('37', '2017010001', '1', 'css的position属性各有什么区别？', '2017-07-16 16:07:01', '0');
INSERT INTO `question` VALUES ('38', '2017010001', '1', 'css的position属性各有什么区别？', '2017-07-16 16:09:55', '0');
INSERT INTO `question` VALUES ('39', '2017010001', '1', '大会上打哈师大好多号', '2017-07-16 17:08:58', '0');
INSERT INTO `question` VALUES ('40', '2017010001', '1', '这是个测试问题', '2017-07-23 09:09:21', '0');

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_organization_parent_id` (`parent_id`),
  KEY `idx_sys_organization_parent_ids` (`parent_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES ('1', '安卓研发', '0', '0/', '1');
INSERT INTO `sys_organization` VALUES ('2', 'Java开发', '1', '0/1/', '1');
INSERT INTO `sys_organization` VALUES ('3', 'C/C++研发', '1', '0/1/', '1');
INSERT INTO `sys_organization` VALUES ('4', '图像处理', '2', '0/1/2/', '1');
INSERT INTO `sys_organization` VALUES ('5', '图像识别', null, null, '0');
INSERT INTO `sys_organization` VALUES ('6', '视频处理', null, null, '0');
INSERT INTO `sys_organization` VALUES ('7', '光学防抖研究', null, null, '0');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_ids` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids` (`parent_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('1', '资源', 'menu', '', '0', '0/', '', '1');
INSERT INTO `sys_resource` VALUES ('11', '组织机构管理', 'menu', '/organization', '1', '0/1/', 'organization:*', '1');
INSERT INTO `sys_resource` VALUES ('12', '组织机构新增', 'button', '', '11', '0/1/11/', 'organization:create', '1');
INSERT INTO `sys_resource` VALUES ('13', '组织机构修改', 'button', '', '11', '0/1/11/', 'organization:update', '1');
INSERT INTO `sys_resource` VALUES ('14', '组织机构删除', 'button', '', '11', '0/1/11/', 'organization:delete', '1');
INSERT INTO `sys_resource` VALUES ('15', '组织机构查看', 'button', '', '11', '0/1/11/', 'organization:view', '1');
INSERT INTO `sys_resource` VALUES ('21', '用户管理', 'menu', '/user', '1', '0/1/', 'user:*', '1');
INSERT INTO `sys_resource` VALUES ('22', '用户新增', 'button', '', '21', '0/1/21/', 'user:create', '1');
INSERT INTO `sys_resource` VALUES ('23', '用户修改', 'button', '', '21', '0/1/21/', 'user:update', '1');
INSERT INTO `sys_resource` VALUES ('24', '用户删除', 'button', '', '21', '0/1/21/', 'user:delete', '1');
INSERT INTO `sys_resource` VALUES ('25', '用户查看', 'button', '', '21', '0/1/21/', 'user:view', '1');
INSERT INTO `sys_resource` VALUES ('31', '资源管理', 'menu', '/resource', '1', '0/1/', 'resource:*', '1');
INSERT INTO `sys_resource` VALUES ('32', '资源新增', 'button', '', '31', '0/1/31/', 'resource:create', '1');
INSERT INTO `sys_resource` VALUES ('33', '资源修改', 'button', '', '31', '0/1/31/', 'resource:update', '1');
INSERT INTO `sys_resource` VALUES ('34', '资源删除', 'button', '', '31', '0/1/31/', 'resource:delete', '1');
INSERT INTO `sys_resource` VALUES ('35', '资源查看', 'button', '', '31', '0/1/31/', 'resource:view', '1');
INSERT INTO `sys_resource` VALUES ('41', '角色管理', 'menu', '/role', '1', '0/1/', 'role:*', '1');
INSERT INTO `sys_resource` VALUES ('42', '角色新增', 'button', '', '41', '0/1/41/', 'role:create', '1');
INSERT INTO `sys_resource` VALUES ('43', '角色修改', 'button', '', '41', '0/1/41/', 'role:update', '1');
INSERT INTO `sys_resource` VALUES ('44', '角色删除', 'button', '', '41', '0/1/41/', 'role:delete', '1');
INSERT INTO `sys_resource` VALUES ('45', '角色查看', 'button', '', '41', '0/1/41/', 'role:view', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `resource_ids` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_role_resource_ids` (`resource_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', '超级管理员', '11,21,31,', '1');
INSERT INTO `sys_role` VALUES ('2', 'student', '学生列表', '35,', '0');
INSERT INTO `sys_role` VALUES ('3', 'teacher', '二级管理员', '41', '0');
INSERT INTO `sys_role` VALUES ('4', 'teacher', '二级管理员', '11,21,', '0');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(12) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role_ids` varchar(100) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `head_pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_user_username` (`username`),
  KEY `idx_sys_user_organization_id` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', 'admin', 'fcea920f7412b5da7be0cf42b8c93759', '1,2,3,', '0', 'default2.jpg');
INSERT INTO `sys_user` VALUES ('2', '1', 'admin2', 'hdaksdhajkshda', '2,', '0', ' default2.jpg');
INSERT INTO `sys_user` VALUES ('2017010001', '1', '小明', 'fcea920f7412b5da7be0cf42b8c93759', '1,2,3', '0', 'default3.jpg');
INSERT INTO `sys_user` VALUES ('4', '1', 'guest2', '14e1b600b1fd579f47433b88e8d85291', '1,2,', '0', 'default.jpg');
INSERT INTO `sys_user` VALUES ('5', '1', 'xiaohong', 'e10adc3949ba59abbe56e057f20f883e', '1,2,3,', '0', 'default3.jpg');
INSERT INTO `sys_user` VALUES ('6', '1', 'xiaoming', 'e10adc3949ba59abbe56e057f20f883e', '1,2,3,', '0', 'default.jpg');
INSERT INTO `sys_user` VALUES ('8', null, '小刚', 'fcea920f7412b5da7be0cf42b8c93759', null, null, 'default.jpg');

-- ----------------------------
-- Table structure for user_audio
-- ----------------------------
DROP TABLE IF EXISTS `user_audio`;
CREATE TABLE `user_audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(12) DEFAULT NULL,
  `audio_ids` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_audio
-- ----------------------------
INSERT INTO `user_audio` VALUES ('1', '2017010001', '1,2,5,8,9,10,11,12,13');

-- ----------------------------
-- Table structure for user_trace
-- ----------------------------
DROP TABLE IF EXISTS `user_trace`;
CREATE TABLE `user_trace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` int(4) DEFAULT NULL COMMENT '用户访问的文件类型',
  `file_id` int(11) DEFAULT NULL,
  `visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `duration` int(11) NOT NULL COMMENT '停留时间（s）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_trace
-- ----------------------------

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号，自动递增',
  `name` varchar(100) DEFAULT NULL COMMENT '文件名',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `tags` varchar(100) DEFAULT NULL COMMENT '标签',
  `length` int(11) DEFAULT NULL COMMENT '时间长度(s)',
  `size` int(11) DEFAULT NULL COMMENT '文件大小(B)',
  `path` varchar(100) DEFAULT NULL COMMENT '视频保存的路径',
  `user_id` varchar(12) DEFAULT NULL,
  `resource_ids` varchar(100) DEFAULT NULL COMMENT '视频权限集',
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '初识Html5和CSS', null, null, null, null, 'out_meta.flv', null, '', '2017-07-16 21:49:31');
INSERT INTO `video` VALUES ('2', 'out_meta.flv', null, null, null, '281471', '3152c26b0d6967bafdd58525f411ef23.flv', null, null, '2017-07-20 09:29:15');
INSERT INTO `video` VALUES ('3', 'out_meta', null, null, null, '281471', '2dbe5cce202db3cac6cd05f63791ed4d.flv', null, null, '2017-07-20 09:36:42');
INSERT INTO `video` VALUES ('4', 'out_meta', null, null, null, '281471', 'b9bc0f9bedada0095709715f74ae5531.flv', null, null, '2017-07-20 09:39:25');
INSERT INTO `video` VALUES ('5', 'out_meta', null, null, null, '281471', 'a0f3b01cc501002ee6fb04f1210402d3.flv', null, null, '2017-07-20 09:40:16');
INSERT INTO `video` VALUES ('6', 'out_meta', null, null, null, '281471', '17fb1e55a69f04a25ba19899642fc53a.flv', null, null, '2017-07-20 09:40:57');
INSERT INTO `video` VALUES ('7', 'out_meta', null, null, null, '281471', '4eff5ca88c62403544644b79a8ae7f82.flv', null, null, '2017-07-20 09:41:14');
INSERT INTO `video` VALUES ('8', 'out_meta', null, null, null, '281471', '183cfbd5e27535c1f45ace3bb3802109.flv', null, null, '2017-07-20 09:41:50');
INSERT INTO `video` VALUES ('9', 'out_meta', null, null, null, '281471', 'a0379a8156078835bd2a70d1610f7469.flv', null, null, '2017-07-20 09:42:12');
INSERT INTO `video` VALUES ('10', '【绅士动漫网】进击的巨人第二季 04 简体熟肉 更多精彩请关注微信公众号ssdm66', null, null, null, '253649', 'aabbc815a28695be7c3840cc8fb39413.mp4', null, null, '2017-07-21 16:16:40');
INSERT INTO `video` VALUES ('11', '【绅士动漫网】进击的巨人第二季 03 720P简体熟肉 关注微信ssdm66第一时间获取熟肉', null, null, null, '259832', 'acebf841688d9914a863155f78dde289.mp4', null, null, '2017-07-21 16:16:49');
INSERT INTO `video` VALUES ('12', '【绅士动漫网】进击的巨人第二季 02 720P繁体熟肉 关注微信ssdm66第一时间获取熟肉', null, null, null, '280417', '7ec8eb623fc96ee9b3a806f7a27ffc7e.mp4', null, null, '2017-07-21 16:16:53');
