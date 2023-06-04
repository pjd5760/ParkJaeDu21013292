function az = azimuth(ENU)
    % ENU 좌표를 라디안으로 변환합니다.
    ENU_rad = deg2rad(ENU);
    
    % E, N, U 좌표를 추출합니다.
    E = ENU_rad(:, 1);
    N = ENU_rad(:, 2);
    U = ENU_rad(:, 3);
    
    % 방위각을 계산합니다.
    az_rad = atan2(E, N);
    az_deg = rad2deg(az_rad);
    
    % 방위각을 [0, 360) 범위로 조정합니다.
    az_deg = mod(az_deg + 360, 360);
    
    % 방위각을 출력합니다.
    az = az_deg;
end
