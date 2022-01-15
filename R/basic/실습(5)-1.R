# 5. R을 이용한 데이터조각방법 1
# 5.1 데이터의 대략적인 특징 파악

# head() 함수
# 처음부터 6행까지 행 추출
# 몇번째 행까지 추출할 건지 매개변수로 줄 수 있음
head(Orange) # Orange는 내장 데이터인듯 ?
head(Orange, 10)

# tail() 함수
# 끝부터 6행까지 행 추출
# 이것도 옵션으로 매개변수 몇행까지 추출할건지 줄 수 있음
tail(Orange)
tail(Orange, 10)

# str() 함수
# 데이터의 구조를 파악할 수 있다.
# 몇개의 행이 있는지 obs
# 몇 개의 변수가 있는지 variables
# $ 기호 뒤에 존재하는 변수에 대해서 설명
str(Orange)

# summary() 함수
# 수치형 데이터의 각 컬럼별 min, max, median, mode, mean, 1사분위, 3사분위 보여줌
# 범주향 데이터의 경우 각 범주별 관측치 개수 구할 수 있다.
summary(Orange)

# 5.2 외부 파일 읽어오기
# CSV 파일 읽어오기
# fileEncoding 옵션으로 문자 인코딩 옵션 줄 수 있음.
# fileEncoding 옵션 주니까 에러 뜨는데 ? -> 그냥 없애면 잘 실행됨.
# 아니면 encoding="CP949" 옵션 주면 괜찮음.
nhis <- read.csv('./file/서울교통공사_승차순위_20210531.csv', encoding='CP949')
# nhis2 <- read.csv('./csv/서울교통공사_승차순위_20210531.csv', fileEncoding='UTF-8')
head(nhis)

# stringsAsFactor -> 문자열 데이터를 범주형 데이터로 읽기를 원할 때
sample <- read.csv('./file/서울교통공사_승차순위_20210531.csv', header=F, fileEncoding='EUC-KR', stringsAsFactor=TRUE)
sample

# 엑셀 파일 불러오기
# 엑셀 파일 읽으려면 패키지 설치 필요
# openxlsx 설치하기
install.packages('openxlsx')
library(openxlsx) # openxlsx 패키지 불러오기
nhis_sheet1 = read.xlsx('./file/충청북도 청주시_도로점용(굴착)허가 대장_20210706.xlsx')
head(nhis_sheet1)

# 특정 sheet 읽기
nhis_sheet2 = read.xlsx('./file/충청북도 청주시_도로점용(굴착)허가 대장_20210706.xlsx', sheet=2)
head(nhis_sheet2)

# 빅데이터 파일 불러오기
# data.table 패키지 설치
# fread() 함수로 빠르게 데이터를 읽어올 수 있게 된다.
install.packages('data.table')
library(data.table)

# encoding하니까 좀 이상하게 떠서 이번에도 그냥 옵션 빼줌.
nhis_bigdata = fread('./file/서울교통공사_승차순위_20210531.csv')
head(nhis_bigdata)
str(nhis_bigdata)

