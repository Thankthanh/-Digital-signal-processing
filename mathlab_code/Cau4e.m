clc; clear; close all;

% Tham số tín hiệu
A1 = 1; f1 = 2;
A2 = 2; f2 = 5;
A3 = 3; f3 = 8;
A4 = 4; f4 = 12;
fs = 36; ts = 1/fs;

% Tạo tín hiệu
t = 0:ts:5;
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);
x3 = A3*sin(2*pi*f3*t);
x4 = A4*sin(2*pi*f4*t);

xn = x1 + x2 + x3 + x4;
x24 = x2 + x4;

% Thiết kế bộ lọc đa dải từ lọc dải thông
N = 45;
fcl = 3.5; % tần số cắt thấp
fch = 6.5; % tần số cắt cao
omega_H = 2*pi*fch*ts;
omega_L = 2*pi*fcl*ts;
% Đáp ứng xung lý tưởng
hn_LT1 = a0_ThongDai(omega_H, omega_L, N);

fcl = 10.5; % tần số cắt thấp
fch = 13.5; % tần số cắt cao
omega_H = 2*pi*fch*ts;
omega_L = 2*pi*fcl*ts;
% Đáp ứng xung lý tưởng
hn_LT2 = a0_ThongDai(omega_H, omega_L, N);


hn_LT=hn_LT2+hn_LT1;


% Áp dụng cửa sổ Hamming
w = b0_Hamming(N);
hn = hn_LT .* w;

% Lọc tín hiệu
xL = conv(xn, hn, 'same');

% Tính phổ tín hiệu và bộ lọc
Nfft = 500;
Xw = fft(xn, Nfft);
Hw = fft(hn, Nfft);

delta = fs/Nfft;
f = 0:delta:fs/2 - delta;

% Vẽ phổ
figure(1); 
yyaxis left 
plot(f,abs(Xw(1:Nfft/2)),'b-','linewidth',1.8); hold on; 
xlabel('f'); ylabel('|X|'); 
yyaxis right 
plot(f,abs(Hw(1:Nfft/2)),'r-','linewidth',1.8); 
xlabel('f'); ylabel('|H|'); 
legend('|X|', '|H|'); 
  
figure(2) 
subplot(3,1,1); 
plot(t,x24,'r-','linewidth',1.8); 
xlabel('t'); ylabel('x_d(t)'); 
  
subplot(3,1,2); 
plot(t,xn,'b-','linewidth',1.8); 
xlabel('t'); ylabel('x(t)'); 
  
subplot(3,1,3); 
plot(t,xL(1:length(t)),'m-','linewidth',1.8); 
xlabel('t'); ylabel('x_L(t)'); 


