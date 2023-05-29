function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)

% input: semimajor_axis,eccentricity,true_anomaly(deg)
% output: rangeInPQW(3X1행렬)

mu = 398600; %(km^3/m^2)
p = semimajor_axis*(1 - eccentricity^2); %lesson04 18p

velocityInPQW = sqrt(mu/p)*[-sin(true_anomaly); eccentricity + cos(true_anomaly); 0];%lesson07 14p: v_pq = sqrt(mu/a)*[-sin(nu); eccentricity+cos(nu); 0] 

end

%% ex)
% velocityInPQW = solveVelocityInPerifocalFrame(1000, 0.5, 60)
