set linesize 120
set pagesize 100

select uytslog_trans_id,
       uytslog_cust_code,
       uytslog_prem_code 
from uytslog
where uytslog_user_id = 'DRIXEN'
and uytslog_trans_id = 331825
/

* * * * * * * * * * * * * * * *
set linesize 180
set pagesize 100
select * from uytslog
where uytslog_user_id = 'tgudgeon'
and uytslog_trans_id = 361426
/

* * * * * * * * * * * * * * * *

delete from uytslog
where uytslog_user_id = 'DRIXEN'
and uytslog_trans_id = 960692
/

* * * * * * * * * * * * * * * *
