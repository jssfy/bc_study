
DROP TABLE IF EXISTS `hot_official`;
CREATE TABLE `hot_official` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(45) NOT NULL COMMENT '挑战名称',
  `mission_type` int(11) NOT NULL COMMENT '挑战类别',
  `position` tinyint(1) NOT NULL COMMENT '位置',
  `mission_id` bigint(20) NOT NULL,
  `challenge_id` bigint(20) NOT NULL,
  `photo` varchar(1024) DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;