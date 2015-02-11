select  uabloan_cust_code, 
        uabloan_prem_code, 
        uabloan_loan_type,
        uabloan_status,
        uabloan_month_pymt,
        uabloan_user_id,
        uabloan_activity_date,
        uabloan_loan_type
from uabloan
where uabloan_loan_reference = 'RCW1782738' 
/  

select * from uabloan
where uabloan_loan_reference = 'RNS1538068' 
/  

update uabloan
set uabloan_start_month = '2'
where uabloan_loan_reference = 'RNS1538068';