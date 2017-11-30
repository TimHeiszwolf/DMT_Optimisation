function Cal_kinetic_energy = func(Mass_counter, Length_counter, Mass_projectille, Length_projectille, Density, Start_angle, End_angle)
    %EMC = Length_counter*Mass_counter
    %ELC = 0.5*Density*Length_counter^2
    %ELA = 0.5*Density*Length_projectille^2
    %EMP = Length_projectille*Mass_projectille
    Comb = Length_counter*Mass_counter+0.5*Density*Length_counter^2-0.5*Density*Length_projectille^2-Length_projectille*Mass_projectille
    
    Cal_kinetic_energy = 9.8*(sin(End_angle)*Comb-sin(Start_angle)*Comb)