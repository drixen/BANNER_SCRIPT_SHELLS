column uyrpacc_cust_code heading 'Customer|Code'
column uyrpacc_prem_code heading 'Premise|Code'
column uyrpacc_CC_num heading 'Credit|Card #'
column uyrpacc_amount heading 'Amount'
column uyrpacc_due_date heading 'Due|Date'
column uyrpacc_Hold_ind heading 'Hold|Ind.'
column uyrpacc_hold_until_date heading 'Hold until|Date'
column uyrpacc_processed_date heading 'Processed|Date'
column uyrpacc_file_id heading 'File|ID'
column uyrpacc_user_id heading 'User|ID'
column uyrpacc_activity_date heading 'Activity|Date'

set linesize 180
set pagesize 1000

select uyrpacc_cust_code,
       uyrpacc_prem_code,
       uyrpacc_CC_num,
       uyrpacc_amount,
       uyrpacc_due_date,
       uyrpacc_Hold_ind,
       uyrpacc_hold_until_date,
       uyrpacc_processed_date,
       uyrpacc_file_id,
       uyrpacc_user_id,
       uyrpacc_activity_date      
from uyrpacc
where uyrpacc_due_date between '06-may-2003' and '12-may-2004'
order by uyrpacc_cust_code, uyrpacc_prem_code, uyrpacc_file_id
/
 
select uyrpacc_cust_code,
       uyrpacc_prem_code,
       uyrpacc_CC_num,
       uyrpacc_amount,
       uyrpacc_due_date,
       uyrpacc_Hold_ind,
       uyrpacc_hold_until_date,
       uyrpacc_processed_date,
       uyrpacc_file_id,
       uyrpacc_user_id,
       uyrpacc_activity_date      
from uyrpacc
where uyrpacc_cust_code = 5509646
and   uyrpacc_prem_code = '4209646'
/

   --------------------------------------------------------------------------------------
and uyrpacc_file_id = '4'
where to_char(uyrpacc_processed_date,'dd-mon-yyyy') IN ('28-apr-2003', '30-apr-2003')
and uyrpacc_file_id = '4'