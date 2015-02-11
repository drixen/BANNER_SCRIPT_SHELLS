column uavledg_prem_code heading 'Premise'
column uavledg_ar_trans heading 'Trans|Number'
column uavledg_source heading 'Source|Code'
column uavledg_pycd_code heading 'Pay|Code'
column uavledg_amount heading 'Amount'
column uavledg_balance heading 'Balance'
column uavledg_balance_ind heading 'Bal|IND'
column uavledg_pymt_date heading 'Payment|Date'
column uavledg_payment_ref heading 'Payment|Ref'
column uavledg_user_id heading 'User|Id'
column uavledg_activity_date heading 'Activity|Date'

set linesize 130
set pagesize 100

select uavledg_type,
       uavledg_ar_trans,
       uavledg_adjm_code,
       uavledg_pycd_code,
       uavledg_amount, 
       uavledg_balance_ind,
       uavledg_printed_date,
       uavledg_trans_date
from uavledg 
where uavledg_amount = 527.24
/

-----------------------------------------------------

Select * from UAVLEDG
where uavledg_amount = '3222'
and   to_char(uavledg_trans_date,'dd-mon-yyyy') = '08-apr-2008'

-----------------------------------------------------


Select * from UAVLEDG
where uavledg_amount > '120000'
and   to_char(uavledg_trans_date,'dd-mon-yyyy') = '18-mar-2009'