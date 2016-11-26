
DROP TABLE IF EXISTS `card_jobs`;
CREATE TABLE `card_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_type` tinyint(1) NOT NULL DEFAULT '0',
  `obj_id` bigint(20) unsigned NOT NULL,
  `round` int unsigned NOT NULL,
  `mission_type` tinyint(1) NOT NULL DEFAULT '0',
  `event_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `card_base` ADD COLUMN `update_time` datetime DEFAULT NULL;