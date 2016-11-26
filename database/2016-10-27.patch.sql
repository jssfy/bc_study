ALTER TABLE `phone_account` ADD COLUMN `info_updated` boolean NULL DEFAULT false;

DROP TABLE IF EXISTS `app_message_job`;
CREATE TABLE `app_message_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_id` bigint(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
