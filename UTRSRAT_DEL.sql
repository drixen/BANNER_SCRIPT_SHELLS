select * from utrsrat
where utrsrat_srat_code = 'TQC2'
and utrsrat_effect_date = to_date('01-jan-2009','dd-MON-yyyy')
/

select * from utrsrat
where utrsrat_srat_code IN ('MC4A','MC4N','MC5A','MC5N','ME4A',
                            'ME4N','QC4A','QC4N','QC5A','QC5N',
                            'QE4A','QE4N')

select * from utrsrat
where utrsrat_srat_code IN ('B3R2','B3R3','B4R2','B4R3')

select * from utrsrat
where utrsrat_srat_code IN ('F514','F515','F516','F517','F518','F519','F520',
                            'F521','F522','F523','F524','F525','F526','F527',
                            'F528','F529')

select * from utrsrat
where utrsrat_srat_code IN ('F531','F532','F533','F534','F535','F536','F537',
                            'F538','F539')

select * from utrsrat
where utrsrat_srat_code like 'F5%'


---------UPDATE------------------------

update utrsrat
set   utrsrat_srat_code = 'TQFP'
where utrsrat_srat_code = 'TQKP'
/se

----------DELETE-----------------------

delete from utrsrat
where utrsrat_srat_code = 'LPPE'
/

delete from utrsrat
where utrsrat_effect_date = to_date('29-sep-2009','dd-MON-yyyy')
and utrsrat_SRAT_CODE = 'RW25'
/

and utrsrat_base_amt = 23.97


-----------LIST -----------------------

select * from utvsrat
where utvsrat_code IN ('BW14','BW15','BW16','BW17','BW18',
                       'BW18','BW19','BW20','BW21','BW22',
                       'BW23','BW24')
/

update utvsrat
set   utvsrat_code = 'PW57'
where utvsrat_code = 'PW56'
/

-------------------------

update utrsrat
set utrsrat_effect_date = to_date('01-sep-2009', 'dd-mon-yyyy')
where utrsrat_srat_code = 'TQC2'
and   utrsrat_effect_date = to_date('01-jan-2009','dd-MON-yyyy')







delete from utvsrat
where utvsrat_code = 'B4F2'
/

----------------------------------

select * from utrglcl
where utrglcl_code = 'TCGC'
/

delete from utrglcl
where utrglcl_code = 'TEBD'
/

delete from utrglcl
where utrglcl_code = 'TCRG'
/

