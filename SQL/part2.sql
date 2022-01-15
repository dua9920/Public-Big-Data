-- 1. SQL 함수 (Function)

-- 1.1 SQL 함수 개요
-- SQL 함수 유형 : 스칼라 / 그룹 / 사용자 정의 함수
-- 인수: 함수의 INPUT
-- 반환값: 함수의 OUTPUT
-- 단일행 함수 -> 1 INPUT 1 OUTPUT
-- 복수행 함수 -> N INPUT 1 OUTPUT

-- 스칼라 함수
-- 데이터의 값을 조작한다.
-- 인수를 받아들여 한 개의 값응 반환한다.
-- 각각의 행에 적용이 된다.
-- 행별로 하나의 결과를 반환한다.
-- 데이터 유형을 바꿔준다.
-- 중첩이 가능하다.
-- Character, General, Number, Conversion, Date


-- 스칼라함수 유형
-- 1.2 문자함수
-- LOWER(문자열): 문자열의 알파벳 문잘르 소문자로
-- 	ex) SQL Expert -> sql expert
-- UPPER(문자열): 알파멧을 대문자로
-- 	ex) SQL Expert -> SQL EXPERT
-- ASCII(문자): 문자나 숫자를 ASCII 코드 번호로 바꿔준다.
-- 	ex) ASCII('A') -> 65
-- CHAR(ASCII 번호): ASCII 코드 번호를 문자나 숫자로 바꾸어 준다.
-- 	ex) CHR(65) -> 'A'
-- CONCAT(문자열1, 문자열2): 문자열 연결
-- 	ex) CONCAT('RDBMS', 'SQL") -> RDBMS SQL
-- SUBSTR(문자열, m[, n]): 문자열 중 m위치에서 n개의 문자 길이에 해당하는 문자를 반환
-- 	ex) SUBSTR('SQL Expert', 5, 3) -> 'Exp'
-- LENGTH(문자열, [, 문자단위]): 문자열의 개수를 숫자값으로 반환
-- 	ex) LENGTH('SQL Expert') -> 10
-- LTRIM(문자열, [, 지정문자]): 지정문자가 나타나면 해당 문자 제거 (왼쪽부터 확인)
-- 	ex) LTRIM('xxxYYZZxYZ'. 'x') -> YYZZxYZ 
-- RTRIM(문자열, [, 지정문자]): 지정문자가 나타나면 해당 문자 제거 (오른쪽부터 확인)
-- 	ex) RTRIM('XXYYzzXYzz'. 'z') -> XXYYzzXY
-- TRIM([leading | trailing | both] 지정문자 FROM 문자열): 문자열에서 머리말, 꼬리말, 또는 양쪽에 있는 지정 문자를 제거.
--		ex) TRIM('x' FROM 'xxYYZZxYZxx') -> YYZZxYZ

-- 1.3 숫자함수
-- ABS(숫자): 숫자의 절대값을 반환
--		ex) ABS(-15) -> 15
-- SIGN(숫자): 숫자가 양수인지, 음수인지, 0인지 구별
--		ex) SIGN(-20) -> -1
--		ex) SIGN(0) -> 0
--		ex) SIGN(20) -> 1
-- MOD(숫자1, 숫자2): 숫자1을 숫자2로 나누어 나머지값 리턴
--		ex) MOD(7, 3) -> 1
-- CEIL(숫자): 숫자보다 크거나 같은 최소 정수 리턴
-- 	ex) CEIL(38.123) -> 39
-- 	ex) CEIL(-38.123) -> -38
-- FLOOR(숫자): 숫자보다 작거나 같은 최대 정수 리턴
-- 	ex) FLOOR(38.123) -> 38
-- 	ex) FLOOR(-38.123) -> -39
-- ROUND(숫자, [, m]): 숫자를 소수점 m자리에서 반올림
-- 	ex) ROUND(38.5235, 3) -> 38.524
-- 	ex) ROUND(38.5235, 0) -> 39
-- 	ex) ROUND(38.5235, 1) -> 38.5
-- TRUNC(숫자, [, m]): 숫자를 소수점 m자리에서 내림
-- 	ex) TRUNC(38.5235, 3) -> 38.523
-- 	ex) TRUNC(38.5235, 1) -> 38.5
-- 	ex) TRUNC(38.5235, 0) -> 38
-- SIN, COS, TAN : 삼각함수
-- EXP(), POWER(), SQRT(), LOG(), LN(): 숫자의 지수, 거듭제곱, 제곱근, 자연 로그 값 리턴
select ceil(salary), salary from tb_emp;

-- 1.4 날짜함수
-- Oracle은 날짜를 내부적인 숫자 형식으로 저장한다.
-- (centry, year, month, day, hours, minutes, seconds)
-- 디폴트 형식은 DD-MON-YY
-- DUAL은 SYSDATE를 보기 위한 더미 테이블
-- 날짜 산술연산 사용: 날짜에서 숫자를 더하거나 壺 날짜 결과를 리턴
-- 날짜 사이의 일수를 알기 위해서 두 개의 날짜를 뺀다.
-- 시간을 24로 나눔으로써 시간을 날짜에 더한다.

select emp_name , TO_CHAR((current_timestamp - ent_date), 'W') WEEKS
from tb_emp
where org_cd = 10;

-- to_char(timestamp, format): 타임스탬프 내역을 format으로 변경한다.
--		ex) TO_CHAR(d, 'YYYY') -> 2021 (YEAR(d))
-- 	ex) TO_CHAR(d, 'MM') -> 7 (MONTH(d))
-- 	ex) TO_CHAR(d, 'DD') -> 23 (DAY(d))
-- Age(startdate, lastdate): 입력된 두 개의 날짜의 차이 표시
-- HH, HH12, HH24 -> 시간을 01-12, 00-23시로 표현
-- MI, SS -> 분(00-59), 초(00-59)
-- MON, MM -> 월을 3자로 표현, 월의 숫자(01-12)
-- DDD -> 일년의 몇번째 날인지 표기
-- W, WW -> 월의주(1-5), 일년의주(1-53)

-- 원래 오라클
select emp_name, ent_date,
year(ent_date) 입사년,
month(ent_date) 입사월,
day(ent_date) 입사일
from tb_emp;
-- postgres는 extract나 to_char 사용
-- 1) extract
select emp_name, ent_date,
extract (year from ent_date) 입사년,
extract (month from ent_date) 입사월,
extract (day from ent_date) 입사일
from tb_emp;
-- 2) to_char
select emp_name, ent_date,
to_char(ent_date, 'YYYY') 입사년,
to_char(ent_date, 'MM') 입사월,
to_char(ent_date, 'DD') 입사일
from tb_emp;


-- 1.4 변환함수
-- 특정 데이터 타입을 다양한 형식으로 출력하고 싶을 경우 사용하는 함수
-- 두 가지 방식 1) 명시적 2) 묵시적(암시적)
-- 묵시적 방법은 성능저하가 발생되므로 명시적인 것을 사용하자.
-- TO_CAHR(숫자|날짜, [, format]): 숫자나 날짜를 주어진 포맷형태로 문자열 리턴
-- TO_NUMBER(문자열[, format]): 문자열을 숫자로 변환
-- TO_DATE(문자열 [, format]): 문자열을 주어진 포맷 형태로 날짜 타입으로 변환
-- CAST( expression AS date_type [(length)] ): expression을 목표 데이터 유형으로 변환
-- INTEGER(), VARCHAR(), CHAR(), DATE(), TIMESTAMP(): 입력값 각각 데이터 유형으로 변환
select cast(123.4 as varchar(10)),
cast('123.5' as numeric),
cast(1234.5678 as dec(6, 2)),
cast(current_timestamp as date),
to_char(1234.56, 'L9,999.99'),
to_number('$12,345', '$99,999'),
to_date('2014/03/01 21:30:15', 'YYYY/MM/DD HH24:MI:SS'),
to_timestamp('2014/03/01 21:30:15', 'YYYY/MM/DD HH24:MI:SS')
from tb_emp2;


-- 1.6 CASE 표현
-- IF-THEN-ELSE 논리와 유사한 방식으로 표현식을 작성해서
--  SQL의 비교 연산 기능을 보완하는 역할을 한다.

select emp_name,
	case when salary > 2000 -- 연봉이 2000보다 크면
			then salary  	-- true 문
			else 2000 	-- false 문
	end revised_salary  -- 속성 이름값
from tb_emp;

select loc,
	case loc
	when 'NEW YORK' then 'EAST'
	when 'BOSTON' then 'EAST'
	when 'CHICAGO' then 'CENTER'
	when 'DALLAS' then 'CENTER'
	else 'ETC'
	end as AREA
from public.DEPT;

select  emp_name,
	case when salary >= 90000000 then 'high'
			when salary >= 60000000 then 'mid'
	else 'low'
	end as salary_grade
from tb_emp;
select 
	case when salary >= 90000000 then 'high'
			when salary >= 60000000 then 'mid'
	else 'low'
	end as salary_grade
from tb_emp;

-- case 중첩
select emp_name, salary,
	case when salary >= 50000000 then 20000000
	else (case when salary >= 20000000 then 10000000
			else salary * 0.5
			end)
	end as bonus
from tb_emp;


-- 1.7 NULL 관련 함수
-- 널값은 아직 정의되지 않은 값으로 0 또는 공백과 다르다.
-- 0은 숫자고, 공백은 문자이다.
-- 어떤 산술 연산해도 -> NULL 값 나옴.
-- COALESCE/VALUE(표현식1, 표션식2): 임의의 개수 표현식에서 NULL이 아닌 최초의 표현식 나타냄.
-- 	모든 표현식이 NULL이라면 NULL을 리턴.
-- NVL(표현식1, 표현식2): 표현식1의 결과값이 NULL이면 표현식2 값을 출력
-- 	단, 표현식1과 표현식2의 결과 데이터 타입이 같아야 한다.
-- 	NULL 관련 가장 많이 사용되는 함수 이다.
-- NVL2(표현식1, 표현식2, 표현식3): 표현식1이 NULL이 아니면 표현식2를, NULL이면 표현식3을 리턴.
-- NULLIF(표현식1, 표현식2): 표현식1이 표현식2와 같으면 NULL을, 같지 않으면 표현식1을 리턴.

select emp_name, position,
	coalesce(position, '없음') 직책 -- 오라클에서는 nvl(position, '없음')으로 사용
from tb_emp;

select emp_name, position,
	case when position is null then '없음'
	else position
	end as 직책
from tb_emp;

-- NULL과 공집합 (중요 포인트)
-- select 1 from sysdummy1 where 1 = 2; 같은 조건이 대표적인 공집합을 발생시키는 쿼리
-- 위와 같은 조건에 맞는 데이터가 한 건도 없는 경우를 공집합,
-- NULLL 데이터와는 또 다르게 이해해야한다.

-- 1개의 행이 선택됨.
-- 이는 빈칸으로 표시되었지만 실 데이터는 NULL이다.
-- KING은 emp 테이블에서 사장이므로 mgr(관리자) 필드에 null이 입력되었다.
select mgr
from tb_emp
where emp_name = 'KING';

-- 0개의 행이 선택됨.
-- emp 테이블에 name이 jsc란 사람은 없으므로 공집합이 발생.
select mgr
from tb_emp
where emp_name = 'jsc';

-- 집계함수를 인수로한 nvl 함수를 이용해서 공집합인 경우에도 빈칸이 아닌
-- 9999라는 실데이터를 출력하게 한다.
select coalesce(max(salary), 9999) sal
from tb_emp
where emp_name='jsc';







-- 2. 집계쿼리
-- Aggregate Function
-- 여러 행들의 그룹이 모여서 그룹당 단 하나의 결과를 돌려주는 함수
-- select 절, having 절, order by 절에 사용할 수 있다.
-- 테이블 전체 집게를 위해 group by절 없이도 집계 함수를 사용할 수 있다.
-- 집계 함수는 그룹에 대한 정보를 제공하므로 주로 숫자 유형에 사용되지만
-- max, min, count 함수는 문자, 날짜 유형에도 적용이 가능한 함수이다.

-- 2.1 집계 함수
-- ALL : 디폴트 옵션
-- DISTINCT: 같은 값을 하나의 데이터로 간주할 때 사용하는 옵션, 중복 제거
-- 함수
-- COUNT(*): 널 값을 포함한 행의 수를 출력한다.
-- COUNT(표현식): 널값인 것을 제외한 행의 수를 출력
-- SUM([DISTINCT | ALL] 표현식): 합계 출력
-- AVG([DISTINCT | ALL] 표현식): 평균 출력
-- MAX([DISTINCT | ALL] 표현식): 최댓값
-- MIN([DISTINCT | ALL] 표현식): 최솟값
-- STDDEV([DISTINCT | ALL] 표현식): 표현식의 표준 편차를 출력
-- VARIANCE([DISTINCT | ALL] 표현식): 표현식의 분산을 출력

select count(*) 전체건수 from tb_emp;

select count(*) 전체건수,
	count(position) 직책건수,
	count(distinct position) 직책종류,
	max(salary) 최대연봉,
	min(salary) 최소연봉,
	avg(salary) 평균연봉
from tb_emp;


-- 2.2 GROUP BY, HAVING 절
-- group by절은 sql 문에서 from 절과 where절 뒤에 오며 group by 절은 행들을 소그룹화 한다.
-- 데이터들은 작은 그룹으로 분류하여 소그룹에 대한 항목별로 통계 정보를 얻을 때 추가로 사용
-- 특성
-- group by 절을 통해 소그룹별 기준을 정한 후, select 절에 집계 함수를 사용
-- 집계 함수의 통계 정보는 null 값을 가진 행을 제외하고 수행한다.
-- having 절은 group by 절의 기준 항목이나 소그룹의 집계 함수를 이용한 조건을 표시
-- 집계 함수는 where절에는 올 수 없다.
-- group by절에 의한 소그룹별로 만들어진 집계 데이터 중, having 절에서 제한 조건을 두어
-- 조건을 만족하는 내용만 출력한다.
-- 지침
-- group by 절에 각각의 컬럼이 명시되어야한다.
-- where절을 사용하여 행을 그룹으로 나누기 전에 미리 행을 제외시킬 수 있음
-- group by절에 컬럼을 적어야 함
-- group by 절에 컬럼 alias 사용 못함
-- 기본적으로 group by 목록에 포함된 컬럼의 오름차순 정렬 -> order by 사용하여 변경가능

select position 직책,
	count(*) 인원수,
	min(salary) 최소,
	max(salary) 최대,
	avg(salary) 평균
from tb_emp
group by position; -- 직책을 기준으로 집계 함수를 가져온다.


-- having 절
-- where절과 비슷하지만 group by절에 의해 만들어진 소그룹에 대한
-- 조건이 적용된다는 점에서 차이가 있다.

-- 인원이 4명 이상인 직원의 인원수와 평균연봉을 출력한다.
select org_cd 부서,
count(*) 인원수,
avg(salary) 평균
from tb_emp
group by org_cd
having count(*) >= 4;

select org_cd 부서,
max(salary) 최대연봉
from tb_emp
group by org_cd
having min(salary) <= 40000000;

-- case 표현을 활용하여 데이터 집계 가능
-- 부서별로 과장, 대기, 사원의 평균 급여를 출력한다.
select org_cd, position, avg(salary)
from tb_emp
where position in ('과장', '대리', '사원')
group by org_cd, position;

select org_cd,
avg(case position when '과장' then salary end) 과장,
avg(case position when '대리' then salary end) 대리,
avg(case position when '사원' then salary end) 사원
from tb_emp
where position in ('과장', '대리', '사원')
group by org_cd;

-- 개선전
select org_cd,
sum(coalesce((case position when '팀장' then 1 else 0 end), 0)) 팀장,
sum(coalesce((case position when '과장' then 1 else 0 end), 0)) 과장,
sum(coalesce((case position when '대리' then 1 else 0 end), 0)) 대리,
sum(coalesce((case position when '사원' then 1 else 0 end), 0)) 사원
from tb_emp
group by org_cd;
-- 개선 후
select org_cd,
coalesce(sum(case position when '팀장' then 1 end), 0) 팀장,
coalesce(sum(case position when '과장' then 1 end), 0) 과장,
coalesce(sum(case position when '대리' then 1 end), 0) 대리,
coalesce(sum(case position when '사원' then 1 end), 0) 사원
from tb_emp
group by org_cd;