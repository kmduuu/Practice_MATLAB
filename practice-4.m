# 09.11 실습

# 지난 시간
clear; clc;
x = 0:.5:2;
y = sin(x).*exp(-x);
xy = [ x.' y.']

figure;plot(xy(:,1),xy(:,2))

y2 = exp(-x);

xlabel('x')
ylabel('y')

# 예제3)
clear; clc;

x = 0:0.01:10;
y = sin(x);
z = sin(x).^2;

figure;plot(x,y)
hold on # 그래프를 그린 후에 다른 그래프에 추가적으로 그릴 때 현재 그래프를 유지하는 것
plot(x, z) #
xlabel('x')
ylabel('outputs')
grid on
legend('sin(x)','sin(x).^2')

# 복소수 표현
# 복소수는 i와 j 둘 다 가능하다,

clear; clc;
A = [1+2j 3-4j]
A' # 일반적인 transpose
A.' # 켤레복소수를 생성하면서 전체 행렬을 구해주는 것(행이 바뀜)
# 반드시 구분해서 사용해야함.

# Uniform distribution :

# 균일확률분포, 정규분포가 뭔지, Rayleigh 분포가 뭔지
# 1. 그림 만들고
# 2. 레포트로 제출한다.
# 발표 시 가산점 줌

# 'if' syntax

# MATLAB에도 if 존재한다.
# if logical expression
# statement group A
# end

# For문

# While문

clear; clc;
# 1.
x = -10:0.1:10;

# 2.
x2 = x.^2

# 3.
y = exp(x).*cos(x.^2);

# 4.
figure;plot(x,y)
xlabel('x')
ylabel('y')
# 5.


clear; clc;
A = [ 2 1 -3 ; 1 0 4];
B = [ 3 0 5 ; 6 9 -1];
C = [5 -1 0 ; 7 8 -1];

D1 = A + B - C

D2 = 5A - 2 * (B - C)
D3 = A * B' * C

number = 0;

for i = 1:length(D3)
  if D3(i) > 0
    number = D3(i) + number;
    fprintf('number의 값: %f\n', number); % 변수의 값을 출력
  end
end
