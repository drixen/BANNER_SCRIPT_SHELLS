

select ucrserv_cust_code,
       ucrserv_prem_code,
       ucracct.ucracct_cycl_code,  
       ucrserv_num,
       ucrserv_styp_code,
       ucrserv_SRAT_code
from ucrserv, ucracct
where  ucrserv.ucrserv_prem_code = ucracct.ucracct_prem_code
AND    ucrserv.ucrserv_cust_code = ucracct.ucracct_cust_code
and    ucracct.ucracct_cycl_code = 'M4'
and    ucrserv_srat_code in ('MC4N','MC5A','MC5N','ME4A','ME4N','QC4A','QC4N','QC5A','QC5N','QE4A','QE4N')
--order by ucrserv_date_activated
/

