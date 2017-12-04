function Cal_Distance = func(Launch_velocity, Launch_angle, Start_Y, Length_counter, Length_projectile)
    %Calculates the distance the projectile will fly.
    Distance = cos(Launch_angle)*Launch_velocity*(((sin(Launch_angle)*Launch_velocity+Start_Y)/4.9)^0.5)-cos(pi/2-Launch_angle)*(Length_counter+Length_projectile);
    
    if isreal(Distance)==1
        Cal_Distance=Distance;
    else
        Cal_Distance=-10;
end