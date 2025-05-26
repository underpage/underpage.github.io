---
order: 1.2
title: Python
description: 파이썬 데이터 타입
summary:
keywords:
- python
- python data tpye
tags:
- python
created_time: 2025-05-25 13:20
modified_time: 2025-05-26 23:21
---

# Python Data Type
: 기본으로 지원하는 내장 타입과 사용자 정의 타입으로 분류되며 모든 타입은 객체로 취급됨  

- 내장 타입
  - 특수 타입
  - 숫자
  - 시퀀스
  - 집합
  - 매핑
- 사용자 정의 타입


**타입 계층 구조**
```
object
├── type
├── NoneType
├── NotImplementedType  
├── EllipsisType
├── numbers.Number
│   ├── numbers.Integral
│   │   ├── bool
│   │   └── int
│   ├── numbers.Real
│   │   └── float
│   └── numbers.Complex
│       └── complex
├── collections.abc.Sequence
│   ├── str
│   ├── tuple
│   ├── range
│   ├── bytes
│   ├── bytearray
│   └── list
├── collections.abc.Set
│   ├── set
│   └── frozenset
├── collections.abc.Mapping
│   └── dict
├── collections.abc.Callable
│   ├── function
│   ├── builtin_function_or_method
│   └── method
└── 사용자 정의 클래스
```


**타입 확인**
```python
type(1)    # <class 'int'>
type([1])  # <class 'list'>
type(len)  # <class 'builtin_function_or_method'>
type(int)  # <class 'type'>
```
