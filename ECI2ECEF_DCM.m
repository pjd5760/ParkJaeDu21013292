function DCM = ECI2ECEF_DCM(time)

% input: time ([yyyy mm dd hh mm ss])
% output: DCM
        
time2long = siderealTime(juliandate(datetime(time)));
time2long = time2long*pi/180;
    
% R_LT : Rotation Matrix from ECEF to ECI
% R_LT' : Coordinate Transform Matrix from ECI to ECEF
    
R_LT  = [cos(time2long), sin(time2long),  0.0;
         -sin(time2long),  cos(time2long),  0.0;
         0.0             0.0             1.0];

DCM = R_LT';

end