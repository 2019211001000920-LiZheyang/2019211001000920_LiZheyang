create database userdb;

use userdb
go

create table usertable(
	id int primary key,
	username varchar(50) not null,
	password varchar(50) not null,
	email varchar(50) not null,
	gender varchar(10) not null,
	birthdate date not null
)