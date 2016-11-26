ALTER TABLE `mission` ADD COLUMN `reward_calc_type` TINYINT(1) NOT NULL DEFAULT '0' AFTER `checkin_photo`;
ALTER TABLE `period_mission` ADD COLUMN `reward_calc_type` TINYINT(1) NOT NULL DEFAULT '0' AFTER `checkin_photo`;
