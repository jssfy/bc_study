
DROP TABLE IF EXISTS `card_base`;
CREATE TABLE `card_base` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `obj_id` bigint(20) unsigned NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL COMMENT '卡片标题',
  `mission_id` bigint(20) NOT NULL COMMENT '挑战ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `card_weekly_report`;
CREATE TABLE `card_weekly_report` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time_text` varchar(45) DEFAULT NULL,
  `round` int(11) NOT NULL DEFAULT '1',
  `joined_count` int(11) NOT NULL DEFAULT '1',
  `checked_user_count` int(11) NOT NULL DEFAULT '0',
  `succeeded_user_count` int(11) NOT NULL DEFAULT '0',
  `success_rate` tinyint(1) NOT NULL DEFAULT '0',
  `winners` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `new_message`;
CREATE TABLE `new_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL,
  `checkin_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;