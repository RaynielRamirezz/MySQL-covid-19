-- drop index idx_name on person;
create index idx_name on person(first_name,last_name);

create index idx_health_care on hospital_treatment(health_care);


-- Person1
insert into person values(2345,'John','Rincon',20,'M','11/22/1999','Puerto Rico','Bayamon',null,null,'cancer');
insert into person_data values(2345,6789,'5/30/2020 11:57:32','Dizzy');
insert into hospital_treatment values(6789,'Dr. Fuentes','Critical','Panadol',2,'MCM');

-- Person2
insert into person values(4556,'Jesica','Maldonado',33,'F','10/2/1987','Puerto Rico','Carolina',null,null,'asma');
insert into person_data values(4556,0753,'6/23/2020 2:42:43','Weekness');
insert into hospital_treatment values(0753,'Dr. Santana','Stable','Advil',7,'MCC');

-- Person3
insert into person values(8648,'Dennys','Rodriguez',16,'M','05/24/2004','Puerto Rico','Orocovis',null,null,'reflujo');
insert into person_data values(8648,0765,'05/16/2020 7:45:12','Dizzy');
insert into hospital_treatment values(0765,'Dr. Santana','Cured','Panadol',4,'MCM');

-- Person4
insert into person values(8735,'Jeff','Yariel',46,'M','01/13/1974','Puerto Rico','Bayamon',null,null,'HIV');
insert into person_data values(8735,8746,'09/04/2020 01:57:32','Dizzy');
insert into hospital_treatment values(8746,'Dr. Fuentes','Critical','Advil',2,'MMM');

-- Person5
insert into person values(9376,'Abdiel','Sanchez',29,'M','07/28/1991','Puerto Rico','Bayamon',null,null,'asma');
insert into person_data values(9376,6666,'09/08/2020 06:42:19','Weekness');
insert into hospital_treatment values(6666,'Dr. Fuentes','Stable','Venadrill',1,'CCM');


-- DELETE FROM hospital_treatment WHERE id_hospital =234;