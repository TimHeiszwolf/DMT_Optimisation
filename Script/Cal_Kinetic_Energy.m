function Cal_Kinetic_Energy = func(Mass_counter, Length_counter, Mass_projectile, Length_projectile, Density, Start_angle, End_angle)
    %Calculats the avalible kinetic energy based on the potential gravitational energy: https://en.wikipedia.org/wiki/Gravitational_energy.
    Comb = Length_counter*Mass_counter+0.5*Density*Length_counter^2-0.5*Density*Length_projectile^2-Length_projectile*Mass_projectile;
    
    Cal_Kinetic_Energy = 9.8*(sin(End_angle)*Comb-sin(Start_angle)*Comb);
end
