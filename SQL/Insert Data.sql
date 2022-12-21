set foreign_key_checks = 0;

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Regional_Manager.csv'
into table MorvelHRM.REGIONAL_MANAGER
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Operational_Manager.csv'
into table MorvelHRM.OPERATIONAL_MANAGER
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Supervision.csv'
into table MorvelHRM.SUPERVISION
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Employee.csv'
into table MorvelHRM.EMPLOYEE
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/City.csv'
into table MorvelHRM.CITY
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Country_Serving.csv'
into table MorvelHRM.COUNTRY_SERVING
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Department.csv'
into table MorvelHRM.DEPARTMENT
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Dependent.csv'
into table MorvelHRM.DEPENDENT
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Employee_Pay.csv'
into table MorvelHRM.EMPLOYEE_PAY
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/COO.csv'
into table MorvelHRM.COO
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

load data INFILE 'C:/Users/omen/Desktop/DBS Project ER/CSV/Office.csv'
into table MorvelHRM.OFFICE
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n';

set foreign_key_checks = 1;