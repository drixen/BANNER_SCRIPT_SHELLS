

select ucrcrhs_Cust_code,
       ucrcrhs_CCAT_code,
       ucrcrhs_occurance_date,
       ucrcrhs_user_id,
       ucrcrhs_activity_date,
       ucrcrhs_prem_code, 
       ucrcrhs_serv_num,
       ucrcrhs_origin
from ucrcrhs
where ucrcrhs_cust_code = '3147808'
and   ucrcrhs_prem_code = '3023516'
/

