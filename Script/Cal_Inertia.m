function Cal_Inertia = func(Mass_counter, Length_counter, Mass_projectile, Length_projectile, Density)
    Cal_Inertia = Mass_counter*Length_counter^2+Mass_projectile*Length_projectile^2+(Density*Length_counter^3)/3+(Density*Length_projectile^3)/3
end