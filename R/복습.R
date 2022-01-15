age <- 20
class(age)

# 범주형 데이터 저장
sido <- factor("서울")
sido
levels(sido)

sido2 <- factor("서울", c("부산", "제주"))
sido2
class(sido2)
levels(sido2)

0/0
a <- inf
a

age <- c(11, 12, 13, 14)
age
class(age)
length(age)
age[3]

age[1] <- 10
age
age[5] <-15
age

code <- c(1, 2, "30")
code # 모두 다 문자로 변경된다.

data <- c(1:10)
data
data1 <- seq(1, 10)
data1
data2 <- seq(1, 10, by=2)
data2
data3 <- rep(1, times=3)
data3
data4 <- rep(1:3, each=3)
data4

data <- seq(1, 10,  by=2)
data


var1 <- c(1, 2, 3, 4, 5)
var1
x1 <- matrix(var1, nrow=2, ncol=4)
x1

var1 <- seq(1:6)
var1
x2 <- matrix(var1, nrow=2)
x2
x2[1,]
x2[3]
x2[1,2]
x2[1, 3]
x2[, 1]

x1
x1 <- rbind(x1, c(10, 10, 10))
x1
x1 <- cbind(x1, c(20, 20))
x1

no <- seq(10, 70, 10)
age <- c(18, 15, 13, 12, 10, 9, 7)
gender <- c("M", "M", "M", "M", 'M', "F", "M")
students <- data.frame(no, age, gender)
students

students['age']
colnames(students)
rownames(students)
colnames(students) <- c('no', '나이', '성별')
colnames(students)
students
students <- cbind(students, c('A', 'B', 'C', 'D', 'E', 'F', 'G'))
colnames(students) <- c('no', '나이', '성별', '영어')
students

students$no
students$영어
students[1, 'no']
rownames(students)
students['1', ]

students[, 'name'] <- c("이용", '준희', '이훈', '서희', '승희', '하정', '하준')
students
colnames(students)
tail(students, 3)
head(students, 3)

var1 <- seq(1, 12)
var1
arr1 <- array(var1, dim=c(2,2,3))
arr1

v_data <- c("02-1111-2222", '01022223333') # 벡터
m_data <- matrix(c(21:16), nrow=2) # 행렬
a_data <- array(c(31:36), dim=c(2,2,2)) # 배열
d_data <- data.frame(address=c('서울', '부산'), name=c('Lee', 'Kim'), stringsAsFactors=F) # 데이터프레임
# stringsAsFactor는 string 값으로 넣어지는? 그런 것인듯.

v_data
m_data
a_data
d_data

list_data = list(name='홍길동', tel=v_data, score1=m_data, score2=a_data, friends=d_data)
list_data
list_data$name
list_data$tel
list_data[3]

2 + 3
2 * 3
2 ^ 3
5 %% 2
5 %/% 2
n <- 20
n %in% c(10, 20, 30)

n <- 11
n %in% c(10, 20, 11)

score <- c(10, 20)
score + 2
score # 벡터 자체는 변경되지 않았음. 할당하지 않았기 때문.
score <- score + 2
score # 할당돼서 벡터가 변경됨.

score1 <- c(100, 200)
score2 <- c(90, 91)
sum_score <- score1 + score2 
sum_score

score1 <- seq(100, 400, 100)
score2 <- c(90, 91)
score1
score1 + score2 # 100+90, 200+91, 300+90, 400+91

score1 <- seq(100, 500, 100)
score1
score1 + score2 # 배수 관계가 아니면 오류가 남.

m1 <- matrix(seq(1:9), nrow=3)
m2 <- matrix(rep(2, 9), nrow=3)
m1
m2
m1 + m2
m1 - m2
m1 * m2
m1 ^ m2
m1 & m2

score <- 85
ifelse(score >= 91, 'A', 'FALSE 수행')

score <- 70
ifelse(score>30, 'A', '하이루')

for (i in (1:3)){
  print(i)
}

a <- function() {
  print('하이루')
}
a()

a <- function(num1, num2){
  print(paste(num1,'', num2))
}
a(10, 20)


head(Orange)
str(Orange)
summary(Orange)

nhis <- read.csv('./file/서울교통공사_승차순위_20210531.csv', encoding='CP949')
#nhis2 <- read.csv('./file/서울교통공사_승차순위_20210531.csv', fileEncoding='UTF-8')
head(nhis)

sample <- read.csv('./file/서울교통공사_승차순위_20210531.csv', header=F, fileEncoding='euc-kr', stringsAsFactor=TRUE)
head(sample)

install.packages('data.table')
library(data.table)
nhis_bigdata = fread('./file/서울교통공사_승차순위_20210531.csv')
head(nhis_bigdata)
str(nhis_bigdata)

Orange[1, ]
Orange[1:4, ]
Orange[c(1, 3), ]
Orange[-c(1:29), ]

Orange[Orange$age == 118, ]
Orange[Orange$age %in% c(118, 484), ]
Orange[1, ]

Orange[, 'age']
Orange[1, c('Tree', 'circumference')]

OrangeT1 <- Orange[Orange$circumference < 50, ]
OrangeT1
OrangeT1[order(OrangeT1$circumference), ]
OrangeT1[order(-OrangeT1$circumference), ]
aggregate(circumference~Tree, Orange, mean)


stu1 <- data.frame(no = c(1:3), mid=c(100, 90, 80))
stu2 <- data.frame(no=c(1:3), fin=c(100, 90, 80))
stu3 <- data.frame(no=c(1, 4, 5), quiz=c(99, 88, 77))
stu4 <- data.frame(no=c(4:6), mid=c(99,88,77))
stu1
stu2
stu3
stu4

# merge()
# 동일 컬럼명의 동일 데이터 행 끼리 병합한다.
# 만약 all 옵션을 주면 안맞는 값은 NA 값이 들어간다.
merge(stu1, stu2)
merge(stu1, stu3)
merge(stu1, stu3, all=T)
rbind(stu1, stu4)
cbind(stu1, stu2)

data <- c(5, 6, 7, 5, 5, 9, 10, 3, 3, 3.5, 8, 8, 7, 2, 3, 3.5, 6, 6, 6, 6)
t.test(data, mu=7, alternative='less')
