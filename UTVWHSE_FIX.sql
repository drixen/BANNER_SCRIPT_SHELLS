
select UTVWHSE_CODE,
       UTVWHSE_desc,
       utvwhse_activity_date,
       utvwhse_user_ID
from UTVWHSE
where UTVWHSE_code = 'RCT'
/

* * * * * * * * * * * * * * * *
 

delete from UTVWHSE
where UTVWHSE_code = 'RCT';


