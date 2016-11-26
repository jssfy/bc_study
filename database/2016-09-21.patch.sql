alter table `checkin` add column `user_id` bigint(20) after `challenge_id`;
alter table `checkin` add column `mission_type` int after `challenge_id`;
alter table `checkin` add column `mission_id` bigint(20) after `challenge_id`;
update `checkin` ,`challenge` set checkin.mission_id=challenge.mission_id, checkin.mission_type=challenge.mission_type, checkin.user_id=challenge.user_id where checkin.challenge_id=challenge.id;
