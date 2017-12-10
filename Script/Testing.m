
disp("Starting tests.")
disp(" ")

%TESTING CAL_INERTIA
if (round(Cal_Inertia(0.224, 0.1, 0.005, 0.2, 0.1742),3)==round(0.0030,3)&&round(Cal_Inertia(3, 1, 0.1, 4, 0.1742),3)==round(8.3743,3)&&round(Cal_Inertia(pi/2, 2^0.5, exp(0.4), 3^0.5, 0.1742),3)==round(8.0830,3))
    disp("Cal_Inertia is functioning!")
else
    disp("Cal_Inertia IS NOT functioning")
end

%TESTING CAL_KINETIC_ENERGY
if (round(Cal_Kinetic_Energy(0.224,0.1,0.005,0.2,0.1742,-80*pi/180,pi/4),3)==round(0.3115,3)&&round(Cal_Kinetic_Energy(0.5,0.132,0.045,0.314,0.1742,-pi/4,pi/3),3)==round(0.6907,3))
    disp("Cal_Kinetic_Energy is functioning!")
else
    disp("Cal_Kinetic_Energy IS NOT functioning")
end

%TESTING CAL_VELOCITY
if (round(Cal_Velocity(5, 0.8, 0.3), 3)==round(1.0607, 3))&&(round(Cal_Velocity(421, 12, 3), 3)==round(25.1297, 3))&&(round(Cal_Velocity(0.011, 1285, 2),3)==round(0.0083,3))
    disp("Cal_Velocity is functioning!")
else
    disp("Cal_Velocity IS NOT functioning")
end

%TESTING CAL_DISTANCE
if (round(Cal_Distance(4.31,pi/4,0.80,0.1,0.2),2)==round(2.2895,2)&&round(Cal_Distance(7.823,pi/3,0.93,0.2,0.3),3)==round(5.4673,3))
    disp("Cal_Distance is functioning!")
else
    disp("Cal_Distance IS NOT functioning")
end

%TESTING CAL_DISTANCE_NUMERICAL
if (round(Cal_Distance_numerical(4.31,pi/4,0.80,0.1,0.2,0.005,0.001,0.001),2)==round(2.0902,2)&&(round(Cal_Distance_numerical(4.31,pi/4,0.80,0.1,0.2,0.005,0,0.00001),3)==round(Cal_Distance(4.31,pi/4,0.80,0.1,0.2),3)))
    disp('Cal_Distance_numerical is functioning')
else
    disp('Cal_Distance_numerical is NOT functioning')
end

disp(" ")