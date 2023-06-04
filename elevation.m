function el = elevation(ENU, el_mask)
    % ENU 위치를 이용하여 고도 각도 계산
    elevation_angles = rad2deg(asin(ENU(:, 3) ./ vecnorm(ENU, 2, 2)));

    % 고도 각도가 최소 양각보다 큰지 확인
    valid_elevation = elevation_angles >= el_mask;

    % 유효하지 않은 고도 각도를 NaN으로 설정
    elevation_angles(~valid_elevation) = NaN;

    el = elevation_angles';
end

