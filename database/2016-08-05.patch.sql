DROP TABLE IF EXISTS `mission_notify`;
CREATE TABLE `mission_notify` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mission_id` bigint(20) NOT NULL,
  `mission_status` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
