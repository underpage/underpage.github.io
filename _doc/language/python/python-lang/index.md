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
created_time: 2025-10-04 09:10
modified_time: 2025-10-04 09:14
---

# Python Programming Language
: 명령형 프로그래밍 언어 ABC의 영향을 받아 간결하고 읽기 쉬운 문법을 지향하는 명령형 기반 언어  
: 절차형, 함수형, 객체지향 패러다임을 모두 지원하는 멀티 패러다임 프로그래밍 언어  
: 소스 코드를 바이트코드로 컴파일한 후 인터프리터가 실행하는 하이브리드 방식의 언어  
: 실행 시점에 인터프리터에 의해 변수의 데이터 타입이 결정되는 동적 타입 언어  
: Python 3.5 부터 타입 힌팅을 도입하여 정적 분석 도구를 통해 선택적으로 타입 체크가 가능함  
: 정수, 문자, 함수, 클래스 등 모든 요소가 객체로 취급되어 고유한 속성과 메소드를 가짐  
: 객체는 참조 카운팅 방식으로 관리되어 더 이상 참조되지 않는 객체는 가비지 컬렉터에 의해 제거됨  

**파이썬 기초** 
- [변수](./python-variable.md)
- [데이터 타입](./python-data-type.md)
- [타입 시스템](./python-type-system.md)
- [연산자](./python-operator.md)
- [표현식](./python-expression.md)
- [키워드](./python-keyword.md)
- [제어문](./python-statement.md)
- [예외처리](./python-exception.md)
- [함수](./python-function.md)
- [클래스](./python-class.md)
- [특수 메소드](./python-special-method.md)
- [내장 객체](./python-builtin-object.md)
- [언더스코어](./python-underscore.md)

**파이썬 고급**
- [모듈과 패키지](./python-module.md)
- [네임스페이스](./python-namespace.md)
- [이터러블](./python-iterable.md)
- [데코레이터](./python-decorator.md)
- [디스크립터](./python-descriptor.md)
- [컨텍스트 매니저](./python-context-manager.md)
- [메모리 관리](./python-memory-management.md)
- [타입 힌팅](./python-type-hints.md)

**패러다임**
- [객체지향 프로그래밍](./python-oop.md)
- [함수형 프로그래밍](./python-functional.md)  
- [동시성 프로그래밍](./python-concurrency.md)
- [메타프로그래밍](./python-metaprogramming.md)



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
: 줄바꿈으로 문장을 구분하므로 일반적으로 세미콜론을 사용하지 않음  
: 한 행에 여러 문장을 사용하는 경우 세미콜론을 사용하여 문장을 구분함  

```python
print('hello'); print('world')
```



## Python Line Continuation
: 문자열, 변수, 함수 호출 등 표현식을 여러 줄로 작성하는 방법  

```python
# 백슬래시를 사용해 연결
result = one + \
         two + \
         three

# 괄호 사용시 자동으로 연결됨
result = (one +
          two +
          three)
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



## Python Shebang
: Unix/Linux에서 파이썬 파일을 스크립트로 실행할 수 있게 해주는 특수한 주석  
: 파일 첫 줄에 작성하며 스크립트를 실행할 인터프리터의 경로를 명시함  
: shebang 주석이 명시된 파일은 직접 실행이 가능함  

```python
#!/usr/bin/python3

print('Hello World')
```