
% 임펄스 신호
% ==> 시간이 0일때만 값을 갖는다.

n = -5:14; % -5 ~ 14까지 1 단위로 생성...

impulse = zeros(length(n), 1); %
impulse(find(n==0)) = 1;

figure;stem(n, impulse, 'k')
grid on
xlabel('Sample, n')
ylabel('Impulse, final')
axis([-5 15 0 1.5])

% 단위 계단 신호

% ==> 시간이 0보다 클 때 1의 값을 갖는다.

# 20개 샘플의 단위 계단 신호 ( -5 <= n < 15)

n = -5:14;
unitstep = zeros(length(n), 1);
unitstep(find(n>=0)) = 1;

figure;stem(n, unitstep, 'k')
grid on
xlabel('Sample, n')
ylabel('Unit step signal')
axis([-5 15 0 1.5])

% 표본화 시간 공간 선언
% 이 내용 중요, 다른 곳에서 많이 쓰인다.

fs = 100; % 1초 동안 샘플링 하는 횟수 (샘플링 레이트 100Hz)
Ts = 1/fs; % 샘플링 주기 1/100 sec

t = 0:Ts:1-Ts; % 0 <= t < 1

A = 2; % 진폭
f0 = 10; % 정현파 주파수
phi = 0; % 초기 위상(Phase)

sig = A*cos(2*pi*f0*t + phi);

figure; stem(t, sig,'k')
grid on
xlabel('Time (sec)')
ylabel('Sinusoidal signal')
axis([0 1 -2.5 2.5])

% cos신호인지 sin신호인지 잘 모름...
%
