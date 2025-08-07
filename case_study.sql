SQL> set pagesize 200
SQL> set linesize 200
SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID                                                                                                                                                       
------------------------------ ------- ----------                                                                                                                                                       
BIKES                          TABLE                                                                                                                                                                    
CHILD                          TABLE                                                                                                                                                                    
CLASS                          TABLE                                                                                                                                                                    
COMPANY                        TABLE                                                                                                                                                                    
COUNTRIES                      TABLE                                                                                                                                                                    
CUST                           TABLE                                                                                                                                                                    
CUSTMOR                        TABLE                                                                                                                                                                    
DEPARTMENTS                    TABLE                                                                                                                                                                    
DEPT                           TABLE                                                                                                                                                                    
DEPT1                          TABLE                                                                                                                                                                    
EMP                            TABLE                                                                                                                                                                    
EMP1                           TABLE                                                                                                                                                                    
EMP123                         TABLE                                                                                                                                                                    
EMP321                         TABLE                                                                                                                                                                    
EMP5                           TABLE                                                                                                                                                                    
EMPLOY                         TABLE                                                                                                                                                                    
EMPLOYEES                      TABLE                                                                                                                                                                    
EMP_DETAILS_VIEW               VIEW                                                                                                                                                                     
JOBS                           TABLE                                                                                                                                                                    
JOB_HISTORY                    TABLE                                                                                                                                                                    
LAPTOP                         TABLE                                                                                                                                                                    
LOCATIONS                      TABLE                                                                                                                                                                    
MYCOPY                         TABLE                                                                                                                                                                    
NOKER                          TABLE                                                                                                                                                                    
ORDCPY                         TABLE                                                                                                                                                                    
ORDER_DETAILS                  TABLE                                                                                                                                                                    
ORD_CPY1                       TABLE                                                                                                                                                                    
PARENT                         TABLE                                                                                                                                                                    
PRODUCT                        TABLE                                                                                                                                                                    
PRODUCT1                       TABLE                                                                                                                                                                    
REGIONS                        TABLE                                                                                                                                                                    
SAURABH                        TABLE                                                                                                                                                                    
SAURABH1                       TABLE                                                                                                                                                                    
SCHOOL                         TABLE                                                                                                                                                                    
STUD                           TABLE                                                                                                                                                                    
STUDENT                        TABLE                                                                                                                                                                    
STUDENT1                       TABLE                                                                                                                                                                    
TEACHER                        TABLE                                                                                                                                                                    
VIDYARTHI                      TABLE                                                                                                                                                                    

39 rows selected.

SQL> create table customers(customeId number primary key,name varchar2(100) not null,email varchar2(100) unique,phone varchar2(15) not null,address varchar2(255));

Table created.

SQL> insert into customers(customeId,name,email,phone,address) values(1,'John Doe','john@example.com','1234567890','123 Elm st');

1 row created.

SQL> select * from customers;

 CUSTOMEID NAME                                                                                                                                                                                         
---------- ----------------------------------------------------------------------------------------------------                                                                                         
EMAIL                                                                                                PHONE                                                                                              
---------------------------------------------------------------------------------------------------- ---------------                                                                                    
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         1 John Doe                                                                                                                                                                                     
john@example.com                                                                                     1234567890                                                                                         
123 Elm st                                                                                                                                                                                              
                                                                                                                                                                                                        

SQL> drop table customers purge;

Table dropped.

SQL> create table customers(customerId number primary key,name varchar2(25) not null,email varchar2(25) unique,phone varchar2(10) not null,address varchar2(25));

Table created.

SQL> insert into customers(customeId,name,email,phone,address) values(1,'John Doe','john@example.com','1234567890','123 Elm st');
insert into customers(customeId,name,email,phone,address) values(1,'John Doe','john@example.com','1234567890','123 Elm st')
                      *
ERROR at line 1:
ORA-00904: "CUSTOMEID": invalid identifier 


SQL> insert into customers(customerId,name,email,phone,address) values(1,'John Doe','john@example.com','1234567890','123 Elm st');

1 row created.

SQL> create table accounts(accountId number primary key,customerId number,accountType varchar2(20) not null,balance number default 0 check(balance>=0),foreign key(customerId) REFERENCES customers(customerId));

Table created.

SQL>  insert into accounts(accountId,customerId,accountType,balance) values(1,1,'savings',1500.00);

1 row created.

SQL> create table transactions(transactionId number primary key,accountId number,tdate date not null,amount number not null check(amount>=0),transactionType varchar2(20) not null,foreign key (accountId) REFERENCES accounts(accountId));

Table created.

SQL> insert into transactions(transactionId,accountId,tdate,amount,transactionType) values (1,1,to_date('2003-01-01','yyyy-mm-dd'),500.00,'deposit');

1 row created.

SQL> select * from customers;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from accounts;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
         1          1 savings                    1500                                                                                                                                                   

SQL> select * from transactions;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select name,email from customers;

NAME                      EMAIL                                                                                                                                                                         
------------------------- -------------------------                                                                                                                                                     
John Doe                  john@example.com                                                                                                                                                              

SQL> select accountId,balance from accounts;

 ACCOUNTID    BALANCE                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
         1       1500                                                                                                                                                                                   

SQL> select * from transactions;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select customerId,name,email from customers;

CUSTOMERID NAME                      EMAIL                                                                                                                                                              
---------- ------------------------- -------------------------                                                                                                                                          
         1 John Doe                  john@example.com                                                                                                                                                   

SQL> select * from customers;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from transactions where amount>500;

no rows selected

SQL> select customerId,name,email,phone,address from customers;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from transactions where accountId=1;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from customers where isactive=1;
select * from customers where isactive=1
                              *
ERROR at line 1:
ORA-00904: "ISACTIVE": invalid identifier 


SQL> select * from customers where name like 'J%';

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from customers where email like '%example.com';

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from transactions where tdate between to_date('2003-01-01','yyyy-mm-dd') and to_date('2003-01-31','yyyy-mm-dd');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from accounts where balance<500;

no rows selected

SQL> select * from customers where phone like '%123%';

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from customers where address like '123%';

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from transactions where transactionType='deposit';

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from transactions where transcationType in ('deposit','withdrawal');
select * from transactions where transcationType in ('deposit','withdrawal')
                                 *
ERROR at line 1:
ORA-00904: "TRANSCATIONTYPE": invalid identifier 


SQL> select * from transactions where transactionType in ('deposit','withdrawal');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from customers where customerId in (select customerId from accounts where accountType in ('savings','checking'));

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from transactions where accountId in (102,104,106);

no rows selected

SQL> select * from accounts where balance between 1000 and 5000;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
         1          1 savings                    1500                                                                                                                                                   

SQL> select * from customers where phone is null;

no rows selected

SQL> select * from transactions where amount is null;

no rows selected

SQL> select * from customers where address is null;

no rows selected

SQL> select balance from accounts where accountId is null ;

no rows selected

SQL> select all from customers where isactive is null or isactive=0;
select all from customers where isactive is null or isactive=0
           *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select * from customers where isactive is null or isactive=0;
select * from customers where isactive is null or isactive=0
                                                  *
ERROR at line 1:
ORA-00904: "ISACTIVE": invalid identifier 


SQL> select * from customers where email is not null;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select accountId,customerId,balance case when balance<1000 then 'low balance' else 'high balance' end as balanceStatus from accounts;
select accountId,customerId,balance case when balance<1000 then 'low balance' else 'high balance' end as balanceStatus from accounts
                                         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select accountId,customerId,balance from accounts where case when balance<1000 then 'low balance' else 'high balance' end as balanceStatus;
select accountId,customerId,balance from accounts where case when balance<1000 then 'low balance' else 'high balance' end as balanceStatus
                                                                                                                          *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select accountId,customerId,balance from accounts where case when balance<1000 then 'low balance' else 'high balance'as balanceStatus;
select accountId,customerId,balance from accounts where case when balance<1000 then 'low balance' else 'high balance'as balanceStatus
                                                                                                                     *
ERROR at line 1:
ORA-00905: missing keyword 


SQL> select transactionType,case when amount>1000 then 'high transaction' else 'low transaction' end as transactionStatus from transactions where amount is not null;

TRANSACTIONTYPE      TRANSACTIONSTATU                                                                                                                                                                   
-------------------- ----------------                                                                                                                                                                   
deposit              low transaction                                                                                                                                                                    

SQL> select accountId,customerId,balance,case when balance<1000 then 'low balance' else 'high balance' end as balanceStatus from accounts;

 ACCOUNTID CUSTOMERID    BALANCE BALANCESTATU                                                                                                                                                           
---------- ---------- ---------- ------------                                                                                                                                                           
         1          1       1500 high balance                                                                                                                                                           

SQL>  select * from customers where IsActive is null or IsActive=0;
 select * from customers where IsActive is null or IsActive=0
                                                   *
ERROR at line 1:
ORA-00904: "ISACTIVE": invalid identifier 


SQL> select * from transactions where amount>1000;

no rows selected

SQL> select * from transactions order by tdate desc;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from transactions where transactionType='deposit' order by amount desc;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from (select * from transactions order by tdate desc) where ROWNUM<=5;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from transactions order by transactionType asc,amount desc;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from transactions where amount>1000 and (transactionType='withdrawal' or transactionType='deposit');

no rows selected

SQL> select * from transactions where amount>400 and (transactionType='withdrawal' or transactionType='deposit');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from transactions where tdate between to_date('2003-01-01','yyyy-mm-dd') and to_date('2003-06-30','yyyy-mm-dd');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from transactions where transactionType in ('deposit','withdrawal');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-03        500 deposit                                                                                                                                                   

SQL> select * from customers where address is null;

no rows selected

SQL> select * from customers order by asc nulls last;
select * from customers order by asc nulls last
                                 *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select * from customers order by address asc nulls last;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> select * from customers order by (case when address is null then 1 else 0 end),address asc;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
         1 John Doe                  john@example.com          1234567890 123 Elm st                                                                                                                    

SQL> spool off;
