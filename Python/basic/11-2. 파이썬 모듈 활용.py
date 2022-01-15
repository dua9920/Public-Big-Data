#!/usr/bin/env python
# coding: utf-8

# ## 파이썬 모듈
# ### 파이썬 모듈
# ---
# 

# 파이썬 모듈 (Module)
# - 모듈은 파이썬 코드를 관리하기 위한 논리적 단위
# - 일반적으로 하나의 파이썬 .py 파일이 하나의 모듈
# - 모듈 내에는 함수, 클래스, 혹은 변수들의 정의 가능, 실행 코드 포함
# 
# 파이썬 패키지 (Package)
# - 관련된 모듈들의 집합
# - 패키지는 디렉토리 단위로 관리
# - 패키지 내에는 여러개의 모듈들이 존재한다.
# - 그리고 서브 패키지가 존재할 수 있으며 그 서브 패키지 안에 여러개의 모듈이 있다- 
# 
# 모듈 유형
# - 기본 모듈 -> os, sys, random...
# - 사용자 정의 모듈 -> 사용자가 개발한 모듈
# - 3rd party 모듈 -> numpy, pandas...
# 
# 파이썬 모듈 사이트
# - pypi.com
# 
# 설치된 3rd party 모듈 확인
# - pip list
# - conda list
# 
# 모듈 사용 도움말 확인
# - help() 내장함수 사용
# - ex) help( 'sys' )
# 
# 모듈 import
# - import [모듈명]
# - import [모듈명] as [Alias명]
#     - 모듈명이 길거나 한 경우
#     - 긴 모듈명 말고 Alias명을 이용하여 짧게 사용
# - from [패키지명] import [모듈명]
#     - 디렉토리, 패키지 안에서 모듈을 접근하고자 할 때
# - from [모듈명] import [클래스명 | 함수명]
#     - 모듈 안에서 클래스나 함수에 접근하고자 할 때
# 
# 

# In[14]:


help('sys')


# In[5]:


# 운영체제 관련 모듈
import os

print(os.getcwd()) # 현재 디렉토리가 어디인가
print(os.listdir()) # 현재 디렉토리에 어느 파일들이 있는가


# In[9]:


import numpy as np

print(np.absolute(-3)) # 절댓값
print(np.sqrt(16)) # 루트


# In[11]:


# from 패키지 import 모듈
# scipy 패키지 안에 들어있는 stats 모듈
from scipy import stats

print(stats.hmean([1, 2, 3]))
print(stats.variation([1, 2, 3]))


# In[12]:


# from 모듈 import 클래스|함수
# datetime 모듈안에 있는 datetime 클래스
from datetime import datetime

# 즉 원래라면 datetime.datetime.now() 이렇게 불러왔어야 했음.
now = datetime.now()
print(now.year)
print(now.month)


# ### 파이썬 모듈의 활용
# ---

# 모듈의 물리적 위치
# - 파이썬에서 모듈 import 시 해당 모듈의 물리적 위치 탐색 순서
# 1. 현재 디렉토리
# 2. 환경변수 PYTHONPATH에 지정된 경로
# 3. Python이 설치된 경로 및 하위 라이브러리 디렉토리 경로

# In[13]:


# sys 모듈로 파이썬 모듈의 물리적 위치를 찾을 수 있음.
import sys

sys.path


# In[ ]:




