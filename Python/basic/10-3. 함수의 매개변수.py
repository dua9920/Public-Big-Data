#!/usr/bin/env python
# coding: utf-8

# ### 함수의 매개변수
# ---

# In[10]:


# 매개변수 기본값
# 매개변수 란에 기본값을 입력하면 인자가 없어도 계산이 된다.

def square2(x=2, y=3):
    x = x **2 
    y = y**2
    return x, y

print(square2())
print(square2(4))
print(square2(4, 5))
print(square2(y=5, x=7))


# In[9]:


# 가변 매개변수
# 매개변수 앞에 *를 붙여서 매개변수 정의
# * 애스터리스크
# 일반 매개변수 할당 후 나머지 인자는 튜플로 할당
# 실제 호출할때 매개변수 이상의 인자가 들어오면 나머지는 튜플로 할당이 된다.

"""

def 함수명(a, *b):
    print(a, b)

a는 일반 매개변수, b는 가변 매개변수

"""

def changeble(x, *y):
    print(x, y)

changeble(1)
changeble(1, 2)
changeble(1, 2, 3)
changeble(1, 2, 3, 4, 5)
changeble([1, 2], [3, 4], 5)


# In[ ]:




