-- Copyright 2010 – 2024 Rocket Software, Inc. or its affiliates.          
-- This software may be used, modified, and distributed                
-- (provided this notice is included without modification)             
-- solely for internal demonstration purposes with other               
-- Rocket® products, and is otherwise subject to the EULA at       
-- https://www.rocketsoftware.com/company/trust/agreements.          
--                                                                     
-- THIS SOFTWARE IS PROVIDED "AS IS" AND ALL IMPLIED                   
-- WARRANTIES, INCLUDING THE IMPLIED WARRANTIES OF                     
-- MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,               
-- SHALL NOT APPLY.                                                    
-- TO THE EXTENT PERMITTED BY LAW, IN NO EVENT WILL                    
-- ROCKET SOFTWARE HAVE ANY LIABILITY WHATSOEVER IN CONNECTION             
-- WITH THIS SOFTWARE.                                                 
--                                                                     

DROP TABLE BNKACC;
COMMIT;

CREATE TABLE BNKACC
(
    BAC_PID                   CHAR(5) NOT NULL,
    BAC_ACCNO                 CHAR(9) NOT NULL WITH DEFAULT,
    BAC_ACCTYPE               CHAR(1) NOT NULL WITH DEFAULT,
    BAC_BALANCE               DECIMAL(9,2) NOT NULL WITH DEFAULT,
    BAC_LAST_STMT_DTE         DATE NOT NULL WITH DEFAULT,
    BAC_LAST_STMT_BAL         DECIMAL(9,2) NOT NULL WITH DEFAULT,
    BAC_ATM_ENABLED           CHAR(2) NOT NULL WITH DEFAULT,
    BAC_ATM_DAY_LIMIT         DECIMAL(3,0) WITH DEFAULT,
    BAC_ATM_DAY_DTE           DATE WITH DEFAULT,
    BAC_ATM_DAY_AMT           DECIMAL(3,0) WITH DEFAULT,
    BAC_RP1_DAY               CHAR(2) WITH DEFAULT,
    BAC_RP1_AMOUNT            DECIMAL(7,2) WITH DEFAULT,
    BAC_RP1_PID               CHAR(5) WITH DEFAULT,
    BAC_RP1_ACCNO             CHAR(9) WITH DEFAULT,
    BAC_RP1_LAST_PAY          DATE WITH DEFAULT,
    BAC_RP2_DAY               CHAR(2) WITH DEFAULT,
    BAC_RP2_AMOUNT            DECIMAL(7,2) WITH DEFAULT,
    BAC_RP2_PID               CHAR(5) WITH DEFAULT,
    BAC_RP2_ACCNO             CHAR(9) WITH DEFAULT,
    BAC_RP2_LAST_PAY          DATE WITH DEFAULT,
    BAC_RP3_DAY               CHAR(2) WITH DEFAULT,
    BAC_RP3_AMOUNT            DECIMAL(7,2) WITH DEFAULT,
    BAC_RP3_PID               CHAR(5) WITH DEFAULT,
    BAC_RP3_ACCNO             CHAR(9) WITH DEFAULT,
    BAC_RP3_LAST_PAY          DATE WITH DEFAULT,
    BAC_FILLER                CHAR(59) WITH DEFAULT,
    PRIMARY KEY (BAC_ACCNO),
    FOREIGN KEY BAC_CUST (BAC_PID)
            REFERENCES BNKCUST (BCS_PID),
    FOREIGN KEY BAC_TYPE (BAC_ACCTYPE)
            REFERENCES BNKATYPE (BAT_TYPE)
);
--IN DATABASE DBNASE
--AUDIT NONE
--DATA CAPTURE NONE;

CREATE UNIQUE INDEX BNKACC_IDX1 ON BNKACC
(
     BAC_ACCNO
);

CREATE INDEX BNKACC_IDX2 ON BNKACC
(
     BAC_PID
);

INSERT INTO BNKACC VALUES
  ('BANK ','999999991','1',-0000000.00,'2012-01-03',-0000000.00,
   'Y',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('BANK ','999999992','2',-0000000.00,'2012-01-03',-0000000.00,
   'Y',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('BANK ','999999993','3',-0000000.00,'2012-01-03',-0000000.00,
   'Y',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('BANK ','999999994','4',-0000000.00,'2012-01-03',-0000000.00,
   'Y',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('BANK ','999999995','5',-0000000.00,'2012-01-03',-0000000.00,
   'Y',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('BANK ','999999996','6',-0000000.00,'2012-01-03',-0000000.00,
   'Y',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');

INSERT INTO BNKACC VALUES
  ('B0001','737590226','2',-0000514.80,'2012-01-03',-0000514.80,
   'Y',100,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0001','541374829','3',+0000003.60,'2012-01-03',+0000003.60,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0001','450061494','1',+0000750.12,'2012-01-03',+0000750.12,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0002','962732474','1',+0000067.68,'2012-01-03',+0000067.68,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0003','731813282','2',+0000432.96,'2012-01-03',+0000432.96,
   'Y',200,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0003','280458951','5',+0000372.24,'2012-01-03',+0000372.24,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0004','310781989','3',+0000795.52,'2012-01-03',+0000795.52,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0004','014289253','2',-0000079.40,'2012-01-03',-0000079.40,
   'Y',300,'1900-01-01',0,
   '01',23.50,'B0004','310781989','2007-11-01',
   '15',10.00,'B0004','338886041','2007-12-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0004','338886041','1',+0000091.14,'2012-01-03',+0000091.14,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0004','067606426','4',+0000192.24,'2012-01-03',+0000192.24,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0004','067606427','5',+0001453.97,'2012-01-03',+0001453.97,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0005','394333383','1',+0000045.24,'2012-01-03',+0000045.24,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0006','612943325','2',+0000558.62,'2012-01-03',+0000558.62,
   'Y',250,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0006','417984029','1',+0000122.64,'2012-01-03',+0000122.64,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0007','684793285','2',+0000121.25,'2012-01-03',+0000121.25,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0007','704177665','1',+0000532.40,'2012-01-03',+0000532.40,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0007','931008548','3',+0000115.20,'2012-01-03',+0000115.20,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0007','988052896','4',+0000185.00,'2012-01-03',+0000185.00,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0007','725886910','5',+0000039.60,'2012-01-03',+0000039.60,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0008','504706312','5',+0000415.35,'2012-01-03',+0000415.35,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0008','698300146','2',+0000160.65,'2012-01-03',+0000160.65,
   'Y',400,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0008','917953926','1',+0000174.41,'2012-01-03',+0000174.41,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0008','126195094','3',+0000423.60,'2012-01-03',+0000423.60,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0009','613638770','3',+0000051.87,'2012-01-03',+0000051.87,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0009','669078553','2',+0000726.84,'2012-01-03',+0000726.84,
   'Y',200,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0009','492952258','5',+0000069.86,'2012-01-03',+0000069.86,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0009','315929853','1',+0000126.16,'2012-01-03',+0000126.16,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0010','740365828','3',+0000545.01,'2012-01-03',+0000545.01,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0010','403280080','1',+0000491.64,'2012-01-03',+0000491.64,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0011','836284456','2',+0001092.63,'2012-01-03',+0001092.63,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0011','097510533','4',+0000292.50,'2012-01-03',+0000292.50,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0012','889140501','5',+0000190.30,'2012-01-03',+0000190.30,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0013','833282554','4',+0000028.06,'2012-01-03',+0000028.06,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0014','130781989','3',+0000795.52,'2012-01-03',+0000795.52,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0014','104289253','2',-0000079.40,'2012-01-03',-0000079.40,
   'Y',300,'1900-01-01',0,
   '01',23.50,'B0004','310781989','2007-11-01',
   '15',10.00,'B0004','338886041','2007-12-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0014','842013421','1',+0000019.25,'2012-01-03',+0000019.25,
   'Y',300,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0014','607606426','4',+0000192.24,'2012-01-03',+0000192.24,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0014','607606427','5',+0001453.97,'2012-01-03',+0001453.97,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0015','440261495','4',+0000127.50,'2012-01-03',+0000127.50,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0015','334909021','3',+0000115.92,'2012-01-03',+0000115.92,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0015','021501544','1',+0000222.60,'2012-01-03',+0000222.60,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0016','250299477','3',+0000148.50,'2012-01-03',+0000148.50,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0016','742159458','4',+0000052.60,'2012-01-03',+0000052.60,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0016','516444498','2',+0000757.38,'2012-01-03',+0000757.38,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0017','824144721','5',+0000049.40,'2012-01-03',+0000049.40,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0017','734967143','3',+0000373.20,'2012-01-03',+0000373.20,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0017','509231712','1',+0000317.40,'2012-01-03',+0000317.40,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0017','632352126','2',+0000609.74,'2012-01-03',+0000609.74,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0018','535696493','2',+0000436.01,'2012-01-03',+0000436.01,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0018','310165991','1',+0000497.76,'2012-01-03',+0000497.76,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0018','273895979','4',+0000158.20,'2012-01-03',+0000158.20,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0018','672164551','3',+0000497.17,'2012-01-03',+0000497.17,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0019','159914519','2',+0000336.87,'2012-01-03',+0000336.87,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0019','452206167','3',+0000248.16,'2012-01-03',+0000248.16,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0019','691529946','5',+0000050.38,'2012-01-03',+0000050.38,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0019','048424439','4',+0000526.05,'2012-01-03',+0000526.05,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0020','458826510','2',+0000111.15,'2012-01-03',+0000111.15,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0020','911829818','5',+0000000.00,'2012-01-03',+0000000.00,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0020','532404349','1',+0000015.34,'2012-01-03',+0000015.34,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0021','580996260','4',+0000433.16,'2012-01-03',+0000433.16,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0021','287569396','1',+0000246.01,'2012-01-03',+0000246.01,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0021','148367063','3',+0000397.94,'2012-01-03',+0000397.94,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0022','728190635','5',+0000152.49,'2012-01-03',+0000152.49,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0023','178238731','1',+0000432.39,'2012-01-03',+0000432.39,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0023','412718856','3',+0000474.00,'2012-01-03',+0000474.00,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0023','915945638','5',+0000223.44,'2012-01-03',+0000223.44,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0023','614487822','2',+0000318.82,'2012-01-03',+0000318.82,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0024','575140550','3',+0000255.78,'2012-01-03',+0000255.78,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0024','876614916','4',+0000058.90,'2012-01-03',+0000058.90,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0024','485960434','2',+0000176.12,'2012-01-03',+0000176.12,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0024','766484266','1',+0000419.75,'2012-01-03',+0000419.75,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0025','323914645','2',+0000066.57,'2012-01-03',+0000066.57,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0025','255909083','4',+0000001.68,'2012-01-03',+0000001.68,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0025','472365347','3',+0000390.57,'2012-01-03',+0000390.57,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0025','289919943','1',+0000277.30,'2012-01-03',+0000277.30,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0026','507537831','5',+0000120.80,'2012-01-03',+0000120.80,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0026','103842702','2',+0000002.98,'2012-01-03',+0000002.98,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0026','025399550','4',+0000351.00,'2012-01-03',+0000351.00,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0027','938696955','3',+0000215.73,'2012-01-03',+0000215.73,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0028','459775790','5',+0000092.95,'2012-01-03',+0000092.95,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0028','494077239','3',+0000000.00,'2012-01-03',+0000000.00,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0028','090543026','4',+0000682.08,'2012-01-03',+0000682.08,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0028','930886725','1',+0000072.54,'2012-01-03',+0000072.54,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0028','916885997','2',+0000942.33,'2012-01-03',+0000942.33,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0029','143898379','4',+0000697.60,'2012-01-03',+0000697.60,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0029','374126010','3',+0000809.55,'2012-01-03',+0000809.55,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0029','946046572','1',+0000185.85,'2012-01-03',+0000185.85,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0029','420152459','2',+0000196.70,'2012-01-03',+0000196.70,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0029','213882639','5',+0000121.41,'2012-01-03',+0000121.41,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0030','766814914','5',+0000216.36,'2012-01-03',+0000216.36,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0030','821196059','3',+0000075.99,'2012-01-03',+0000075.99,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0031','302433706','3',+0000134.20,'2012-01-03',+0000134.20,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0032','624576817','4',+0000322.05,'2012-01-03',+0000322.05,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0033','620669186','5',+0000030.60,'2012-01-03',+0000030.60,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0033','722655363','2',+0000091.20,'2012-01-03',+0000091.20,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0033','658801552','1',+0000041.70,'2012-01-03',+0000041.70,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0034','228552724','4',+0000079.92,'2012-01-03',+0000079.92,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0034','154460444','2',+0000271.44,'2012-01-03',+0000271.44,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0034','582910260','5',+0000592.02,'2012-01-03',+0000592.02,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0035','990768568','3',+0000052.06,'2012-01-03',+0000052.06,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0035','446453890','1',+0000216.64,'2012-01-03',+0000216.64,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0035','054228132','4',+0000252.56,'2012-01-03',+0000252.56,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0035','564387410','2',+0000222.64,'2012-01-03',+0000222.64,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0035','389624103','5',+0000858.78,'2012-01-03',+0000858.78,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0036','443556119','2',+0000430.05,'2012-01-03',+0000430.05,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('B0036','388063602','5',+0000399.33,'2012-01-03',+0000399.33,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('T0001','000000001','1',+0000091.14,'2012-01-03',+0000091.14,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('T0001','000000002','2',-0000079.40,'2012-01-03',-0000079.40,
   'Y',300,'1900-01-01',0,
   '01',23.50,'T0001','000000001','2007-11-01',
   '15',10.00,'T0001','000000003','2007-11-15',
   '21',05.00,'T0001','000000005','2007-12-21',
   ' ');
INSERT INTO BNKACC VALUES
  ('T0001','000000003','3',+0000795.52,'2012-01-03',+0000795.52,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('T0001','000000004','4',+0000192.24,'2012-01-03',+0000192.24,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');
INSERT INTO BNKACC VALUES
  ('T0001','000000005','5',+0001453.97,'2012-01-03',+0001453.97,
   'N',0,'1900-01-01',0,
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   '00',0,' ',' ','1900-01-01',
   ' ');

COMMIT;