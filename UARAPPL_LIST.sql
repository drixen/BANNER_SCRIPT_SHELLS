column uarappl_from_ar_trans heading 'FROM Acct'
column uarappl_to_ar_trans heading 'To Acct'
column uarappl_activity_date heading 'Activity|Date'
column uarappl_user_id heading 'User'
column uarappl_amount heading 'Amount'
column uarappl_GL_ind heading 'GL|IND'
column uarappl_pymt_date heading 'Payment|Date'

set linesize 130
set pagesize 100

select uarappl_from_ar_trans,
       uarappl_to_ar_trans,
       uarappl_activity_date,
       uarappl_user_id, 
       uarappl_adj_ref_trans,
       uarappl_amount,
       uarappl_GL_ind
from uarappl 
where to_char(uarappl_activity_date,'dd-mon-yyyy') = '18-may-2004'
and uarappl_user_id <> 'SCHEDULER'
and uarappl_amount = '11.64'

/

-----------------------------

select uarappl_from_ar_trans,
       uarappl_to_ar_trans,
       uarappl_activity_date,
       uarappl_user_id, 
       uarappl_adj_ref_trans,
       uarappl_amount,
       uarappl_GL_ind
from uarappl 
where uarappl_cust_code = 5606788 
and   uarappl_prem_code = '4306788




and uarappl_user_id <> 'SCHEDULER'

where to_char(uarappl_activity_date,'dd-mon-yyyy') = '30-dec-2002'

AND uarappl_user_id = 'KYOUNG'

column uarappl_from_ar_trans heading 'FROM Acct'
column uarappl_to_ar_trans heading 'To Acct'
column uarappl_activity_date heading 'Activity|Date'
column uarappl_user_id heading 'User'
column uarappl_amount heading 'Amount'
column uarappl_GL_ind heading 'GL|IND'
column uarappl_pymt_date heading 'Payment|Date'

set linesize 130
set pagesize 100

select uarappl_from_ar_trans,
       uarappl_to_ar_trans,
       uarappl_activity_date,
       uarappl_user_id, 
       uarappl_amount,
       uarappl_GL_ind
from uarappl 
where to_char(uarappl_activity_date,'dd-mon-yyyy') = '19-jul-2005'
and uarappl_user_id = 'PPOUGET'
/

select UABADJE_activity_date,
       UABADJE_user_ID,
       UABADJE_balance,
       UABADJE_serv_num, 
       UABADJE_adjm_code,
       UABADJE_charge,
       UABADJE_date
from UABADJE 
where to_char(UABADJE_activity_date,'dd-mon-yyyy') = '18-may-2004'
and UABADJE_user_id <> 'SCHEDULER'
