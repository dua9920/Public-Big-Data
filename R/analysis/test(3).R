# 3. 데이터 분포 탐색
# 3.1 백분위수와 사분위수
# 백분위수: 데이터를 정렬한 후, 특정 퍼센트 지점의 수
# 최소값: 0% 지점의 수
# 최대값: 100% 지점의 수
# 중앙값: 50% 지점의 수

A_salary <- c(25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)
B_salary <- c(20, 40, 25, 25, 35, 25, 20, 10, 55, 65, 100, 100, 150, 300)

# 90% 백분위수
quantile(A_salary, 0.9)
quantile(B_salary, 0.9)

# 사분위수: 백분위수 중 0, 25, 50, 75, 100% 지점의 수
quantile(A_salary)
quantile(B_salary)


# 3.2 상자그림
# boxplot
boxplot(A_salary, B_salary, names=c("A회사 연봉", "B회사 연봉"))


# 3.3 히스토그램
# 히스토그램: 구간별 값의 분포 시각화
# 데이터가 연속형 수치 데이터 인 경우 데이터 분포를 시각화하기에 좋은 그래프
hist(A_salary, xlab="A사 salary", ylab="인원수", breaks=5)
hist(B_salary, xlab="B사 salary", ylab="인원수", breaks=5)


# 3.4 도수분포표
# 도수분포표: 수집된 변수의 데이터를 범주 또는 동일한 크기의 구간으로 분류하고
# 각 구간마다 몇 개의 데이터가 존재하는지를 정리한 표로 많은 데이터를 알기 쉽게 정리하는 통계적인 방법 중의 하나
cut_value <- cut(A_salary, breaks = 5)
freq <- table(cut_value)

cut_value
freq

# 범주형 데이터 : table() 함수로 도수분포표 생성
A_gender <- as.factor(c('남', '남', '남', '남', '남', '남', '남', '남', '남', '여', '여', '여', '여', '여'))
B_gender <- as.factor(c('남', '남', '여', '여', '여', '여', '남', '남', '남', '여', '여', '여', '여', '여'))
A <- data.frame(gender <- A_gender, salary <- A_salary)
B <- data.frame(gender <- B_gender, salary <- B_salary)

freqA <- table(A$gender)
freqA

freqB <- table(B$gender)
freqB

# 상대적 빈도표 : prop.table() 한 범주에 속하는 빈도가 전체 관찰수에 비하여 어느 정도의 비중을 차지하고 있는가를
# 알아보는 상대적인 빈도가 유용한 경우
prop.table(freqA)
prop.table(freqB)


# 3.5 막대 그래프
# barplot() : 범주형 데이터나 이산형 수치 데이터의 도수분포표를 시각화
barplot(freqA, names= c('남', '여'), col = c('skyblue', 'pink'), ylim=c(0, 10))
title(main='A사')

barplot(freqB, names= c('남', '여'), col = c('skyblue', 'pink'), ylim=c(0, 10))
title(main='B사')


# 3.6 파이 그래프
# pie() : 분포의 시각화를 위해 사용, 범주가 몇개 되지 않고, 차이가 확연한 경우
pie(x = freqA, col=c('skyblue', 'pink'), main='A사')
pie(x = freqB, col=c('skyblue', 'pink'), main='B사')
