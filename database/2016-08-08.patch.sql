

alter table `mission` change `name` `name` varchar(64) default NULL comment "挑战名称";
alter table `mission` change `announce` `announce` varchar(64) default NULL comment "挑战宣言";
alter table `mission` change `declare` `declare` varchar(1024) default NULL comment "挑战说明";
alter table `mission` change `description` `description` varchar(1024) default NULL comment "挑战描述";
