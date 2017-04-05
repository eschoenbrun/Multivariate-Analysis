title 'Depress Data Set';

filename tmpdep url "http://statistics.ats.ucla.edu/stat/examples/pma5/data/Depress.txt";

DATA Depress;
INFILE tmpdep DLM=' ';
INPUT ID SEX AGE MARITAL EDUCAT EMPLOY INCOME RELIG C1-C20 CESD
      CASES DRINK HEALTH REGDOC TREAT BEDDAYS ACUTEILL CHRONILL;
RUN;

title "Principle Component Analysis";
Title2 "Univariate Analysis";
proc univariate data= depress;
	var DRINK HEALTH REGDOC TREAT BEDDAYS ACUTEILL CHRONILL;
run;

title "Principle Component Analysis ";

ods listing style=rtf;
   ods graphics on;
proc standard data= depress(Keep= DRINK HEALTH REGDOC TREAT BEDDAYS ACUTEILL CHRONILL) mean=0 std=1
	out=depress_z(rename=(DRINK=DRINK_z HEALTH=HEALTH_z REGDOC=REGDOC_z TREAT=TREAT_z BEDDAYS=BEDDAYS_z ACUTEILL=ACUTEILL_z CHRONILL=CRONILL_z));
	var DRINK HEALTH REGDOC TREAT BEDDAYS ACUTEILL CHRONILL;
	run;

proc princomp data=DEPRESS_z out=PCA_DEPRESS plots=all plots=score(ellipse);
	var DRINK_z HEALTH_z REGDOC_z TREAT_z BEDDAYS_z ACUTEILL_z CRONILL_z;
run;

