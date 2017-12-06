function Cal_Distance = func(Launch_velocity, Launch_angle, Start_Y, Length_counter, Length_projectile)
    %Calculates the distance the projectile will fly.
    Airtime=((2*9.8*Start_Y+(Launch_velocity*sin(Launch_angle))^2)^0.5+Launch_velocity*sin(Launch_angle))/9.8;
    Distance = cos(Launch_angle)*Launch_velocity*Airtime-cos(pi/2-Launch_angle)*(Length_counter+Length_projectile);
    
    if isreal(Distance)==1
        Cal_Distance=Distance;
    else
        Cal_Distance=-10;
end