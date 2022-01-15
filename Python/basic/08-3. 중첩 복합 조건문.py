#!/usr/bin/env python
# coding: utf-8

# ### 중첩/복합 조건문
# ----

# In[4]:


a = True
x, y = 5, 10

if a == True:
    print('a == True')
    if x > y:
        print('x > y')
    else:
        print('x <= y')
else:
    print('a == False')


# In[5]:


user = 1
age = 25
fee = 0

if user:
    if age > 6 and age <= 13:
        fee = 2500
    elif age > 14 and age <= 59:
        fee = 5000
else:
    if age > 6 and age <= 13:
        fee = 5000
    elif age > 14 and age <= 59:
        fee = 10000

print(f'입장료는 {fee:,}원 입니다.')


# In[8]:


fee = 0

if age <= 6 or age >= 60:
    fee = 0
elif age < 6 and age >= 13:
    fee = 5000
elif age > 14 and age <= 59:
    fee = 10000

if user:
    fee = int(fee/2)

print(f'입장료는 {fee:,}원 입니다.')


# In[ ]:




