/*  This script will list out the information for GECA of Bell


set pagesize 100
set linesize 130

select uxrgzne_code "Name",
       UXRGZNE_DESC "Description",
       uxrgzne_activity_date "ACTIVITY",
       uxrgzne_user_id "User ID",
       uxrgzne_gzty_code "GECA",
       UXRGZNE_DSPC_CODE      
from uxrgzne
where uxrgzne_code = 'SUDC'
      and uxrgzne_gzty_code = 'CORN'
/



/*  This script will delete the 'BELL' GECA from the uxrgzne table. 


delete from uxrgzne where uxrgzne_code = 'KNGC'
        and uxrgzne_gzty_code = 'CORN' 
/

-----The next script was only used in CUE01-----
-----Need to find out how to add a GECA through the front end properly

insert into UXRGPGA(UXRGPGA_GZNE_CODE,       
UXRGPGA_GECA_CODE,
UXRGPGA_ACTIVITY_DATE,
UXRGPGA_USER_ID
values('ALBE',
'ALER',
to_date('20-oct-2011','dd-mon-yyyy'),
'DRIXEN')
              
