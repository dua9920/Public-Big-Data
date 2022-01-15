# 2.1 변수
age <- 20 # <- 할당 연산자
age

age <- 30 # 변수 수정
age


# 2.2 데이터 타입
# 숫자(numeric), 문자(character),
# 논리(logical), 펙터(factor) 타입이 있다.
age <- 20
class(age) # 데이터 타입 확인

name <- "하이"
class(name)

is_effective <- TRUE # 무조건 TRUE
is_effective

is_effective <- FALSE # true, false는 상
is_effective
class(is_effective)

# factor 타입
# 범주형 데이터를 저장하기 위한 데이터 타입
# 데이터 분석에만 존재하는 데이터 타입
# 유형: 명목형, 순서형
# 명목형 -> 크고 작음을 비교할 수 없음. ex) 도시 이름
# 순서형 -> 크고 작음을 비교할 수 있음. ex) 옷 사이즈

# 서울/부산/제주 의 전체 범주(factor) 중 서울 저장
sido <- factor("서울", c("서울", "부산", "제주"))
sido
class(sido)
levels(sido) # 전체 범주 확

x1 <- c("Dec", "Apr", "Jan", "Mar")
x1
sort(x1)
month_levels <- c(
  "Jan", "Feb", "Mar", "Apr", "May", "Jun", 
  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
)
y1 <- factor(x1, levels = month_levels)
y1
sort(y1)

# 2.3 상수
# NULL과 NA
# NULL: 변수에 값이 아직 정해지지 않음.
# NA: 결측치
a <- NULL
jumsu <- c(NA, 90, 100)
a
jumsu

# inf: 무한대 의미
# NaN: Not a Number ex) 0/0 같은거
0/0
