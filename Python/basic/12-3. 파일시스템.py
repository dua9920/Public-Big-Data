#!/usr/bin/env python
# coding: utf-8

# ### 파일 시스템
# ----

# os 모듈을 이용한 파일 시스템 접근
# - os 모듈은 운영체제(OS)와 관련된 파이썬 기본 모듈
# - 파일 시스템 접근을 위해 os 모듈 사용
# - os 모듈을 import한 후 사용
#     - import os
#     - os.함수()
#     - os.변수

# In[1]:


import os


# In[6]:


# 인자 없으면 -> 현재 디렉토리 파일 목록 출력
# 인자 있으면 -> 인자는 파일 경로
os.listdir('./mymodule')


# In[11]:


# ipynb로 끝나는 파일만 출력
file_list = os.listdir('.') # 현재 디렉토리
file_ipynb = [f for f in file_list if f.endswith('.ipynb')]
file_ipynb


# In[12]:


# 현재 디렉토리 경로 반환
os.getcwd()


# In[13]:


# 디렉토리 생성
os.mkdir('test')


# In[30]:


# 현재 OS의 파일구분자로 연결
# 구분자로 신경쓰지않고 해당 OS로 쓰는 구분자로 파일들을 연결짓고 싶을 때
# 흠.. 뭔가 첫번쨰 인자 경로랑 뒤에 파일을 경로 형태로 엮어준다는 말인듯.
os.path.join('.', 'test')


# In[19]:


# 지정된 파일의 절대 경로 반환
os.path.abspath('hello.txt')


# In[24]:


# 디렉토리 / 파일 여부 출력
# 디렉토리인지 파일인지 확인
print(os.path.isfile('hello.txt'))
print(os.path.isdir('hello.txt'))
print(os.path.isfile('test'))
print(os.path.isdir('test'))


# In[26]:


# 디렉토리명과 파일명의 분리
os.path.split(os.path.abspath('hello.txt'))


# In[27]:


# 파일명과 확장자의 분리
os.path.splitext('hello.txt')


# In[ ]:




