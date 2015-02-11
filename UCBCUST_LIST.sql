column ucrchst_cust_code heading 'Customer|Number'
column ucrchst_first_name heading 'First|Name'
column ucrchst_last_name heading 'Last|Name'
column ucrchst_activity_date heading 'Date|Changed'
column ucrchst_user_ID heading 'USER|ID'

set pagesize 100
set linesize 130

select ucrchst_cust_code,
       ucrchst_first_name,
       ucrchst_last_name,
       ucrchst_activity_date,
       ucrchst_user_id
from   ucrchst
where ucrchst_cust_code = 5273591 
/



select * from   ucrchst
where ucrchst_cust_code = 6202303 