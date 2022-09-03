data work.emprofile;
input Employee_ID  Name $ Age Department:$20. ;
datalines;

2553 Maria 68 Management
2365 John 57 Production
2385 Peter 70 Administration 
1855 Max 69 Management
2899 Alexant 60 Administration
1998 Sara 45 Production
1829 Alex 59 Production
2668 Parker 61 Production
1954 Victoria 49 Administration
2653 Catherin 50 Management

;
run;
proc contents data=work.emprofile;
run;

proc print data=work.emprofile;
run;


 
data work.empsalary;
input Employee_ID  Department:$20. Job_Title:$25. Hire_date:monyy7. Salary ;
format Salary dollar12.;
datalines;

2553 Management SalesI JUN1997 7501
2365 Production Supervisor MAY1995 9500
2385 Administration Chief SEP1990 11500
1855 Management SalesII NOV1995 7501
2899 Administration Manager NOV1994 10000
1998 Production SalesRepI APR1993 7026
1829 Production SalesRepII FEB1996 7026
2668 Production SalesIII JAN1997 7026
1954 Administration AssManager JAN1999 9800
2653 Management Operator JUL1995 8600


;
run;
proc contents data=work.empsalary;
run;

proc print data=work.empsalary;
format Hire_date monyy7. Salary dollar12.;
run;
 
data work.staff;
input Employee_ID  Name $ Age Department:$20. Job_Title:$25. Hire_date:monyy7. Salary;
 datalines;

 2553 Maria 68 Management SalesI JUN1997 7501
2365 John 57 Production Supervisor MAY1995 9500
2385 Peter 70 Administration Chief SEP1990 11500
1855 Max 69 Management SalesII NOV1995 7501
2899 Alexant 60 Administration Manager NOV1994 10000
1998 Sara 45 Production SalesRepI APR1993 7026
1829 Alex 59 Production SalesRepII FEB1996 7026
2668 Parker 61 Production SalesIII JAN1997 7026
1954 Victoria 49 Administration AssManager JAN1999 9800
2653 Catherin 50 Management Operator JUL1995 8600

;
run;
proc contents data=work.staff;
run;

proc print data=work.staff;
format Hire_date monyy7. Salary dollar12.;
run;
