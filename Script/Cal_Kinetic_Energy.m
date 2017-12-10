function Kinetic_Energy = Cal_Kinetic_Energy(Mass_counter, Length_counter, Mass_projectile, Length_projectile, Density, Start_angle, End_angle)
    %Calculates the available kinetic energy based on the Gravitational potential energy https://en.wikipedia.org/wiki/Gravitational_energy.
    Comb = Length_counter*Mass_counter+0.5*Density*Length_counter^2-0.5*Density*Length_projectile^2-Length_projectile*Mass_projectile;
    
    Kinetic_Energy = 9.8*(sin(End_angle)*Comb-sin(Start_angle)*Comb);
end
