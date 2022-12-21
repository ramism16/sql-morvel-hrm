#Show all regional managers in Pakistan

select manager_name as Mgr_Name, city_name as city
from ((MorvelHRM.regional_manager inner join MorvelHRM.city
using (city_ID))
inner join MorvelHRM.country_serving using (country_ID))
where country_serving.name LIKE 'Pakistan'
order by city;