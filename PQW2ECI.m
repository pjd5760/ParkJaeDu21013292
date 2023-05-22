function R = PQW2ECI(arg_prg, inc_angle, RAAN)

    % R_XYZ = {R3(omega,3")R2(i,1')R1(OMEGA,3)}T*R_PQW
    %       = {R1(-OMEGA,3)R2(-i,1')R3(-omega,3")}*R_PQW
    %       R = R1 * R2 * R3

    % arg_prg = argument of perigee (omega)
    % inc_angle = inclination (i)
    % RAAN = right ascension (OMEGA)


    % 회전변환행렬 R1(-OMEGA,3), R2(-i,1'), R3(-omega,3")
    % 회전변환행렬 R1(-RAAN,3), R2(-inc_angle,1'), R3(-arg_prg,3")
    R1 = [cos(RAAN), -sin(RAAN), 0;
          sin(RAAN), cos(RAAN), 0;
          0, 0, 1];
    R2 = [1, 0, 0;
          0, cos(inc_angle), -sin(inc_angle);
          0, sin(inc_angle), cos(inc_angle)];
    R3 = [cos(arg_prg), -sin(arg_prg), 0;
          sin(arg_prg), cos(arg_prg), 0;
          0, 0, 1];
      
    % Perifocal2ECI
    R = R1 * R2 * R3;
end
