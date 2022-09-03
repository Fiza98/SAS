data USPopulation;
input Population @@;
retain Year 1780;
Year=Year+10;
YearSq=Year*Year;
Population=Population/1000;
datalines;
3929 5308 7239 9638 12866 17069 23191 31443 39818 50155
62947 75994 91972 105710 122775 131669 151325 179323 203211
;
symbol1 c=blue;
proc reg data=USPopulation;
var YearSq;
model Population=Year / r cli clm;
plot r.*p. / cframe=ligr;
run;
add YearSq;
print;
plot / cframe=ligr;
run;
symbol1 v=dot c=yellow h=.3;
symbol2 v=square c=red;
symbol3 f=simplex c=blue h=2 v=’-’;
symbol4 f=simplex c=blue h=2 v=’-’;
plot (Population predicted. u95. l95.)*Year
/ overlay cframe=ligr;
run;
