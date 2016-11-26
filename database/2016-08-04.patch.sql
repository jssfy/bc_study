DROP TABLE IF EXISTS `pending_checkin`;
CREATE TABLE `pending_checkin` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `challenge_id` bigint(20) NOT NULL,
  `create_time` timestamp NOT NULL,
  `pic_url` varchar(1024) NOT NULL,
  `media_id` varchar(1024) NOT NULL, 
  `msg_id` varchar(1024) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handler` text NOT NULL,
  `queue` varchar(255) NOT NULL DEFAULT 'default',
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `error` text,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
