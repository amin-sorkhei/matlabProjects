a = 0:0.0001:1;
y_minus = 3*a;
y_positive = 10 - 10*a;
y_dk = 2 - a;
fig=figure
hax=axes;
plot(a,y_minus,a,y_positive,a,y_dk);
hold on
SP=0.5; %your point goes here 
line([SP SP],get(hax,'XLim'),'Color',[0.5 0.5 0.5])
hold on
SP=8/9; %your point goes here 
line([SP SP],get(hax,'XLim'),'Color',[0.5 0.5 0.5])