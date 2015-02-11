column uabpymt_prem_code     heading 'Premise'
column uabpymt_ar_trans      heading 'Trans|Number'
column uabpymt_source        heading 'Source|Code'
column uabpymt_pycd_code     heading 'Pay|Code'
column uabpymt_appl_ind      heading 'Appl|Code'
column uabpymt_amount        heading 'Amount'
column uabpymt_balance       heading 'Balance'
column uabpymt_balance_ind   heading 'Bal|IND'
column uabpymt_pymt_date     heading 'Payment|Date'
column uabpymt_payment_ref   heading 'Payment|Ref'
column uabpymt_user_id       heading 'User|Id'
column uabpymt_activity_date heading 'Activity|Date'

set linesize 130
set pagesize 1000

select uabpymt_prem_code,
       uabpymt_ar_trans,
       uabpymt_source,
       uabpymt_pycd_code,
       uabpymt_appl_ind,
       uabpymt_amount, 
       uabpymt_balance,
       uabpymt_balance_ind,
       uabpymt_pymt_date,
       uabpymt_payment_ref,
       uabpymt_user_id,
       uabpymt_activity_date
from uabpymt 
where uabpymt_prem_code = '4307919'
and   uabpymt_cust_code = 5607919
order by uabpymt_pymt_date
/

select * from uabpymt 
where uabpymt_prem_code = '2678370'
and   uabpymt_cust_code = 5799218
order by uabpymt_pymt_date
/

-------------------------------------------

select uabpymt_prem_code,
       uabpymt_ar_trans,
       uabpymt_source,
       uabpymt_pycd_code,
       uabpymt_appl_ind,
       uabpymt_amount, 
       uabpymt_balance,
       uabpymt_balance_ind,
       uabpymt_pymt_date,
       uabpymt_payment_ref,
       uabpymt_user_id,
       uabpymt_activity_date
from uabpymt 
where uabpymt_prem_code = '4257674'
and   uabpymt_cust_code =  5761797
and   uabpymt_source    = '113514'
and   uabpymt_pycd_code = 'CCPO'
and   UABPYMT_appl_ind  = 'Y'
/

------------------------------------------------

select uabpymt_prem_code,
       uabpymt_ar_trans,
       uabpymt_source,
       uabpymt_pycd_code,
       uabpymt_amount, 
       uabpymt_balance,
       uabpymt_balance_ind,
       uabpymt_pymt_date,
       uabpymt_payment_ref,
       uabpymt_user_id,
       uabpymt_activity_date
from uabpymt 
where uabpymt_origin = 'UAPCBAP'
and   to_char(uabpymt_pymt_date,'dd-mon-yyyy') = '14-mar-2003'
and   uabpymt_payment_ref = 'LOPR'
/

----------------------------------------------------------

select uabpymt_prem_code,
       uabpymt_ar_trans,
       uabpymt_source,
       uabpymt_pycd_code,
       uabpymt_amount, 
       uabpymt_balance,
       uabpymt_balance_ind,
       uabpymt_pymt_date,
       uabpymt_payment_ref,
       uabpymt_user_id,
       uabpymt_activity_date
from uabpymt 
where uabpymt_user_id = 'NSMYTH'
and   to_char(uabpymt_activity_date,'dd-mon-yyyy') = '14-mar-2005'
/