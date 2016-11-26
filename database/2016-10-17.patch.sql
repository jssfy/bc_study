
DROP TABLE IF EXISTS `authorize_code`;
CREATE TABLE `authorize_code` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `type` bigint(20) DEFAULT "0" COMMENT '授权码类型',
    `object_id` bigint(20) NOT NULL COMMENT '授权对象ID',
    `invitor_id` bigint(20) DEFAULT NULL COMMENT '邀请人ID',
    `user_id` bigint(20) NOT NULL COMMENT '授权人ID',
    `expire_time` timestamp NULL COMMENT '过期时间',
    `code` varchar(64) NOT NULL COMMENT '授权码',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE `code_user` (`code`, `user_id`),
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COMMENT='授权码';
