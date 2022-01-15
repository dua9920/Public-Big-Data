# 통계기반 데이터분석 2강
# [실습2] 상관분석

# 2-1
# 피어슨 상관계수 구하기
# 해석:
# 피어슨 상관계수의 값이 0.9135189으로 강한 양의 상관관계를 가진다.
# 즉, 나무의 나이가 많을수록 나무의 둘레의 값이 크고
# 나무 둘레의 값이 클수록 나이가 많다.
# 해당 예시에서 나무의 나이가 원인이고 나무의 둘레가 결과라는 것을 상식선에서 생각할 수 있다.
# 하지만, 상관계수가 인과관계를 설명하는 것은 아니다.
# 상관계수 값은 어떤 변수가 원인이고 결과인지는 설명하지 못한다.
cor(Orange$circumference, Orange$age)

# 피어슨 상관계수 구하기
# 산점도 그리기
# 예제:
# Orange 데이터에서 나무의 둘레(circumference)와 나무의 나이(age)와의 산점도 그래프
plot(Orange$circumference, Orange$age, col='red', pch=19)


# 2-2
# 예제:
# 아이리스 데이터의 Sepal.Length, Sepal.Width, Petal.Length, Petal.Width 변수 간
# 상관계수 구하기
# 해석:
# 대각선의 1 값을 제외한 상관계수 값 중 가장 큰 값은 0.9628654로
# Petal.length 변수와 Petal.Width 변수와의 상관계수다.
# 절대값이 가장 작은 것은 -0.1175698로 Sepal.Length 변수와
# Sepal.Width 변수의 상관계수이다.
cor(iris[, 1:4])


# 2-3
# 상관계수 검정
# 아이리스 데이터의 Petal.Length 변수와 Petal.Width 변수의 피어슨 상관계수 검정의 예.
# 피어슨 상관계수 검정
# 해석:
# p-value는 0.05보다 작은 수 이므로 귀무가설 기각, 대립가설 채택
# 95% 확률로 상관계수는 0.9490525 ~ 0.9729853 구간의 값
cor.test(iris$Petal.Length, iris$Petal.Width, method="pearson")
# 스피어만 상관계수 검정
# x, y 예시 작성해서 spearman 코드 수행.
x <- c(1, 2, 3, 4, 5)
y <- c(1, 0, 3, 4, 5)
cor.test(x,y, method="spearman")
cor.test(iris$Petal.Length, iris$Petal.Width,exact=FALSE, method="spearman")
