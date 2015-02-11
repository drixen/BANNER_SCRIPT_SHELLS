update uytslog
set uytslog_intp_code = '1035'
where uytslog_intp_CODE = '1499' and
      uytslog_priority = 99
/

select uytslog_trans_id,
       uytslog_cust_code,           
       uytslog_prem_code 
from uytslog 
where uytslog_trans_id = 242950 
and uytslog_cust_code = '5324893'
and uytslog_prem_code = 4086574
/  

delete from uytslog 
where uytslog_trans_id = 242966 
and uytslog_cust_code = '5324893'
and uytslog_prem_code = 4086574
/        