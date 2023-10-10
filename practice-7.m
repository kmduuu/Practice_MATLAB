
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

% 지수(exponential)신호

% 표본화  시간 공간 선언
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

% 복소 지수 함수

clear; clc;

% 실습 1
fs = 1000;
Ts = 1/fs;

t = -2:Ts:2-Ts;

% 실습 2

y = 2 * exp(1j*20*pi*t); # 복소수 앞에 1을 붙이는 이유는
                         # 'j'가 복소수임을 강조하기 위함.

% 실습 3

figure;plot(t,real(y)); # 실수부 출력하기 위해 real함수 사용
hold on # 추가적인 그래프 출력 위함
plot(t,imag(y)); # 허수부 출력하기 위해 imag함수 사용

legend('실수부','허수부') # 편리함을 위해 사용
xlabel('시간(sec)') # 편리함을 위해 사용
ylabel('y') # 편리함을 위해 사용

axis([0 1]) # 0~1초의 시간 범위 plot

% 실습 4

# 답 : 10Hz, 1초에 10번 반복
# 혹은, 직접 계산해서 구하기

% 실습 5

% Z = zeros(m,n); => m = 행(row)
%                 => n = 열(column)

r = zeros(1, length(t)); # zeros : 모든 요소가 0인 행렬
% 이제 -1 <= t < 1 에 해당하는 지점에 1 값을 삽입
r(find(t>=-1 & t<1)) = 1;

figure;plot(t,r);
axis([-2 2 -0.1 1.1]); # Test -2 부터 2까지 출력하되,
                       # 식별용으로 출력되지 않는 -0.1과 1.1 범위도 출력

% 실습 6
% 요소 곱하기

yr = y .* r; # 요소 곱은 * 이 아닌 .* 필수

% 1. yr과 y의 실수부 비교

figure;plot(t,real(y));
hold on
plot(t,real(yr));
axis([-2 2 -3 3]);
# 해석 : -1 ~ 1의 범위만 값을 가지는 신호로 바뀐다.

% 2. yr과 y의 허수부 비교

figure;plot(t,imag(y));
hold on
plot(t,imag(yr));
axis([-2 2 -3 3]);

% 실습 7

phi = exp(1j*pi);
yphi = y .* phi;

figure;plot(t,real(y));
hold on
plot(t,real(yphi));
axis([0 0.5 -3 3]); # 시간 축 범위가 0~0.5초로 주어짐.

% 실습 8

fs1 = 8;
Ts1 = 1/fs1;

t1 = -2:Ts1:2-Ts1;

y1 = 2 * exp(1j*20*pi*t1)

# 실습 9
fs2 = 8;
Ts2 = 1/fs2;

t2 = -2:Ts2:2-Ts2;

y2 = 2 * exp(1j*20*pi*t2)

# 실습 10

figure;
plot(t,y)
hold on
plot(t1, y1)
hold on
plot(t2, y2)
legend('1000Hz', '8Hz', '20Hz')
axis([0 0.5])


































