function piecwise(t)
if t >= 0
    y = -3.*t.^2+5;
else
    y = 3.*t.^2+5;
end
plot(t,y);
title('piecwise funtion');
xlabel('t');
ylabel('y');
end