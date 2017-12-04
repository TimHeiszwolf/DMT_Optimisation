function Data_analysis = func(data)
    %This function selects the most interesting data in the results and returns it..
    data=Data_analysis_angle(data);
    data=Data_analysis_Parm(data);
    
    Data_analysis=data;
end