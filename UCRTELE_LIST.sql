select UCRTELE_CUST_CODE,      
       UCRTELE_SEQNO,          
       UCRTELE_TELE_CODE,      
       UCRTELE_ACTIVITY_DATE,
       UCRTELE_USER_ID,        
       UCRTELE_PHONE_AREA,     
       UCRTELE_PHONE_NUMBER,   
       UCRTELE_PHONE_EXT,      
       UCRTELE_STATUS_IND,     
       UCRTELE_ATYP_CODE,      
       UCRTELE_ADDR_SEQNO,     
       UCRTELE_PRIMARY_IND,    
       UCRTELE_UNLIST_IND,     
       UCRTELE_COMMENT,        
       UCRTELE_INTL_ACCESS
from ucrtele
where ucrtele_cust_code = '2391169'
/     



select * from ucbcust
where ucbcust_cust_code = '4006420'
/