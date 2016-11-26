alter table `reward` add column `bill_number` varchar(50) null default "" comment "发送红包的订单号";
alter table `user` add column `balance` int(11) default 0 comment "用户账户余额";
