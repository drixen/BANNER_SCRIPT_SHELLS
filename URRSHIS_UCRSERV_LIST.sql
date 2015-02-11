-----------   Check if Service Rate matches the History Rate  -----

Select ucrserv_cust_code,
       ucrserv_prem_code,
       ucrserv_num,
       ucrserv_styp_code,
       urrshis_styp_code
from   ucrserv, urrshis
where  ucrserv_cust_code = urrshis_cust_code
and    ucrserv_prem_code = urrshis_prem_code
and    ucrserv_num = urrshis_serv_num
and    ucrserv_srat_code = urrshis_srat_code
and    ucrserv_status_ind = 'A'
and    to_char(urrshis_action_date,'dd-mon-yyyy') between '31-oct-2003' and '31-dec-2003'  
and    ucrserv_styp_code <> urrshis_styp_code
and    urrshis_actn_code = 'IN'
order by ucrserv_prem_code
/

-----------------------------------------

Select ucrserv_cust_code,
       ucrserv_prem_code,
       ucrserv_num,
       ucrserv_styp_code,
       urrshis_styp_code
from   ucrserv, urrshis
where  ucrserv_cust_code = urrshis_cust_code
and    ucrserv_prem_code = urrshis_prem_code
and    ucrserv_num = urrshis_serv_num
and    ucrserv_srat_code = urrshis_srat_code
and    ucrserv_status_ind = 'A'
and    ucrserv_styp_code <> urrshis_styp_code
and    urrshis_actn_code = 'IN'
order by ucrserv_prem_code
/
