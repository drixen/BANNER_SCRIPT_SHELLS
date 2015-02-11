column UIBOTIV_code heading 'Inv|Code'
column uiboviv_user_ID heading 'User ID'
column uibotiv_Activity_date heading 'Activity|Date'
column UIBOTIV_stus_code heading 'Status'
column uibotiv_ptype_code heading 'Part'
column uibotiv_serial_num heading 'Serial|Number'
column uibotiv_manf_code heading 'Manuf'
column uibotiv_install_date heading 'Inst|Date'
column uibotiv_secur_ind heading 'Secur|Ind'
column uibotiv_stus_code heading 'Status'
column uibotiv_ptyp_code heading 'Part|Type'
column uibotiv_serial_num heading 'Serial|Number'
column uibotiv_manf_code heading  'Manuf|Code'
column uibotiv_model heading 'Model'
column uibotiv_install_date heading 'Inst|Date'
column uibotiv_refurb_ind heading 'Refurb|Ind'

set pagesize 69
set linesize 180

select UIBOTIV_CODE,
       uibotiv_user_ID,
       uibotiv_activity_date,
       UIBOTIV_STUS_CODE,
       UIBOTIV_MANF_CODE,      
       UIBOTIV_MODEL, 
       uibotiv_install_date,
       uibotiv_refurb_ind,
       uibotiv_refurb_date,
       uibotiv_refurb_cost, 
       uibotiv_secur_ind
from   uibotiv
where UIBOTIV_code = '7047421'
/

select UIBOTIV_CODE,
       UIBOTIV_STUS_CODE,
       UIBOTIV_MANF_CODE,      
       UIBOTIV_MODEL, 
       uibotiv_install_date,
       uibotiv_refurb_ind,
       uibotiv_refurb_date,
       uibotiv_refurb_cost, 
       uibotiv_secur_ind
from   uibotiv
where UIBOTIV_MANF_CODE = NULL
/

---------------------------------------------
*****   The next script list inventory by Builder ID    *****


select UIBOTIV_CODE,
       UIBOTIV_STUS_CODE,
       UIBOTIV_MANF_CODE,      
       UIBOTIV_MODEL, 
       uibotiv_install_date,
       uibotiv_refurb_ind,
       uibotiv_refurb_date,
       uibotiv_refurb_cost, 
       uibotiv_secur_ind,
       uibotiv_bldr_code
from   uibotiv
where UIBOTIV_bldr_CODE = 'VING'
/

-----------------------------------------------

update uibotiv
set uibotiv_STUS_CODE = 'R'
where uibotiv_code = '2002148'
/

update uibotiv
set uibotiv_refurb_ind = NULL
where uibotiv_code = '4157266'
/


/*   This is a script to change the install date. 

update uibotiv
set uibotiv_install_date = to_date('01-nov-1999','dd-MON-YYYY')
where UIBOTIV_code = '6068507'
/

/*   This is a script to change the original install date. 

update uibotiv
set uibotiv_install_orig = to_date('29-jun-2001','dd-MON-YYYY')
where UIBOTIV_code = '6025865'
/


delete from UYROISD
where UYROISD_OTIV_Model = 'G640S38F'
/

delete from   uibotiv
where UIBOTIV_code = '6377959'
/


where UIBOTIV_RETIRE_DATE = '12-Mar-01' 
          