#!/usr/bin/env python
# coding: utf-8

# ### 리스트 인덱싱과 슬라이싱
# ----

# In[1]:


letters = ['A', 'B', 'C', 'D', 'E', 'F']
letters


# In[5]:


# 리스트 인덱싱
print(letters[0]) # 가장 처음
print(letters[-1]) # 가장 마지막


# In[8]:


print(letters[-2])
print(letters[2])
print(letters[len(letters)-1]) # 가장 마지막


# In[10]:


# 리스트 슬라이싱
letters[0:3]


# In[11]:


letters[3:]


# In[12]:


letters[:4]


# In[13]:


letters[::-1] # 역으로 출력


# In[15]:


# 리스트 전부 가져오기
print(letters[::])
print(letters[:])


# In[16]:


letters[::-2] # 역으로 가져오면서 step은 2


# In[17]:


letters[::2]


# In[ ]:




