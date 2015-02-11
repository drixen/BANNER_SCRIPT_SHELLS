column uabopen_cust_code heading 'Customer'
column uabopen_prem_code heading 'Premise'
column uabopen_balance heading 'Balance'
column uabopen_billed_chg heading 'Billed|Charge'
column uabopen_activity_date heading 'Activity|Date'
column uabopen_user_id heading 'User|ID'
column uabopen_origin heading 'Origin'
column uabopen_printed_date heading 'Printed|Date'
column uabopen_billing_ind heading 'Billing|Ind'
column UABOPEN_ADV_BILLING_IND heading 'Adv|Billing'

set pagesize 69
set linesize 132

select  uabopen_cust_code, 
        uabopen_prem_code, 
        uabopen_billed_chg,
        uabopen_Activity_date,
        uabopen_user_id,
        uabopen_origin,
        uabopen_printed_date,
        UABOPEN_BILLING_IND,
        UABOPEN_ADV_BILLING_IND              
from uabopen
where uabopen_cust_code = 5590066 and
      uabopen_prem_code = '4290066'  
order by uabopen_printed_date
/



-------------------------------------------------

Select * from uabopen
where uabopen_cust_code = 5607919 and
      uabopen_prem_code = '4307919' 
order by uabopen_printed_date

-------------------------------------------------

select sum(o.UABOPEN_BILLED_CHG)
from uabopen o
where o.UABOPEN_CUST_CODE = 5750632
and o.UABOPEN_PREM_CODE = '2601540'



select sum(uabpymt.UABPYMT_AMOUNT)
from uabpymt
where uabpymt.UABPYMT_CUST_CODE = 5750632
and uabpymt.UABPYMT_PREM_CODE = '2601540'


select sum(uabadje.UABADJE_BILLED_CHG)
from uabadje
where uabadje.uabadje_CUST_CODE = 5750632
and uabadje.uabadje_PREM_CODE = '2601540'


-------------------------------------------------


select  uabopen_feed_doc_code, 
        uabopen_utrsprem_code, 
        uabopen_billed_chg,
        uabopen_Activity_date,
        uabopen_user_id,
        uabopen_origin,
        uabopen_printed_date,
        UABOPEN_BILLING_IND,
        UABOPEN_ADV_BILLING_IND              
from uabopen
where uabopen_cust_code = '2047893' and
      uabopen_prem_code = '4464706'  
order by uabopen_printed_date
/

-------------------------------------------------

Select uabopen_feed_doc_code,
       uabopen_charge_date 
from uabopen
where uabopen_charge_date = '28-Sep-2005'
/

where uabopen_charge_date between '12-aug-2005' and '31-aug-2005' 
where uabopen_charge_date = '15-sep-2005' 
-------------------------------------------------

Select a.uabopen_cust_code "customer_no",
       a.uabopen_prem_code "premises_no",
	 c.ucbcust_last_name "last_name",
       a.uabopen_srat_code "rate_code",
       b.utrsrat_glcl_code "gl_class_code",
       b.utrsrat_bill_print_desc "desc",
       a.uabopen_feed_doc_code "feed_code",
       a.uabopen_charge_date "date",
       a.uabopen_billed_chg "charge",
       a.uabopen_balance "balance", 
       a.uabopen_user_id "userid",
       a.uabopen_originating_user "userorg"     
  from uabopen a, utrsrat b, ucbcust c
 where b.utrsrat_glcl_code IN ('CBRE')
     and a.uabopen_feed_doc_code between 'F2194' and 'F2195'
   and a.uabopen_cust_code = c.ucbcust_cust_code
   and a.uabopen_srat_code = b.utrsrat_srat_code
   and b.utrsrat_nchg_date = to_date ('31-DEC-2099','DD-MON-YYYY') 

-------------------------------------------------------------------

   and a.uabopen_feed_doc_code between 'F2167' and 'F2180'
 and a.uabopen_feed_doc_code = 'F2191'

column uabopen_cust_code heading 'Customer'
column uabopen_prem_code heading 'Premise'
column uabopen_balance heading 'Balance'
column uabopen_billed_chg heading 'Billed|Charge'
column uabopen_activity_date heading 'Activity|Date'
column uabopen_user_id heading 'User|ID'
column uabopen_origin heading 'Origin'
column uabopen_printed_date heading 'Printed|Date'
column uabopen_billing_ind heading 'Billing|Ind'
column UABOPEN_ADV_BILLING_IND heading 'Adv|Billing'
column uabopen_ar-trans heading 'AR|Trans'

set pagesize 69
set linesize 132

select  uabopen_cust_code, 
        uabopen_prem_code, 
        uabopen_billed_chg,
        uabopen_Activity_date,
        uabopen_origin,
        uabopen_printed_date,
        uabopen_ar_Trans,
        UABOPEN_Penalty_amt,
        UABOPEN_srat_code_penalty,
        UABOPEN_Last_Penalty_date              
from uabopen
where uabopen_Penalty_amt > 0 
and   uabopen_srat_code_penalty = 'LP'
and   uabopen_printed_date > to_date('31-dec-2006', 'dd-mon-yyyy') 
/


and uabopen_Last_Penalty_date > to_date('31-dec-2006', 'dd-mon-yyyy') 
/


order by uabopen_printed_date
/



-------------------------------------------------

Select * from uabopen
where uabopen_cust_code = 5607919 and
      uabopen_prem_code = '4307919' 
order by uabopen_printed_date

-------------------------------------------------

select sum(o.UABOPEN_BILLED_CHG)
from uabopen o
where o.UABOPEN_CUST_CODE = 5750632
and o.UABOPEN_PREM_CODE = '2601540'



select sum(uabpymt.UABPYMT_AMOUNT)
from uabpymt
where uabpymt.UABPYMT_CUST_CODE = 5750632
and uabpymt.UABPYMT_PREM_CODE = '2601540'


select sum(uabadje.UABADJE_BILLED_CHG)
from uabadje
where uabadje.uabadje_CUST_CODE = 5750632
and uabadje.uabadje_PREM_CODE = '2601540'


-------------------------------------------------


select  uabopen_feed_doc_code, 
        uabopen_utrsprem_code, 
        uabopen_billed_chg,
        uabopen_Activity_date,
        uabopen_user_id,
        uabopen_origin,
        uabopen_printed_date,
        UABOPEN_BILLING_IND,
        UABOPEN_ADV_BILLING_IND              
from uabopen
where uabopen_cust_code = '2047893' and
      uabopen_prem_code = '4464706'  
order by uabopen_printed_date
/

-------------------------------------------------

Select uabopen_feed_doc_code,
       uabopen_charge_date 
from uabopen
where uabopen_charge_date = '28-Sep-2005'
/

where uabopen_charge_date between '12-aug-2005' and '31-aug-2005' 
where uabopen_charge_date = '15-sep-2005' 
-------------------------------------------------

Select a.uabopen_cust_code "customer_no",
       a.uabopen_prem_code "premises_no",
	 c.ucbcust_last_name "last_name",
       a.uabopen_srat_code "rate_code",
       b.utrsrat_glcl_code "gl_class_code",
       b.utrsrat_bill_print_desc "desc",
       a.uabopen_feed_doc_code "feed_code",
       a.uabopen_charge_date "date",
       a.uabopen_billed_chg "charge",
       a.uabopen_balance "balance", 
       a.uabopen_user_id "userid",
       a.uabopen_originating_user "userorg"     
  from uabopen a, utrsrat b, ucbcust c
 where b.utrsrat_glcl_code IN ('CBRE')
     and a.uabopen_feed_doc_code between 'F2194' and 'F2195'
   and a.uabopen_cust_code = c.ucbcust_cust_code
   and a.uabopen_srat_code = b.utrsrat_srat_code
   and b.utrsrat_nchg_date = to_date ('31-DEC-2099','DD-MON-YYYY') 

-------------------------------------------------------------------

   and a.uabopen_feed_doc_code between 'F2167' and 'F2180'
 and a.uabopen_feed_doc_code = 'F2191'


