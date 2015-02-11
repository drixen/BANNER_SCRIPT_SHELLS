column uxbpmnt_cust_code heading 'Customer'
column uxbpmnt_prem_code heading 'Premise'
column uxbpmnt_trans_no  heading 'Trans|Number'
column uxbpmnt_tran_ind  heading 'Trans|Ind'

set linesize 130
set pagesize 100

select uxbpmnt_prem_code,
       uxbpmnt_cust_code,
       uxbpmnt_trans_no,
       uxbpmnt_tran_ind
from uxbpmnt 
where uxbpmnt_cust_code = '5'
and   uxbpmnt_prem_code = '5'
and   uxbpmnt_trans_no = '61391452'
/


column uxbpmnt_cust_code heading 'Customer'
column uxbpmnt_prem_code heading 'Premise'
column uxbpmnt_trans_no  heading 'Trans|Number'
column uxbpmnt_tran_ind  heading 'Trans|Ind'

set linesize 130
set pagesize 100

select uxbpmnt_prem_code,
       uxbpmnt_cust_code,
       uxbpmnt_trans_no,
       uxbpmnt_tran_ind
from uxbpmnt 
where uxbpmnt_cust_code = '5761797'
and   uxbpmnt_prem_code = '4257674'
/



-----------------------------------------------------------
/*    This script will change a transaction to a non viewable status 
-----------------------------------------------------------
update uxbpmnt
set uxbpmnt_tran_ind = 'N',
    uxbpmnt_reposting_date = to_date('15-apr-2003', 'dd-mon-yyyy')
where uxbpmnt_trans_no = '85481212';
 
commit;

--------------------------------------------------------------

UXBPMNT_TRANS_CUST_CODE = '5',
    UXBPMNT_TRANS_PREM_CODE = '5'

61391452
72407001
72407091
72407092
72407093
72407094
75772909
75772910
76428491
77855118
80962381
85481212
