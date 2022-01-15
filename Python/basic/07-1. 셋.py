#!/usr/bin/env python
# coding: utf-8

# ### 파이썬 셋
# ----

# In[2]:


# 파이썬 셋 (set)
# 집합 컬렉션
# 인덱스와 슬라이싱이 불가하다.
# 중복되는 값이 들어가지 않는다
set1 = {'A', 'B', 'C', 'D', 'E', 'F', 'B'}
set1


# In[3]:


# add() 함수
# 값 추가하기
# 중복 값은 추가되지 않는다.
set1.add('a')
set1


# In[4]:


# remove(), pop() 함수
set1.remove('a')
set1


# In[5]:


# pop() 함수 -> 인덱스 없을 시 임의 값 삭제
set1.pop()
set1

