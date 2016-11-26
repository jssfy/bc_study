alter table `challenge_reward` add column `status` int NOT NULL default 0;
alter table `challenge_reward` add column `user_id` bigint(20) NOT NULL default 0;
alter table `challenge_reward` add column `send_time` datetime NOT NULL;
alter table `challenge_reward` add column `recv_time` datetime NOT NULL;
