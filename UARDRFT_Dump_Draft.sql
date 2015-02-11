column uardrft_cust_code heading 'Customer' 
column uardrft_prem_code heading 'Premise'
column uardrft_file_date heading 'File|Date'
column uardrft_hold_until_date heading 'Hold Until|Date'
column uardrft_activity_date heading 'Activity|Date'
column uardrft_trans_code heading 'Trans'
column uardrft_cust_bank_trans heading 'Bank|Trans'
column uardrft_cust_bank_aba heading 'Bank|ABA'
column uardrft_cust_bank_ckdgt heading 'Bank|CKDGT'
column uardrft_cust_bank_acct_no heading 'Cust|BK No'
column uardrft_amount heading 'Draft|Amount'
column uardrft_user_id heading 'User|ID'
column uardrft_draft_number heading 'Draft|Number'
column uardrft_hold_ind heading 'Hold|IND'
column uardrft_mbil_num heading 'MBIL|No'

set pagesize 70
set linesize 150

select uardrft_CUST_CODE,
       uardrft_PREM_CODE,
       uardrft_file_date,
       uardrft_hold_until_date,
       uardrft_activity_date,
       uardrft_trans_code,
       uardrft_cust_bank_trans,
       uardrft_cust_bank_aba,
       uardrft_cust_bank_ckdgt,
       uardrft_cust_bank_acct_no,
       uardrft_amount,
       uardrft_user_id,
       uardrft_draft_number,
       uardrft_hold_ind,
       uardrft_mbil_num
from uardrft
where uardrft_cust_code = '2646342' and
      uardrft_prem_code = '2645446'
/

select uardrft_CUST_CODE,
       uardrft_PREM_CODE,
       uardrft_file_date,
       uardrft_user_id,
       uardrft_draft_number,
       uardrft_hold_ind,
       uardrft_mbil_num
from uardrft
where uardrft_cust_code = '3064336' and
      uardrft_prem_code = '3200943'
/