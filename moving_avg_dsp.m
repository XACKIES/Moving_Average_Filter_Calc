clear;
clc;
f_s = input('Enter the sampling frequency (Hz): ');
M_values = input('Enter the M values as a vector [e.g., [2, 5, 10]]: '); 

f_norm = linspace(0, 0.5, 1000);
f = f_norm * f_s;


figure;
hold on;

for M = M_values

    H_f = sin(pi * f_norm * M) ./ (M * sin(pi * f_norm)); 
    H_f(f_norm == 0) = 1; 
    plot(f, abs(H_f), 'DisplayName', [num2str(M), ' point']);
end


grid on;
xlabel('Frequency (Hz)'); 
ylabel('Amplitude');
title(['Graph of H[f] for Different M Values with Sampling Frequency f_s = ', num2str(f_s), ' Hz']);
legend('show');
hold off;
