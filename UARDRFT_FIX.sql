update uardrft
set uardrft_cust_bank_acct_no = '403822'
where uardrft_cust_CODE = '3093196'
and   uardrft_prem_code = '3146789'
/

update uardrft
set uardrft_amount = '63.82'
where uardrft_cust_CODE = '5281048'
and   uardrft_prem_code = '4067708'
and   to_char(uardrft_hold_until_date,'dd-mon-yyyy') = '24-may-2007'
/



------------ This next script can be used to list the account # 

select UCRACCT_PREM_CODE,
       UCRACCT_CUST_CODE,
       UCRACCT_bank_acct,
       ucracct_draft_acct_status,
       ucracct_draft_max
from ucracct
where ucracct_cust_code = '6241761' and
      ucracct_prem_code = '2342883'
/

select * from uardrft
where uardrft_cust_code = '6241761' and
      uardrft_prem_code = '2342883'
/

------------ This next script can be used to change the draft # in the account table

update ucracct
set ucracct_bank_acct = '504255'
where ucracct_cust_CODE = '2218967'
and   ucracct_prem_code = '2218513'
/

 
update ucracct
set ucracct_bank_acct = NULL
where ucracct_cust_CODE = '5509830'
and   ucracct_prem_code = '4209830'
/

---------------------------------------------

select * from uardrft
where uardrft_cust_code = 5281048
and   uardrft_Prem_code = '4067708'



insert into uardrft(uardrft_CUST_CODE,       
Uardrft_PREM_CODE,              
Uardrft_file_date,              
Uardrft_hold_until_date,               
Uardrft_ACTIVITY_DATE,          
Uardrft_trans_code,                
Uardrft_cust_bank_trans,             
Uardrft_cust_bank_aba,              
Uardrft_cust_bank_ckdgt,              
Uardrft_cust_bank_acct_no,        
Uardrft_amount,        
Uardrft_user_id,
uardrft_draft_number,
uardrft_hold_IND,
uardrft_mbil_num)
values('5281048',
'4067708',
to_date('24-may-2007','dd-mon-yyyy'),
to_date('24-may-2007','dd-mon-yyyy'),
to_date('22-may-2007','dd-mon-yyyy'),
'27',
'7',
'509',
'1',
'5288016',
'63.82',
'APWSCHED',
'1',
'N',
NULL)

commit;