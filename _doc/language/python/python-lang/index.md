---
order: 1
title: python
description: 파이썬 프로그래밍 언어
summary:
keywords:
- python
- python programming language
tags:
- language
- python
created_time: 2024-11-26 00:32
modified_time: 2025-01-20 11:54
---

# Python Programming Language
: 명령형 프로그래밍 언어 ABC의 영향을 받은 언어로 간결하고 읽기 쉬운 문법을 지향  
: 절차형, 함수형, 객체지향 패러다임을 모두 지원하는 다중 프로그래밍 언어  
: 실행 전 바이트코드로 컴파일하는 중간 과정을 포함한 하이브리드 방식의 인터프리터 언어  
: 강한 동적 타입 언어로 실행 시점에 인터프리터가 데이터 타입을 결정함  
: Python 3.5 부터 타입 힌팅을 도입하여 점진적으로 타입 체크가 가능해짐  
: 정수, 문자, 함수, 클래스 등 모든 것이 객체로 취급되어 속성과 메소드를 가짐  
: 객체는 참조 카운팅 방식으로 관리되어 더 이상 참조되지 않는 객체는 가비지 컬렉터에 의해 제거됨  

- Python Core 
  - [Variable](./python-variable.md)
  - [Data Type](./python-data-type.md)
  - [Keyword](./python-keyword.md)
  - [Operator](./python-operator.md)
  - [Statement](./python-statement.md)
  - [Function](./python-function.md)
  - [Class and Object](./python-class.md)
  - [Exception](./python-exception.md)
  - [Underscore](./python-underscore.md)
- Python Advanced
  - Module
  - Namespace
  - Decorator
  - Iterator and Generator
- Python OOP Programming
- Python Functional Programming
- Python Concurrency
- Python Metaprogramming 



## Python Encoding

버전 | 기본 인코딩 | 비고
:---:|:---:|---
python2.x  | ASCII | ASCII 외 다른 인코딩을 사용하려면 소스 파일 상단에 선언 필요
python3.x  | UTF-8 | UTF-8 외 다른 인코딩을 사용하려면 소스 파일 상단에 선언 필요

```python
# -*- coding: UTF-8 -*-
```



## Python Indentation
: 파이썬은 들여쓰기(스페이스, 탭)를 사용해 코드 블럭을 정의함  
: 스페이스와 탭을 섞어 사용하면 오류가 발생하며 스페이스 경우 4칸을 사용하는 것이 표준  

```python
if Ture:
    print('true')
else:
    print('false')
```



## Python Semicolon
: 일반적으로 세미콜론은 사용하지 않지만 한 행에 여러 문장을 사용할 경우에는 세미콜론을 사용함  

```python
print('hello'); print('world')
```