function Generate_data = func()
    %A function that generates the data for the controller.
    
    %This part of the function asks the user for generation settings.
    if (input('Manual start data entry (Y/N): ','s')=='Y')
        Starting_height=input('Height of the launch platform (m): ');
        Mass_counter=input('Mass of the counterweight (kg): ');
        Mass_projectile=input('Mass of the projectile (kg): ');
        Density_arms=input('Density of arms (kg/m): ');
        Max_len_Aarm=input('Maximal length of projectile arm (m): ');
        Max_steps_Aarm=input('Steps of projectile arm: ');
        Max_len_Carm=input('Maximal length of counter-weight arm (m): ');
        Max_steps_Carm=input('Steps of counter-weight arm: ');
        Max_angle=input('Maximal launch angle (deg): ')*pi/180;
        Max_steps_angle=input('Steps of launch angle: ');
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
        Max_steps_angle=4;
        disp('Assinged pre-defined values')
    end
    disp(' ')
    disp('Starting combinatory generation')
    
    %This part of the function cycles trhough al the combinations of variables and appends them to a matrix.
    
    data=[ ];
    
    for NumAarm=0:1:Max_steps_Aarm
        for NumCarm=0:1:Max_steps_Carm
            for NumAngle=0:1:Max_steps_angle
                Aarm=Max_len_Aarm*NumAarm/Max_steps_Aarm;
                Carm=Max_len_Carm*NumCarm/Max_steps_Carm;
                Angle=Max_angle*NumAngle/Max_steps_angle;
                
                data=[data;[Aarm Carm -pi/2 Angle Mass_counter Mass_projectile Density_arms Starting_height 0 0]];
                %1:Projectilearm 2:Counter-weightarm 3:Startingangle 4:Endingangle 5:Masscounter 6:Massprojectile 7:Density 8:startingheight 9:Emptyvelocity 01:Emptydistance 
            end
        end
    end
    
    disp('Done generating data!')
    disp(' ')
    
    Generate_data=data;
    
end