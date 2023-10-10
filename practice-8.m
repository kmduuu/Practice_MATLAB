% 복소 지수 함수
fs = 100;
Ts = 1/fs;

t = 0:Ts:1-Ts; # 표본화 시간 공간 선언

A = 2;
f0 = 5;
phi = 0;

sig = A*exp(1j*2*pi*f0*t);

figure;stem(t, real(sig),'k') # stem : 이산신호 출력, plot : 아날로그 신호 출력
hold on
stem(t, imag(sig), 'r')
grid on
xlabel('Time (sec)')
ylabel('Complex exponential signal')
legend('Real term','Imaginary term')
axis([0 1 -2.5 2.5])

% 신호의 곱 응용
% rect : 사각형 형태

fs = 100;
Ts = 1/fs;

t = -3:Ts:3-Ts; # 표본화 시간 공간 선언

sig = 0.5*exp(0.5*t);

rect = zeros(1, length(t));
rect(find(t>=-1 & t<1)) = 1;

ext_sig = sig.*rect;

figure;plot(t, sig, 'k')
hold on
plot(t, rect,'b') # Blue로 출력하라.
hold on
plot(t, ext_sig, 'ro-')
grid on
xlabel('Time (sec)')
legend('Exponential signal', 'Rect function', 'Extracted signal')
axis([-3 3 0 2.5])
