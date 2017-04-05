libname sas_data "C:\Users\Stevens\Desktop\SAS" access=read;
run;

proc copy in=sas_data out=work;
select lung;
run;

proc reg data= lung;
     model  Height_oldest_child = Age_Oldest_child Weight_Oldest_child  Height_Mother Weight_mother Height_father Weight_father 
	/ selection = rsquare adjrsq cp aic partial details;
  run;

  proc reg data= lung;
     model  Height_oldest_child = Age_Oldest_child Weight_Oldest_child  Height_Mother Weight_mother Height_father Weight_father 
	/ selection = forward;
  run;

  proc reg data= lung;
     model  Height_oldest_child = Age_Oldest_child Weight_Oldest_child  Height_Mother Weight_mother Height_father Weight_father 
	/ selection = backward;
  run;

  proc reg data= lung;
     model  Height_oldest_child = Age_Oldest_child Weight_Oldest_child  Height_Mother Weight_mother Height_father Weight_father 
	/ selection = stepwise;
  run;

   proc reg data= lung;
     model  Height_oldest_child = Age_Oldest_child Weight_Oldest_child  Height_Mother Weight_mother Height_father Weight_father 
	/ selection = MAXR;
  run;
