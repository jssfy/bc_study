
ALTER TABLE `card_base` ADD COLUMN description VARCHAR(100) NOT NULL DEFAULT "";
ALTER TABLE `card_base` ADD COLUMN mission_type tinyint(1) NOT NULL DEFAULT '0';
ALTER TABLE `card_base` ADD COLUMN user_id bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID';
ALTER TABLE `card_weekly_report` ADD COLUMN mission_id bigint(20) NOT NULL COMMENT '挑战ID';
ALTER TABLE `card_weekly_report` CHANGE COLUMN winners winners varchar(3000) DEFAULT '';

ALTER TABLE `new_message` CHANGE COLUMN user_id owner_id bigint(20) NOT NULL DEFAULT '0' COMMENT '消息拥有用户ID';
ALTER TABLE `new_message` ADD COLUMN initiator_id bigint(20) NOT NULL DEFAULT '0' COMMENT '消息生成用户ID';
ALTER TABLE `new_message` ADD COLUMN mission_type tinyint(1) NOT NULL DEFAULT '0';
ALTER TABLE `new_message` ADD COLUMN mission_id bigint(20) NOT NULL COMMENT '挑战ID';