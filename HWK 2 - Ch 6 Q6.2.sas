title "Scatter and Ellipse for Father";

proc sgplot data=lung ;
   scatter x= Height_father y=Weight_father ;
   ellipse x= Height_father y=Weight_father ;
run;

title "Regression Analysis for Father";

proc reg data=lung  outest=est;
     model  Weight_father =  Height_father / stb;
     plot   Weight_father* Height_father='*';
	 plot 	Weight_father * Height_father / pred;
run;

title "Correlation Coefficient for Father";

proc corr data=lung;
	var Weight_father;
	with Height_father;
run;

title "Univariate Analysis for Father";

proc univariate data=lung  normaltest plot ;
   var  Height_father Weight_father ;
   probplot  Height_father / normal (mu=est sigma=est);  
   probplot Weight_father / normal (mu=est sigma=est); 
run;

title "Scatter and Ellipse for Mother";

proc sgplot data=lung ;
   scatter x= Height_mother y=Weight_mother ;
   ellipse x= Height_mother y=Weight_mother ;
run;

title "Regression Analysis for Mother";

proc reg data=lung  outest=est;
     model  Weight_mother =  Height_mother / stb;
     plot   Weight_mother* Height_mother='*';
	 plot 	Weight_mother * Height_mother / pred;
run;

title "Correlation Coefficient for Mother";

proc corr data=lung;
	var Weight_mother;
	with Height_mother;
run;

title "Univariate Analysis for Mother";

proc univariate data=lung  normaltest plot ;
   var  Height_mother Weight_mother ;
   probplot  Height_mother / normal (mu=est sigma=est);  
   probplot Weight_mother / normal (mu=est sigma=est); 
run;

title "Detecting Outliers in Weight_Mother";
proc reg data=lung;
	model Weight_mother = Height_mother;
	output out = t student=res cookd = cookd h = lev;
run;

data t; set t;
  resid_sq = res*res;
run;

proc sgplot data = t;
  scatter y = cookd x = resid_sq / datalabel = Weight_mother;
run;

proc print data = t;
  where cookd > 4/150;
  var Weight_mother cookd lev;
run;

title "Detecting Outliers in Weight_Father";
proc reg data=lung;
	model Weight_father = Height_father;
	output out = t student=res cookd = cookd h = lev;
run;

data t; set t;
  resid_sq = res*res;
run;

proc sgplot data = t;
  scatter y = cookd x = resid_sq / datalabel = Weight_father;
run;

proc print data = t;
  where cookd > 4/150;
  var Weight_father cookd lev;
run;
