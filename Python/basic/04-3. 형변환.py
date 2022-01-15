#!/usr/bin/env python
# coding: utf-8

# ### 형변환
# ---

# In[4]:


# 묵시적 , 명시적 형변환
# 묵시적 형변환 (implicit type casting): 암묵적으로 자동적으로 형변환 실행

price = 1000
print(price)
print(type(price))

price = price * 0.05 # int -> float
print(price)
print(type(price))

li = 1000
print(li)
print(type(li))

li = li / 4 # int -> float
print(li)
print(type(li))


# In[6]:


# 명시적 형변환 : 사용자가 필요에 의해서 명시적으로 앞에 추가해서 형을 변환시켜 줌.
f1 = 3.14
print(f1)
print(type(f1))

i1 = int(f1) # float -> int
print(i1)
print(type(i1))

s1 = '12345'
print(s1)
print(type(s1))

i1 = int(s1) # str -> int
print(i1)
print(type(i1))


# In[13]:


# 문자열 -> 정수형 변환시
# 숫자만 있어야한다.
# 다른 문자가 섞여있으면 형변환이 불가능하다.
# but, 공백은 가능하다.
# 숫자 사이 공백은 불가능하다.
s2 = ' 12345 '
print(int(s2))
print(type(s2))
print(type(int(s2)))


# In[16]:


# 실수형 형변환
i1 = 100
i2 = float(i1)
print(i1, i2)

s1 = '3.14'
i3 = float(s1)
print(type(s1), type(i3))
print(s1, i3)


# In[ ]:




