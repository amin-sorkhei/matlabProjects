x1 = -3:0.1:3;
x2 = x1;
[X1,X2]=meshgrid(x1,x2);
Z = normpdf(X1,0,1).*normpdf(X2,0,1);
hSurface1 =surf(X1,X2,Z);
set(hSurface1,'FaceColor',[0 0 0.5],'FaceAlpha',0.5);
T = normpdf(X1,0,4).*normpdf(X2,0,4);
hold on
hSurface = surf(X1,X2,T);
set(hSurface,'FaceColor',[0 0.5 0],'FaceAlpha',0.5);
    