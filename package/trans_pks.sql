/*
*  Author: Leylim Yalcin 27.06.2018
*  Package specification
*  
*/
CREATE OR REPLACE PACKAGE TRANSACTION_TIME_UTULITY AS
PROCEDURE transaction_time(pin_number IN NUMBER,pin_tran IN NUMBER);
END;
