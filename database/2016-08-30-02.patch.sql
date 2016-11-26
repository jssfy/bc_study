
alter table `user` add column `invite_time` datetime COMMENT '邀请时间';
alter table `backup_subscription` add column `invite_time` datetime COMMENT '邀请时间';