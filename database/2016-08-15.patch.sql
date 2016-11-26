DROP TABLE IF EXISTS `period_mission`;
CREATE TABLE `period_mission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `announce` varchar(200) NULL DEFAULT "",
  `description` varchar(200) NULL DEFAULT "",
  `checkin_type` int NULL DEFAULT 0,
  `repeat` int NOT NULL,
  `period` int NOT NULL,
  `min_unit` int NOT NULL,
  `checkin_time` varchar(50) NULL DEFAULT "",
  `checkin_count` int NULL DEFAULT 0,
  `start_time` datetime NOT NULL,
  `join_after_start` boolean NULL DEFAULT true,
  `join_strategy` int NULL DEFAULT 0,
  `ticket` float NOT NULL,
  `min_user` int NULL DEFAULT 1,
  `max_user` int NULL DEFAULT 50,
  `template_id` int NOT NULL,
  `checkin_unlike_invalid` int NULL DEFAULT 50,
  `checkin_like_valid` int NULL DEFAULT 0,
  `creator_id` int NOT NULL,
  `create_time` datetime NOT NULL,
  `joined_count` int NULL DEFAULT 0,
  `reward_total` float NULL DEFAULT 0,
  `reward_send` float NULL DEFAULT 0,
  `checkin_photo` varchar(10240) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `period_template`;
CREATE TABLE `period_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `period` int NOT NULL,
  `min_unit` int NOT NULL,
  `checkin_time` varchar(50) NULL DEFAULT "",
  `checkin_count` int NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `challenge` ADD COLUMN `mission_type` INT NOT NULL DEFAULT 0;

INSERT INTO `period_template`(`name`,`period`,`min_unit`,`checkin_time`,`checkin_count`) VALUES("每周挑战",7,1,"",1);
