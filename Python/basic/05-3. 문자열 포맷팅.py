#!/usr/bin/env python
# coding: utf-8

# ### 문자열 포맷팅
# ----

# In[15]:


# 포맷팅 -> 문자열 출력 시 어떠한 포맷을 가지고 출력하고 싶을 때
name, age, phone = '홍길동', 25, '010-1111-2222'
print(name)
print(age)
print(phone)


# In[2]:


# 1. format 함수 사용
info = '이름은 {} 이고, 나이는 {}세 이며, 전화번호는 {} 입니다.'.format(name, age, phone)
print(info)


# In[3]:


# 2. format, 인덱스 사용
info2 = '이름은 {0} 이고, 나이는 {1}세 이며, 전화번호는 {2} 입니다.'.format(name, age, phone)
print(info2)


# In[4]:


# 3. format, 변수 사용
info3 = '이름은 {c} 이고, 나이는 {a}세 이며, 전화번호는 {b} 입니다.'.format(c=name, a=age, b=phone)
print(info3)


# In[5]:


# 4. 변수 그대로 사용
# 제일 권장하는 방법
# 문자열 앞에 f 를 붙여라.
# 파이썬 3.6 이상에서만 사용 가능
info4 = f'이름은 {name} 이고, 나이는 {age}세 이며, 전화번호는 {phone} 입니다.'
print(info4)


# In[20]:


# 문자열 숫자 출력 양식 지정하기
jan, dec = 1, 12
print('한 해의 시작은 {:02d}'.format(jan)) # 두자리를 맞추어라. 만약 두자리가 안될경우 0으로 채우기
print('한 해의 마지막은 {:02d}'.format(dec))


# In[14]:


# 금액 표시 하기
# 세자리 기준으로 , 을 넣을 수 있음.
# 금액 표시 간단하게 표현할 수 있음.
val = 123456789
money = "{:,}"
money.format(val)


# In[12]:


# 그대로 출력
# 실수형으로 출력
# 소수점 첫번째 자리만 출력
# 소수점 두번째 자리까지만 출력
# 백분율 출력
"{}, {:f}, {:.1f}, {:.2f}, {:.2%}".format(3, 3, 3, 3.1415, 1/3)


# In[ ]:




