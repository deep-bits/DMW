show databases;
use world;
show tables;
select * from countrylanguage;
select * from country where Continent = "Antarctica" && Region = "Antarctica";
select * from country where Population between 0 AND 1000;
Select distinct Continent from country;
select * from country order by Name;
alter table country add Langugage varchar(200);
create table Language1(ID int UNIQUE, Uname varchar(200));
select count(country)



