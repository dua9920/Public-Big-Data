create table jsman.user (
	id int not null  primary key,
	email char(50) not null,
	name char(50) not null,
	pw char(50) not null
);

select * from jsman.user;