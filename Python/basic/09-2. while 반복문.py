#!/usr/bin/env python
# coding: utf-8

# ### While 반복문
# ----

# In[1]:


# while 반복문
# 1. while문이 포함하고 있는 조건 검사
# 2. 조건이 True이면 While문 블록 내 코드 실행 후 다시 1. 수행
# 3. 조건이 False이면 While문 반복 종료
# while문도 else로 종료문 넣을 수 있음.

a = 0

while a < 10:
    print(a)
    a += 1
else:
    print(f'a가 {a}이므로 종료합니다.')


# In[9]:


# while 무한 반복
'''
while True:
    실행 코드
    if [종료조건]:
        break
'''

x = 0

while True:
    x += 3
    print(x)
    if x > 100 and x % 3 == 0: # 종료조건
        break


# In[ ]:




