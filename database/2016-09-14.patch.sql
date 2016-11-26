ALTER TABLE `challenge_reward` ADD COLUMN `fine` float NOT NULL DEFAULT '0' AFTER `reward`;
ALTER TABLE `challenge_reward` ADD COLUMN `admin_fee` float NOT NULL DEFAULT '0' AFTER `reward_sent`;
