
alter table `account` add column subscribed int(11) not null default -1 COMMENT '0: false, 1: true, -1: unknown';