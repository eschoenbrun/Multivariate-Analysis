proc format ;
   value SEX
      1 = 'male'  
      2 = 'female' ;
   value MARITAL
      1 = 'never married'  
      2 = 'married'  
      3 = 'divorced'  
      4 = 'separated'  
      5 = 'widowed' ;
   value EDUCAT
      1 = 'less than high school'  
      2 = 'some high school'  
      3 = 'finished high school'  
      4 = 'some college' ;
   value EMPLOY
      1 = 'full time'  
      2 = 'part time'  
      3 = 'unemployed'  
      4 = 'retired'  
      5 = 'houseperson'  
      6 = 'in school'  
      7 = 'other' ;
   value RELIG
      1 = 'protestant'  
      2 = 'catholic'  
      3 = 'jewish'  
      4 = 'none'  
      5 = 'other' ;
   value CA
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CB
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CC
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CD
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CE
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CF
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CG
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CH
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CI
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1A
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1B
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1C
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1D
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1E
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1F
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1G
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1H
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1I
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C1J
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value C2A
      0 = 'rarely or none of the time less than 1 d'  
      1 = 'some or a little of the time 1-2 days'  
      2 = 'occasionally or a moderate amount of the'  
      3 = 'most or all of the time 5-7 days' ;
   value CASES /* depressed is cesd >= 16 */
      0 = 'normal'  
      1 = 'depressed' ;
   value DRINK /* regular drinker? */
      1 = 'yes'  
      2 = 'no' ;
   value HEALTH /* general health */
      1 = 'excellent'  
      2 = 'good'  
      3 = 'fair'  
      4 = 'poor' ;
   value REGDOC /* have a regular doctor? */
      1 = 'yes'  
      2 = 'no' ;
   value TREAT /* Has a doctor prescribed or recommended that you take medicine, medical treatments, or change your way of living in such  */
      1 = 'yes'  
      2 = 'no' ;
   value BEDDAYS /* spent entire day(s) in bed in last two months? */
      0 = 'no'  
      1 = 'yes' ;
   value ACUTEILL /* any acute illness in last two months? */
      0 = 'no'  
      1 = 'yes' ;
   value CHRONILL /* any chronic illness in last year? */
      0 = 'no'  
      1 = 'yes' ;
run;

/*
proc datasets ;
modify depress;
   format       SEX SEX.;
   format   MARITAL MARITAL.;
   format    EDUCAT EDUCAT.;
   format    EMPLOY EMPLOY.;
   format     RELIG RELIG.;
   format        C1 CA.;
   format        C2 CB.;
   format        C3 CC.;
   format        C4 CD.;
   format        C5 CE.;
   format        C6 CF.;
   format        C7 CG.;
   format        C8 CH.;
   format        C9 CI.;
   format       C10 C1A.;
   format       C11 C1B.;
   format       C12 C1C.;
   format       C13 C1D.;
   format       C14 C1E.;
   format       C15 C1F.;
   format       C16 C1G.;
   format       C17 C1H.;
   format       C18 C1I.;
   format       C19 C1J.;
   format       C20 C2A.;
   format     CASES CASES.;
   format     DRINK DRINK.;
   format    HEALTH HEALTH.;
   format    REGDOC REGDOC.;
   format     TREAT TREAT.;
   format   BEDDAYS BEDDAYS.;
   format  ACUTEILL ACUTEILL.;
   format  CHRONILL CHRONILL.;
run;
quit;
*/

filename tmpdep url "http://statistics.ats.ucla.edu/stat/examples/pma5/data/Depress.txt";

DATA Depress;
INFILE tmpdep DLM=' ';
INPUT ID SEX AGE MARITAL EDUCAT EMPLOY INCOME RELIG C1-C20 CESD
      CASES DRINK HEALTH REGDOC TREAT BEDDAYS ACUTEILL CHRONILL;
RUN;

PROC DATASETS library=WORK;
MODIFY Depress;
  LABEL
    MARITAL = 'Marital Status'
    EDUCAT = 'Education'
    RELIG = 'Religion'
    DRINK = 'Regular drinker?'
    HEALTH = 'General health?'
    REGDOC = 'Have a regular doctor?'
    TREAT = 'Any doctor recommended treatment?'
    BEDDAYS = 'Spent entire day(s) in bed in the last 2 months?'
    ACUTEILL = 'Any acute illness in last 2 months?'
    CHRONILL = 'Any chronic illness in last year?'
RUN;

PROC CONTENTS data=WORK.Depress;
RUN;

PROC FORMAT;
  VALUE yn  1 = "Yes"
            2 = "No";
  VALUE ny  0 = "No"
            1 = "Yes";
  VALUE ed  1 = "Less than high school"
            2 = "Some high school"
            3 = "Finished high school"
            4 = "Some college"
            5 = "Finished bachelor degree"
            6 = "Finished master degree"
            7 = "Finished doctorate";
  VALUE emp 1 = "Full time"
            2 = "Part time"
            3 = "Unemployed"
            4 = "Retired"
            5 = "Houseperson"
            6 = "In school"
            7 = "Other";
  VALUE rel 1 = "Protestant"
            2 = "Catholic"
            3 = "Jewish"
            4 = "None"
            5 = "Other";
RUN;

DATA Depress;
set WORK.Depress;
  FORMAT DRINK REGDOC TREAT yn.
         BEDDAYS ACUTEILL CHRONILL ny.
         EDUCAT ed.
         EMPLOY emp.
         RELIG rel.;
RUN;

title "Regression Analysis for Income on Age";
proc reg data=Depress  outest=est;
     model  income =  age /stb;
     plot   income* age='*';
run;

title "Correlation Analysis between Income and Age";
proc corr data=Depress;
	var income;
	with age;
run;

title "Detecting Outliers in Income";
proc reg data=Depress;
	model Income = Age;
	output out = t student=res cookd = cookd h = lev;
run;

data t; set t;
  resid_sq = res*res;
run;

proc sgplot data = t;
  scatter y = cookd x = resid_sq / datalabel = Income;
run;

proc print data = t;
  where cookd > 4/150;
  var Age Income cookd lev;
run;
