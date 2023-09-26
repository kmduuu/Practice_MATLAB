
clear; clc;

# 2023.09.05
# 항등행렬?

# inv(inverse를 의미)
# 역행렬 쓸 때 사용하는 API

A = [1 2 3 ; 3 2 1 ; 5 4 6 ];
c = [1 2 3].';

x = inv(A) * c

A * x

A = [2 3 ; 1 2 ; 3 5 1 ]
c = [10 5 11].';

x = inv(A) * c

A * x

clear; clc;

disp("111111111111111");
x = 0:.5:2;
y = sin(x).*exp(-x);
xy = [ x.' y.']

figure;plot(xy(:,1),xy(:,2))
xlabel('x')
ylabel('y')

x(6) = 2.5 # x자리가 5자리까지 밖에 없는데, 6자리에 2.5라는 값을 '요소추가' 하는 것
y = sin(x).*exp(-x);
xy = [ x.' y.']

figure;plot(xy(:,1), xy(:,2))
xlabel('x')
ylabel('y')
