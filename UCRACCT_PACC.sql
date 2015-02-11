

select ucracct_PREM_CODE,
       ucracct_CUST_CODE, 
       ucracct_CC_NUM,
       ucracct_cc_code,
       ucracct_cc_name,
       ucracct_cc_num,
       ucracct_last_name_cc,
       ucracct_first_name_cc,
       ucracct_paccp_st_date
       ucracct_paccp_status,
       ucracct_paccp_ind
       ucracct_user_id,
       UCRACCT_ACTIVITY_DATE
from   ucracct
where  ucracct_CUST_CODE = 5729058
and    UCRACCT_PREM_CODE = '4330256'
/

-----------------------------------------------

Select * from ucracct
where  ucracct_CUST_CODE = 5770505
and    UCRACCT_PREM_CODE = '4494709'
/

-----------------------------------------------

update ucracct
set   UCRACCT_CC_NUM = '4512238600270754',
      UCRACCT_PACCP_ST_date = to_date('18-aug-2006','dd-MON-yyyy')
where UCRACCT_CUST_CODE =  5567220
and   UCRACCT_PREM_CODE = '4267220'
/
