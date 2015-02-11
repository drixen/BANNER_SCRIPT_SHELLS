/*  These scripts will select Banner Accounts that have loans attached
/*  to them.  

select uabloan_cust_code,uabloan_prem_code,
       uabloan_loan_num,uabloan_first_pymt_date,
       uabloan_final_pymt_date, uabloan_status
from   uabloan
where  uabloan_first_pymt_date > uabloan_final_pymt_date and 
       uabloan_status = 'A' or
       uabloan_status = 'R';

*********************************************

set pagesize 1000
set linesize  130

select uabloan_cust_code "Customer",
       uabloan_prem_code "Premise",
       uabloan_loan_num "Loan",
       uabloan_status "Loan Status",
       ucracct_cycl_code "Cycle",
       ucracct_status_ind "Account Status"
from   uabloan, ucracct
where  uabloan_status = 'A'
and uabloan_cust_code = ucracct_cust_code
and uabloan_prem_code = ucracct_prem_code
and ucracct_status_ind = 'A'
and ucracct_cycl_code = 'M12'
/

------------------------------------------------

select uabloan_cust_code,uabloan_prem_code,
       uabloan_loan_num,uabloan_first_pymt_date,
       uabloan_final_pymt_date, uabloan_status
from   uabloan


---------------------------------------------------

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