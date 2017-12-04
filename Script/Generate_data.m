function Generate_data = func()
    %A function that generates the data for the controller
    if (input("Manual start data entry (Y/N): ")=="Y")
        Starting_height=input("Height of the launch platform (m): ");
        Mass_counter=input("Mass of the counterweight (kg): ");
        Mass_projectile=input("Mass of the projectile (kg): ");
        Density_arms=input("Density of arms (kg/m): ");
        Max_len_Aarm=input("Maximal length of projectile arm (m): ");
        Max_steps_Aarm=input("Steps of projectile arm: ");
        Max_len_Carm=input("Maximal length of counter-weight arm (m): ");
        Max_steps_Carm=input("Steps of counter-weight arm: ");
        Max_angle=input("Maximal launch angle (deg): ")*pi/180;
        Max_stepts_angle=input("Steps of launch angle: ");
    else
        Starting_height=0.75;
        Mass_counter=0.224;
        Mass_projectile=0.005;
        Density_arms=1000*pi*0.0075^2;
        Max_len_Aarm=0.3;
        Max_steps_Aarm=4;
        Max_len_Carm=0.3;
        Max_steps_Carm=4;
        Max_angle=60*pi/180;
        Max_stepts_angle=4;
    end
    
    
end