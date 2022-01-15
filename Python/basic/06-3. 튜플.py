#!/usr/bin/env python
# coding: utf-8

# ### 튜플
# ----

# In[1]:


# 튜플 : 고정적인 배열
# 리스트와 호환이 잘 된다.
# 리스트와의 차이점을 중점으로 학습.
# 고정적인 배열 데이터를 원할 때 사용
tuple1 = ('A', 'B', 'C', 'D', 'E', 'F')
tuple1


# In[3]:


print(tuple1[0]) # 제일 처음
print(tuple1[-1]) # 제일 마지막


# In[4]:


# 튜플은 원소 변경이 불가능 !!
# Read-Only
tuple1[0] = 'a'


# In[5]:


# 튜플의 함수
# 두가지만 존재. -> 왜냐하면 변경이 불가능하므로
# index, count
tuple1.index('C') # 해당 요소의 인덱스 반환


# In[6]:


tuple1.count('A') # 튜플에 'A'가 몇개가 있는가


# In[7]:


# 튜플 -> 리스트 변환
# 자유롭게 변경이 가능하다.
# 변경하고 싶을 때
list1 = list(tuple1)
list1


# In[8]:


list1.append('a')
list1


# In[9]:


tuple2 = tuple(list1) # 리스트를 다시 튜플로 변환
tuple2


# In[ ]:




