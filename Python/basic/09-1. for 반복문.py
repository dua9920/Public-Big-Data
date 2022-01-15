#!/usr/bin/env python
# coding: utf-8

# ## 파이썬 반복문
# ### for 반복문
# ---

# In[1]:


#for [변수] in [컬렉션 객체]:
#    변수에 저장된 요소 사용 및 코드 실행

#1. 집합 객체에서 첫번째 요소 추출 및 변수 저장
#2. 변수에 저장된 요소를 사용하여 코드 실행
#3. 집합 객체의 모든 요소를 모두 사용할 때 까지 반복 수행

# 여러줄에 걸친 반복 코드를 컴팩트하게 줄여 사용 가능

for num in [1, 2, 3]:
    print(num)


# In[2]:


for st in ['Hello', 'World', 'Python']:
    print(st)


# In[4]:


score = {
    "국어": 95,
    "영어": 90,
    "수학": 80
}
score


# In[8]:


# 키값 꺼내오기
for key in score.keys():
    print(key)


# In[9]:


# 밸류값 꺼내오기
for value in score.values():
    print(value)


# In[14]:


# items 에는 쌍으로 두개의 값이 들어 있다.
for key, value in score.items():
    print(f'{key}과목 점수는 {value}점 입니다.')


# In[20]:


# range() 함수
# 시리얼한, 일련 번호를 생성하기 위한 함수
# 지정된 범위 내의 값들을 생성하기 위한 내장 함수
# range(start = 0, stop, step = 1)

print(list(range(10)))
print(list(range(1, 11)))
print(list(range(1, 11, 2))) # step=2


# In[23]:


# 홀수
for i in range(1, 11, 2):
    print(i)


# In[24]:


# 짝수
for i in range(0, 11, 2):
    print(i)


# In[25]:


# for 반복문과 else 구분
# for 반복문 종료시 else 블록 실행
# 파이썬만 위와 같은 문법이 존재.

for i in range(1, 10):
    ans = 2 * i
    print(f'2 X {i} = {ans}')
else:
    print('구구단을 종료합니다.')

