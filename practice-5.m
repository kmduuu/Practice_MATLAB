
# 2023.09.12

% 레일레이분포를 나타냄

% 난수 생성할 횟수
n = 1e6;

% 스케일 파라미터 설정 (Rayleigh 분포의 파라미터)
scale = 1.0;

% 레일레이 분포에서 난수 생성
random_numbers = abs(scale * randn(1, n) + j * randn(1, n)).^2;

% 히스토그램 생성
hist(random_numbers, 50); % 50개의 구간으로 나눈 히스토그램

% Y축 범위 설정
ylim([0, 7]);

% 히스토그램 제목과 축 레이블 추가
title('Rayleigh Distribution Histogram');
xlabel('Random Values');
ylabel('Frequency');

% 그래프 출력
