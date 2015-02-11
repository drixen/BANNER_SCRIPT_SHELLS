UCBNOTE_NTYP_CODE      
UCBNOTE_SEQ_NUMBER     
UCBNOTE_ORIGIN         
UCBNOTE_ACTIVITY_DATE  
UCBNOTE_USER_ID        
UCBNOTE_CUST_CODE      
UCBNOTE_PREM_CODE      
UCBNOTE_SERV_NUM       
UCBNOTE_EXPIRATION_DATE
UCBNOTE_SUSPENSE_DATE  
UCBNOTE_USER_ID_REMIND 




column ucbnote_ntyp_code     heading 'Note|type'
column ucbnote_line_num      heading 'line|#'
column ucbnote_activity_date heading 'Activity|Date'
column ucbnote_user_id       heading 'User|ID'  
column ucbnote_cust_code     heading 'Customer'
column ucbnote_prem_code     heading 'Premise'
column ucbnote_text          heading 'Text'
column ucbnote_user_ID_remind heading 'Remind|User'

set pagesize 72
set linesize 180

select ucbnote_ntyp_code,
       ucbnote_cust_code,
       ucbnote_prem_code,
       ucbnote_activity_date,
       ucbnote_user_id_remind
from ucbnote
where ucbnote_user_ID_remind = 'MNYDEREK/OCCC'
and   ucbnote_cust_code = '2305539'
and   ucbnote_prem_code = '2304945'
and   ucbnote_activity_date between '03-feb-2004' and '06-feb-2004'
order by ucbnote_activity_date, ucbnote_cust_code
/

----------------------------------------------------------
column ucbnote_ntyp_code     heading 'Note|type'
column ucbnote_line_num      heading 'line|#'
column ucbnote_activity_date heading 'Activity|Date'
column ucbnote_user_id       heading 'User|ID'  
column ucbnote_cust_code     heading 'Customer'
column ucbnote_prem_code     heading 'Premise'
column ucbnote_text          heading 'Text'
column ucbnote_user_ID_remind heading 'Remind|User'

set pagesize 72
set linesize 180

select ucbnote_ntyp_code,
       ucbnote_cust_code,
       ucbnote_prem_code,
       ucbnote_activity_date,
       ucbnote_user_id_remind
from ucbnote
where ucbnote_cust_code = 5767538
and   ucbnote_prem_code = '2006808'
and   ucbnote_activity_date between '16-jan-2006' and '24-jan-2006'
order by ucbnote_activity_date, ucbnote_cust_code
/

-------------------Next Query is for Andrew Reefer-------------------

column ucbnote_ntyp_code     heading 'Note|type'
column ucbnote_line_num      heading 'line|#'
column ucbnote_activity_date heading 'Activity|Date'
column ucbnote_user_id       heading 'User|ID'  
column ucbnote_cust_code     heading 'Customer'
column ucbnote_prem_code     heading 'Premise'
column ucbnote_text          heading 'Text'
column ucbnote_user_ID_remind heading 'Remind|User'

set pagesize 72
set linesize 180

select ucbnote_cust_code,
       ucbnote_prem_code,
       ucbnote_ntyp_code,
       ucbnote_serv_num,
       ucbnote_user_id,
       ucbnote_activity_date,
       ucbnote_user_id_remind
from ucbnote
where ucbnote_ntyp_code = 'PPTY'
and   ucbnote_activity_date between '03-jun-2009' and '04-jun-2009'
order by ucbnote_activity_date, ucbnote_cust_code
/

and   ucbnote_activity_date = to_date('28-apr-2009','DD-MON-YYYY')
and   ucbnote_activity_date between '01-apr-2009' and '28-apr-2009'

---------------------------------------------------------------

select ucbnote_ntyp_code,
       ucbnote_cust_code,
       ucbnote_prem_code,
       ucbnote_activity_date,
       ucbnote_user_id_remind
from ucbnote
where ucbnote_user_ID_remind = 'OBLACKMA'
and   ucbnote_activity_date between '27-may-2004' and '28-may-2004'
order by ucbnote_activity_date, ucbnote_cust_code
/

select ucbnote_ntyp_code,
       ucbnote_cust_code,
       ucbnote_prem_code,
       ucbnote_activity_date,
       ucbnote_user_id_remind
from ucbnote
where ucbnote_cust_code = '5767538'
and   ucbnote_prem_code = '2006808'
order by ucbnote_activity_date
/

select *
from ucbnote
where ucbnote_seq_number = '16139186'
/

delete from ucbnote
where ucbnote_seq_number = '13259674'
/


select * from ucbnote
where ucbnote_cust_code = 6667528
and   ucbnote_prem_code = '4734478'
/

select * from ucbnote
where ucbnote_ntyp_code = 'PPTY'
and   Ucbnote_activity_date between '06-jan-2010' and '08-jan-2010'

where ucbnote_user_id = 'YGUITARD'


update ucbnote
set ucbnote_activity_date = to_date('07-jan-2010', 'dd-mon-yyyy')
where ucbnote_cust_code = 6667528
and   ucbnote_prem_code = '4734478'
and   ucbnote_user_id = 'YGUITARD'
/

set ucbnote_street_name = 'Wendover'


update ucbnote
set ucbnote_user_id = 'YGUITARD'
where ucbnote_cust_code = '6667528'
and   ucbnote_prem_code = 4734478
/


where ucbnote_note_seq_num in('7740291', '7711300')

set linesize 130
set pagesize 1000

Select * from ucbnote
Where ucbnote_user_id = 'AWHORMS'
and   to_char(ucbnote_activity_date,'dd-mon-yyyy') = '14-sep-2005'
/ 

Select * from ucbnote
Where ucbnote_user_id = 'TMORRISO'
and   to_char(ucbnote_activity_date,'dd-mon-yyyy') = '19-feb-2003'
/ 

ucbnote_NOTE_SEQ_NUM   
ucbnote_LINE_NUM       
ucbnote_ACTIVITY_DATE
ucbnote_USER_ID        
ucbnote_TEXT           


column ucbnote__seq_number heading 'Seq|#'
column ucbnote_serv_num heading 'serv|#'
column ucbnote_activity_date heading 'Activity|Date'
column ucbnote_user_id heading 'User|ID'
column ucbnote_NTYP_Code heading 'CODE'

Select ucbnote_seq_number,
       ucbnote_serv_num, 
       ucbnote_activity_date,
       ucbnote_user_ID,
       ucbnote_ntyp_code
from ucbnote
Where ucbnote_user_id = 'TMORRISO'
and   to_char(ucbnote_activity_date,'dd-mon-yyyy') = '14-apr-2003'
/ 

Select ucbnote_note_seq_num,
       ucbnote_Line_num 
from ucbnote
Where ucbnote_user_id = 'DWALL'
and   to_char(ucbnote_activity_date,'dd-mon-yyyy') = '14-feb-2003'
/ 

Select ucbnote_seq_number,
       ucbnote_activity_date 
from ucbnote
Where ucbnote_user_id = 'EHODHSON'
and   to_char(ucbnote_activity_date,'dd-mon-yyyy') = '6-feb-2004'
/

Select * from ucbnote
Where ucbnote_user_id = 'mnyderek'
and   to_char(ucbnote_activity_date,'dd-mon-yyyy') = '24-feb-2003'
/ 

Select * from ucbnote
Where ucbnote_user_id = 'MSTEELE'
and   to_char(ucbnote_activity_date,'dd-mon-yyyy') = '07-may-2004'
/ 