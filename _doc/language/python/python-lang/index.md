---
order: 1
title: Python
description: 파이썬 프로그래밍 언어
summary:
keywords:
- programming language
- python
- python encoding
tags:
- python
- language
created_time: 2025-04-04 01:19
modified_time: 2025-05-25 13:29
---

# Python Programming Language
: 명령형 프로그래밍 언어 ABC의 영향을 받아 간결하고 읽기 쉬운 문법을 지향하는 명령형 기반 언어  
: 절차형, 함수형, 객체지향 패러다임을 모두 지원하는 멀티패러다임 프로그래밍 언어  
: 소스 코드를 바이트코드로 컴파일한 후 인터프리터가 실행하는 하이브리드 방식의 언어  
: 실행 시점에 인터프리터에 의해 변수의 데이터 타입이 결정되는 동적 타입 언어  
: Python 3.5 부터 타입 힌팅을 도입하여 점진적으로 타입 체크가 가능함  
: 정수, 문자, 함수, 클래스 등 모든 요소가 객체로 취급되어 고유한 속성과 메소드를 가짐  
: 객체는 참조 카운팅 방식으로 관리되어 더 이상 참조되지 않는 객체는 가비지 컬렉터에 의해 제거됨  

**파이썬 기초** 
- [변수](./python-variable.md)
- [데이터 타입](./python-data-type.md)
- [키워드](./python-keyword.md)
- [연산자](./python-operator.md)
- [제어문](./python-statement.md)
- [예외처리](./python-exception.md)
- [함수](./python-function.md)
- [클래스](./python-class.md)
- [언더스코어](./python-underscore.md)

**파이썬 고급**
- [모듈과 패키지](./python-module.md)
- [이터레이터와 제너레이터](./python-iterator.md)
- [데코레이터](./python-decorator.md)
- [컨텍스트 매니저](./python-context-manager.md)
- [프로퍼티](./python-property.md)
- [네임스페이스](./python-namespace.md)
- [타입 힌팅](./python-type-hints.md)

**패러다임**
- Python OOP Programming
- Python Functional Programming
- Python Concurrency
- Python Metaprogramming 

  

## Python Encoding
: 파이썬 버전에 따라 기본 인코딩이 다름  

버전 | 기본 인코딩 | 비고
:---:|:---:|---
python2 | ASCII | ASCII 외 다른 인코딩을 사용하려면 소스 파일 상단에 선언 필요
python3 | UTF-8 | UTF-8 외 다른 인코딩을 사용하려면 소스 파일 상단에 선언 필요

```python
# -*- coding: UTF-8 -*-
```



## Python Indentation
: 파이썬은 들여쓰기(스페이스, 탭)를 사용해 코드 블럭을 구분함  
: 스페이스와 탭을 섞어 사용하면 오류가 발생하며 스페이스 경우 4칸을 사용하는 것이 표준  

```python
if Ture:
    print('true')
else:
    print('false')
```



## Python Semicolon
: 줄바꿈으로 문장을 구분해 일반적으로 세미콜론은 사용하지 않음  
: 한 행에 여러 문장을 사용할 경우에는 세미콜론을 사용해 문장을 구분함  

```python
print('hello'); print('world')
```



## Python Comment

```python
# 한 줄 주석

"""
여러 줄 주석
"""

'''
여러 줄 주석
'''
```