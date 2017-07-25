create table `type`(
`id` INT(11) not null AUTO_INCREMENT COMMENT '主键id',
`name` VARCHAR(50) CHARACTER SET utf8 not null COMMENT '课程大类',
`memo` VARCHAR(50) CHARACTER SET utf8 not null COMMENT '备注',
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

create table `course`(
 `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
 `name` VARCHAR(50) CHARACTER  SET utf8 NOT NULL COMMENT '课程名称',
 `starttime` datetime DEFAULT NULL COMMENT '开课时间',
`content` VARCHAR (255) CHARACTER  SET utf8 DEFAULT NULL COMMENT '课程内容',
`type_id` int(11) NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `banner`(
`id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
 `name` VARCHAR (50) CHARACTER  SET utf8 DEFAULT NULL COMMENT '轮播图',
 `imgurl` VARCHAR (50) NOT NULL COMMENT '图片url',
 PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `activity_img`(
`id` int(11) NOT NULL AUTO_INCREMENT,
 `name` VARCHAR (50) CHARACTER  SET utf8 DEFAULT NULL COMMENT '学校活动相册',
 `imgurl` VARCHAR (50) NOT NULL COMMENT '活动图url',
 PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `about`(
`id` int(11) NOT NULL AUTO_INCREMENT,
`introduce` VARCHAR (255) CHARACTER SET utf8 DEFAULT NULL COMMENT '学校简介',
`phone` VARCHAR (20) NOT NULL COMMENT '联系电话',
`email` VARCHAR (20) NOT NULL COMMENT '邮箱',
`address` VARCHAR (50) CHARACTER SET utf8 NOT NULL COMMENT '学校地址',
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
