function [x1,y1,index] = drawpoint1(ind)

if ind == 3
    x1 = 0.5;
    y1 = 0.5;
    index = 3;
elseif ind == 6
    x1 = 1.5;
    y1 = 0.5;
    index = 6;
elseif ind == 9
    x1 = 2.5;
    y1 = 0.5;
    index = 9;
elseif ind ==2
    x1 = 0.5;
    y1 = 1.5;
    index = 2;
elseif ind == 5
    x1 = 1.5;
    y1 = 1.5;
    index = 5;
elseif ind == 8
    x1 = 2.5;
    y1 = 1.5;
    index = 8;
elseif ind == 1
    x1 = 0.5;
    y1 = 2.5;
    index = 1;
elseif ind == 4
    x1 = 1.5;
    y1 = 2.5;
    index = 4;
elseif ind == 7
    x1 = 2.5;
    y1 = 2.5;  
    index = 7;
end