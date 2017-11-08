addpath('C:\Users\sande\OneDrive\Dokumenter\GitHub\Assigment-4\code\build-project4-Desktop_Qt_5_9_2_MSVC2017_64bit-Debug') %Change to build path

M = load('magnetization1.000000.txt'); %T = 1.0
mcM = linspace(1,length(M),length(M));
E = load('energy1.000000.txt'); %T = 1.0
mcE = linspace(1,length(E),length(E));
M2 = load('magnetization2.400000.txt'); %T = 2.4
mcM2 = linspace(1,length(M2),length(M2));
E2 = load('energy2.400000.txt'); %T = 2.4
mcE2 = linspace(1,length(E2),length(E2));
Acc = load('TempAcceptance.txt');
A = load('acceptanceMC1.000000.txt');
mcA = linspace(1,length(A),length(A));
A2 = load('acceptanceMC2.400000.txt');
mcA2 = linspace(1,length(A2),length(A2));

%%

% figure(1)
% histogram(E, mc)
% xlabel('mc cycles')
% ylabel('Energy')

%Energy plots
figure(2) %T = 1.0
plot(mcE,E)
%ylim([-850,-750])
xlabel('mc cycles / 50')
ylabel('Energy')
title('Energy vs Monte Carlo cycles for T = 1.0')

figure(3) %T = 2.4
plot(mcE2,E2)
xlabel('mc cycles / 50')
ylabel('Energy')
title('Energy vs Monte Carlo cycles for T = 2.4')

%Magnetization plots
figure(4) %T = 1.0
plot(mcM,-M)
xlabel('mc cycles / 50')
ylabel('Magnetization')
title('Magnetization vs Monte Carlo cycles for T = 1.0')

figure(5) %T = 2.4
plot(mcM2,-M2)
xlabel('mc cycles / 50')
ylabel('Magnetization')
title('Magnetization vs Monte Carlo cycles for T = 2.4')

%Acceptance plot
figure(6)
plot(Acc(:,1),Acc(:,2))
grid on
xlabel('Temperature')
ylabel('Acceptance')
title('Acceptance vs temperature for mcs = 1000')

figure(7)
plot(mcA,A)
grid on
xlabel('cycles')
ylabel('Acceptance')
title('Acceptance vs Monte Carlo cycles')




