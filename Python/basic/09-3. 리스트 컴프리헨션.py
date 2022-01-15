#!/usr/bin/env python
# coding: utf-8

# ### 리스트 컴프리헨션
# ----

# In[6]:


# 파이썬 리스트 컴프리헨션 (Comprehension)
# 리스트 각 원소들에 대해 연산을 수행하여 업데이트
# 리스트 가공 처리 할 때 간단하고 명료하게 사용

"""

[ (표현식) for (변수) in (리스트객체) ]

"""

list1 = list(range(1, 11))
print(list1)

list2 = [i for i in list1]
print(list2)

list3 = [i*2 for i in list1]
print(list3)


# In[8]:


# 조건식 리스트 컴프리헨션
# 리스트 원소들 필터링하여 연산 수행
# 조건식을 만족하면 표현식으로 가고 그게 아니면 drop 한다

"""

[ (표현식) for (변수) in (리스트객체) if (조건식)]

"""

list1 = list(range(1, 11))
print(list1)

list3 = [i**2 for i in list1 if i % 2 == 1]
print(list3)


# In[ ]:




