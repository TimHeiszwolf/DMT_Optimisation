function Distance = Cal_Distance_numerical(Launch_velocity, Launch_angle, Start_Y, Length_counter, Length_projectile, Mass_projectile, Surface_projectile, Delta_time)
    %Calculates the distance the projectile will fly in a numerical way (with friction).
    Density_air=1.225;%kg/m^3 in 15C
    Drag_coefficient=0.47;%https://en.wikipedia.org/wiki/Drag_coefficient
    Drag_constant=0.5*Density_air*Drag_coefficient*Surface_projectile;
    
    x=-cos(pi/2-Launch_angle)*(Length_counter+Length_projectile);
    y=Start_Y;
    
    vx=cos(pi/2-Launch_angle)*Launch_velocity;
    vy=sin(pi/2-Launch_angle)*Launch_velocity;
    
    while y>0
        x=x+vx*Delta_time;
        y=y+vy*Delta_time;
        
        Total_velocity=(vx^2+vy^2)^0.5;
        Air_fiction=Drag_constant*Total_velocity^2;%https://en.wikipedia.org/wiki/Drag_(physics)
        
        vx=vx-Delta_time*vx*Air_fiction/(Total_velocity*Mass_projectile);
        vy=vy-Delta_time*(vy*Air_fiction/(Total_velocity*Mass_projectile)+9.8);
    end
    
    Distance=x;
end
