libname sas_data "C:\Users\Stevens\Desktop\SAS" access=read;
run;

proc copy in=sas_data out=work;
select lung;
run;

proc reg data= lung;
    model  Height_oldest_child = Age_Oldest_child Weight_Oldest_child  Height_Mother Weight_mother Height_father Weight_father
	/ selection = stepwise details
	maxstep = 3;
	Where Sex_oldest_child = '1';
run;

proc reg data= lung;
    model  Height_oldest_child = Age_Oldest_child Weight_Oldest_child  Height_Mother Weight_mother Height_father Weight_father
	/ selection = stepwise details
	maxstep = 3;
	Where Sex_oldest_child = '2';
run;


proc reg data= lung;
    model  OCHEIGHT = OCSEX OCAGE OCWEIGHT MHEIGHT MWEIGHT FHEIGHT FWEIGHT
	/ selection = stepwise details
	maxstep = 3;
run;
