create database Base;
use base;
create table users_tbl(
user_id int not null primary key auto_increment,
user_firstname VARCHAR(40) not null,
user_lastname VARCHAR(40) not null,
user_email VARCHAR(60) not null,
user_password VARBINARY(256)
);


create table category_tbl(imary key auto_increment, category_name varchar (50) not null);
create table product_tbl(
category_id int not null pr
product_id int not null primary key auto_increment, product_name varchar (50) not null, product_value decimal not null, category_id  int not null);


alter table product_tbl
add constraint category_id
foreign key (category_id)
references category_tbl (category_id);


select * from base;

INSERT INTO Base.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('nombres'), UPPER('apellidos'), 'buzon@correo.com',AES_ENCRYPT
('password', '$2a$12$Jea.ZfUxizSY2/HH9JO7aOVBw2.28uQBWD1C9hk7XAYTiIZx5hDLa'));
INSERT INTO Base.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('Michael'), UPPER('Laiton'), 'LaitonCha1206@gmail.com',AES_ENCRYPT
('Laiton_1243', '$2a$12$Jea.ZfUxizSY2/HH9JO7aOVBw2.28uQBWD1C9hk7XAYTiIZx5hDLa'));

SELECT *, CAST(AES_DECRYPT(user_password, '$2a$12$g0HEU5vxo3x6wkacwb73Ku9eu8d3bzUPjAToK63MLW.KbQR34SrJm')
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 1;           



                                                       