
--  to see the information of all the people from the 3 tables by selecting an id. 
select *
from person,person_data,hospital_treatment
where person.id_person = person_data.id_person
and hospital_treatment.id_hospital = person_data.id_hospital
and person.id_person like "2%"
order by person.first_name;

select *
from person,person_data,hospital_treatment
where person.id_person = person_data.id_person
and hospital_treatment.id_hospital = person_data.id_hospital
order by person.first_name;

-- search by gender
select *
from person,person_data,hospital_treatment
where person.id_person = person_data.id_person
and hospital_treatment.id_hospital = person_data.id_hospital
and person.gender = 'm'
order by person.first_name;

-- checking the people that are in critical condition
select first_name, conditions
from person,person_data,hospital_treatment
where person.id_person = person_data.id_person
and hospital_treatment.id_hospital = person_data.id_hospital
and conditions = 'stable'
order by first_name;


-- checking to check the amount of each people that are in each city
select city, count(city)
from person,person_data,hospital_treatment
where person.id_person = person_data.id_person
and hospital_treatment.id_hospital = person_data.id_hospital
group by city
order by city;

-- Amount cured by country
select country, count(country)
from person,person_data,hospital_treatment
where person.id_person = person_data.id_person
and hospital_treatment.id_hospital = person_data.id_hospital
and conditions = 'Cured'
group by country;

-- people that have a quantity of medicine more than 2
select first_name, medicine
from person,person_data,hospital_treatment
where person.id_person = person_data.id_person
and hospital_treatment.id_hospital = person_data.id_hospital
and quantity > 2


