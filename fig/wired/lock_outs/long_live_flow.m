close all;
clear all;

load=8;

A1=dlmread('las1.txt');
A2=dlmread('las2.txt');
A3=dlmread('las3.txt');
A4=dlmread('las4.txt');
%A5=dlmread('las5.txt');
%figure;

% semilogx(A1(:,1), cumsum(A1(:,2))./1000, 'r-', 'LineWidth', 2); hold on;
% semilogx(A2(:,1), cumsum(A2(:,2))./1000, 'b-', 'LineWidth', 2); hold on; 
% semilogx(A3(:,1), cumsum(A3(:,2))./1000, 'k-', 'LineWidth', 2); hold on;
% semilogx(A4(:,1), cumsum(A4(:,2))./1000, 'g-', 'LineWidth', 2); hold on;
% semilogx(A5(:,1), cumsum(A5(:,2))./1000, 'm-', 'LineWidth', 2); 

figure(1);
plot(A1(:,1), cumsum(A1(:,2))./1000, 'r-O', 'LineWidth', 2); hold on;
plot(A2(:,1), cumsum(A2(:,2))./1000, 'b-^', 'LineWidth', 2); hold on; 
plot(A3(:,1), cumsum(A3(:,2))./1000, 'g-x', 'LineWidth', 2); hold on;
plot(A4(:,1), cumsum(A4(:,2))./1000, 'm-s', 'LineWidth', 2);
%plot(A5(:,1), cumsum(A5(:,2))./1000, 'm-x', 'LineWidth', 2); 

% plot(A1(:,1), cumsum(A1(:,2))./1000, 'r--', 'LineWidth', 2); hold on;
% plot(A2(:,1), cumsum(A2(:,2))./1000, 'b-.', 'LineWidth', 2); hold on; 
% plot(A3(:,1), cumsum(A3(:,2))./1000, 'k:', 'LineWidth', 4); hold on;
% plot(A4(:,1), cumsum(A4(:,2))./1000, 'm-', 'LineWidth', 2);
% %plot(A5(:,1), cumsum(A5(:,2))./1000, 'm-x', 'LineWidth', 2); 
set(gca, 'FontSize', 16);

xlabel('Time (s)');
ylabel('Data transferred (KB)');
title('LAS');
legend('cx1','cx2','cx3','cx4', 'Location', 'SE');
namefile=sprintf('./longlive_las_%d.eps', load);
print('-depsc', namefile);
saveas(gcf, sprintf('./longlive_las_%d.fig', load));

% plot(A1(:,1), cumsum(A1(:,2))./1000, 'r-O', 'LineWidth', 2); hold on;
% plot(A2(:,1), cumsum(A2(:,2))./1000, 'b-^', 'LineWidth', 2); hold on; 
% plot(A3(:,1), cumsum(A3(:,2))./1000, 'g-x', 'LineWidth', 2); hold on;
% plot(A4(:,1), cumsum(A4(:,2))./1000, 'm-s', 'LineWidth', 2);
% %plot(A5(:,1), cumsum(A5(:,2))./1000, 'm-x', 'LineWidth', 2); 

B1=dlmread('llas1.txt');
B2=dlmread('llas2.txt');
B3=dlmread('llas3.txt');
B4=dlmread('llas4.txt');
%A5=dlmread('las5.txt');


figure(2);
plot(B1(:,1), cumsum(B1(:,2))./1000, 'r-O', 'LineWidth', 2); hold on;
plot(B2(:,1), cumsum(B2(:,2))./1000, 'b-^', 'LineWidth', 2); hold on; 
plot(B3(:,1), cumsum(B3(:,2))./1000, 'g-x', 'LineWidth', 2); hold on;
plot(B4(:,1), cumsum(B4(:,2))./1000, 'm-s', 'LineWidth', 2);

set(gca, 'FontSize', 16);

xlabel('Time (s)');
ylabel('Data transferred (KB)');
title('EFD');
legend('cx1','cx2','cx3','cx4', 'Location', 'SE');
namefile=sprintf('./longlive_efd_%d.eps', load);
print('-depsc', namefile);
saveas(gcf, sprintf('./longlive_efd_%d.fig', load));


C1=dlmread('llasn1.txt');
C2=dlmread('llasn2.txt');
C3=dlmread('llasn3.txt');
C4=dlmread('llasn4.txt');
%A5=dlmread('las5.txt');


figure(3);
plot(C1(:,1), cumsum(C1(:,2))./1000, 'r-O', 'LineWidth', 2); hold on;
plot(C2(:,1), cumsum(C2(:,2))./1000, 'b-^', 'LineWidth', 2); hold on; 
plot(C3(:,1), cumsum(C3(:,2))./1000, 'g-x', 'LineWidth', 2); hold on;
plot(C4(:,1), cumsum(C4(:,2))./1000, 'm-s', 'LineWidth', 2);

set(gca, 'FontSize', 16);

%legend('cx1','cx2','cx3','cx4', 'Location', 'SE');
% legend('cx1','cx2','cx3','cx4','cx5');
% xlim([0 50]);
xlabel('Time (s)');
ylabel('Data transferred (KB)');
title('Run2C');
legend('cx1','cx2','cx3','cx4', 'Location', 'SE');

namefile=sprintf('./longlive_run2c_%d.eps', load);
print('-depsc', namefile);
saveas(gcf, sprintf('./longlive_run2c_%d.fig', load));


D1=dlmread('lars1.txt');
D2=dlmread('lars2.txt');
D3=dlmread('lars3.txt');
D4=dlmread('lars4.txt');
%A5=dlmread('las5.txt');


figure(4);
plot(D1(:,1), cumsum(D1(:,2))./1000, 'r-O', 'LineWidth', 2); hold on;
plot(D2(:,1), cumsum(D2(:,2))./1000, 'b-^', 'LineWidth', 2); hold on; 
plot(D3(:,1), cumsum(D3(:,2))./1000, 'g-x', 'LineWidth', 2); hold on;
plot(D4(:,1), cumsum(D4(:,2))./1000, 'm-s', 'LineWidth', 2);

set(gca, 'FontSize', 16);

%legend('cx1','cx2','cx3','cx4', 'Location', 'SE');
% legend('cx1','cx2','cx3','cx4','cx5');
% xlim([0 50]);
xlabel('Time (s)');
ylabel('Data transferred (KB)');
title('LARS');
legend('cx1','cx2','cx3','cx4', 'Location', 'SE');

namefile=sprintf('./longlive_lars_%d.eps', load);
print('-depsc', namefile);
saveas(gcf, sprintf('./longlive_lars_%d.fig', load));

