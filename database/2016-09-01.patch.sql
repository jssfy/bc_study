ALTER TABLE `user` ADD COLUMN `invite_mode` TINYINT(1) NOT NULL DEFAULT '0' AFTER `invite_time`;
ALTER TABLE `challenge_reward` ADD COLUMN reward_sent INT NULL DEFAULT 0;
ALTER TABLE `challenge_reward` MODIFY COLUMN `bill_number` VARCHAR(2048);
