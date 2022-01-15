# 통계기반 데이터 분석 3강
# [실습3] 단순선형회귀

# 3-1 단순선형회귀
# 모델 생성
# 예제:
# Orange 데이터는 다음과 같이 각 나무의 종류(Tree)와 나무 나이(age),
# 나무 둘레 (circumference) 변수의 관측값이 존재한다.
data(Orange)
head(Orange)

age = 20
age

# lm() 함수로 단순선형회귀모델 생성하기
# formula 매개인자: 무엇이 종속변수이고, 무엇이 설명변수인지를 표현하는 식
# 회귀계수는 각각 17.3997, 0.1068로 추정되어 다음과 같은 모델이 생성.
# circumference(i) = 17.3997 + 0.1068*age(i) + error(i)
model <- lm(circumference ~ age, Orange)
model

# coef() 함수를 이용하여 회귀계수만 출력하기
coef(model)


# 3-2 단순선형회귀
# 잔차, 손실 구하기
# residuals() 함수로 잔차 확인
r <- residuals(model)
r # 전체 확인
r[0:4] # 1행만 확인

# fitted() 함수로 model이 예측한 값 구하기
f <- fitted(model)
f

# 예측한 값에 잔차를 더하여 실제값과 동일한지 확인
# 예측한 값과 잔차 더하기
f[0:4] + r[0:4]

# 위의 값이 다음의 실제 데이터와 동일함을 확인 가능.
# 실제값
Orange[0:4, 'circumference']

# deviance() 함수로 잔차제곱합 구하기
deviance(model)


# 3-3 단순선형회귀
# 예측
# predict.lm() 함수로 나이가 100인 나무의 둘레 예측하기
predict.lm(model, newdata = data.frame(age=100))


# 3-4 단순선형회귀
# 결정계수
# Multiple R-squared 에서 결정계수 확인가능
summary(model)
