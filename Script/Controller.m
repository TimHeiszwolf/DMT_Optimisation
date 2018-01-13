function Output_data = Controller()
    tic%Starts a time to see if a reminder for user input is needed.
    
    data=Generate_data();%Generates the data
    
    length_loop=size(data);
    
    if toc>30%If the time since tic is long that it wil play a reminder
        Play_audio('Matlab_user_input_required.mp3')
    end
    
    disp('Starting calculations')
    disp(' ')
    
    tic
    
    if input('Calculate distance numericaly with friction (Y/N)?: ','s')=='Y'
        
        Surface_projectile=input('Cross sectional surface area of projectile (m^2): ');%A=pi*(3*m/(4*pi*rho))^(2/3) for 5 grams and 0.93 gr/kg thats 0.000371
        Delta_time=input('Delta time for the numerical calulations (s): ');
        
        for num=1:1:length_loop(1)%Starts a loop for each variation in the data
            
            if mod(num,(length_loop(1)/1000))==0
                disp(strjoin({'Calculation done',num2str(round(100*num/(length_loop(1)),3)),'%'}))
            end
            
            data_point=data(num,:);
            Inertia=Cal_Inertia(data_point(5), data_point(2), data_point(6), data_point(1), data_point(7));
            Kinetic_Energy=Cal_Kinetic_Energy(data_point(5), data_point(2), data_point(6), data_point(1), data_point(7), data_point(3), data_point(4));
            data_point(9)=Cal_Velocity(Kinetic_Energy, Inertia, data_point(1));%The velocity is assinged
            data_point(10)=Cal_Distance_numerical(data_point(9), (pi/2-data_point(4)), data_point(8), data_point(2), data_point(1), data_point(6), Surface_projectile, Delta_time);%The distance is assinged
            
            data(num,:)=data_point;%The old data point in the data is replaced with the new data point which uses the calculated velocity and distance..
        end
        
    else
        
        for num=1:1:length_loop(1)%Starts a loop for each variation in the data
            data_point=data(num,:);
            Inertia=Cal_Inertia(data_point(5), data_point(2), data_point(6), data_point(1), data_point(7));
            Kinetic_Energy=Cal_Kinetic_Energy(data_point(5), data_point(2), data_point(6), data_point(1), data_point(7), data_point(3), data_point(4));
            data_point(9)=Cal_Velocity(Kinetic_Energy, Inertia, data_point(1));%The velocity is assinged
            data_point(10)=Cal_Distance(data_point(9), (pi/2-data_point(4)), data_point(8), data_point(2), data_point(1));%The distance is assinged
            
            data(num,:)=data_point;%The old data point in the data is replaced with the new data point which uses the calculated velocity and distance..
        end
        
    end
    disp('Calculations done')
    disp(' ')
    
    if toc>30%If the time since tic is long that it wil play a reminder
        Play_audio('Matlab_user_input_required.mp3')
    end
    
    if input('Write raw output to .csv file (Y/N)?: ','s')=='Y'
        csvwrite(input('Filename (with.csv)?: ','s'),data)
        disp('Done writing raw output to.csv file')
        disp('These collums correspond to these values')
        disp('1:Projectilearm 2:Counterweightarm 3:Startingangle 4:Endingangle 5:Masscounter 6:Massprojectile 7:Density 8:Startingheight 9:Velocity 10:Distance')
        disp(' ')
    end
    
    tic%Starts a time to see if a reminder for user input is needed.
    
    data=Data_analysis(data);
    
    if toc>15%If the time since tic is long that it wil play a reminder
        Play_audio('Matlab_user_input_required.mp3')
    end
    
    if input('Write analysed output to .csv file (Y/N)?: ','s')=='Y'
        csvwrite(input('Filename (with.csv)?: ','s'),data)
        disp('Done writing analysed output to .csv file')
        disp('These collums correspond to these values')
        disp('1:Projectilearm 2:Counterweightarm 3:Startingangle 4:Endingangle 5:Masscounter 6:Massprojectile 7:Density 8:Startingheight 9:Velocity 10:Distance')
        disp(' ')
    end
    
end