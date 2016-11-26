ALTER TABLE `account` ADD COLUMN `app_open_id` varchar(50) NULL DEFAULT NULL AFTER `open_id`;
ALTER TABLE `account` MODIFY COLUMN `open_id` varchar(50) NULL DEFAULT NULL;

DROP TABLE IF EXISTS `phone_account`;
CREATE TABLE `phone_account` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `channel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `phone_index` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `user` ADD COLUMN `phone_account_id` bigint(20) unsigned NULL AFTER `account_id`;

DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `identity` varchar(20) NOT NULL DEFAULT '' COMMENT '跟短信绑定的身份识别码，可以是phone，userid，身份证号等',
    `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
    `type` int(11) DEFAULT '0' COMMENT '验证码类型，比如注册，购买支付等',
    `state` int(11) DEFAULT '0' COMMENT '0:unused 1:used',
    `create_time` bigint(20) DEFAULT NULL COMMENT '生成时间',
    `expire_time` bigint(20) DEFAULT NULL COMMENT '过期时间',
    `use_time` bigint(20) DEFAULT NULL COMMENT '使用时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `charge`;
CREATE TABLE `charge` (
    `id` varchar(30) NOT NULL,
    `user_id` bigint(20) NOT NULL,
    `mission_id` bigint(20) NOT NULL,
    `mission_type` int NOT NULL,
    `order_type` int NOT NULL,
    `livemode` boolean NOT NULL,
    `paid` boolean NULL DEFAULT FALSE,
    `app_id` varchar(20) NOT NULL,
    `channel` varchar(10) NOT NULL,
    `order_no` varchar(100) NOT NULL,
    `client_ip` varchar(15) NOT NULL,
    `amount` integer NOT NULL,
    `amount_settle` integer NULL DEFAULT 0,
    `currency` varchar(5) NOT NULL,
    `subject` varchar(100) NOT NULL,
    `body` varchar(500) NOT NULL,
    `extra` text NOT NULL,
    `created` datetime NULL DEFAULT NULL,
    `time_paid` datetime NULL DEFAULT NULL,
    `time_expired` datetime NULL DEFAULT NULL,
    `transaction_no` varchar(100) NULL DEFAULT "",
    `failure_msg` varchar(100) NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
    `id` varchar(30) NOT NULL,
    `user_id` bigint(20) NOT NULL,
    `mission_id` bigint(20) NOT NULL,
    `mission_type` int NOT NULL,
    `livemode` boolean NOT NULL,
    `app_id` varchar(20) NOT NULL,
    `channel` varchar(10) NOT NULL,
    `order_no` varchar(100) NOT NULL,
    `client_ip` varchar(15) NOT NULL,
    `description` text NOT NULL,
    `status` varchar(10) NULL DEFAULT "",
    `amount` integer NOT NULL,
    `amount_settle` integer NULL DEFAULT 0,
    `currency` varchar(5) NOT NULL,
    `recipient` varchar(50) NOT NULL,
    `extra` text NOT NULL,
    `created` datetime NULL DEFAULT NULL,
    `time_transferred` datetime NULL DEFAULT NULL,
    `transaction_no` varchar(100) NULL DEFAULT "",
    `failure_msg` varchar(100) NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
