function az = azimuth(ENU)

% input: [E N U]nx3 matrix (km)
% output: azimuth angle (deg)

for i = 1:size(ENU,1)

 az(1,i)=atan2(ENU(i,1), ENU(i,2));
 if az(1,i)<0
     az(1,i)=az(1,i)+2*pi;
 end
 az(1,i)=az(1,i)*180/pi;
end