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
CLASS churn / param=ref ref=first ;
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
CLASS churn / param=ref ref=first ;
MODEL churn = Day_Mins;
run ;

PROC LOGISTIC data= Churn2 plots=all ;
CLASS churn / param=ref ref=first ;
MODEL churn = Day_Mins;
run ;


/* Question 5.3 */

PROC LOGISTIC data= Churn2 plots=all ;
CLASS churn Int_l_Plan VMail_Plan / param=ref ref=first ;
MODEL churn = Int_l_Plan VMail_Plan Day_Mins Eve_Mins Night_Mins Intl_Mins Intl_Calls Intl_Charge V_CSC;
run ;

