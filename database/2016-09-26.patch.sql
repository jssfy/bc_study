DROP TABLE IF EXISTS `challenge_report`;
CREATE TABLE `challenge_report` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mission_id` bigint(20) unsigned NOT NULL,
  `mission_type` int unsigned NOT NULL,
  `challenge_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `challenge_count` int unsigned NOT NULL,
  `succeed_count` int unsigned NOT NULL,
  `succeed_rate` int unsigned NOT NULL,
  `create_count` int unsigned NOT NULL,
  `reward_amount` int unsigned NOT NULL,
  `like_count` int unsigned NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `poster_template`;
CREATE TABLE `poster_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '海报id',
  `url` varchar(1024) DEFAULT NULL COMMENT '海报url',
  `title` varchar(32) DEFAULT NULL COMMENT '海报标题',
  `status` int(11) DEFAULT '0' COMMENT '海报状态',
  `type` int(11) DEFAULT '0' COMMENT '海报分类',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `poster_template`
(`title`, `url`, `status`, `type`)
VALUES
("默认", "https://qiniu.yqtz8.com/images/2016_09_28_10_29_32_57eb2b0c6d755.jpeg", 2, 0),
("跑步", "https://qiniu.yqtz8.com/images/2016_09_28_10_30_55_57eb2b5f6cf1e.jpeg", 0, 1),
("跑步", "https://qiniu.yqtz8.com/images/2016_09_28_11_15_06_57eb35bae2c3d.jpeg", 2, 1),
("健身", "https://qiniu.yqtz8.com/images/2016_09_28_10_33_31_57eb2bfbd35a6.jpeg", 2, 2),
("健身", "https://qiniu.yqtz8.com/images/2016_09_28_11_14_25_57eb359189663.jpeg", 0, 2),
("读书", "https://qiniu.yqtz8.com/images/2016_09_28_11_11_13_57eb34d172274.jpeg", 2, 3),
("健康", "https://qiniu.yqtz8.com/images/2016_09_28_10_34_07_57eb2c1fbd413.jpeg", 0, 4),
("健康", "https://qiniu.yqtz8.com/images/2016_09_28_11_12_24_57eb3518b7c34.jpeg", 2, 4),
("运动", "https://qiniu.yqtz8.com/images/2016_09_28_10_35_15_57eb2c636913d.jpeg", 2, 5),
("娱乐", "https://qiniu.yqtz8.com/images/2016_09_28_10_34_43_57eb2c430cc34.jpeg", 2, 6),
("学习", "https://qiniu.yqtz8.com/images/2016_09_28_10_32_02_57eb2ba21558a.jpeg", 2, 3),
("学习", "https://qiniu.yqtz8.com/images/2016_09_28_11_13_50_57eb356e90518.jpeg", 0, 7),
("工作", "https://qiniu.yqtz8.com/images/2016_09_28_10_32_43_57eb2bcb90c12.jpeg", 0, 8),
("工作", "https://qiniu.yqtz8.com/images/2016_09_28_11_11_45_57eb34f119021.jpeg", 2, 8);

ALTER TABLE `mission` ADD COLUMN `poster_id` bigint(20) default 1 COMMENT '任务海报id';
ALTER TABLE `mission` ADD COLUMN `poster_url` varchar(1024) default "https://qiniu.yqtz8.com/images/2016_09_28_10_29_32_57eb2b0c6d755.jpeg" COMMENT '任务海报URL';
ALTER TABLE `period_mission` ADD COLUMN `poster_id` bigint(20) default 1  COMMENT '任务海报id';
ALTER TABLE `period_mission` ADD COLUMN `poster_url` varchar(1024)  default "https://qiniu.yqtz8.com/images/2016_09_28_10_29_32_57eb2b0c6d755.jpeg" COMMENT '任务海报URL';
