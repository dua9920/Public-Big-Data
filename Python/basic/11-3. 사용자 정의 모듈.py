#!/usr/bin/env python
# coding: utf-8

# ### 사용자 정의 모듈
# ---

# In[1]:


import myprint


# In[2]:


hello = 'Hello World Python'


# In[3]:


myprint.print1(hello)


# In[4]:


myprint.print2(hello)


# In[5]:


from mymodule import myprint2


# In[6]:


myprint2.print3(hello)


# In[7]:


myprint2.print4(hello)

