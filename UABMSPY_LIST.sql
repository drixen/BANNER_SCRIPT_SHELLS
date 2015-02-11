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
where to_char(uarappl_activity_date,'dd-mon-yyyy') = '30-dec-2002'
/



where to_char(uarappl_activity_date,'dd-mon-yyyy') = '30-dec-2002'

AND uarappl_user_id = 'KYOUNG'

-------------------------------------------------------------------

select uabpymt_Cust_code     "Customer",
       uabpymt_prem_code     "Premise",
       uabpymt_activity_date "Act Date",
       uabpymt_user_ID       "User ID",
       uabpymt_amount        "Amount",
       uabpymt_trans_cust_code "Trans Cust #",
       uabpymt_trans_prem_code "Trans Prem #"
from uabpymt
where uabpymt_user_id = 'KYOUNG'
/