clear; clc;
# 벡터 예시
x = [1,2,3,4,5]

y = [1;2;3;4;5]

#xT = x';

xT = x.';


# 따옴표의 의미는 가로축을 세로축으로 바꿔준다는 것.
# 벡터와 행렬 표현
clear; clc;
 x2 = [1:5]'; # '을 이용해 가로 -> 세로 전환함

 A = [1:2:9]'; # 대괄호 붙이고 따옴표(') 붙이면 표의 축이 변환된다.

 A(1)

 # 벡터와 행렬 표현

 clear; clc;
 A1 = [ 1 2 3 ; 4 5 6 ; 7 8 9;];
 x = [1 2 3];

 c = A1 * x

 A1(3,1)
# 행, 열
# 3,1은 3행의 1열이기에 7 값이 나온다.

# Transpose 대각선이 바뀐다?

# 행렬의 특정 범위 출력?
# 행렬 계산...
# 2 * 1 *? 3 * 2
# ==> 가운데 숫자가 둘이 같지 않으면 계산 불가
# 2 * 1 * 1 * 2
# ==> 가운데 숫자가 같으므로 계산 가능 ==> 2 * 2가 된다.
# 보통 표시할 때 m(행) * p(열)로 표시한다.

# 요소 곱? :
# x = [1 2 3];
# y = [3 4 5];

# 행렬 사이즈가 같을 때...

# x.*y ==> .은 요소곱 의미

# 3 8 5 라는 값이 출력

# 제곱을 사용할 때도 .을 사용해야 한다.




