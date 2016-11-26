DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `access_token` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_in` int(11) NOT NULL,
  `updated_at` timestamp NULL ON UPDATE CURRENT_TIMESTAMP,
  `expire_time` timestamp NOT NULL,
  `refresh_time` timestamp NOT NULL,
  `refreshing` boolean NULL DEFAULT false,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `mp_message`;
CREATE TABLE `mp_message` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_type` int NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
