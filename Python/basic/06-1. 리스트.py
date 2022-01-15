#!/usr/bin/env python
# coding: utf-8

# ### 리스트
# ---

# In[5]:


# 리스트 : 여러 종류의 데이터 타입들을 하나의 변수의 저장하는 자료형
letters = ['A', 'B', 'C', 'D', 'E', 'F']
print(letters)


# In[6]:


# 리스트의 연산
# 결합 연산 -> 플러스 연산자 사용
letter1 = ['A', 'B', 'C']
letter2 = ['D', 'E', 'F']
letter1 + letter2


# In[7]:


list_num1 = [1,2,3]
list_num2 = [4, 5, 6]
list_num1 + list_num2


# In[10]:


# 원소 존재 여부 확인을 위한 in 연산
print('A' in letter1)
print('A' not in letter1)


# In[9]:


'A' in letter2


# In[13]:


# 리스트 요소 변경하기
# 인덱스가 존재하는 요소를 변경해야함
# 뜬금없이 인덱스 밖의 값을 참조하면 에러 남.
print(letters)
letters[0] = 'a'
letters


# In[14]:


letters[0] = 'A'
letters


# In[15]:


# 배열 길이 확인하기
len(letters)


# In[17]:


# 배열에 해당 요소가 몇개가 들어있는가
letters.count('A')


# In[18]:


# 리스트 원소 추가하기
letters.append('a')
letters


# In[19]:


# 특정 인덱스에 원소 추가하기
letters.insert(2, 'z')
letters


# In[20]:


# 리스트 원소 제거하기
# pop: 특정 인덱스 원소 제거하기
letters.pop(2)
letters


# In[24]:


# remove: 특정 원소를 제거
letters.remove('a')
letters


# In[25]:


# 리스트 정렬하기
letters.sort(reverse=True) # 역정렬
letters


# In[26]:


letters.sort()
letters


# In[ ]:




