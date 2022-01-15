#!/usr/bin/env python
# coding: utf-8

# ### 딕셔너리
# ----

# In[1]:


# 파이썬 딕셔너리 (dice)
# 키와 값의 쌍으로 이루어져 있다. key - value
# 자주 사용
# 데이터 프레임 형성할 때 사용

mid = {
    "수학" : 100,
    "영어": 90
}
mid


# In[3]:


# 원소 추가
# 특정 키 값에 값을 넣어준다.
mid['국어'] = 85
mid


# In[7]:


# 원소 확인 및 변경
print(mid['국어'])
print(mid['수학'])
print(mid['영어'])

print(mid)
mid['영어'] = 95
print(mid)


# In[8]:


# 3가지 함수
# 기억 잘 해두기
# keys() -> 전체 키 값 출력
# values() -> 전체 값 출력
# items() -> 전체 쌍 출력

list(mid.keys())


# In[9]:


list(mid.values())


# In[11]:


# 한 쌍의 값들이 튜플로 저장되어 있다.
mid.items()


# In[12]:


# 원소 삭제하기
# 키 값을 선택해서 삭제해야한다.
# 딕셔너리는 인덱스값으로 저장되어 있지 않다.

mid.pop('국어')
mid

