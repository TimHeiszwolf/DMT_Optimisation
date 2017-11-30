function Cal_kinetic_energy = func(Mass_counter, Length_counter, Mass_projectile, Length_projectile, Density, Start_angle, End_angle)
    %EMC = Length_counter*Mass_counter
    %ELC = 0.5*Density*Length_counter^2
    %ELA = 0.5*Density*Length_projectile^2
    %EMP = Length_projectile*Mass_projectile
    Comb = Length_counter*Mass_counter+0.5*Density*Length_counter^2-0.5*Density*Length_projectile^2-Length_projectile*Mass_projectile
    
    Cal_kinetic_energy = 9.8*(sin(End_angle)*Comb-sin(Start_angle)*Comb)
end