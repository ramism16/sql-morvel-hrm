#All assosiates under operational manager

select manager_name as Mgr_Name, employee_name as Emp_Name
from ((MorvelHRM.employee inner join MorvelHRM.department
using (department_ID))
inner join MorvelHRM.operational_manager using (department_ID))
where employee.position LIKE 'Assosiate'
order by Mgr_Name;