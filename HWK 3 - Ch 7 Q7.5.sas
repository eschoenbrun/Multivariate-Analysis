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

proc univariate data=depress  normaltest plot ;
   var  CESD INCOME SEX AGE ;
   probplot  CESD / normal (mu=est sigma=est);
   probplot  INCOME / normal (mu=est sigma=est);  
   probplot SEX / normal (mu=est sigma=est); 
   probplot AGE / normal (mu=est sigma=est); 
run;


proc reg data=depress ;
     model      CESD =  INCOME SEX AGE/   dwProb   ;
      OUTPUT OUT=Depress2  PREDICTED=Pvalue   RESIDUAL= residuals   L95M= l95m  U95M= u95m L95= l95 U95= u95
       rstudent=rstudent h= lev cookd= cookd dffits= dffits
     STDP= StdE_P STDR=StdE_R  STUDENT= student   ;  
run;
