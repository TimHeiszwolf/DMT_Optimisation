function Cal_Distance = func(Launch_velocity, Launch_angle, Start_Y, Length_counter, Length_projectile)
    Air_time = (2*(sin(Launch_angle)*Launch_velocity+Start_Y)/9.8)^0.5;
    Cal_Distance = cos(Launch_angle)*Launch_velocity*Air_time-cos(pi/2-Launch_angle)*(Length_counter+Length_projectile);
end