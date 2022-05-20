clear;
clc;
initial_position = input("Enter the initial position (xo) [m]: ");
initial_velocity = input("Enter the initial velocity (vo) [m/s]: ");
mass = input("Enter the body mass(m) [kg]: ");
k_coef = input("Enter the k coefficient (k) [N/m]: ");
position = harmonic(initial_position,initial_velocity,mass,k_coef);
plot(position)
legend('x(t)')
xlabel('Time (s)')
ylabel('Displacement (m)')
title ('Harmonic Vibration - Position Equation ')
function xt = harmonic(xo,vo,m,k)
    wn = sqrt(k/m) %% Angular frequency(ωn) [rad/s]
    i = 0; %%Count
    for t = 0:0.055:10;
    i = i + 1;
        xt(i) = xo*cos(wn*t) + (vo/wn)*sin(wn*t);
    end
end
