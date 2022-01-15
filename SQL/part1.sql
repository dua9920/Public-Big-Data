-- * SELECT 문 예제 *

-- tb_emp 테이블 조회
select EMP_NO, EMP_NAME, ORG_CD, position, GENDER from cslee.tb_emp;

-- ALL 옵션 확인 (직책 조회)
-- 모든 행 확인
select all position from cslee.tb_emp;
-- DISTINCT 옵션 확인
-- 중복 제외한다
select distinct position from cslee.tb_emp;

-- 모든 컬럼 조회하기
select * from tb_emp;

-- ALIAS
-- 일종의 별명을 붙인다.
-- 컬럼명 바로 뒤에 온다.
-- AS 키워드를 사용할 수 있다.
-- 컬럼명에 한글 못 들어간다.
select emp_name as 사원명, position as 직책, ent_date as 입사일자 from tb_emp;
select  emp_name 사원명, position 직책, ent_date 입사일자 from tb_emp;
-- 공백, 특수문자를 포함한 경우 "" 사용
select  emp_name "사원 이름", position "직책", gender "성별", ent_date "입사 일자" from tb_emp;

-- 산술 연산자
-- (), *, /, +, - 의 우선순위를 가진다.
-- 적절한 alias를 새롭게 부여하는 것이 좋다.
select emp_name 이름, salary 연봉, (salary / 12*3) 보너스 from tb_emp;

-- 합성 연산자
-- 문자와 문자를 연결
-- 문자 || 문자
-- concat(str1, str2) 함수를 사용할 수 있다.
-- 컬럼과 문자 또는 다른 컬럼과 연결시킨다.
select emp_name||' '||position||'의 연봉은'||salary||'원 입니다.' as "문자 엮기"
from tb_emp;

-- 날짜 연산자
-- 날짜형은 날짜단위와 시간단위를 이용하여 +, - 연산을 할 수 있다.
-- YEARS, MONTHS, DAYS, HOURS, MINUTES, SECONDS
-- 계산된 날짜는 유효한 날짜(DATE) 또는 시간소인(TIMESTAMP)이어야 한다.
-- current_date 같은 것은 특별 레지스터이다.
-- 이는 시스템에서 제공하는 특별한 환경변수 이다.
select CURRENT_DATE + '- 12 MONTHS',
		CURRENT_TIME + '- 30 MINUTES',
		CURRENT_DATE + '3 YEARS - 1 DAYS';

select current_date - 12 MONTHS;
select current_time - 40, current_date ;
select current_timestamp + '- 10 minutes';


-- 특별 레지스터
select current_catalog, current_user,
current_schema, current_date, current_time, current_timestamp;





-- * INSERT 문 예제 *
-- 테이블에 데이터를 입력할 때 입력할 대상 컬럼을 명시하거나, 명시하지 않고
-- 정의된 순서대로 전체 컬럼을 대상으로 입력할 수 있다.
-- INSERT INTO 테이블명 (컬럼리스트) VALUES (컬럼에 넣을 밸류리스트);
-- INSERT INTO 테이블명 VALUES (컬럼에 넣을 밸류리스트);
insert into tb_emp (emp_no, emp_name, ent_date)
values (1051, '김미정', '2014-01-02');
select * from tb_emp;
-- 컬럼 리스트가 뒤에 안오면 정보를 빠짐없이 넣어줘야 한다.
insert into tb_emp2
values (1052, '황기범', null, '사원', null, 'M', '2014-01-02', CURRENT_TIMESTAMP);
select * from tb_emp2;

select * from tb_emp;





-- * UPDATE 문 예제 *
-- 수정하기 이전에 생각하고 수정할 것
-- update 다음에 수정되어야 할 컬럼이 존재하는 테이블 명을 입력하고,
-- set 다음에 수정되어야할 컬럼명과 해당 컬럼 수정값을 넣는다.
-- UPDATE 테이블 명 SET 수정되어야하는 컬럼명=새로운값;
update tb_emp2 set gender='M'; -- 이러면 전부다 바뀌게 된다.
-- 그니까 where 절이 꼭 있어야 한다.
select * from tb_emp2;


-- tb_emp2 테이블이 비어져 있어서 간단하게 만들어줌.
insert into tb_emp2 (emp_no, emp_name)
values (1, '가');
insert into tb_emp2 (emp_no, emp_name)
values (2, '나');

delete from tb_emp where emp_name = '황기범';
select * from tb_emp;

-- * DELETE 문 예제 *
-- delete from 다음에 삭제를 원하는 자료가 저장되어 있는 테이블 명을 입력하고 실행.
-- 이때 from 문구는 생략이 가능한 키워드 이다.
delete from tb_emp2;
select * from tb_emp2;





-- * WHERE 문 예제 *
-- SQL 문장에 where절을 이용하여 자료들에 대한 제한 가능
-- 조회하려는 데이터에 특정 조건을 부여할 목적으로 사용
-- where 절은 from 절 뒤에 위치한다.
-- 오라클의 경우 inner join의 조인컬럼 지정시에도 사용한다.
select * from tb_emp where emp_no <= 1010;

select emp_name 사원이름, org_cd 소속, position 직무, salary 연봉
from tb_emp where salary >= 3000;
select * from tb_emp;

-- 조건 연산자 종류
-- 1. 비교 연산자: =, >, <, <=, >=
-- 2. SQL 연산자: BETWEEN a AND b,
-- 				IN (list), LIKE '비교문자열', IS NULL
-- 3. 논리 연산자: AND, OR, NOT
-- 4. 부정 비교 연산자: !=, ^=, <> (이 셋은 모두 같은 의미)
-- 					NOT 컬럼명 =, NOT 컬럼명 >
-- 5. 부정 SQL 연산자: NOT BETWEEN a AND b,
--					NOT IN (list), IS NOT NULL



-- 연산자 우선 순위
-- (), NOT, 비교/SQL 연산자, AND, OR
-- 순서 잘 기억하도록

-- [예제] 연산자 우선 순위
-- 문자형의 경우 '' 홑따옴표를 사용한다.
select emp_name 사원이름, org_cd 소속, position 직무, salary 연봉
from tb_emp
where (org_cd='08' or org_cd='09' or org_cd='10') -- 
and position='사원'
and (salary>= 40000000 and salary <= 50000000);

select emp_name "사원 이름", org_cd 소속, position 직무, salary 연봉
from tb_emp
where org_cd in ('08', '09', '10')
and position='사원'
and salary between 40000000 and 50000000;

-- IN 절
-- 어떤 값이 지정된 리스트에 포함되는지를 확인
-- 리스트가 포함하면 true를 리턴, 그렇지 않으면 false를 리턴
-- 3 in (0, 1, 2, 3) -> True
select emp_name, org_cd, position
from tb_emp
where org_cd in ('06', '07')
and position in ('팀장', '과장');
-- 위와 같이 하면 06, 07 이면서 팀장 과장인 것들이 다 나옴.

select emp_name, org_cd, position
from tb_emp
where (org_cd, position)
in ( ('06', '팀장'), ('07', '과장') );
-- 위와 같이 해야지 06이면서 팀장이고, 07이면서 과장인 사람들만 나옴.

-- LIKE 절
-- 많이 쓴다.
-- 검색 기준의 철자가 불확실한 경우, 데이터베이스로부터 데이터 조회 시 와일드 카드 검색에 사용
-- 문자열에만 사용 가능
-- 두개의 와일드 카드 문자인 퍼센트(%)와 밑줄(_) 사용.
-- 퍼센트 -> 문자열의 문자 수와 관계없이 일치, 0개 이상의 어떤 문자를 의미
-- 밑줄 -> 언더바는 하나의 문자에만 일치, 1개의 단일 문자를 의미
select emp_name 사원이름, org_cd 팀코드, position 직책, ent_date 입사일자
from tb_emp
where emp_name like '김%';

select emp_name 사원이름, org_cd 팀코드, position 직책, ent_date 입사일자
from tb_emp
where emp_name like '_승%';

-- IS NULL 절
-- 널값과 수치연산은 NULL 값을 리턴한다.
-- 널값과 비교연산은 FALSE를 리턴.
-- 어떤 값과 비교할 수 없으며, 특정 값보다 크다, 작다라고 표현할 수 없다.
-- 널값의 비교연산은 IS NULL, IS NOT NULL이라는 정해진 연산으로 사용해야 제대로된 결과가 나온다.
select emp_name 사원이름, org_cd 소속, position 직책, gender 성별
from tb_emp
where gender is null; -- gender = null 은 원하는 결과를 출력할 수 없다.

-- 부정 연산자
select emp_name 사원이름, org_cd 소속, position 직책
from tb_emp
where org_cd = '10' and not position = '팀장';

select emp_name 사원이름, org_cd 소속, position 직책
from tb_emp
where org_cd is not null;





-- * ORDER BY 문 예제 *
-- 출력되는 레코드에 순서를 부여하여 사용한다.
-- 즉 검색된 결과를 정렬하기 위해서 사용한다.
-- ASC -> 오름차순 정렬, 기본값
-- DESC -> 내림차순 정렬
-- 가능한 컬럼명이나 alias명을 권고한다.
-- sql 문장의 제일 마지막에 위치한다.
select org_cd 부서, emp_name 사원이름, ent_date 입사일
from tb_emp
order by org_cd, ent_date desc;

select emp_name, emp_no, org_cd
from tb_emp
order by emp_name asc, emp_no asc, emp_no desc;

select emp_name "NAME", org_cd ORG, emp_no NUM
from tb_emp
order by "NAME", NUM, ORG desc;

select emp_name, emp_no, org_cd
from tb_emp
order by 1 asc, 2 asc, 3 desc;

select EMP_NAME "NAME", emp_no "NO", org_cd ORG
from tb_emp
order by EMP_NAME, 2, ORG;