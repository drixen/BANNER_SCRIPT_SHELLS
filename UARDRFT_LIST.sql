select uardrft_cust_code, 
       uardrft_prem_code,
       uardrft_amount,
       uardrft_hold_until_date
from uardrft
where uardrft_cust_code = '2054730'

---------------------

select * from uardrft  
where to_char(uardrft_hold_until_date,'dd-mon-yyyy') = '01-jun-2006'
and uardrft_file_date IS NULL



select * from uardrft  
where uardrft_file_date IS not NULL;

-----------------------

select count(*) uardrft_hold_until_date
from uardrft
where uardrft_file_date IS NULL



group by uardrft_hold_until_date