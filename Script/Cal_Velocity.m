function Velocity = Cal_Velocity(Energy, Inertia, Length)
    %-	A function which calculates the speed of a point on a rotating arm based on rotational energy https://en.wikipedia.org/wiki/Rotational_energy.
    Calculated_Velocity = Length*((2*Energy/Inertia)^0.5);
    
    if isreal(Calculated_Velocity)==1
        Velocity=Calculated_Velocity;
    else
        Velocity=-10;
end