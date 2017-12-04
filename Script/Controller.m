function Controller = func()
    data=Generate_data();%Generates the data
    
    length_loop=size(data);
    
    for num=1:1:length_loop(1)%Starts a loop for each variation in the data
        data_point=data(num,:);
        Inertia=Cal_Inertia(data_point(5), data_point(2), data_point(6), data_point(1), data_point(7));
        Kinetic_Energy=Cal_Kinetic_Energy(data_point(5), data_point(2), data_point(6), data_point(1), data_point(7), data_point(3), data_point(4));
        data_point(9)=Cal_Velocity(Kinetic_Energy, Inertia, data_point(1));%The velocity is assinged
        data_point(10)=Cal_Distance(data_point(9), (pi/2-data_point(4)), data_point(8), data_point(2), data_point(1));%The distance is assinged
        
        data(num,:)=data_point
    end
end