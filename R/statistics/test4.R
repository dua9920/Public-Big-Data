# 통계기반 데이터분석 4강
# [실습4] 다중선형회귀

# 4-1 다중선형회귀 모델 생성
height_father <- c(180, 172, 150, 180, 177, 160, 170, 165, 179, 159) # 아버지 키 
height_mohter <- c(160, 164, 166, 188, 160, 160, 171, 158, 169, 159) # 어머니 키
height_son <- c(180, 173, 163, 184, 165, 165, 175, 168, 179, 160) # 아들 키 
height <- data.frame(height_father, height_mohter, height_son)
head(height)

# formula() 는 종속변수 ~ 설명변수 와 같이 쓰는데,
# 설명변수가 하나 이상이면 +로 연결하여 표현
# lm()의 포뮬러 매개인자로 다음과 같이 사용
model <- lm(height_son ~ height_father + height_mohter, data=height)
model

# 4-2 잔차
r <- residuals(model)
r[0:4]

# 잔차 제곱합
deviance(model)


# 4-3 예측
# 예제:
# 아버지 키 170, 어머니 키 160의 데이터로 아들의 키 예측해보기
# 점 주정
predict.lm(model, newdata=data.frame(height_father=170, height_mohter=160))

# 구간 추정
predict.lm(model, newdata=data.frame(height_father=170, height_mohter=160), interval="confidence")


# 4-4 결정계수
# summary() 함수로 결정계수, 수정된 결정계수 및 F-통계량, 잔차, 사분위수, 회귀계수 확인
summary(model)


# 4-5 설명변수 선택
# 1) mpg를 종속변수로 하고, 나머지 모든 변수를 설명변수로 사용하는 회귀 모델을 만든다.
model <- lm(mpg ~ ., data =mtcars)
plot(model)
model

# 2) 앞서 만든 model을 step() 함수를 통해 최적의 설명변수로 추출한다.
new_model <- step(model, direction='both')
plot(new_model)

# 3) 실행 결과 해석
model <- lm(mpg ~ wt + qsec + am, data = mtcars)
plot(model)
