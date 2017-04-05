  "C:\Users\Stevens\Desktop\SAS\Lung.txt";

PROC IMPORT OUT= WORK.Lung
            DATAFILE= "C:\Users\Stevens\Desktop\SAS\Lung.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;

data lung;
 infile Lung  delimiter = ' '  missover;
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

 /* Question 14.6 */

Data Lung_New;
	Set Lung;
	RATIO = FEV1_father / FVC_father;
run;

title "Principle Component Analysis ";

proc standard data= Lung_New(Keep= RATIO FEV1_father FVC_father ) mean=0 std=1
	out=Lung_New_z(rename=(RATIO=RATIO_z FEV1_father=FEV1_father_z FVC_father=FVC_father_z));
	var RATIO FEV1_father FVC_father;
	run;

ods listing style=rtf;
   ods graphics on;
proc corr data= Lung_New_z plots=all ;
run;

proc princomp data=Lung_New_z out=PCA_Lung plots=all plots=score(ellipse);
	var FEV1_father_z FVC_father_z;
run;

proc princomp data=Lung_New_z out=PCA_Lung_2 plots=all plots=score(ellipse);
	var RATIO_z FEV1_father_z FVC_father_z;
run;
