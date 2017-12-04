function Data_analysis = func(data)
    %This function takes the data and selects the most interesting data and retuns it.
    data=Data_analysis_angle(data);
    data=Data_analysis_Parm(data);
    
    Data_analysis=data;
end