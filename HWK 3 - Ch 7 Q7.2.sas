libname work "C:\Users\Stevens\Desktop\SAS";

proc import datafile="C:\Users\Stevens\Desktop\SAS\lung.txt"
out=work.lung
dbms=dlm
replace;
getnames=no;
run;

  "C:\Users\Stevens\Desktop\SAS\Lung.txt";

data lung;
 infile lung  delimiter = ' '  missover;
 input ID                   $     
       AREA                 $ 
       Gender_father         
       Age_father
       Height_father
       Weight_father
       FVC_father
       FEV1_father
       Gender_mother          
       Age_mother
       Height_mother
       Weight_mother
       FVC_mother
       FEV1_mother
       Sex_oldest_child            
       Age_oldest_child
       Height_oldest_child
       Weight_oldest_child
       FVC_oldest_child
       FEV1_oldest_child
       Sex_middle_child        
       Age_middle_child
       Height_middle_child
       Weight_middle_child
       FVC_middle_child
       FEV1_middle_child
       Sex_youngest_child    
       Age_youngest_child      
       Height_youngest_child
       Weight_youngest_child
       FVC_youngest_child
       FEV1_youngest_child
 
 ;

 run;

 proc univariate data=lung  normaltest plot ;
   var  FVC_father Age_father Height_father ;
   probplot  FVC_father / normal (mu=est sigma=est);
   probplot  Age_father / normal (mu=est sigma=est);  
   probplot Height_father / normal (mu=est sigma=est); 
run;


proc reg data=lung ;
     model      FVC_father =  Age_father Height_father/   dwProb   ;
      OUTPUT OUT=lung2  PREDICTED=Pvalue   RESIDUAL= residuals   L95M= l95m  U95M= u95m L95= l95 U95= u95
       rstudent=rstudent h= lev cookd= cookd dffits= dffits
     STDP= StdE_P STDR=StdE_R  STUDENT= student   ;  
run;

