/*
*  Author: Leylim Yalcin 30.06.2018
*  BEGIN-END block for executing the package
*  
*/

@TRANSACTION_TIME_UTULITY.pks
@TRANSACTION_TIME_UTULITY.pkb
BEGIN
dbms_output.put_line(' FOR ----1000 data------');
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,2);
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,3);
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,4);
dbms_output.put_line('FOR -----10.000 data-----');
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,2);
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,3);
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,4);
dbms_output.put_line('FOR -----100.000 data----');
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,2);
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,3);
TRANSACTION_TIME_UTULITY.transaction_time(1000,1);
TRANSACTION_TIME_UTULITY.transaction_time(1000,4);
END;