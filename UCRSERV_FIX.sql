update ucrserv
set ucrserv_date_inactive = to_date('12-dec-2001','dd-MON-yyyy')
where ucrserv_prem_code = '2576207' and
      ucrserv_num = 1
/

update ucrserv
set ucrserv_date_inactive = NULL
where ucrserv_prem_code = '2499409' and
      ucrserv_num = 1
/

update ucrserv
set ucrserv_aniv_date = to_date('05-oct-2001','dd-MON-yyyy')
where ucrserv_prem_code = '2428986' and
      ucrserv_num = 5
/

update ucrserv
set ucrserv_aniv_date = NULL
where ucrserv_prem_code = '3149936' and
      ucrserv_num = 1
/