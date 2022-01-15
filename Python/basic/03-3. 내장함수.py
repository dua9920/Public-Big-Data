#!/usr/bin/env python
# coding: utf-8

# ### 파이썬 내장함수
# ----

# In[1]:


# print() 출력 함수
print('a', 1)
print('a', 1, sep=":") # sep으로 구분해서 출력해달라고 함
print('a', 1, sep=":", end=".")


# In[2]:


print("하이루", 1, sep="\n", end='.')
print("end")


# In[3]:


hello = "Hello World Python!"
hello


# In[4]:


print(hello)


# In[5]:


hello
hello


# In[6]:


# shift + tap -> 함수에 대한 설명이 나온다
# 함수의 입력값이 무엇인지, 옵션 파라미터는 무엇인지 알 수 있다.
print()


# In[7]:


# round() : 반올림 함수
round(3.1592)


# In[8]:


round(3.1592, 2) # 두번쨰 옵션 -> 소수점 몇째자리부터 올림을 하는지


# In[9]:


# 기타 내장 함수
max(1, 2, 3)


# In[10]:


min(1, 2, 3)


# In[11]:


# 제곱 내장 함수
pow(2, 4)


# In[13]:


# 문자열 길이 알 수 있는 함수
# 당연히 따옴표는 제외한다. 'hello' 이런식일때
len(hello)


# In[14]:


# input() : 입력할 수 있는 함수
input()


# In[15]:


input("프로그램 언어: ")


# In[16]:


int(input())


# In[18]:


# list() : 리스트를 만드는 함수
# zip() : 쌍으로 엮어주는 함수, 파라미터로 넘어온 값을 묶어준다.
list(zip('abc', '123'))


# In[26]:


list(zip('abcd', range(4), range(0, 40, 10)))

