function [x1,y1,index] = getpoint(x,y)
if x<=1 && y<=1
    x1 = 0.5;
    y1 = 0.5;
    index = 3;
elseif x>1 && x<=2 && y<=1
    x1 = 1.5;
    y1 = 0.5;
    index = 6;
elseif x>2 && x<=3 && y<=1
    x1 = 2.5;
    y1 = 0.5;
    index = 9;
elseif x<=1 && y>1 && y<=2
    x1 = 0.5;
    y1 = 1.5;
    index = 2;
elseif x>1 && x<=2 && y>1 && y<=2
    x1 = 1.5;
    y1 = 1.5;
    index = 5;
elseif x>2 && x<=3 && y>1 && y<=2
    x1 = 2.5;
    y1 = 1.5;
    index = 8;
elseif x<=1 && y>2 && y<=3
    x1 = 0.5;
    y1 = 2.5;
    index = 1;
elseif x>1 && x<=2 && y>2 && y<=3
    x1 = 1.5;
    y1 = 2.5;
    index = 4;
elseif x>2 && x<=3 && y>2 && y<=3
    x1 = 2.5;
    y1 = 2.5;  
    index = 7;
end