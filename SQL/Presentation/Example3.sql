#Regional managers from the same country

select manager_name as Regional_Mgr, country_serving.name as Country
from (((MorvelHRM.Regional_manager inner join MorvelHRM.city
using (city_ID)) inner join MorvelHRM.country_serving using (country_ID)));