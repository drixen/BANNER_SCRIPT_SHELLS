column ucbprem_cust_code_owner heading 'Cust'
column ucbprem_prem_code heading 'Prem'
column ucbprem_zipc_code heading 'Postal|Code'
column ucbprem_geca_code heading 'GECA|Code'

set linesize 180
set pagesize 69

select ucbprem_code,
       ucbprem_Cust_CODE_OWNER,
       ucbprem_city,
       ucbprem_geca_code
from   ucbprem 
where  ucbprem_geca_code = 'ENEL'
/

---------------------------------------------------

update ucbprem
set ucbprem_geca_code = '    '
where ucbprem_geca_code = 'ENEL'
/

---------------------------------------------------

select ucbprem_code          "Premise",
       ucbprem_user_id       "User ID",
       ucbprem_activity_date "Activity Dt",   
       ucbprem_date_created  "Date Created"
from   ucbprem
where  ucbprem_user_ID = 'SMCINTOS'
and to_char(ucbprem_activity_date,'dd-mon-yyyy') between '18-dec-2002' and '20-dec-2002'  
order by ucbprem_activity_date
/

select ucbprem_code          "Premise",
       ucbprem_user_id       "User ID",
       ucbprem_activity_date "Activity Dt",   
       ucbprem_date_created  "Date Created"
from   ucbprem
where  ucbprem_code = '4293443'
order by ucbprem_activity_date

---------------------------------------------------

select ucbprem_code,
       ucbprem_activity_date,
       ucbprem_user_id,
from   ucbprem_
where  ucbprem_city = 'PORT PERRY'  
/

select * from utrstrt
where utrstrt_zipc_code = 'L7L'
/


select * from ucbprem
where ucbprem_code  = '2315364'
/



ucbprem_street_number = '450' 
ucbprem_city = 'Port Perry' and 

------------------------------------------

select ucbprem_cust_code_owner, 
       ucbprem_code,
       ucbprem_street_number,
       ucbprem_street_name,
       ucbprem_city,
       ucbprem_zipc_code     
from   ucbprem 
where  ucbprem_zipc_code = 'P0J1RO'  
/