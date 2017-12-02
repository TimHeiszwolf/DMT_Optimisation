function Cal_Velocity = func(Energy, Inertia, Length)
    %Function that calcultes the speed of a point on a rotation arm based on rotational energy https://en.wikipedia.org/wiki/Rotational_energy.
    Cal_Velocity = Length*((2*Energy/Inertia)^0.5);
end