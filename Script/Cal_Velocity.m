function Cal_Velocity = func(Energy, Inertia, Length)
    %-	A function which calculates the speed of a point on a rotating arm based on rotational energy https://en.wikipedia.org/wiki/Rotational_energy.
    Velocity = Length*((2*Energy/Inertia)^0.5);
    
    if isreal(Velocity)==1
        Cal_Velocity=Velocity;
    else
        Cal_Velocity=-10;
end