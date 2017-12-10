function Distance = Cal_Distance(Launch_velocity, Launch_angle, Start_Y, Length_counter, Length_projectile)
    %Calculates the distance the projectile will fly.
    Airtime=((2*9.8*Start_Y+(Launch_velocity*sin(Launch_angle))^2)^0.5+Launch_velocity*sin(Launch_angle))/9.8;
    Calculated_Distance = cos(Launch_angle)*Launch_velocity*Airtime-cos(pi/2-Launch_angle)*(Length_counter+Length_projectile);
    
    if isreal(Calculated_Distance)==1
        Distance=Calculated_Distance;
    else
        Distance=-10;
end