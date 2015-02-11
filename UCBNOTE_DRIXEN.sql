

column ucbnote_ntyp_code     heading 'Note|type'
column ucbnote_line_num      heading 'line|#'
column ucbnote_activity_date heading 'Activity|Date'
column ucbnote_user_id       heading 'User|ID'  
column ucbnote_cust_code     heading 'Customer'
column ucbnote_prem_code     heading 'Premise'
column ucbnote_text          heading 'Text'
column ucbnote_user_ID_remind heading 'Remind|User'


select ucbnote_ntyp_code,
       ucbnote_cust_code,
       ucbnote_prem_code,
       ucbnote_activity_date,
       ucbnote_user_id_remind
from ucbnote
where ucbnote_user_ID_remind = 'DRIXEN'
-- and   ucbnote_cust_code = '2305539'
-- and   ucbnote_prem_code = '2304945'
and   ucbnote_activity_date between '01-jan-2014' and '31-dec-2014'
order by ucbnote_activity_date, ucbnote_cust_code
/

----------------------------------------------------------




