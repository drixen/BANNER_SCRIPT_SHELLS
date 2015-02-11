select distinct UCRACCT_cust_CODE, ucracct_prem_code, ucracct_cycl_code, ucrserv_num, ucrserv_styp_code
from ucracct, ucrserv 
where exists ( select 1 from uimsmgr.extract_premises
                        where ucracct.UCRACCT_PREM_CODE = uimsmgr.extract_premises.UCBPREM_CODE)
and ucrserv.UCRSERV_CUST_CODE = ucracct_cust_code
and ucrserv_prem_code = ucracct_prem_code
and ucrserv.UCRSERV_STATUS_IND = 'A'
--and UCRACCT_cust_CODE > 5000000

----------------------------------------------

select distinct UCRACCT_cust_CODE, ucracct_prem_code, ucracct_cycl_code, ucrserv_num, ucrserv_styp_code, UCRSERV.UCRSERV_CHARGE_FREQUENCY
from ucracct, uimsmgr.ucrserv 
where exists ( select 1 from uimsmgr.extract_premises
                        where ucracct.UCRACCT_PREM_CODE = uimsmgr.extract_premises.UCBPREM_CODE)
and ucrserv.UCRSERV_CUST_CODE = ucracct_cust_code
and ucrserv_prem_code = ucracct_prem_code
and ucrserv.UCRSERV_STATUS_IND = 'A'
--and UCRACCT_cust_CODE > 5000000

---------------------------------------------------

Select a.UABOPEN_CUST_CODE, a.UABOPEN_PREM_CODE, c.uabloan_status, b.UCRACCT_STATUS_IND, b.ucracct_cycl_code, sum(a.uabopen_balance)
from uabopen a, ucracct b, uabloan c
where a.UABOPEN_CUST_CODE = b.UCRACCT_CUST_CODE
and a.UABOPEN_PREM_CODE = b.UCRACCT_PREM_CODE
and a.UABOPEN_CUST_CODE = c.UABLOAN_CUST_CODE
and a.UABOPEN_PREM_CODE = c.UABLOAN_PREM_CODE
and c.UABLOAN_STATUS = 'A'  /* Loan Status */
and b.UCRACCT_STATUS_IND = 'A'
--and b.ucracct_cycl_code like 'M1%'
and exists ( select 1 from uimsmgr.extract_premises
                        where b.UCRACCT_PREM_CODE = uimsmgr.extract_premises.UCBPREM_CODE)
group by a.UABOPEN_CUST_CODE, a.UABOPEN_PREM_CODE, c.uabloan_status, b.UCRACCT_STATUS_IND, b.ucracct_cycl_code
having sum(a.uabopen_balance) > 0 
order by 3,1,2,5

------------------------------------------

select distinct UCRACCT_cust_CODE, ucracct_prem_code, ucracct_cycl_code, ucrserv_num, ucrserv_styp_code, UCRSERV.UCRSERV_CHARGE_FREQUENCY, 
UCRACCT.UCRACCT_DRAFT_ACCT_STATUS
from uimsmgr.ucracct, uimsmgr.ucrserv 
where exists ( select 1 from uimsmgr.extract_premises
                        where ucracct.UCRACCT_PREM_CODE = uimsmgr.extract_premises.UCBPREM_CODE)
and ucrserv.UCRSERV_CUST_CODE = ucracct_cust_code
and ucrserv_prem_code = ucracct_prem_code
and ucrserv.UCRSERV_STATUS_IND = 'A'
--and UCRACCT_cust_CODE > 5000000

-----------------------------------------------------

select distinct UCRACCT_cust_CODE, ucracct_prem_code, ucracct_cycl_code,
ucbprem_street_number,
ucbprem_street_name,
ucbprem_city,
ucbprem_zipc_code,
 ucrserv_num, ucrserv_styp_code, UCRSERV.UCRSERV_CHARGE_FREQUENCY, 
UCRACCT.UCRACCT_DRAFT_ACCT_STATUS
from uimsmgr.ucracct, uimsmgr.ucrserv, uimsmgr.ucbprem 
where exists ( select 1 from uimsmgr.extract_premises
                        where ucracct.UCRACCT_PREM_CODE = uimsmgr.extract_premises.UCBPREM_CODE)
and ucrserv.UCRSERV_CUST_CODE = ucracct_cust_code
and ucrserv_prem_code = ucracct_prem_code
and ucbprem.ucbprem_code = ucracct_prem_code
and ucrserv.UCRSERV_STATUS_IND = 'A'
--and UCRACCT_cust_CODE > 5000000


