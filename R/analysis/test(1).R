# 1.1 평균과 중앙값

# 단위는 백만원 단위
A_salary <- c(25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)
B_salary <- c(20, 40, 25, 25, 35, 25, 20, 10, 55, 65, 100, 100, 150, 300)

# 평균값 : mean()
mean(A_salary)
mean(B_salary)

# 결측값이 있는 경우
# 결측값을 제거하고 평균을 구할때는 na.rm = T 인자를 사용
A_salary2 <- c(NA, 25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)
A_salary2
mean(A_salary2, na.rm = T)

# 중앙값 : median()
median(A_salary)
median(A_salary2, na.rm=T)
median(B_salary)

# 절사평균
# 데이터 요약을 통해서 데이터의 특징, 데이터 간 차이를 파악 가능
# 대부분의 값이 어디쯤 위치하는지 추정
mean(A_salary, trim=0.1) # 양끝 10%씩 값을 제외하고 평균을 구함
mean(B_salary, trim=0.1)
