select utvbmsg_code,
       utvbmsg_message_text,
       utvbmsg_activity_date,
       utvbmsg_user_id,   
       utvbmsg_type_ind,
       utvbmsg_priority,
       utvbmsg_diary_ind
from   utvbmsg
where  utvbmsg_code = '1041'
/

---------------------------------

column utvbmsg_code          heading 'MSG|#'
column utvbmsg_text          heading 'Description'
column utvbmsg_activity_date heading 'Activity|Date'
column utvbmsg_user_ID       heading 'User|ID'
column utvbmsg_type_ind      heading 'Type|IND'
column utvbmsg_priority      heading 'Priority'
column utvbmsg_diary_ind     heading 'Diary|IND'

set pagesize 1000
set linesize 180

select utvbmsg_code,
       utvbmsg_message_text,
       utvbmsg_activity_date,
       utvbmsg_user_id,   
       utvbmsg_type_ind,
       utvbmsg_priority
from   utvbmsg
order by utvbmsg_code
/

---------------------------------

delete from utvbmsg
where utvbmsg_code = '1704'
/

----------------------------------

select * from utvbmsg

----------------------------------