# 5. R을 이용한 데이터조작방법 2
# 5.3 데이터 추출

# 행 제한
# 행 인덱스를 이용하여 행 제한
Orange[1, ] # 1행만 추출
Orange[1:5, ] # 1행부터 5행까지
Orange[c(1, 5), ] # 1행, 5행 만
Orange[-c(1:29), ] # 1~29행 제외하고 모든 행 추출

# 데이터를 비교하여 행 제한
# age 속성이 118인 행만 추출
Orange[Orange$age == 118, ]
# age 속성이 118이고 484인 것만 추출
Orange[Orange$age %in% c(118, 484), ]
# age 속성이 1372 이상이면 추출
Orange[Orange$age >= 1372, ]

# 열 제한
# 열이름을 이용하여 열 제한
# circumference 열만 추출, 행은 모든 행을 추출한다.
# 즉, 이건 속성 데이터. 세로 열 데이터라고 보면 된다.
Orange[, 'circumference']
# 앞에 인덱스를 주면 1행의 Tree, circumference 속성만 추출
Orange[1, c("Tree", 'circumference')] # 행과 열 제한

# 열인덱스를 이용하여 열 제한
# 행인덱스 추출하던 방법과 비슷
Orange[, 1] # 1열만 추출
Orange[, c(1, 3)] # 1열, 3열만 추출


# 정렬
# order() 함수
OrangeT1 <- Orange[Orange$circumference < 50, ]
OrangeT1
# 행을 circumference 기준으로 정렬
OrangeT1[order(OrangeT1$circumference), ] # 오름차순
OrangeT1[order(-OrangeT1$circumference), ] # 내림차순

# 그룹별 집계
# aggregate() 함수를 사용하면 데이터프레임의 그룹별 집계 가능
# 첫번째 매개인자의 ~ 뒤에 그룹핑할 기준 열이름
# ~ 앞에 집계할 데이터가 있는 열이름
# 즉, Tree 별로 그룹핑을 한 뒤에 (트리값이 1, 2, 3,.. 인것들 끼리 각가 그룹핑)
# circumference의 값을 집계를 하는 것이다.
# mean이니까 평균을 낸다.
aggregate(circumference~Tree, Orange, mean)



# 5.4 데이터 구조 변경
# 데이터 병합
# 열방향으로 두 데이터프레임을 병합할 때 merge() 또는 cbind()를 사용할 수 있다.
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

# rbind()
# 행을 합친다.
# 두 데이터프레임의 컬럼명이 동일해야한다.
# (디폴트로) 상하로 합친다.
rbind(stu1, stu4)

# cbind()
# 열을 합친다.
# 좌우로 합친다.
cbind(stu1, stu2)
