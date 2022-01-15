#!/usr/bin/env python
# coding: utf-8

# ### 셋의 집합연산
# ----

# In[1]:


# 집합 연산
# 교집합, 합집합, 차집합 등의 집합 연산자 및 연산 함수 가능
set1 = {'A', 'B', 'C', 'D', 'E', 'F'}
set2 = {'B', 'D', 'G', 'H'}
print(set1)
print(set2)


# In[2]:


# 교집합 연산
# & 연산자
# intersection 함수
print(set1 & set2)
print(set1.intersection(set2))


# In[3]:


# 합집합 연산
# | 연산자
# union() 함수
print(set1 | set2)
print(set1.union(set2))


# In[4]:


# 차집합 연산
# - 연산자
# difference() 함수
print(set1 - set2)
print(set1.difference(set2))


# In[5]:


# 대칭 차집합 연산
# ^ 연산자
# symmetric_difference() 함수
# 전체 합집합 - 교집합 부분 
print(set1 ^ set2)
print(set1.symmetric_difference(set2))

