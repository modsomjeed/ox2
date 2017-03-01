function [flag x y] = checkwin(x,user)
if user == 0
    flag = 0;
    x = [-1 -1];
    y = [-2 -2];
elseif x(1)==user && x(4)==user && x(7)==user
    flag = 1;
    x = [0.3 2.7];
    y = [2.5 2.5];
elseif x(2)==user && x(5)==user && x(8)==user
    flag = 1;
    x = [0.3 2.7];
    y = [1.5 1.5];
elseif x(3)==user && x(6)==user && x(9)==user
    flag = 1;
    x = [0.3 2.7];
    y = [0.5 0.5];
elseif x(1)==user && x(2)==user && x(3)==user
    flag = 1;
    x = [0.5 0.5];
    y = [0.3 2.7];
elseif x(4)==user && x(5)==user && x(6)==user
    flag = 1;
    x = [1.5 1.5];
    y = [0.3 2.7];
elseif  x(7)==user && x(8)==user && x(9)==user
    flag = 1;
    x = [2.5 2.5];
    y = [0.3 2.7];
elseif x(1)==user && x(5)==user && x(9)==user
    flag = 1;
    x = [0.2 2.8];
    y = [2.8 0.2];
elseif x(3)==user && x(5)==user && x(7)==user
    flag = 1;
    x = [0.2 2.8];
    y = [0.2 2.8];
elseif isempty(min(find(x==0)))
    flag = 2;
    x = [-1 -1];
    y = [-2 -2];
else
    flag = 0;
    x = [-1 -1];
    y = [-2 -2];
end