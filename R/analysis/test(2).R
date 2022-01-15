# 2. 데이터 분산도 탐색
# 2.1 최솟값, 최대값으로 범위 탐색

A_salary <- c(25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)
B_salary <- c(20, 40, 25, 25, 35, 25, 20, 10, 55, 65, 100, 100, 150, 300)

# 분산도 : 관측된 데이터가 흩어져 있는 정도
# 범위 : 관측된 값들 중에서의 최대값과 최소값의 차이로 분산도를 측정하는 간단한 방법
# range() 함수
range(A_salary)
range(B_salary)

# 최대값, 최소값
# min, max
min(A_salary)
max(A_salary)
min(B_salary)
max(B_salary)


# 2.2 분산과 표준편차
# 객관적인 편차 확인을 위하여 분산과 표준편차를 구해 봐야함
# 분산: var()
# 표준편차: sd()
var(A_salary)
var(B_salary) # 연봉의 분산이 큼을 알 수 있음.

sd(A_salary)
sd(B_salary) # 연봉의 편차가 큼을 알 수 있음.

