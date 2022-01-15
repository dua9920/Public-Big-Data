# 3. 데이터 구조 1
# 3.1 벡터
# 벡터: 하나 이상의 데이터를 저장할 수 있는 1차원 저장 구조
# 1차원 배열이다.
student_age <- c(11, 12, 13, 20, 15, 21)
student_age # tap 하면 자동 완성
class(student_age)
length(student_age) # 벡터의 길이 확인
student_age[1]
student_age[7] = 999
student_age[10] = 1010
student_age
# 슬라이싱
student_age[1:3]

# 벡터에 데이터 추가, 갱신
score <- c(1, 2, 3)
score
score[1] <- 10 # 데이터 갱신
score
score[4] <- 4 # 데이터 추가
score

# 벡터의 데이터 타입
# 벡터는 하나의 원시 데이터 타입으로 저장
# 만약, 다양한 데이터 타입을 섞어 저장하면
# 하나의 타입으로 자동으로 형변환
code <- c(1, 2, "30")
code # 모두 다 문자로 변경된다.

# 순열 생성
# 연속된 숫자 생성하기
data <- c(1:10)
data

data1 <- seq(1, 10)
data1

data2 <- seq(1, 10, by=2) # step=2
data2

data3 <- rep(1, times=5) # 1을 5번 반복
data3

data4 <- rep(1:3, each=3) # 1부터 3을 각각 3번씩
data4


# 3.2 행렬
# 표형태와 같은 2차원 데이터 저장 구조
# 행렬 (Matrix)는 벡터와 같이 모두 같은 데이터 타입
var1 <- c(1, 2, 3, 4, 5)
var1

# var1을 이용해서 2행 3열 행렬 생성
# 기본적으로 열 우선으로 값이 채워진다.
# 만약 행렬 갯수가 더 크다면 반복적으로 값이 채워진다.
x1 <- matrix(var1, nrow=2, ncol=4)
x1

var1 <- c(1:6)
x1 <- matrix(data = var1, nrow = 2, ncol = 3)
x1

# 2열 행렬을 생성
# 행의 개수는 자동 계산이 된다.
x2 <- matrix(var1, ncol=2)
x2

# 일부 데이터만 접근
# 흠.. R은 1부터 인덱스가 시작하는 구먼.
x1
x1[1][1]
x1[1, 3]
x1[1, ] # 1행 모든 열 출력
x1[, 1] # 1열 모든 행 출력

# 행렬에 데이터 추가
# rbind()로 행 추가
# cbind()로 열 추가
x1
x1 <- rbind(x1, c(10, 10, 10))
x1 <- cbind(x1, c(20, 20, 20))
x1
