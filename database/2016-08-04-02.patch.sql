
DROP TABLE IF EXISTS `qrcode_general`;
CREATE TABLE `qrcode_general` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(11) NOT NULL,
  `event_key` varchar(72) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `qrcode_ticket`;
CREATE TABLE `qrcode_ticket` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_event_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL COMMENT '0: string, 1: integer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;