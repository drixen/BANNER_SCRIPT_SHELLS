DECLARE
--Create or Replace procedure P_Activation_Report (param_date Date) IS
CURSOR cpp_activate_cur IS
 Select   ucracct.UCRACCT_CUST_CODE cust_code, 
           ucracct.UCRACCT_PREM_CODE prem_code,
           ucracct.UCRACCT_CYCL_CODE cycle_code,
           ucrserv.UCRSERV_NUM serv_num, 
           ucrserv.UCRSERV_SERVICE_LOCATION serv_loc,
           ucrserv.UCRSERV_SCLS_CODE serv_class, 
           ucrserv.UCRSERV_SRAT_CODE rate_code,
           to_char(ucrserv.UCRSERV_DATE_INSTALLED,'DD-Mon-YYYY') signup ,
            to_char(trunc(ucrserv.UCRSERV_DATE_INSTALLED) + 20,'DD-Mon-YYYY') effective,
            to_char(round((trunc(sysdate)) - (trunc(ucrserv.UCRSERV_DATE_INSTALLED) +20))) overdue
    from ucracct,ucrserv, ucbnote
    where ucrserv.UCRSERV_PREM_CODE = ucracct.UCRACCT_PREM_CODE
    and ucracct.UCRACCT_PREM_CODE = ucbnote.UCBNOTE_PREM_CODE
    and ucracct.UCRACCT_CUST_CODE = ucbnote.UCBNOTE_CUST_CODE
    and ucbnote.UCBNOTE_SERV_NUM = ucrserv.UCRSERV_NUM
    and ucbnote.UCBNOTE_NTYP_CODE = 'PPTY'
    and ucbnote.UCBNOTE_SEQ_NUMBER = ( select max(note2.UCBNOTE_SEQ_NUMBER)
                                       from ucbnote note2
                                       where note2.UCBNOTE_NTYP_CODE = 'PPTY'
                                       and note2.UCBNOTE_CUST_CODE = ucbnote.UCBNOTE_CUST_CODE
                                       and note2.UCBNOTE_PREM_CODE = ucbnote.UCBNOTE_PREM_CODE
                                       and note2.UCBNOTE_SERV_NUM = ucbnote.UCBNOTE_SERV_NUM)                                                
    and ucrserv.UCRSERV_STATUS_IND = 'I'
    and ucrserv.UCRSERV_DATE_ACTIVATED is null
    and ucrserv.UCRSERV_SCLS_CODE = 'TC'
    and ucrserv.UCRSERV_STYP_CODE in ('PROT','PRO1')
    and trunc(ucrserv.UCRSERV_DATE_INSTALLED + 20) <= trunc(sysdate);
--              
     cpp_activate_rec                          cpp_activate_cur%ROWTYPE;
--       
      v_lineout               VARCHAR2(1000);
      v_outfile               UTL_FILE.FILE_TYPE;
      v_filename              VARCHAR2(30);
      utl_file_path           VARCHAR2(20);
      v_date                  date;
      v_instructions          VARCHAR2(25);
--        
BEGIN  
   --v_date := trunc(param_date);
   v_date := trunc(sysdate);
   --v_filenumber := ws_date;      
  /*v_filenumber := SUBSTR( TO_CHAR( TRUNC( SYSDATE ) ), 1, 2) || '_'||
                  INITCAP( SUBSTR( TO_CHAR( TRUNC( SYSDATE ) ), 4, 3) );*/

  v_filename := CONCAT( 'CPP_Activation_', to_char(v_date,'ddMonyyyy') );  -- revisesd file namimg convention to run date parameter
  v_filename := CONCAT( v_filename, '.csv' );
  v_outfile := UTL_FILE.FOPEN( '/oracle/UTL_FILE_DIR/PUE01', v_filename, 'W' );
  v_lineout :=         ( 'cust_code' || ',' ||
                         'prem_code' || ',' ||
                         'cycle_code' || ',' ||
                         'serv_num' || ',' ||
                         'Serv Class'|| ',' ||
                         'Rate Code' || ',' ||
                         'Signup Date' || ',' ||
                         'Effective Date'||','||
                         'Days Overdue'||','||
                         'Added Instuctions'
                         );
                         
 UTL_FILE.PUT_LINE( v_outfile, v_lineout ); 
 v_lineout := NULL;    
 v_instructions := NULL;     
 OPEN cpp_activate_cur;
    
  LOOP
    FETCH cpp_activate_cur INTO cpp_activate_rec;
    EXIT WHEN cpp_activate_cur%NOTFOUND;

     /*  Request to remove the ONLINE 3 month credit for TP3M         */
                
    --IF  cpp_activate_rec.serv_loc = 'ONLINE' THEN          
    --          v_instructions := 'ADD TP3M 3 MONTHS CREDIT';  

    /* Added 3 new rate codes for ISR 32943. */            
    IF     cpp_activate_rec.rate_code in ('TP04','TMA6','TMF6','TMB6') THEN            
              v_instructions := 'ADD TP2M 2 MONTHS CREDIT';  
    ElsIF  cpp_activate_rec.rate_code in ('0FF2','0SS2','0FP2','0SP2') THEN            
              v_instructions := 'ADD 2CMT 2 MONTHS CREDIT';  
    ElsIF  cpp_activate_rec.rate_code in ('TMAM','TMFM','TMBM') THEN              
              v_instructions := 'ADD TM3M 3 MONTHS CREDIT'; 
    ElsIF  cpp_activate_rec.rate_code in ('0FF3','0SS3','0FP3','0SP3') THEN              
              v_instructions := 'ADD 3CMT 3 MONTHS CREDIT';       
    ELSE 
              v_instructions := NULL;                        
    END IF;
                         
             v_lineout := ( cpp_activate_rec.cust_code   || ',' ||
                            cpp_activate_rec.prem_code   || ',' ||
                            cpp_activate_rec.cycle_code  || ',' ||
                            cpp_activate_rec.serv_num    || ',' ||
                            cpp_activate_rec.serv_class  || ',' ||
                            cpp_activate_rec.rate_code   || ',' ||
                            cpp_activate_rec.signup      || ',' ||
                            cpp_activate_rec.effective   || ',' ||
                            cpp_activate_rec.overdue     || ',' ||
                            v_instructions 
                         );
             
       UTL_FILE.PUT_LINE( v_outfile, v_lineout );

      v_lineout := NULL;   
      v_instructions := NULL;           
  END LOOP;
  CLOSE cpp_activate_cur;
  UTL_FILE.FCLOSE( v_outfile );
--grant execute on ueadmin.P_Activation_Report to hwood, ajamil,drixen, vpawar;
         
EXCEPTION              
  WHEN NO_DATA_FOUND  THEN
       DBMS_OUTPUT.PUT_LINE( 'No data found !' );
  WHEN UTL_FILE.INVALID_OPERATION THEN
        UTL_FILE.FCLOSE_ALL;
        RAISE_APPLICATION_ERROR(-20050,'Invalid Operation');
  WHEN UTL_FILE.INVALID_PATH THEN
        UTL_FILE.FCLOSE_ALL;
        RAISE_APPLICATION_ERROR(-20051,'Invalid Path');
  WHEN UTL_FILE.INVALID_FILEHANDLE THEN
        UTL_FILE.FCLOSE_ALL;
        RAISE_APPLICATION_ERROR(-20052,'Invalid File Handle');              
  WHEN OTHERS THEN
       DBMS_OUTPUT.PUT_LINE('Cust_cursor - ' || SUBSTR( SQLERRM, 1, 200 ) );
END;

