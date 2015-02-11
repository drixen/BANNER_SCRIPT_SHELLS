delete from ucbcust
where ucbcust_cust_code = 5870437
/

delete from ucrtele
where ucrtele_cust_code = 5553634
and   ucrtele_tele_code = 'OTHE'
/

select * from ucbcust
where ucbcust_cust_code = '5978778'
/

update ucbcust
set ucbcust_employer = NULL
where ucbcust_cust_code = '5185962'
/

update utrsrat
set utrsrat_nchg_DATE = to_date('31-dec-2099','dd-MON-yyyy')
where utrsrat_SRAT_CODE = 'FAOC'
and utrsrat_nchg_DATE = to_date('18-aug-2002','dd-MON-yyyy')
/

select * from ucrtele
where ucrtele_cust_code = 5374973