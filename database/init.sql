
DROP TABLE IF EXISTS `account_token`;
CREATE TABLE `account_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `token` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os_version` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extend` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_ip` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` bit(1) DEFAULT b'0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `open_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `union_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) DEFAULT '0' COMMENT '1: 男, 2: 女',
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `privilege` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `interest` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_index` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(10) DEFAULT NULL COMMENT '账号类型',
  `account_id` bigint(20) DEFAULT '-1' COMMENT '账户ID',
  `nickname` varchar(45) DEFAULT NULL COMMENT '昵称',
  `username` varchar(45) NOT NULL COMMENT '用户名称',
  `passwd` varchar(45) DEFAULT NULL COMMENT '密码',
  `head_img` varchar(1024) DEFAULT NULL COMMENT '头像',
  `gender` int(11) NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `regist_time` datetime DEFAULT NULL COMMENT '注册时间',
  `announce` varchar(45) DEFAULT NULL COMMENT '个性签名',
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='用户基本信息';

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='任务模板，用于生成具体任务';

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
  `end_time` datetime DEFAULT NULL COMMENT '完结时间',
  `ticket` float DEFAULT '0',
  `ticket_unit` varchar(45) DEFAULT NULL,
  `joined_count` int(11) DEFAULT '0' COMMENT '参与人数',
  `max_user` int(11) NOT NULL DEFAULT '100',
  `min_user` int(11) NOT NULL DEFAULT '1',
  `status` int(11) DEFAULT '0' COMMENT '任务状态',
  `checkin_type` int(11) DEFAULT '0' COMMENT '打卡类型',
  `checkin_min_count` int(11) NOT NULL DEFAULT '1' COMMENT '最少打卡次数',
  `reward_total` float DEFAULT '0' COMMENT '总奖金池',
  `reward_send` float NOT NULL DEFAULT '0' COMMENT '已发送红包总额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='具体挑战';

DROP TABLE IF EXISTS `challenge`;
CREATE TABLE `challenge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mission_id` bigint(20) NOT NULL COMMENT '挑战ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `regist_time` datetime DEFAULT NULL COMMENT '参加时间',
  `status` int(11) DEFAULT '0',
  `checkin_valid` int(11) DEFAULT NULL COMMENT '有效打卡次数',
  `checkin_invalid` int(11) DEFAULT NULL COMMENT '无效打卡次数',
  `checkin_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='用户参与挑战列表';

DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `challenge_id` bigint(20) NOT NULL COMMENT '挑战ID',
  `text` varchar(45) DEFAULT NULL COMMENT '文字',
  `picture` varchar(45) DEFAULT NULL COMMENT '图片',
  `video` varchar(45) DEFAULT NULL COMMENT '视频',
  `like_count` int(11) DEFAULT NULL COMMENT '赞数',
  `unlike_count` int(11) DEFAULT NULL COMMENT '踩数',
  `comment_count` int(11) DEFAULT NULL COMMENT '评论数',
  `checkin_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='打卡记录';

DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mission_id` bigint(20) NOT NULL COMMENT '所属挑战ID',
  `user_id` bigint(20) NOT NULL,
  `money` int(11) NOT NULL,
  `money_unit` varchar(45) NOT NULL DEFAULT '元',
  `status` int(11) DEFAULT NULL COMMENT '红包状态',
  `send_time` datetime NOT NULL COMMENT '发放时间',
  `recv_time` datetime NOT NULL COMMENT '领取时间',
  `out_time` datetime NOT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COMMENT='红包';

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `checkin_id` bigint(20) NOT NULL COMMENT '所属打卡',
  `creator_id` bigint(20) NOT NULL COMMENT '创建用户',
  `create_time` datetime DEFAULT NULL,
  `reply_id` bigint(20) DEFAULT NULL,
  `content` varchar(600) DEFAULT NULL,
  `vote` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论列表';

DROP TABLE IF EXISTS `invite`;
CREATE TABLE `invite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mission_id` bigint(20) NOT NULL COMMENT '任务ID',
  `invitor_id` bigint(20) NOT NULL COMMENT '邀请者ID',
  `user_id` bigint(20) NOT NULL COMMENT '被邀请者ID',
  `invite_time` date NOT NULL COMMENT '邀请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='邀请';
