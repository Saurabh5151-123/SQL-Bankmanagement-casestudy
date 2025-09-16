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
EMPDUP                         TABLE                                                                                                                                                                    
EMPLIST                        TABLE                                                                                                                                                                    
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
T                              TABLE                                                                                                                                                                    
TEACHER                        TABLE                                                                                                                                                                    
VIDYARTHI                      TABLE                                                                                                                                                                    

42 rows selected.

SQL> create table customers (customerID number primary key,
     name varchar(25) not null,
     email varchar(25) unique,
     phone varchar(10) not null,
     address varchar(25));

Table created.

SQL> insert into customers values ('&customerID','&name','&email','&phone','&address')
  2  /
Enter value for customerid: 10
Enter value for name: saurabh
Enter value for email: saurabh@gmail.com
Enter value for phone: 8805652078
Enter value for address: Nagar
old   1: insert into customers values ('&customerID','&name','&email','&phone','&address')
new   1: insert into customers values ('10','saurabh','saurabh@gmail.com','8805652078','Nagar')

1 row created.

SQL> /
Enter value for customerid: 20
Enter value for name: aditya
Enter value for email: adi123@gmail.com
Enter value for phone: 7558687490
Enter value for address: Pune
old   1: insert into customers values ('&customerID','&name','&email','&phone','&address')
new   1: insert into customers values ('20','aditya','adi123@gmail.com','7558687490','Pune')

1 row created.

SQL> /
Enter value for customerid: 30
Enter value for name: uday
Enter value for email: uday21@gmail.com
Enter value for phone: 8626048488
Enter value for address: Shrirampur
old   1: insert into customers values ('&customerID','&name','&email','&phone','&address')
new   1: insert into customers values ('30','uday','uday21@gmail.com','8626048488','Shrirampur')

1 row created.

SQL> /
Enter value for customerid: 40
Enter value for name: aniket
Enter value for email: ani32@gmail.com
Enter value for phone: 9651758212
Enter value for address: Mumbai
old   1: insert into customers values ('&customerID','&name','&email','&phone','&address')
new   1: insert into customers values ('40','aniket','ani32@gmail.com','9651758212','Mumbai')

1 row created.

SQL> /
Enter value for customerid: 50
Enter value for name: yash
Enter value for email: yash@gmail.com
Enter value for phone: 8561207541
Enter value for address: Delhi
old   1: insert into customers values ('&customerID','&name','&email','&phone','&address')
new   1: insert into customers values ('50','yash','yash@gmail.com','8561207541','Delhi')

1 row created.

SQL> /
Enter value for customerid: 60
Enter value for name: lalit
Enter value for email: lalit98@gmail.com
Enter value for phone: 7432519532
Enter value for address: Kashmir
old   1: insert into customers values ('&customerID','&name','&email','&phone','&address')
new   1: insert into customers values ('60','lalit','lalit98@gmail.com','7432519532','Kashmir')

1 row created.

SQL> /
Enter value for customerid: 70
Enter value for name: rahul
Enter value for email: rahul67@gmail.com
Enter value for phone: 7484156285
Enter value for address: Thane
old   1: insert into customers values ('&customerID','&name','&email','&phone','&address')
new   1: insert into customers values ('70','rahul','rahul67@gmail.com','7484156285','Thane')

1 row created.

SQL> select * from customers;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        40 aniket                    ani32@gmail.com           9651758212 Mumbai                                                                                                                        
        50 yash                      yash@gmail.com            8561207541 Delhi                                                                                                                         
        60 lalit                     lalit98@gmail.com         7432519532 Kashmir                                                                                                                       
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         

7 rows selected.

SQL> create table accounts(accountID number primary key,
     customerID number,
     accountType varchar(20) not null,
     balance number default 0 check(balance>=0),
     foreign key(customerID) REFERENCES customers(customerID));

Table created.

SQL> insert into accounts values ('&accountID','&customerID','&accountType','&balance');
Enter value for accountid: 101
Enter value for customerid: 20
Enter value for accounttype: savings
Enter value for balance: 1500
old   1: insert into accounts values ('&accountID','&customerID','&accountType','&balance')
new   1: insert into accounts values ('101','20','savings','1500')

1 row created.

SQL> /
Enter value for accountid: 102
Enter value for customerid: 40
Enter value for accounttype: current
Enter value for balance: 3500
old   1: insert into accounts values ('&accountID','&customerID','&accountType','&balance')
new   1: insert into accounts values ('102','40','current','3500')

1 row created.

SQL> /
Enter value for accountid: 103
Enter value for customerid: 10
Enter value for accounttype: current
Enter value for balance: 1000
old   1: insert into accounts values ('&accountID','&customerID','&accountType','&balance')
new   1: insert into accounts values ('103','10','current','1000')

1 row created.

SQL> /
Enter value for accountid: 104
Enter value for customerid: 50
Enter value for accounttype: savings
Enter value for balance: 2000
old   1: insert into accounts values ('&accountID','&customerID','&accountType','&balance')
new   1: insert into accounts values ('104','50','savings','2000')

1 row created.

SQL> /
Enter value for accountid: 105
Enter value for customerid: 30
Enter value for accounttype: current
Enter value for balance: 2500
old   1: insert into accounts values ('&accountID','&customerID','&accountType','&balance')
new   1: insert into accounts values ('105','30','current','2500')

1 row created.

SQL> /
Enter value for accountid: 106
Enter value for customerid: 70
Enter value for accounttype: savings
Enter value for balance: 4000
old   1: insert into accounts values ('&accountID','&customerID','&accountType','&balance')
new   1: insert into accounts values ('106','70','savings','4000')

1 row created.

SQL> /
Enter value for accountid: 107
Enter value for customerid: 60
Enter value for accounttype: savings
Enter value for balance: 5000
old   1: insert into accounts values ('&accountID','&customerID','&accountType','&balance')
new   1: insert into accounts values ('107','60','savings','5000')

1 row created.

SQL> select * from accounts;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       101         20 savings                    1500                                                                                                                                                   
       102         40 current                    3500                                                                                                                                                   
       103         10 current                    1000                                                                                                                                                   
       104         50 savings                    2000                                                                                                                                                   
       105         30 current                    2500                                                                                                                                                   
       106         70 savings                    4000                                                                                                                                                   
       107         60 savings                    5000                                                                                                                                                   

7 rows selected.

SQL> create table transactions(transactionID number primary key,
     accountID number,
     tdate date not null,
     amount number not null check(amount>=0),
     transactionType varchar(20) not null,
     foreign key (accountID) REFERENCES accounts(accountID));

Table created.

SQL> insert into transactions values('&transactionID','&accountID','&tdate','&amount','&transactionType');
Enter value for transactionid: 1001
Enter value for accountid: 101
Enter value for tdate: 01-JAN-2023
Enter value for amount: 500
Enter value for transactiontype: deposit
old   1: insert into transactions values('&transactionID','&accountID','&tdate','&amount','&transactionType')
new   1: insert into transactions values('1001','101','01-JAN-2023','500','deposit')

1 row created.

SQL> /
Enter value for transactionid: 1002
Enter value for accountid: 107
Enter value for tdate: 02-MAR-2023
Enter value for amount: 750
Enter value for transactiontype: deposit
old   1: insert into transactions values('&transactionID','&accountID','&tdate','&amount','&transactionType')
new   1: insert into transactions values('1002','107','02-MAR-2023','750','deposit')

1 row created.

SQL> /
Enter value for transactionid: 1003
Enter value for accountid: 105
Enter value for tdate: 21-AUG-2022
Enter value for amount: 1000
Enter value for transactiontype: withdrawal
old   1: insert into transactions values('&transactionID','&accountID','&tdate','&amount','&transactionType')
new   1: insert into transactions values('1003','105','21-AUG-2022','1000','withdrawal')

1 row created.

SQL> /
Enter value for transactionid: 1004
Enter value for accountid: 103
Enter value for tdate: 10-DEC-2024
Enter value for amount: 1500
Enter value for transactiontype: deposit
old   1: insert into transactions values('&transactionID','&accountID','&tdate','&amount','&transactionType')
new   1: insert into transactions values('1004','103','10-DEC-2024','1500','deposit')

1 row created.

SQL> /
Enter value for transactionid: 1005
Enter value for accountid: 102
Enter value for tdate: 14-JUN-2024
Enter value for amount: 550
Enter value for transactiontype: withdrawal
old   1: insert into transactions values('&transactionID','&accountID','&tdate','&amount','&transactionType')
new   1: insert into transactions values('1005','102','14-JUN-2024','550','withdrawal')

1 row created.

SQL> /
Enter value for transactionid: 1006
Enter value for accountid: 104
Enter value for tdate: 01-MAY-2025
Enter value for amount: 1025
Enter value for transactiontype: withdrawal
old   1: insert into transactions values('&transactionID','&accountID','&tdate','&amount','&transactionType')
new   1: insert into transactions values('1006','104','01-MAY-2025','1025','withdrawal')

1 row created.

SQL> /
Enter value for transactionid: 1007
Enter value for accountid: 106
Enter value for tdate: 14-AUG-2025
Enter value for amount: 2000
Enter value for transactiontype: deposit
old   1: insert into transactions values('&transactionID','&accountID','&tdate','&amount','&transactionType')
new   1: insert into transactions values('1007','106','14-AUG-2025','2000','deposit')

1 row created.

SQL> select * from transactions;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1001        101 01-JAN-23        500 deposit                                                                                                                                                   
         1002        107 02-MAR-23        750 deposit                                                                                                                                                   
         1003        105 21-AUG-22       1000 withdrawal                                                                                                                                                
         1004        103 10-DEC-24       1500 deposit                                                                                                                                                   
         1005        102 14-JUN-24        550 withdrawal                                                                                                                                                
         1006        104 01-MAY-25       1025 withdrawal                                                                                                                                                
         1007        106 14-AUG-25       2000 deposit                                                                                                                                                   

7 rows selected.

SQL> select name,email from customers;

NAME                      EMAIL                                                                                                                                                                         
------------------------- -------------------------                                                                                                                                                     
saurabh                   saurabh@gmail.com                                                                                                                                                             
aditya                    adi123@gmail.com                                                                                                                                                              
uday                      uday21@gmail.com                                                                                                                                                              
aniket                    ani32@gmail.com                                                                                                                                                               
yash                      yash@gmail.com                                                                                                                                                                
lalit                     lalit98@gmail.com                                                                                                                                                             
rahul                     rahul67@gmail.com                                                                                                                                                             

7 rows selected.

SQL> select accountID,balance from accounts;

 ACCOUNTID    BALANCE                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       101       1500                                                                                                                                                                                   
       102       3500                                                                                                                                                                                   
       103       1000                                                                                                                                                                                   
       104       2000                                                                                                                                                                                   
       105       2500                                                                                                                                                                                   
       106       4000                                                                                                                                                                                   
       107       5000                                                                                                                                                                                   

7 rows selected.

SQL> select * from transactions;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1001        101 01-JAN-23        500 deposit                                                                                                                                                   
         1002        107 02-MAR-23        750 deposit                                                                                                                                                   
         1003        105 21-AUG-22       1000 withdrawal                                                                                                                                                
         1004        103 10-DEC-24       1500 deposit                                                                                                                                                   
         1005        102 14-JUN-24        550 withdrawal                                                                                                                                                
         1006        104 01-MAY-25       1025 withdrawal                                                                                                                                                
         1007        106 14-AUG-25       2000 deposit                                                                                                                                                   

7 rows selected.

SQL> select customerID,name,email from customers;

CUSTOMERID NAME                      EMAIL                                                                                                                                                              
---------- ------------------------- -------------------------                                                                                                                                          
        10 saurabh                   saurabh@gmail.com                                                                                                                                                  
        20 aditya                    adi123@gmail.com                                                                                                                                                   
        30 uday                      uday21@gmail.com                                                                                                                                                   
        40 aniket                    ani32@gmail.com                                                                                                                                                    
        50 yash                      yash@gmail.com                                                                                                                                                     
        60 lalit                     lalit98@gmail.com                                                                                                                                                  
        70 rahul                     rahul67@gmail.com                                                                                                                                                  

7 rows selected.

SQL> select * from customers;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        40 aniket                    ani32@gmail.com           9651758212 Mumbai                                                                                                                        
        50 yash                      yash@gmail.com            8561207541 Delhi                                                                                                                         
        60 lalit                     lalit98@gmail.com         7432519532 Kashmir                                                                                                                       
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         

7 rows selected.

SQL> select * from transactions where amount>500;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1002        107 02-MAR-23        750 deposit                                                                                                                                                   
         1003        105 21-AUG-22       1000 withdrawal                                                                                                                                                
         1004        103 10-DEC-24       1500 deposit                                                                                                                                                   
         1005        102 14-JUN-24        550 withdrawal                                                                                                                                                
         1006        104 01-MAY-25       1025 withdrawal                                                                                                                                                
         1007        106 14-AUG-25       2000 deposit                                                                                                                                                   

6 rows selected.

SQL> select customerID,name,email,phone,address from customers;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        40 aniket                    ani32@gmail.com           9651758212 Mumbai                                                                                                                        
        50 yash                      yash@gmail.com            8561207541 Delhi                                                                                                                         
        60 lalit                     lalit98@gmail.com         7432519532 Kashmir                                                                                                                       
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         

7 rows selected.

SQL> select * from transactions where accountID=101;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1001        101 01-JAN-23        500 deposit                                                                                                                                                   

SQL> select * from customers where name like 's%';

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         

SQL> select * from customers where email like '%gmail.com';

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        40 aniket                    ani32@gmail.com           9651758212 Mumbai                                                                                                                        
        50 yash                      yash@gmail.com            8561207541 Delhi                                                                                                                         
        60 lalit                     lalit98@gmail.com         7432519532 Kashmir                                                                                                                       
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         

7 rows selected.

SQL> select * from transactions where tdate between '01-DEC-2024' and '31-DEC-2024';

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1004        103 10-DEC-24       1500 deposit                                                                                                                                                   

SQL> select * from accounts where balance<4000;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       101         20 savings                    1500                                                                                                                                                   
       102         40 current                    3500                                                                                                                                                   
       103         10 current                    1000                                                                                                                                                   
       104         50 savings                    2000                                                                                                                                                   
       105         30 current                    2500                                                                                                                                                   

SQL> select * from customers where phone like '%484%';

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         

SQL> select * from customers where address like 'Pune%';

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          

SQL> select * from transactions where transactionType='deposit';

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1001        101 01-JAN-23        500 deposit                                                                                                                                                   
         1002        107 02-MAR-23        750 deposit                                                                                                                                                   
         1004        103 10-DEC-24       1500 deposit                                                                                                                                                   
         1007        106 14-AUG-25       2000 deposit                                                                                                                                                   

SQL> select * from transactions where transactionType IN ('deposit','withdrawal');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1001        101 01-JAN-23        500 deposit                                                                                                                                                   
         1002        107 02-MAR-23        750 deposit                                                                                                                                                   
         1003        105 21-AUG-22       1000 withdrawal                                                                                                                                                
         1004        103 10-DEC-24       1500 deposit                                                                                                                                                   
         1005        102 14-JUN-24        550 withdrawal                                                                                                                                                
         1006        104 01-MAY-25       1025 withdrawal                                                                                                                                                
         1007        106 14-AUG-25       2000 deposit                                                                                                                                                   

7 rows selected.

SQL> select * from customers where customerID IN (select customerID from accounts where accountType IN ('savings','current'));

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          
        40 aniket                    ani32@gmail.com           9651758212 Mumbai                                                                                                                        
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         
        50 yash                      yash@gmail.com            8561207541 Delhi                                                                                                                         
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         
        60 lalit                     lalit98@gmail.com         7432519532 Kashmir                                                                                                                       

7 rows selected.

SQL> select * from transactions where accountID IN (102,104,106);

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1005        102 14-JUN-24        550 withdrawal                                                                                                                                                
         1006        104 01-MAY-25       1025 withdrawal                                                                                                                                                
         1007        106 14-AUG-25       2000 deposit                                                                                                                                                   

SQL> select * from accounts where balance between 1000 and 5000;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       101         20 savings                    1500                                                                                                                                                   
       102         40 current                    3500                                                                                                                                                   
       103         10 current                    1000                                                                                                                                                   
       104         50 savings                    2000                                                                                                                                                   
       105         30 current                    2500                                                                                                                                                   
       106         70 savings                    4000                                                                                                                                                   
       107         60 savings                    5000                                                                                                                                                   

7 rows selected.

SQL> select * from customers where phone is not null;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        40 aniket                    ani32@gmail.com           9651758212 Mumbai                                                                                                                        
        50 yash                      yash@gmail.com            8561207541 Delhi                                                                                                                         
        60 lalit                     lalit98@gmail.com         7432519532 Kashmir                                                                                                                       
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         

7 rows selected.

SQL> select * from transactions where amount is not null;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
         1001        101 01-JAN-23        500 deposit                                                                                                                                                   
         1002        107 02-MAR-23        750 deposit                                                                                                                                                   
         1003        105 21-AUG-22       1000 withdrawal                                                                                                                                                
         1004        103 10-DEC-24       1500 deposit                                                                                                                                                   
         1005        102 14-JUN-24        550 withdrawal                                                                                                                                                
         1006        104 01-MAY-25       1025 withdrawal                                                                                                                                                
         1007        106 14-AUG-25       2000 deposit                                                                                                                                                   

7 rows selected.

SQL> select * from customers where address is not null;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        40 aniket                    ani32@gmail.com           9651758212 Mumbai                                                                                                                        
        50 yash                      yash@gmail.com            8561207541 Delhi                                                                                                                         
        60 lalit                     lalit98@gmail.com         7432519532 Kashmir                                                                                                                       
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         

7 rows selected.

SQL> select balance from accounts where accountID is not null;

   BALANCE                                                                                                                                                                                              
----------                                                                                                                                                                                              
      1500                                                                                                                                                                                              
      3500                                                                                                                                                                                              
      1000                                                                                                                                                                                              
      2000                                                                                                                                                                                              
      2500                                                                                                                                                                                              
      4000                                                                                                                                                                                              
      5000                                                                                                                                                                                              

7 rows selected.

SQL> select * from customers where email is not null;

CUSTOMERID NAME                      EMAIL                     PHONE      ADDRESS                                                                                                                       
---------- ------------------------- ------------------------- ---------- -------------------------                                                                                                     
        10 saurabh                   saurabh@gmail.com         8805652078 Nagar                                                                                                                         
        20 aditya                    adi123@gmail.com          7558687490 Pune                                                                                                                          
        30 uday                      uday21@gmail.com          8626048488 Shrirampur                                                                                                                    
        40 aniket                    ani32@gmail.com           9651758212 Mumbai                                                                                                                        
        50 yash                      yash@gmail.com            8561207541 Delhi                                                                                                                         
        60 lalit                     lalit98@gmail.com         7432519532 Kashmir                                                                                                                       
        70 rahul                     rahul67@gmail.com         7484156285 Thane                                                                                                                         

7 rows selected.

SQL> spool off;
