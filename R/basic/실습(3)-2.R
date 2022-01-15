## 3. 데이터 구조 2
# 3.1 데이터 프레임
# DataFrame: 행과 열을 가진 2차원 저장 구조
# 벡터, 매트릭스와 차이점 -> 서로 다른 데이터 타입 가질 수 있음.
no <- seq(10, 70, 10)
age <- c(18, 15, 13, 12, 10, 9, 7)
gender <- c("M", "F", "F", "M", 'M', "F", "M")
no
age
gender
# 데이터 프레임 생성
students <- data.frame(no, age, gender)
students

# 열의 이름 모두 출력
colnames(students)
# 행의 이름 모두 출력
rownames(students)

# 열의 이름 수정
colnames(students) <- c("no", '나이', '성별')
students
# 행의 이름 수정
rownames(students )<- c('A', 'B', 'C', 'D', 'E', 'F', 'G')
students

colnames(students) <- c("no", 'age', 'gender')
students

# 일부 데이터만 접근
# 열 이름으로 특정 열에 접근하기
# 변수이름$열이름
# 혹은 [, 열이름]
# 혹은 [, 열인덱스]
students$no
students[, 'no']
students[, 1]
students$gender
students[, 'gender']
students[, 3]

# 행 이름으로 특정 행에 접근하기
# [행이름 ,]
# [행인덱스, ]
students["1", ]
students[3]
students[2, ]
students[3, 1]
students["A", "no"]
students[2, 2]

# 열 데이터 추가
# 데이터프레임이름$열이름
# 데이터의 갯수가 맞아야한다!
students$name <- c("이용", '준희', '이훈', '서희', '승희', '하정', '하준')
students

# 행 데이터 추가
students["H", ] <- c(80, 10, 'M', '홍길동')
students
tail(students) # 데이터 프레임 끝만 확인하기, 기본값 6개
head(students) # 데이터 프레임 머리만 확인하기


# 3.4 배열
# 배열은 다차원 데이터 저장 구조
# 벡터, 매트릭스처럼 하나의 원시 데이터 타입으로 저장
# array()
# dim() 옵션 넣을 때는 c를 빠뜨리지 말자.
var1 <- seq(1, 12)
var1
arr1 <- array(var1, dim=c(2, 2, 3)) # dim -> 차원 설정 2행2열이 3개
arr1

# dim 안넣으면 그냥 1차원으로 넣어짐.
arr2 <- array(var1)
arr2

arr3 <- array(var1, dim=c(6,2))
arr3

# 3.5 리스트
# 다차원 데이터 저장 구조
# 키 - 값 쌍으로 저장
# 파이썬에서는 딕셔너리 타입
# 값에 해당하는 데이터가 벡터, 행렬, 배열, 리스트 등 어떠한 데이터 구조 가능
# list()
v_data <- c("02-1111-2222", '01022223333') # 벡터
m_data <- matrix(c(21:16), nrow=2) # 행렬
a_data <- array(c(31:36), dim=c(2,2,2)) # 배열
d_data <- data.frame(address=c('seoul', 'busan'), name=c('Lee', 'Kim'), stringsAsFactors=F) # 데이터프레임
# stringsAsFactor는 string 값으로 넣어지는? 그런 것인듯.

v_data
m_data
a_data
d_data

# list(키1 = 값1, 키2 = 값2, ...) 이런식으로 생성
list_data = list(name='Yeom', tel=v_data, score1=m_data, score2=a_data, friends=d_data)
list_data

# 리스트 접근
# 리스트이름$키
# 리스트이름[인덱스]
list_data$name
list_data$tel
list_data[3]
