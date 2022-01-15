# 4.3 함수
# 변수는 데이터를 저장
# 함수는 프로그램 코드를 저장
# 함수 정의 -> 함수를 선언하는 것
# 함수 호출 -> 함수를 불러들이는 것
# 내장함수 (built in) : 이미 만들어져있는 함수 들
# ex) print(), str(), head() 등
# 사용자정의함수 : 사용자가 정의하는 함수

# 매개변수가 없는 함수
a <- function() {
    print("testa")
}
a()

# 매개변수가 있는 함수
# 매개변수 -> 함수 외부에서 데이터를 받아 저장할 변수
# 함수를 생성할 때 함수 외부에서 데이터를 전달받아 이용할 수 있다.
a <- function(num) {
    print(num)
}
a(20)
a(10)

a <- function(num1, num2) {
    print(paste(num1, ' ', num2))
}
a(10, 20)
a(num1=1, num2=2) # 매개변수 이름도 직접 작성 가능

# 반환값이 있는 함수
# 함수의 실행이 끝난 후,
# 실행 결과의 데이터를 함수를 호출한 쪽으로 돌려줄 수 있다.
# 함수를 호출한 곳에 데이터를 돌려준다는 의미.
# 리턴 데이터, 반환 데이터 라고 한다.
calculator <- function(num1, op, num2) {
    result <- 0

    if(op == '+') {
        result <- num1 + num2
    } else if (op == '-') {
        result <- num1 - num2
    } else if (op == '*') {
        result <- num1 * num2
    } else if (op == '/'){
        result <- num1 / num2
    }

    return (result)
}
n1 = calculator(1, '+', 2)
n2 = calculator(1, '-', 2)
n3 = calculator(1, '*', 2)
n4 = calculator(1, '/', 2)
print(paste(n1, n2, n3, n4))
