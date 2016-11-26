DROP TABLE IF EXISTS `backup_subscription`;
CREATE TABLE `backup_subscription` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `open_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inviter_id` bigint(20) unsigned NOT NULL default 0 COMMENT '0: unknown',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

alter table `user` add column inviter_id bigint(20) not null default 0 COMMENT '0: unknown';
ALTER TABLE `mission` CHANGE `name` `name` varchar(200) default NULL comment "挑战名称";
