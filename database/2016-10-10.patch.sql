
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mission_id` bigint(20) unsigned NOT NULL COMMENT '挑战任务ID',
  `mission_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '挑战类型',
  `text` varchar(1024)  COMMENT '公告内容',
  `image` varchar(10240)  COMMENT '公告图片',
  `editor_id` bigint(20) unsigned NOT NULL COMMENT '发布者ID',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
