
DROP TABLE IF EXISTS `mission_tmpl`;
CREATE TABLE `mission_tmpl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(45) NOT NULL COMMENT '挑战名称',
  `type` int(11) NOT NULL COMMENT '挑战类别',
  `desp` varchar(45) DEFAULT NULL COMMENT '描述',
  `announce` varchar(45) DEFAULT NULL COMMENT '挑战宣言',
  `detail` varchar(45) DEFAULT NULL COMMENT '详情',
  `used_count` int(11) NOT NULL DEFAULT '0' COMMENT '使用次数',
  `poster_url` varchar(45) DEFAULT NULL COMMENT '海报',
  `ticket` float NOT NULL DEFAULT '0',
  `ticket_unit` varchar(45) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='任务模板，用于生成具体任务';
INSERT INTO `mission_tmpl`
(`name`,`type`,`desp`,`announce`,`detail`,`used_count`,`poster_url`,`ticket`,`ticket_unit`,`state`)
VALUES
("早起",0,"描述","明天一定要早起","详情",0,"",1,"yuan", 0),
("开会",0,"描述","不要迟到","详情",0,"",2,"yuan", 0),
("跑步",0,"描述","一起跑步吧","详情",0,"",3,"yuan", 0),
("废弃挑战",0,"描述","不用的挑战","详情",0,"",3,"yuan", 1);

DROP TABLE IF EXISTS `mission`;
CREATE TABLE `mission` (
      `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '具体挑战项目ID',
      `tmpl_id` bigint(20) DEFAULT '0' COMMENT '挑战模板ID',
      `name` varchar(45) NOT NULL COMMENT '挑战名称',
      `announce` varchar(45) DEFAULT NULL COMMENT '挑战宣言',
      `declare` varchar(45) DEFAULT NULL COMMENT '挑战说明',
      `description` varchar(45) DEFAULT NULL COMMENT '详细描述',
      `creator_id` bigint(20) NOT NULL COMMENT '创建者ID',
      `create_time` datetime NOT NULL COMMENT '创建时间',
      `start_time` datetime NOT NULL COMMENT '开始时间',
      `stop_time` datetime NOT NULL COMMENT '结束时间',
      `end_time` datetime DEFAULT NULL COMMENT '终止时间',
      `ticket` float DEFAULT '1' COMMENT '承诺金',
      `ticket_unit` varchar(45) DEFAULT NULL COMMENT 'yuan',
      `joined_count` int(11) DEFAULT '0' COMMENT '参与人数',
      `max_user` int(11) NOT NULL DEFAULT '100' COMMENT '最多参与人数',
      `min_user` int(11) NOT NULL DEFAULT '1' COMMENT '最少参与人数',
      `status` int(11) DEFAULT '0' COMMENT '任务状态',
      `checkin_type` int(11) DEFAULT '0' COMMENT '打卡类型',
      `checkin_min_count` int(11) NOT NULL DEFAULT '1' COMMENT '最少打卡次数',
      `reward_total` float DEFAULT '0' COMMENT '总奖金池',
      `reward_send` float NOT NULL DEFAULT '0' COMMENT '已发送红包总额',
      `checkin_photo` varchar(1024) DEFAULT NULL COMMENT '打卡示例图片',
      `checkin_mode` int(11) DEFAULT '0' COMMENT '打卡模式',
      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='具体挑战';

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
      `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
      `type` int(11) DEFAULT NULL COMMENT '订单类型',
      `state` int(11) DEFAULT NULL COMMENT '订单状态',
      `obj_id` bigint(20) DEFAULT NULL COMMENT '订单对象ID',
      `uid` bigint(20) DEFAULT NULL COMMENT '订单发起人ID',
      `create_at` timestamp NULL DEFAULT NULL,
      `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
      `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='订单';

DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin` (
      `id` bigint(20) NOT NULL AUTO_INCREMENT,
      `challenge_id` bigint(20) NOT NULL COMMENT '挑战ID',
      `photo` varchar(10240) DEFAULT NULL COMMENT '图片',
      `like_count` int(11) DEFAULT NULL COMMENT '赞数',
      `unlike_count` int(11) DEFAULT NULL COMMENT '踩数',
      `comment_count` int(11) DEFAULT NULL COMMENT '评论数',
      `checkin_time` timestamp DEFAULT CURRENT_TIMESTAMP COMMENT '打卡时间',
      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='打卡记录';

DROP TABLE IF EXISTS `checkin_vote`;
CREATE TABLE `checkin_vote` (
      `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '投票ID',
      `checkin_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '打卡ID',
      `opt` int(11) NOT NULL DEFAULT '0' COMMENT '投票操作',
      `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '投票时间',
      `user_id` bigint(20) NOT NULL COMMENT '用户ID',
      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='打卡投票';
