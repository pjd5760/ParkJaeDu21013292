function DCM = ECI2ECEF_DCM(time)
    % Step 1: Convert time to Julian Date (JD)
    jd = juliandate(datetime(time));
    
    % Step 2: Calculate GMST (radians) at the given JD
    T_UT1 = (jd - 2451545.0) / 36525.0;
    GMST = 67310.54841 + (876600 * 3600 + 8640184.812866) * T_UT1 + 0.093104 * T_UT1^2 - 6.2e-6 * T_UT1^3;
    
    % Step 3: Calculate Earth rotation angle (ERA) in radians
    ERA = GMST * (2 * pi / 86400);
    
    % Step 4: Compute the DCM matrix
    DCM = [cos(ERA), sin(ERA), 0;
           -sin(ERA), cos(ERA), 0;
           0, 0, 1];
end
