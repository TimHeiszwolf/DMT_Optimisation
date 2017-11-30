function Cal_Inertia = func(Mass_counter, Length_counter, Mass_projectille, Length_projectille, Density)
    Cal_Inertia = Mass_counter*Length_counter^2+Mass_projectille*Length_projectille^2+(Density*Length_counter^3)/3+(Density*Length_projectille^3)/3
end