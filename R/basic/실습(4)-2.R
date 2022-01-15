# 4.2 흐름제어문
# 조건문, 반복문
# 조건문 -> 어떤 문장들을 실행할 지 하지않을 지 판단하는 문장
# if 문 소괄호 뒤에 조건을 쓰고, 그 조건이 TRUE이면
# if 문 뒤 {} 안의 문장들이 수행된다.
# if(조건) {}

score <- 95
if (score >= 80) {
    print('조건이 TRUE인 경우에만 수행')
    print('A')
} else {
    print('조건이 FALSE인 경우에만 수행')
    print('B or C or D')
}

# if - else if 문
score <- 100
if (score >= 91) {
    print('A')
} else if (score >= 81) {
    print('B')
} else if (score >= 71) {
    print('C')
} else if (score >= 61) {
    print('D')
} else {
    print('F')
}

# ifelse() 함수
# ifelse(조건, '조건이 TRUE일 경우 수행', '조건이 FALSE일 경우 수행')
score <- 85
ifelse(score >= 91, 'A', 'FALSE 수행')

# 반복문
# 문장이 여러번 수행될 수 있도록 하는 문장
# for문, while문

# for문, 벡터 출력
for (num in (1:3)) {
    print(num)
}

# paste() -> 괄호 안 문자들을 이어붙여 주는 함수.
# concat 함수라고 생각.
for (num in (1:5)) {
    if(num %% 2 == 0){
        print(paste(num, "짝수"))
    }
    else {
       print(paste(num, "홀수"))
    }
}
