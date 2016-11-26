
DROP TABLE IF EXISTS `motion_step`;
CREATE TABLE `motion_step` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `move_id` varchar(128) NOT NULL,
  `step` bigint(20) DEFAULT 0,
  `date` datetime NOT NULL COMMENT 'start time',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `move_id` (`move_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `motion_run`;
CREATE TABLE `motion_run` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `move_id` varchar(128) NOT NULL,
  `distance` bigint(16) DEFAULT 0 COMMENT 'in km',
  `duration` bigint(32) DEFAULT 0 COMMENT 'in second',
  `date` datetime NOT NULL COMMENT 'start time',
  `calories` bigint(16) DEFAULT 0 COMMENT 'in Kcal',
  `speed` decimal DEFAULT 0 COMMENT 'in min/km',
  `path` text COMMENT 'path points, json content',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `move_id` (`move_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
