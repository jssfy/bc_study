
DROP TABLE IF EXISTS `easemob_user`;
CREATE TABLE `easemob_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL COMMENT '对应user表id',
  `mob_id` varchar(64) NOT NULL COMMENT 'hash后的uid, 对应easemob的username',
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `mob_id` (`mob_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `mission` ADD COLUMN `group_id` varchar(32) DEFAULT NULL;
ALTER TABLE `period_mission` ADD COLUMN `group_id` varchar(32) DEFAULT NULL;
