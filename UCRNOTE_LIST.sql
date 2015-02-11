column ucrnote_note_seq_num heading 'Note|Seq #''
column ucrnote_line_num heading 'line|#'
column ucrnote_activity_date heading 'Activity|Date'
column ucrnote_user_id heading 'User|ID'
column ucrnote_text heading 'Text'

set pagesize 72
set linesize 180

select ucrnote_note_seq_num,
       ucrnote_LINE_num,
       ucrnote_activity_date,
       ucrnote_user_id,
       ucrnote_text
from ucrnote
where ucrnote_note_seq_num = 17368731
/

--------------------------------------------

column ucrnote_user_id heading 'User Name'

set pagesize 69 
set linesize 80

select count(*), ucrnote_user_id
from ucrnote
where ucrnote_user_id = 'DRIXEN'
group by ucrnote_user_id
/


-------------------------------------------


where ucrnote_note_seq_num in('7740291', '7711300')

set linesize 130
set pagesize 1000

spool CWEST

Select ucrnote_note_seq_num,
       UCRNOTE_ACTIVITY_DATE,
       UCRNOTE_USER_ID   
from UCRNOTE
Where ucrnote_user_id = 'AWHORMS'
and ucrnote_activity_date in '20-sep-2005';

spool off

and   to_char(ucrnote_activity_date,'dd-mon-yyyy') between '01-mar-2003' and '31-mar-2003'

and ucrnote_activity_date between '20-sep-2005' and '09-feb-2004';
/ 

Select * from UCRNOTE
Where ucrnote_user_id = 'MSTEELE'
and   to_char(ucrnote_activity_date,'dd-mon-yyyy') = '13-feb-2004'
/ 

Select * from UCRNOTE
Where ucrnote_user_id = 'ccappacc'
and   to_char(ucrnote_activity_date,'dd-mon-yyyy') = '10-feb-2006'
/ 


UCRNOTE_NOTE_SEQ_NUM   
UCRNOTE_LINE_NUM       
UCRNOTE_ACTIVITY_DATE
UCRNOTE_USER_ID        
UCRNOTE_TEXT           


column ucrnote_note_seq_num heading 'Seq|#'
column ucrnote_line_num heading 'Line|#'
column ucrnote_activity_date heading 'Activity|Date'
column ucrnote_user_id heading 'User|ID'
column ucrnote_text heading 'TEXT'

Select ucrnote_note_seq_num,
       ucrnote_Line_num, 
       ucrnote_activity_date,
       ucrnote_user_ID,
       ucrnote_text
from UCRNOTE
Where ucrnote_user_id = 'EHODGSON'
and   to_char(ucrnote_activity_date,'dd-mon-yyyy') = '24-nov-2003'
/ 

Select ucrnote_note_seq_num,
       ucrnote_Line_num 
from UCRNOTE
Where ucrnote_user_id = 'DWALL'
and   to_char(ucrnote_activity_date,'dd-mon-yyyy') = '14-feb-2003'
/ 

Select ucrnote_note_seq_num,
       ucrnote_Line_num 
from UCRNOTE
Where ucrnote_user_id = 'JWYGODAN'
and   to_char(ucrnote_activity_date,'dd-mon-yyyy') = '19-feb-2003'
/

Select * from UCRNOTE
Where ucrnote_user_id = 'SMCINTOS'
AND ucrnote_note_seq_num = '8785602'
/ 

Select * from UCBNOTE
Where ucbnote_user_id = 'MSTEELE'
and   to_char(ucrnote_activity_date,'dd-mon-yyyy') = '21-oct-2003'
/ 

and   to_char(ucrnote_activity_date,'dd-mon-yyyy') = '24-feb-2003'
AND ucbnote_seq_number = '8785602'
-------------------------------------------

delete from ucbnote
Where ucbnote_user_id = 'KTHOMPSO'
AND ucbnote_seq_number = '17368731'
/  

delete from UCRNOTE
where ucrnote_note_seq_num = '17368731'
and to_char(ucrnote_activity_date,'dd-mon-yyyy') = '29-jan-2008'
/