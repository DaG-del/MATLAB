v = zeros(14000, 1);

for i=0:1400
    for j=0:1:0.1
        v(round(i + j) * 10 + 1) = fcn(i+ j);
    end
end

plot(v)


function y = fcn(u)

tc = load("track.mat");

track_cumulative = tc.track_cumulative;

a = track_cumulative(:,3,:)./track_cumulative(:,1,:);
b = track_cumulative(:,4,:);

y = interp1(b,a,u,"previous");
end