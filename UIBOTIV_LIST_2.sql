column uibotiv_code heading 'Inventory|No'
column uibotiv_stus_code heading 'Status'
column uibotiv_activity_date heading 'Activity|Date'
column uibotiv_user_id heading 'User|ID'

Select uibotiv_code,
       uibotiv_stus_code,
       uibotiv_activity_date,
       uibotiv_user_id
from uibotiv
where uibotiv_activity_date between '10-mar-2003' and '02-apr-2003'
and   uibotiv_user_id IN ('JMARSH', 'DBELL')
order by uibotiv_user_id, uibotiv_activity_date
/

Select uibotiv_code,
       uibotiv_stus_code,
       uibotiv_activity_date,
       uibotiv_user_id
from uibotiv
where uibotiv_activity_date between '11-mar-2003' and '01-apr-2003'
and   uibotiv_user_id = 'DBBELL'
/