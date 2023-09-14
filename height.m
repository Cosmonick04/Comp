function h = height(t)
% t = time since the rocket engine shut down
% h = rocket height
h=zeros(size(t));
n=zeros(size(t));
g = 9.8;
v = 125;
    for i = 1:length(t)
        if (t(i) > 0)
            n(i) = v.*t(i) - .5*g.*t(i).^2;
            h(i) = n(i) + 500;
        elseif (t(i) == 0)
            h(i) = 500;
        elseif (t(i) < 0)
            h(i) = 500;
        end
        if (h(i) < 0)
            h(i) = 0;
        end
    end
end