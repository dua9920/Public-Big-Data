#!/usr/bin/env python
# coding: utf-8

# ### 조건문
# -----

# In[6]:


# 조건문 : 조건에 따라 특정 코드 블럭을 실행하도록 하기 위한 구문
# if, elif, else
# 조건문 마지막에는 콜론을 사용
# 조건문 쓸 때는 들여쓰기가 중요 !


# In[9]:


x, y = 10, 5

if x > y:
    # 해당 조건문 실행
    print("x가 y보다 큽니다.")
else:
    print('x가 y보다 작습니다.')


# In[8]:


x, y = 5, 10

if x > y:
    print("x가 y보다 큽니다.")
else:
    # 해당 조건문 실행
    print('x가 y보다 작습니다.')


# In[11]:


x, y = 10, 10

if x > y:
    print("x가 y보다 큽니다.")
elif x==y:
    # 해당 조건문 실행
    print('x와 y가 같습니다.')
else:
    print('x가 y보다 작습니다.')


# In[14]:


score = 100

if score >= 90:
    print('A 학점 입니다.')
elif score >= 80:
    print('B 학점 입니다.')
elif score >= 70:
    print('C 학점 입니다.')
elif score >= 60:
    print('D 학점 입니다.')
else:
    print('F 학점 입니다.')

