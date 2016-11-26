DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `obj_id` varchar(50) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `reply_id` bigint(20) unsigned NULL,
  `reply_user_id` bigint(20) unsigned NULL,
  `text` varchar(1500) NOT NULL,
  `image` varchar(1024) NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
