
alter table `mission` add column `user_recommend_count` int DEFAULT 0 COMMENT "用户推荐票数";
alter table `mission` add column `offical_recommend_time` datetime DEFAULT NULL COMMENT "官方推荐时间";
alter table `period_mission` add column `user_recommend_count` int DEFAULT 0 COMMENT "用户推荐票数";
alter table `period_mission` add column `offical_recommend_time` datetime DEFAULT NULL COMMENT "官方推荐时间";

