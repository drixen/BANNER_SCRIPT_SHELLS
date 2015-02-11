update ucrserv
set ucrserv_date_inactive = NULL,
    ucrserv_status_ind = 'A',
    ucrserv_cust_code = 7150811,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN'
where ucrserv_prem_code = '4784117' 
and ucrserv_num = 1
/

-------The following script is used to activate a service which is in an inactive status. 

update ucrserv
set ucrserv_date_inactive = NULL,
    ucrserv_date_activated = to_date('13-JAN-2015','dd-MON-yyyy'),
    ucrserv_status_ind = 'A',
    ucrserv_cust_code = 2096299,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN'
where ucrserv_prem_code = '2096067' 
and ucrserv_num = 1
/

----------alter turn on date

update ucrserv
set ucrserv_date_activated = to_date('25-feb-2005','dd-MON-yyyy'),
    ucrserv_date_inactive = NULL,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN',
    ucrserv_status_ind = 'A'
where ucrserv_prem_code = '2561625' and
      ucrserv_cust_code = 5932415,
      ucrserv_num = 1

-----------Alter Rate Code----------------------------------

update ucrserv
set ucrserv_SRAT_code = 'RMPV'
where ucrserv_prem_code = '3182383'
and   ucrserv_num = 1
/

------------------------------------------------------------

update ucrserv
set ucrserv_date_inactive = to_date('13-APR-2010','dd-MON-yyyy'),
    ucrserv_status_ind = 'I',
    ucrserv_cust_code = NULL,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN'
where ucrserv_prem_code = '4713505' 
and ucrserv_num = 2
/

update ucrserv
set ucrserv_date_inactive = to_date('01-APR-2009','dd-MON-yyyy'),
    ucrserv_date_activated = to_date('01-APR-2009','dd-MON-yyyy'),
    ucrserv_status_ind = 'I',
    ucrserv_cust_code = NULL,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN'
where ucrserv_prem_code = '2601293' 
and ucrserv_num = 4
/

update ucrserv
set ucrserv_date_activated = NULL,
    ucrserv_date_inactive = NULL,
    ucrserv_status_ind = 'I',
    ucrserv_cust_code = NULL,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN'
where ucrserv_prem_code = '4656196' 
and ucrserv_num = 1
/


update ucrserv
set ucrserv_date_inactive = to_date('12-jul-2005','dd-MON-yyyy'),
    ucrserv_cust_code = NULL
where ucrserv_prem_code = '2135193'
and ucrserv_num = 5
/

update ucrserv
set ucrserv_date_inactive = to_date('05-jan-2001','dd-MON-yyyy')
where ucrserv_prem_code = '2167381'
and ucrserv_num = 2
/

-----------------------------------------------------

update ucrserv
set ucrserv_aniv_date = to_date('19-NOV-2010','dd-MON-yyyy')
where ucrserv_prem_code = '4762810'
and ucrserv_num = 3
/

-----------------------------------------------------

update ucrserv
set ucrserv_date_installed = to_date('30-SEP-2010','dd-MON-yyyy')
where ucrserv_prem_code = '4757669'
and ucrserv_num = 2
/

set ucrserv_date_inactive = to_date('13-apr-2005','dd-MON-yyyy')
set ucrserv_date_inactive = NULL

update ucrserv
set ucrserv_date_activated = to_date('01-dec-2007','dd-MON-yyyy')
where ucrserv_prem_code = '4589429'
and ucrserv_num = 2
/

set ucrserv_date_activated = NULL
set ucrserv_date_activated = to_date('20-MAR-2002','dd-MON-yyyy')

update ucrserv
set ucrserv_date_activated = to_date('30-dec-1999','dd-MON-yyyy'),
where ucrserv_prem_code = '2314174'
and   ucrserv_num = 1
/

update urrshis
set urrshis_charge_date = to_date('31-dec-2099','dd-MON-yyyy')
where urrshis_prem_code = '2121080' and
      urrshis_actn_code = 'IN' and
      urrshis_serv_num = 3
/

update ucrserv
set ucrserv_status_ind = 'I'
where ucrserv_prem_code = '2576207' and
      ucrserv_num = 1
/

update ucrserv
set ucrserv_status_ind = 'A'
where ucrserv_prem_code = '2241460' and
      ucrserv_num = 1
/

update ucrserv
set ucrserv_aniv_date = to_date('16-aug-2006','dd-MON-yyyy')
where ucrserv_prem_code = '3054517' and
      ucrserv_num = 5
/

update ucrserv
set ucrserv_cust_code = 6314101
where ucrserv_prem_code = '2148187' and
      ucrserv_num = 1
/

update ucrserv
set ucrserv_cust_code = NULL
where ucrserv_prem_code = '2148187' and
      ucrserv_num = 1
/

update ucrserv
set ucrserv_invn_code = NULL
where ucrserv_prem_code = '6936420'
and   ucrserv_num = 1
/

update ucrserv
set ucrserv_invn_code = '2316605'
where ucrserv_prem_code = '2050271'
and   ucrserv_num = 1
/

update ucrserv
set ucrserv_ADV_BILLING_IND = NULL
where ucrserv_prem_code = '2602740'
and   ucrserv_num = 1
/

set ucrserv_invn_code = '2666201'
set ucrserv_invn_code = '[NONE]'
and   ucrserv_invn_code = '4150887'

set linesize 130

select ucrserv_invn_code,
       ucrserv_prem_code,
       ucrserv_num 
from ucrserv
where ucrserv_prem_code = '2187103'
and   ucrserv_num = 2
/

and   ucrserv_invn_code = '4150887'

update ucrserv
set ucrserv_cust_code = 5932415,
    ucrserv_date_activated = to_date('25-feb-2005','dd-MON-yyyy'),
    ucrserv_date_inactive = NULL,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN',
    ucrserv_status_ind = 'A'
where ucrserv_prem_code = '2561625' and
      ucrserv_num = 1
/

update ucrserv
set ucrserv_cust_code = 2395667,
    ucrserv_date_inactive = NULL
where ucrserv_prem_code = '2260270' and
      ucrserv_num = 3
/

update ucrserv
set ucrserv_cust_code = NULL,
    ucrserv_date_inactive = NULL,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN'
where ucrserv_prem_code = '2635185' and
      ucrserv_num = 2
/

update ucrserv
set ucrserv_cust_code = NULL,
    ucrserv_activity_date = sysdate, 
    ucrserv_user_id = 'DRIXEN'
where ucrserv_prem_code = '3205707' and
      ucrserv_num = 1
/

select ucrserv_offset_months,
       ucrserv_prem_code,
       ucrserv_num
from ucrserv
where ucrserv_prem_code = '2452671'
/

update ucrserv
set   ucrserv_offset_months = '0'
where ucrserv_prem_code = '2452671'
and   ucrserv_num = 1
/

and   ucrserv_num = 1

update ucrserv
set ucrserv_user_id = 'KBURCH',
    ucrserv_activity_date = to_date('16-may-2005','dd-MON-yyyy')
where ucrserv_prem_code = '4027906' 
and ucrserv_num = 2
/