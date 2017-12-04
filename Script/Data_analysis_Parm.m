function Data_analysis_Parm = func(data)
    %This function takes the data and selects the most interesting data and retuns it.
    %ONLY RUN THIS IF THE ANGLE HAS BEEN SORTED OR THIS WAS GENERATED BEFORE THE ANGLE!
    disp('Starting angle projectile arm analysis')
    
    size_data=size(data);
    old_datapoint=data(1,:);
    filterd_data=[ ];
    
    %This part selects the optimal projectile arm for each configuration
    for num=1:1:size_data(1)%Loop trough al datapoints
        datapoint=data(num,:);
        if datapoint(1)==old_datapoint(1)&&datapoint(4)==old_datapoint(4)%Checks if the length of the counter-weight arm and angle is still equel
            if datapoint(10)>old_datapoint(10)%Checks if the distance of the new data point is larger than that of the old datapoint.
                old_datapoint=datapoint;
            end
        else%If the lengths of counter-weight arm and the angle at both data point are not equel than old data point must be the largest of that series of datapoint with those arm lengths.
            filterd_data=[filterd_data;old_datapoint];%The datapoint with the highest distance (selected on the projectile arm) will be appended.
            old_datapoint=datapoint;%The new datapoint is set as the old data point and teh cycle continues
        end
    end
    Data_analysis_angle=filterd_data;
end