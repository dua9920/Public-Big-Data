# 통계기반 데이터 분석 5강
# [실습5] 시계열 분석

# 5-1 차분
n <- head(Nile)
n

# 1차 차분
n.diff1 <- diff(n, differences = 1)
n.diff1

# 2차 차분
n.diff2 <- diff(n, differences = 2)
n.diff2

plot(Nile)

# 5-2 자기회귀 누적이동평균 모델
# forecatst 패키지의 auto.arima() 함수를 이용하여 적절한 p, d, q인자 결정
# 1) 먼저 forecast 패키지를 설치하고 불러온다.
#install.packages("forecast")
library(forecast)

auto.arima(Nile)

Nile.arima <- arima(Nile, order=c(1, 1, 1))
Nile.arima

forecast(Nile.arima, h=5)

plot(forecast(Nile.arima, h=5))


# 5-3 분해 시계열
# 1) R에 내장되어 있는 ldeaths 데이터를 선그래프로 그려보기
plot(ldeaths)

# 2) ldeaths 시계열 데이터를 decompose() 함수로 분해하여 그래프로 표현하기
ldeaths.decomp <- decompose(ldeaths)
plot(ldeaths.decomp)

# 3) 추세요인만 따로 확인
ldeaths.decomp.trend <- ldeaths.decomp$trend
plot(ldeaths.decomp.trend)

# 4) 계절성만 따로 확인하기
ldeaths.decomp.seasonal <- ldeaths.decomp$seasonal
plot(ldeaths.decomp.seasonal)
