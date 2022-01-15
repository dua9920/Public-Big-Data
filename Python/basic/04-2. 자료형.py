#!/usr/bin/env python
# coding: utf-8

# ### 자료형
# ----

# In[22]:


# 파이썬 자료형
# numeric, boolean, collection
# 숫자(numeric): int(정수), float(실수), complex(복소수)
# boolen: True, False
# collection: str(문자형), list(배열), tuple(튜플), dict(딕셔너리), set(집합)

price = 1000
print(price)
print(type(price))


# In[23]:


rate = 0.05
print(rate)
print(type(rate))


# In[24]:


# 기수 표현
amount = 17e5 # 17 * 10^5
print(amount)

decimal = 2.65e-3 # 2.65 * 10^(-3)
print(decimal)
print(type(decimal))


# In[25]:


a = True
b = False
print(a, b)


# In[26]:


print(type(a))


# In[27]:


# 파이썬 Collection 자료형
# 문자열
s = "Hello"
print(s)
print(type(s))


# In[28]:


# 리스트
# []
arr = [1, 2, 3, 4, 5]
print(arr)
print(type(arr))


# In[34]:


# 튜플
# ()
t = (1, 2, 3, 4, 5)
print(t)
print(type(t))
print(t[0])


# In[42]:


# set(셋)
# {}
se = {1, 2, 3, 4, 5}
print(se)
print(type(se))


# In[31]:


# 딕셔너리
# 키와 쌍을 이용하여 데이터 저장
d = {'a': 1, 'b': 2, 'c': 3} 
print(d)
print(type(d))
print(d['a'])


# In[ ]:




