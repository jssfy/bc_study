ALTER TABLE `chat_group` ADD COLUMN `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE `chat_group` ADD COLUMN `deleted` boolean NULL DEFAULT false;
UPDATE `chat_group` set `updated` = NOW();
ALTER TABLE `account` DROP INDEX `phone_index`;
