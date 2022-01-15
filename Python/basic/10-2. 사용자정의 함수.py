#!/usr/bin/env python
# coding: utf-8

# ## 파이썬 함수
# ### 함수
# ---

# In[2]:


# 파이썬 함수
# 함수의 입력 -> 매개변수, 파라미터
# 함수의 기능 -> 실행 코드
# 함수의 출력 -> 반환값, return value

# 함수의 매개변수나 반환값은 선택적 옵션


# 매개변수 무, 반환값 무
def add1():
    print('더하기 함수 입니다.')

add1()


# In[3]:


# 매개변수 유, 반환값 무
def add2(x, y): # parameter (매개변수)
    print(x + y)

add2(1, 2) # argument (인자)


# In[6]:


# 매개변수 무, 반환값 유
def add3():
    x, y = 2, 4
    return x + y

re_val = add3()
print(re_val)


# In[8]:


# 매개변수 유, 반환값 유
def add4(x, y):
    return x + y

re_val = add4(3, 4)
print(re_val)


# In[10]:


# 다중 반환값
def square(x, y):
    x **= 2
    y **= 2
    return x, y

a, b = square(2, 3)
print(a, b)


# In[ ]:




