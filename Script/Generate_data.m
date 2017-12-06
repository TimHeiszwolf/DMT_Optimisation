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
        Density_arms=((10*2*2+8*2*2)*10^-6)*(930);%Density of material is 0.93 gr/cm^3. This is assuming a hollow square beam (10x10 mm) with a ticknis of 2 mm. So in this case it is 0.06696 kg/m.
        Max_len_Aarm=0.3;
        Max_steps_Aarm=4;
        Max_len_Carm=0.3;
        Max_steps_Carm=4;
        Max_angle=80*pi/180;
        Max_steps_angle=4;
        disp('Assinged pre-defined values')
    end
    disp(' ')
    disp('Starting combinatory generation')
    
    %This part of the function cycles trhough al the combinations of variables and appends them to a matrix.
    
    size=(Max_steps_angle+1)*(Max_steps_Aarm+1)*(Max_steps_Carm+1);
    data=zeros(size,10);
    i=1;
    
    for NumAarm=1:1:(Max_steps_Aarm+1)
        for NumCarm=1:1:(Max_steps_Carm+1)
            for NumAngle=1:1:(Max_steps_angle+1)
                Aarm=Max_len_Aarm*NumAarm/(Max_steps_Aarm+1);
                Carm=Max_len_Carm*NumCarm/(Max_steps_Carm+1);
                Angle=Max_angle*NumAngle/(Max_steps_angle+1);
                
                data(i,:)=[Aarm Carm -pi/2 Angle Mass_counter Mass_projectile Density_arms Starting_height 0 0];
                i=i+1;
                %1:Projectilearm 2:Counter-weightarm 3:Startingangle 4:Endingangle 5:Masscounter 6:Massprojectile 7:Density 8:startingheight 9:Emptyvelocity 10:Emptydistance
            end
        end
        disp(strjoin({'Generation done',num2str(round(100*NumAarm/(Max_steps_Aarm+1),3)),'%'}))  
    end
    
    disp('Done generating data!')
    disp(' ')
    
    Generate_data=data;
    
end