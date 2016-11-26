ALTER TABLE `reward` ADD COLUMN `mission_type` INT NOT NULL DEFAULT 0;

DROP TABLE IF EXISTS `challenge_reward`;
CREATE TABLE `challenge_reward` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `challenge_id` bigint(20) NOT NULL,
  `mission_id` bigint(20) NOT NULL,
  `mission_type` bigint(20) NOT NULL,
  `round` int NULL DEFAULT 0,
  `reward` float NOT NULL,
  `tip` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
