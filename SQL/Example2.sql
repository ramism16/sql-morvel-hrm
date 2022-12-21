#Display operational managers indirectly operating under COOs

select COO.name as COO, operational_manager.manager_name as OpMgr
from (((MorvelHRM.regional_manager inner join MorvelHRM.supervision 
on regional_manager.manager_ID = Supervision.supervisor_ID)
inner join MorvelHRM.operational_manager
on operational_manager.manager_ID = supervision.supervisee_ID)
inner join MorvelHRM.COO
on COO.OBKey = Regional_Manager.COOKey)