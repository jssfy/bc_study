
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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `deleted` BIT DEFAULT 0,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=250207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
