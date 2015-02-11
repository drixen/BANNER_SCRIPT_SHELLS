-----------------------------------------------

select uyrpacc_PREM_CODE,
       uyrpacc_CUST_CODE, 
       uyrpacc_CC_NUM,
       uyrpacc_hold_until_date
from   uyrpacc
where  uyrpacc_CUST_CODE = 5665574
and    uyrpacc_PREM_CODE = '4365574'
and    uyrpacc_hold_until_date = to_date('09-jul-2007','dd-MON-yyyy')
/

-----------------------------------------------

update uyrpaccdesc
set   uyrpacc_CC_NUM = '4512238600270754',
      uyrpacc_PACCP_ST_date = to_date('18-aug-2006','dd-MON-yyyy')
where uyrpacc_CUST_CODE =  5567220
and   uyrpacc_PREM_CODE = '4267220'
/

------------------------------------------------

delete from uyrpacc
where uyrpacc_prem_code = '4365574'
and   uyrpacc_cust_code = 5665574
and   to_char(uyrpacc_hold_until_date,'dd-mon-yyyy') = '09-jul-2007'
/