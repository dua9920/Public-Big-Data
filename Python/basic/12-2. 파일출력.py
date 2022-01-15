#!/usr/bin/env python
# coding: utf-8

# ### 파일 출력
# ----

# 파이썬 파일 쓰기
# 1. 파일객체 생성
#     - 파일객체 = open(파일경로/파일명, 모드)
# 2. 파일 쓰기
#     - 파일객체.write()
# 3. 파일객체 닫기
#     - 파일객체.close()

# In[16]:


# 파일객체 생성
fw = open('hello_write.txt', 'w')


# In[17]:


# 파일 쓰기
# 문자 length가 반환된다.
fw.write("Hello World Python!!\n")


# In[18]:


# 파일객체 닫기
fw.close()


# In[19]:


# x 모드 이용하여 파일 쓰기
with open('hello_write.txt', 'x') as fw:
    fw.write("x 모드로 파일 쓰기")


# In[20]:


# a 모드 이용하여 파일 쓰기
with open('hello_write.txt', 'a', encoding="utf-8") as fw:
    fw.write('a 모드를 이용해서 파일 쓰기')


# In[24]:


fr = open('hello_write.txt', 'r', encoding="utf-8")
for line in fr:
    print(line)
fr.close()

