function rangelnPQW = solveRangelnPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)

% input: semimajor_axis,eccentricity,true_anomaly(deg)
% output: rangeInPQW(3X1행렬)

r = semimajor_axis*(1-eccentricity^2)/(1+eccentricity*cos(true_anomaly));%lesson04 12p: r = a*(1-e^2)/(1+e*cos nu) 

rangelnPQW = [r*cos(true_anomaly); r*sin(true_anomaly); 0];%lesson07 12p

end
