#!/usr/bin/env python
# coding: utf-8

# ### 문자열
# ----

# In[1]:


a = '파이썬'
print(a)


# In[4]:


# 문자열 이어붙이기
# concat 할 때는 str 형이어야지 이어붙이지 가능
c = a + '3'
d = a + str('2')
print(c)
print(d)


# In[25]:


# 문자열 특정 횟수만큼 반복
e = '*' * 10
print(e)

tmp = '하이루 ' * 5
print(tmp)


# In[26]:


# 문자열 인덱스 접근
# 역인덱스도 존재
a = "HelloWorld!"
print(len(a))
print(a)
print(a[0]) # 문자열의 시작
print(a[10])
print(a[-1]) # 문자열의 끝
print(a[-11])

print(a[-2])


# In[19]:


# 문자열 슬라이싱
# start:end:step
# 종료인덱스는 항상 그전까지 슬라이싱이 이루어진다.
print(a[:])
print(a[3:])
print(a[5:-1])
print(a[::2]) # 2스텝씩
print(a[::-1]) # 역 출력
print(a[::-2]) # 2스텝씩 역 출력


# In[20]:


# 장문의 글 처리하기
c = """
하이루
하이루
장문의 글 입니다
"""
print(c)


# In[21]:


print(c[::-1])


# In[ ]:




