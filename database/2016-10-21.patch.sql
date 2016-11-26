ALTER TABLE `checkin` ADD COLUMN `move_id` varchar(128) NULL DEFAULT NULL;
ALTER TABLE `checkin` ADD COLUMN `move_img` varchar(1024) NULL DEFAULT NULL;

ALTER TABLE `user` ADD COLUMN `mob_id` varchar(64) NOT NULL DEFAULT "";
ALTER TABLE `user` ADD COLUMN `mob_password` varchar(64) NOT NULL DEFAULT "";

DROP TABLE IF EXISTS `chat_group`;
CREATE TABLE `chat_group` (
    `id` varchar(32) NOT NULL,
    `name` varchar(200) NOT NULL,
    `description` varchar(500) NULL,
    `owner` bigint(20) NOT NULL,
    `avatar` varchar(1024) NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `group_id` varchar(32) NOT NULL,
    `user_id` bigint(20) NOT NULL,
    `is_owner` boolean NULL DEFAULT false,
    `join_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE `group_user` (`group_id`, `user_id`),
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
