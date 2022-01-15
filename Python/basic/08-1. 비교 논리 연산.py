#!/usr/bin/env python
# coding: utf-8

# ## 파이썬 조건문
# ### 비교 논리 연산
# ----

# 비교연산자와 논리연산자 결과 -> Boolean 타입
# 
# 파이썬 비교 연산자
# 1. x == y : 값이 같은가?
# 2. x != y : 값이 다른가?
# 3. x > y
# 4. x < y
# 5. x >= y
# 6. x <= y

# In[1]:


x = 10; y = 5


# In[2]:


# x와 y가 같은가
x == y


# In[16]:


# x와 y가 같지 않은가
x != y


# In[4]:


# x가 y보다 큰가
x > y


# In[5]:


# x가 y보다 작은가
x < y


# In[6]:


# x가 y보다 크거나 같은가
x >= y


# In[7]:


# x가 y보다 작거나 같은가
x <= y


# ---
# 파이썬 논리 연산자
# 1. and
# 2. or
# 3. not

# In[12]:


x = True
y = False


# In[13]:


# 두개 다 True 여야만 True
x and y


# In[14]:


# 둘 중에 하나만 True 여도 True
x or y


# In[15]:


# 반대
not x

