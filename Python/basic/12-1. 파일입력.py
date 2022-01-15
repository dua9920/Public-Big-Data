#!/usr/bin/env python
# coding: utf-8

# ## 파이썬 파일 입출력
# ### 파일 입력
# ---

# 파이썬 파일 읽기
# 1. 파일 객체 생성
#     - 파일 객체 = open(파일경로/파일명, 모드)
# 2. 파일 읽기 (라인 단위)
#     - for 변수 in 파일객체
# 3. 파일 객체 닫기
#     - 파일객체.close()

# In[1]:


# 파이썬 파일 읽기
# r: 읽기 모드
fr = open('hello.txt', 'r') # 1. 파일 객체 생성


# In[2]:


# 2. 파일 읽기
for line in fr:
    print(line)


# In[3]:


# 3. 파일객체 닫기
fr.close()


# 파이썬 파일 읽기 - with 구문
# 1. 파일객체 생성
#     - with open(파일경로/파일명, 모드) as 파일객체
# 2. 파일 읽기
#     - for 변수 in 파일객체

# In[5]:


# 파일 읽기 - with 구문
with open('hello.txt', 'r') as fr:
    for line in fr:
        print(line)


# In[ ]:


# 파일 읽기 모드
# r -> 읽기 모드
# w -> 쓰기 모드
#       동일 경로/파일명 존재시 overwrite
# x -> 쓰기 모드
#       동일 경로/파일명 존재시 error
# a -> 쓰기 모드
#       동일 경로/파일명 존재시 append
# + -> 읽기/쓰기 모드

