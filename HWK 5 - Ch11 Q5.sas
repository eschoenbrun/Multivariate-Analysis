/* Question 5.1 */

libname sas_data "C:\Users\Stevens\Desktop\SAS" access=read;run;

proc copy in=sas_data out=work;
select churn;
run;


data churn_new;
	set churn;
	if CustServ_Calls < 2 then V_CSC=0;
	else if CustServ_Calls < 4 then V_CSC=1;
	else V_CSC=2;
run;

ods graphics on;
PROC LOGISTIC data= churn_new plots=all ;
CLASS V_CSC (ref='0') / param=ref ;
MODEL churn = V_CSC;
run ;

/* Question 5.2 */

data Churn1 ;
   set churn_new;
   if mod(_n_,2) = 1;
run;

data Churn2 ;
   set churn_new;
   if mod(_n_,2) = 0;
run;

PROC LOGISTIC data= Churn1 plots=all ;
MODEL churn = Day_Mins;
run ;

PROC LOGISTIC data= Churn2 plots=all ;
MODEL churn = Day_Mins;
run ;


/* Question 5.3 */

data Churn_new2;
set Churn_new;
if int_l_plan="no" then  International_Plan_indicator=0;
     else International_Plan_indicator=1;
if vmail_plan="no" then  Voice_Plan_indicator=0;
     else Voice_Plan_indicator=1;
if churn="False." then V_churn=0;
else V_churn=1;

if CustServ_Calls < 4 then V_CSC2=0;
else V_CSC2=1;

run;

proc logistic data=Churn_new2 plot = all descending;
model v_churn = International_Plan_indicator Voice_Plan_indicator V_CSC2 account_length day_mins eve_mins night_mins intl_mins;

quit;
