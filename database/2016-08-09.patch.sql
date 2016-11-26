
alter table `mission` add column `checkin_unlike_invalid` int(11) default 50 comment "打卡被踩无效数";
alter table `mission` add column `checkin_like_valid` int(11) default 0 comment "打卡被赞有效数";
