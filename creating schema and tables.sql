CREATE SCHEMA `covid-19` ;

create table person(id_person int primary key, first_name VARCHAR(10) NOT NULL, 
last_name VARCHAR(10) NOT NULL, age VARCHAR(10) NOT NULL,
gender VARCHAR(10) NOT NULL,
birthdate VARCHAR(20) NOT NULL, country VARCHAR(25) NOT NULL, 
city VARCHAR(15) NOT NULL, longitude double, latitude double, 
preConditions VARCHAR(100)
);

create table person_data(id_person int primary key, id_hospital int unique key, 
date_time VARCHAR(20) , symptoms VARCHAR(100)
);

create table hospital_Treatment(id_hospital int unique key, phys_assigned VARCHAR(25) NOT NULL, 
conditions VARCHAR(100), medicine VARCHAR(100), quantity VARCHAR(10) ,
health_care VARCHAR(100)
);







