DROP TABLE IF EXISTS `common_template`;
CREATE TABLE `common_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(45) NOT NULL COMMENT '挑战名称',
  `type` int(11) NOT NULL COMMENT '挑战类别',
  `description` varchar(45) DEFAULT NULL COMMENT '描述',
  `announce` varchar(45) DEFAULT NULL COMMENT '挑战宣言',
  `detail` varchar(45) DEFAULT NULL COMMENT '详情',
  `used_count` int(11) NOT NULL DEFAULT '0' COMMENT '使用次数',
  `poster_url` varchar(45) DEFAULT NULL COMMENT '海报',
  `ticket` float NOT NULL DEFAULT '0',
  `ticket_unit` varchar(45) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `period` int(11) NOT NULL DEFAULT '1' COMMENT '挑战每轮长度',
  `repeat` int(11) NOT NULL DEFAULT '1' COMMENT '挑战轮数',
  `min_unit` int NOT NULL DEFAULT '1',
  `checkin_time` varchar(50) NULL DEFAULT "",
  `checkin_count` int NULL DEFAULT 0,
  `checkin_photo` varchar(1024) DEFAULT NULL COMMENT '打卡示例图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='任务模板，用于生成具体任务';

INSERT INTO `common_template`
(`name`,`type`,`description`,`announce`,`detail`,`used_count`,`poster_url`,`ticket`,`ticket_unit`,`state`)
VALUES
("默认",0,"描述","说说你的挑战宣言吧","详情",0,"",1000,"yuan", 0),
("早起",0,"描述","明天一定要早起","详情",0,"",1000,"yuan", 0),
("开会",0,"描述","不要迟到","详情",0,"",1000,"yuan", 0),
("跑步",0,"描述","一起跑步吧","详情",0,"",500,"yuan", 0),
("废弃挑战",0,"描述","不用的挑战","详情",0,"",300,"yuan", 1);

INSERT INTO `common_template`
(`name`,`type`,`description`,`announce`,`detail`,`used_count`,`poster_url`,`ticket`,`ticket_unit`,`period`,`min_unit`,`checkin_time`,`checkin_count`)
VALUES
("每周默认",1,"描述","说说你的挑战宣言吧","详情",0,"",1000,"yuan", 7,1,"",3),
("每周早起",1,"描述","每周都要早起","详情",0,"",100,"yuan", 7,1,"",3),
("每周开会",1,"描述","每周都不要迟到","详情",0,"",200,"yuan", 7,1,"",5),
("每周跑步",1,"描述","每周都一起跑步吧","详情",0,"",500,"yuan", 7,1,"",1);

alter table `challenge` add column `inviter_id` bigint(20) default 0 comment '挑战邀请人';
alter table `mission` add column `privacy` int default 1 comment '隐私';
alter table `period_mission` add column `privacy` int default 1 comment '隐私';

DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE `sponsor` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL COMMENT '赞助者ID',
  `mission_id` bigint(20) unsigned NOT NULL COMMENT '挑战任务ID',
  `mission_type` tinyint(1) NOT NULL COMMENT '挑战类型',
  `round` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '轮数',
  `money` float NOT NULL DEFAULT '0' COMMENT '赞助金',
  `desc` varchar(1024)  COMMENT '赞助描述',
  `order_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
