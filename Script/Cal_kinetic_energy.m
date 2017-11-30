function Cal_kinetic_energy = func(Mass_counter, Length_counter, Mass_projectile, Length_projectile, Density, Start_angle, End_angle)
    Comb = Length_counter*Mass_counter+0.5*Density*Length_counter^2-0.5*Density*Length_projectile^2-Length_projectile*Mass_projectile
    
    Cal_kinetic_energy = 9.8*(sin(End_angle)*Comb-sin(Start_angle)*Comb)
end