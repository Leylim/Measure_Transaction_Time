/*
*  Author: Leylim Yalcin 30.06.2018
*  Creating package body
*  
*/
CREATE OR REPLACE PACKAGE BODY TRANSACTION_TIME_UTULITY AS
PROCEDURE transaction_time(pin_number IN NUMBER,pin_tran IN NUMBER)
IS
    start_time number := sys.dbms_utility.get_time;
    end_time number;
BEGIN
      FOR Loop_Counter IN 1..pin_number LOOP
        INSERT INTO employee2 (id) VALUES (1);
      END LOOP;
      start_time := dbms_utility.get_time;
         IF (pin_tran = 1) THEN
            COMMIT; 
            end_time := sys.dbms_utility.get_time;
            dbms_output.put_line('COMMIT ended in ' || (end_time-start_time)|| 'seconds');
         ELSIF (pin_tran = 2) THEN
            ROLLBACK;
            end_time := sys.dbms_utility.get_time;
            dbms_output.put_line('ROLLBACK ended in ' || (end_time-start_time)|| 'seconds');
         END IF;
         IF (pin_tran = 3) THEN   
            start_time := dbms_utility.get_time;
               FOR Loop_Counter IN 1..pin_number LOOP
                 DELETE FROM employee2 WHERE id=1;
               END LOOP;
         end_time := sys.dbms_utility.get_time;
         dbms_output.put_line('DELETE ended in ' || (end_time-start_time)|| 'seconds');
         END IF;
         IF(pin_tran =4) THEN
           start_time := dbms_utility.get_time;
               FOR Loop_Counter IN 1..pin_number LOOP
                 UPDATE employee2 SET id=1;
               END LOOP;
        end_time := sys.dbms_utility.get_time;
        dbms_output.put_line('UPDATE ended in ' || (end_time-start_time)|| 'seconds');
        END IF;
END transaction_time;
END TRANSACTION_TIME_UTULITY;
