drop schema if exists MorvelHRM;
create schema MorvelHRM;

create table MorvelHRM.COUNTRY_SERVING(
  country_ID integer(3),
  name varchar(30),
  num_cities integer(2),
  primary key (country_ID)
);

create table MorvelHRM.CITY(
  city_ID integer(3),
  city_name char(15),
  country_ID integer(3)
);

create table MorvelHRM.COO(
OBKey integer(3),
name varchar(25),
primary key(OBKey)
);

Create table MorvelHRM.DEPARTMENT(
  department_ID integer(3),
  city_ID integer(3),
  department_name varchar(25),
  manager_ID integer(3),
  primary key (department_ID)
);

create table MorvelHRM.OPERATIONAL_MANAGER(
manager_ID integer(3),
manager_name varchar(25),
dob varchar(12),
sex char(1),
salary integer(7),
contact_num integer(7),
department_ID integer(3),
primary key(manager_ID)
);

create table MorvelHRM.OFFICE(
city_ID integer(3) unique,
manager_ID integer(3) unique,
address varchar(50) unique,
num_rooms integer(2)
);


create table MorvelHRM.REGIONAL_MANAGER(
manager_ID integer(3),
manager_name varchar(25),
dob varchar(12),
sex char(1),
salary integer(7),
contact_num integer(7),
city_ID integer(3),
office_address varchar(50),
COOKey integer(3),
primary key(manager_ID)
);


create table MorvelHRM.EMPLOYEE(
employee_ID integer(3),
employee_name varchar(25),
sex char(1),
years_worked integer(2),
position varchar(20),
contact_num integer(7),
department_ID integer(3)
);

create table MorvelHRM.EMPLOYEE_PAY(
position varchar(20),
salary integer(7),
primary key (position)
);

create table MorvelHRM.DEPENDENT(
  employee_ID integer(3) unique,
  dependent_name varchar(25) unique,
  relationship varchar(15)
);

create table MorvelHRM.SUPERVISION(
supervisor_ID integer(3),
supervisee_ID integer(3)
);

alter table MorvelHRM.EMPLOYEE
add constraint epk primary key(employee_ID),
add constraint efk foreign key (department_ID) references DEPARTMENT(department_ID);

alter table MorvelHRM.DEPENDENT
add constraint dfk foreign key dfk (employee_ID) references EMPLOYEE(employee_ID) on update restrict,
add constraint dpk primary key (employee_ID, dependent_name);

alter table MorvelHRM.CITY
add constraint csfk foreign key (country_ID) references COUNTRY_SERVING(country_ID),
add constraint cspk primary key (city_ID);

alter table MorvelHRM.OFFICE
add constraint cityidfk foreign key(city_id) references City(city_id) on delete restrict on update cascade,
add constraint manageridfk foreign key(manager_ID) references REGIONAL_MANAGER(manager_ID) on update cascade,
add constraint officepk primary key(city_ID,manager_ID);

alter table MorvelHRM.DEPARTMENT
add constraint managerfk foreign key(manager_ID) references OPERATIONAL_MANAGER(manager_ID),
add constraint cityfk foreign key(city_ID) references CITY(city_ID);

alter table MorvelHRM.SUPERVISION
add constraint regfk foreign key(supervisor_ID) references regional_manager(manager_ID),
add constraint operfk foreign key(supervisee_ID) references operational_manager(manager_ID),
add constraint pkfk primary key(supervisor_ID, supervisee_ID);

alter table MorvelHRM.REGIONAL_MANAGER
add constraint cityid_fk foreign key(city_id) references City(city_id) on delete cascade on update cascade,
add constraint office_fk foreign key(office_address) references OFFICE(address) on update cascade,
add constraint COkey foreign key(COOKey) references COO(OBKey);