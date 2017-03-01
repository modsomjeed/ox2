function ind = think(x)
u = 1;
done = 0;
while done == 0
for u = 1:2
%wining and blocking
if x(1)== u && x(2)==u &&  x(3)==0
    ind = 3;done=1;break;
elseif x(1)== u && x(2)==0 &&  x(3)==u
    ind = 2;done=1;break;
elseif x(1)== 0 && x(2)==u &&  x(3)==u
    ind = 1;done=1;break;
elseif x(4)== u && x(5)==u &&  x(6)==0
    ind = 6;done=1;break;
elseif x(4)== u && x(5)==0 &&  x(6)==u
    ind = 5;done=1;break;
elseif x(4)== 0 && x(5)==u &&  x(6)==u
    ind = 4;done=1;break;
elseif x(7)== u && x(8)==u &&  x(9)==0
    ind = 9;done=1;break;
elseif x(7)== u && x(8)==0 &&  x(9)==u
    ind = 8;done=1;break;
elseif x(7)== 0 && x(8)==u &&  x(9)==u
    ind = 7;done=1;break;
elseif x(1)== u && x(4)==u &&  x(7)==0
    ind = 7;done=1;break;
elseif x(1)== u && x(4)==0 &&  x(7)==u
    ind = 4;done=1;break;
elseif x(1)== 0 && x(4)==u &&  x(7)==u
    ind = 1;done=1;break;
elseif x(2)== u && x(5)==u &&  x(8)==0
    ind = 8;done=1;break;
elseif x(2)== u && x(5)==0 &&  x(8)==u
    ind = 5;done=1;break;
elseif x(2)== 0 && x(5)==u &&  x(8)==u
    ind = 2;done=1;break;
elseif x(3)== u && x(6)==u &&  x(9)==0
    ind = 9;done=1;break;
elseif x(3)== u && x(6)==0 &&  x(9)==u
    ind = 6;done=1;break;
elseif x(3)== 0 && x(6)==u &&  x(9)==u
    ind = 3;done=1;break;
elseif x(1)== u && x(5)==u &&  x(9)==0
    ind = 9;done=1;break;
elseif x(1)== u && x(5)==0 &&  x(9)==u
    ind = 5;done=1;break;
elseif x(1)== 0 && x(5)==u &&  x(9)==u
    ind = 1;done=1;break;
elseif x(3)== u && x(5)==u &&  x(7)==0
    ind = 7;done=1;break;
elseif x(3)== u && x(5)==0 &&  x(7)==u
    ind = 5;done=1;break;
elseif x(3)== 0 && x(5)==u &&  x(7)==u
    ind = 3;done=1;break;
elseif x(1)==1 && x(2) == 0 && x(3) == 0
    ind = 3;done=1;
elseif x(1)==0 && x(2) == 1 && x(3) == 0
    ind = 1;done=1;
elseif x(1)==0 && x(2) == 0 && x(3) == 1
    ind = 1;done=1;
elseif x(1)==1 && x(4) == 0 && x(7) == 0
    ind = 7;done=1;
elseif x(1)==0 && x(4) == 1 && x(7) == 0
    ind = 1;done=1;
elseif x(1)==0 && x(4) == 0 && x(7) == 1
    ind = 1;done=1;
elseif x(3)==1 && x(6) == 0 && x(9) == 0
    ind = 9;done=1;
elseif x(3)==0 && x(6) == 1 && x(9) == 0
    ind = 3;done=1;
elseif x(3)==0 && x(6) == 0 && x(9) == 1
    ind = 3;done=1;
elseif x(7)==1 && x(8) == 0 && x(9) == 0
    ind = 9;done=1;
elseif x(7)==0 && x(8) == 1 && x(9) == 0
    ind = 7;done=1;
elseif x(7)==0 && x(8) == 0 && x(9) == 1
    ind = 7;done=1;
else
    z = find(x==0);
    if isempty(z)
        ind = 22;
        done = 1;
    else
        ind = z(ceil(rand*length(z)));
        done = 1;
    end
end
end

end