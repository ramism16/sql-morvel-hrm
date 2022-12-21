#Displays all operational managers assigned to departments

select manager_name as Manager, department_name as DName
from MorvelHRM.OPERATIONAL_MANAGER INNER JOIN MorvelHRM.DEPARTMENT
using (department_ID);