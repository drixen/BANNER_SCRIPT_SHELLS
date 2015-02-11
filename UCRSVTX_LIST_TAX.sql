-------------  These scripts are used to list GST anomolies


column ucrsvtx_prem_code heading 'Premise'
column ucrsvtx_serv_num heading 'Service'
column ucrsvtx_rate_code_tax heading 'Rate Code|Tax'
column ucrsvtx_activity_date heading 'Activity|Date'
column ucrsvtx_user_id heading 'User|ID'
column ucrsvtx_exempt_pct heading 'Tax Exempt|Percent'

set pagesize 69
set linesize 130

spool TaxTable1

Select ucrsvtx_prem_code,
       ucrsvtx_serv_num,
       ucrsvtx_rate_code_tax,
       ucrsvtx_activity_date,
       ucrsvtx_user_id,
       ucrsvtx_exempt_pct
from   ucrsvtx 
where  ucrsvtx_prem_code = '3169112'
/


where  ucrsvtx_exempt_pct <> 0

spool off

select count (distinct ucrsvtx_exempt_pct)
from ucrsvtx
/


select count(*), Ucrsvtx_exempt_pct
from ucrsvtx
where ucrsvtx_exempt_pct is not null
group by ucrsvtx_exempt_pct
/

set pagesize 1000
spool TaxTable1

Select ucrsvtx_prem_code,
       ucrsvtx_serv_num,
       ucrsvtx_rate_code_tax,
       ucrsvtx_activity_date,
       ucrsvtx_user_id,
       ucrsvtx_exempt_pct,
       UCRSERV_STATUS_IND
from   ucrsvtx, ucrserv 
where  ucrsvtx_exempt_pct <> 0
and    ucrsvtx_exempt_pct <> 99.9
and    ucrsvtx_prem_code = ucrserv_prem_code
and    ucrsvtx_serv_num = ucrserv_num
and    UCRSERV_STATUS_IND = 'A'   
/

spool off

Select ucrsvtx_prem_code,
       ucrsvtx_serv_num,
       ucrsvtx_rate_code_tax,
       ucrsvtx_activity_date,
       ucrsvtx_user_id,
       ucrsvtx_exempt_pct,
       UCRSERV_STATUS_IND
from   ucrsvtx, ucrserv 
where  ucrsvtx_exempt_pct <> 0
and    ucrsvtx_exempt_pct <> 99.9
and    ucrsvtx_prem_code = ucrserv_prem_code
and    ucrsvtx_serv_num = ucrserv_num
/

Select ucrsvtx_prem_code,
       ucrsvtx_serv_num,
       ucrsvtx_rate_code_tax,
       ucrsvtx_activity_date,
       ucrsvtx_user_id,
       ucrsvtx_exempt_pct,
       UCRSERV_STATUS_IND
from   ucrsvtx, ucrserv 
where  ucrsvtx_exempt_pct = 7
and    ucrsvtx_prem_code = ucrserv_prem_code
and    ucrsvtx_serv_num = ucrserv_num
and    UCRSERV_STATUS_IND = 'A'   
/

-------------------------------------------------

update ucrsvtx
set ucrsvtx_exempt_pct = 99.9
where ucrsvtx_exempt_pct = 99.9999
and   ucrsvtx_prem_code = '3172305'
/

----------------------------------------------------

update ucrsvtx
set ucrsvtx_exempt_pct = 99.9
where ucrsvtx_exempt_pct = 7
/

----------------------------------------------------

select * from ucrserv
where ucrserv_status_ind = 'A'
and ucrserv_srat_code in ('DN02','DC05','QQ04','DN04')




