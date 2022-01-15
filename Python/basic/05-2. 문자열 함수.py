#!/usr/bin/env python
# coding: utf-8

# ### 문자열 함수
# ----

# In[40]:


# len 함수 : 문자열 길이 계산 함수
print(len("HelloWorldPython"))
hello = 'HelloWorldPython'
print(hello)


# In[2]:


# 파이썬 문자열 함수
# 문자/문자열.함수명() -> 이런식으로 사용


# In[45]:


# join 함수
# 지정된 문자로 문자열을 연결
a = '-'.join(hello) # 대시를 사용해서 문자을 연결시킨다.
print(a)

b = '-'.join('12345')
print(b)

arr = ['010', '1234', '5678'] # 배열도 사용가능
# arr2 = [123, 456] # 숫자는 안되는구먼
print(arr)
print('-'.join(arr))


# In[47]:


# split 함수
# 지정된 문자로 분할하여 리스트로 반환한다.
# 문자열을 분리한다.
a = 'Hello-World-Pyhon'.split('-')
b = '서울시 마포구 상암동 1585'.split() # 공백을 기준으로 분리한다.
print(a)
print(b)


# In[54]:


# stip() 함수
# 지정된 문자를 문자열로부터 제거
# 불필요한 특수문자 제거할때 주로 사용한다.
# \t -> tap 키
text = '\t 문자열 정리 \t'
text.strip() # 공백을 제거하는 거다. 탭이니까.

temp = '하이루####!'
temp = temp.strip('#!')
print(temp)
print(temp.strip("루"))


# In[15]:


# replace 함수
# 문자열내 특정 문자를 다른 문자로 대체
birthday = '1997/09/12'
birthday.replace('/', '-')


# In[27]:


# startswith(), endswith() 함수
# 특정 문자열로 시작/ 종료 여부 검사, bool 자료형으로 반환
# 조건을 따질 떄 주로 사용
a = hello.startswith("Hello")
b = hello.endswith("hello")
print(a)
print(b)


# In[29]:


# count 함수
# 문자열 내 지정된 문자의 갯수
# 워드 클라우드 그릴 때 주로 사용한다.
# 문자도, 문자열도 가능
a = hello.count('o') # o가 몇번 나오는가
b = 'Hello World Python, Welcome to Python world'.count("Python") # Python이 몇번 나오는가
print(a)
print(b)


# In[31]:


# index(), find() 함수
# 문자열 내 지정된 문자 / 문자열 위치 인덱스
# index -> 문자
# find -> 문자열
text = 'Hello World Python, Welcome to Python world'
print(text.index('o'))
print(text.index('o', 5)) # 5 인덱스 이후에 가장 먼저 나오는 o
print(text.find('Python'))
print(text.find("Python", 20))


# In[56]:


# capitalize() -> 처음만 대문자로
# lower() -> 영어 소문자로
# upper() -> 영어 대문자로
hello = 'Hello World'
print(hello.capitalize())
print(hello.lower())
print(hello.upper())

hello2 = """hi
Everyone
my name is
Python"""
print(hello2.capitalize())


# In[37]:


# 문자열 in 연산자
# 문자열 내 특정 문자열이 포함 여부를 bool 자료형으로 반환
# A in B : A 문자열이 B 문자열 내 포함 여부
# not 이라는 부정연산자 추가 가능
print('Python' in 'Hello World Python')
print('Java' in 'Hello World Python')
print('Java' not in 'Hello World Python')


# In[ ]:




