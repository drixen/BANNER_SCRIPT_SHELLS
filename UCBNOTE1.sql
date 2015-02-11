delete from ucbnote
where ucbnote_prem_code ='4077012'
and   ucbnote_cust_code = '5295572'
and   ucbnote_seq_number = 9089886
/

and   ucbnote_serv_num  = 1

delete from ucbnote
where ucbnote_prem_code = '2675375'
and   ucbnote_cust_code = '5763262'
and   ucbnote_seq_number = 9340593
/

--------------------------------------------------

column ucbnote_cust_code heading 'Customer'
column ucbnote_prem_code heading 'Premise'
column ucbnote_serv_num heading 'Service'
column ucbnote_seq_number heading 'Seq #'
column ucbnote_user_id heading 'User'
column ucbnote_Activity_date heading 'Activity Dt'

select ucbnote_cust_code,
       ucbnote_prem_code,
       ucbnote_serv_num,
       ucbnote_seq_number,
       ucbnote_user_id,
       ucbnote_activity_date
from ucbnote
where ucbnote_seq_number = 9340593
/