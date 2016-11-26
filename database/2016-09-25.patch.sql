alter table period_mission add column `checkin_stop_time_point` varchar(32) default "00:00:00" not null after `start_time`;
alter table period_mission add column `checkin_review_time_long` varchar(32) default "10 minutes" not null after `start_time`;
