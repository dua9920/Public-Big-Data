#!/usr/bin/env python
# coding: utf-8

# ### 변수
# ----

# In[7]:


# 변수(variable) : 데이터를 저장하기 위한 메모리 영역에 대한 명명
# 변수 명명 -> =
# 같다 등호 -> ==
# 알파벳, 숫자, 언더바, 한글, 한자 변수명 사용 가능
# 변수 첫글자로 숫자 불가능
# 변수 특수문자, 공백 불가능
# 변수 알파벳 대소문자 당연히 구분
num = 1
hello = 'Hello World, Python'
_hi = '하이'
헬로 = '안녕'
有 = '있을 유'

print(num)
print(hello)
print(_hi)
print(헬로)
print(有)


# In[9]:


num1 = 10
num2 = 5
print(num1, num2)


# In[10]:


print(num1 + num2)


# In[11]:


print('sum: ', num1 + num2)


# In[12]:


# 여러개의 변수에 동일한 값 할당
a = b = 10
print(a)
print(b)


# In[15]:


# 여러개의 변수에 여러개의 값 할당
# 열거식으로 표현
# a = 2
# b = 4 와 동일하다
a, b = 2, 4
print(a)
print(b)

# 세미콜론을 찍으면 여러 라인의 코드를 하나의 라인으로 통합가능하다
c = 5; d = 3;
print(c)
print(d)


# In[21]:


# swap 하기
print(a, b)
a, b = b, a
print(a, b)


# In[ ]:




