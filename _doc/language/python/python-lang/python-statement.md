---
order: 0.15
title: python
description: 파이썬 문장
summary:
keywords:
- python
- python statement
- 파이썬 문장
tags:
- language
- python
created_time: 2024-11-26 08:44
modified_time: 2024-11-27 19:50
---

# Python Statement
: 문장이란 프로그램을 구성하는 최소 독립 실행 단위  
: 파이썬은 하나의 명령어로 구성된 단순 문장과 여러 개의 단순 문장으로 구성된 복합 문장으로 분류됨  

- [Simple Statement](#simple-statement)
- [Compound Statement](#compound-statement)



## Simple Statement
: 하나의 명령어로 구성된 단순한 문장  

```python
# 할당 문
num = 0


# 표현식 문
num = 1 + 2

# 조건부 표현식 문
num = 1 if True else 0
num = 1 if False else 0


# del 문
del num


# break 문
for i in range(5):
    if i == 3:
        break
    print(i)


# continue 문
for i in range(5):
    if i == 3:
        continue
    print(i)


# global 문
def func()
    global num


# pass 문
def func()
    pass


# return 문
def func()
    return 0


# yield 문
def func(max):
    count = 1
    while count <= max:
        yield count
        count += 1


# raise 문
def func(max):
    if max < 10:
        raise ValueError("message")


# assert 문
assert condition


# import 문
from 패키지명 import 모듈명
```



## Compound Statement
: 블록 구조를 통해 여러 줄로 구성되는 문장

- [제어 흐름 문](#control-flow-statement)
- [with 문](#with-statement)
- [match 문](#match-statement)
- type parameter list
- [예외 처리](./python-exception.md)
- [함수 정의](./python-function.md)
- [클래스 정의](./python-class.md)



### Control Flow Statement

종류 | 키워드 | 설명
---|---|---
조건문 | if, elif, else | 조건에 따라 코드 블록 실행
반복문 | for, while | 조건에 만족하면 코드 블록을 반복적으로 실행
분기문 | break, continue, return | 실행 흐름을 변경하거나 중간

```python
# 조건문
if True:
    print("true")

if True:
    print("true")
else:
    print("false")

if variable == 0:
    print("0")
elif variable == 1:
    print("1")
else:
    print(variable)


# 반복문
for i in iterable:
    print(i)

for i in iterable : 
    print(i)
else :
    print("반복문이 정상 종료되면 실행됨")


# 조건 기반 반복문
while True:
    print("true")
    break

while True:
    print("true")
    break
else :
    print("반복문이 정상 종료되면 실행됨")
```



### with statement
: [컨텍스트 관리자](./python-builtin-object.md#context-manager)를 사용하는 구문으로 리소스를 자동 관리하기 위해 사용  

```python
with expression [as target]:
    block


with open("example.txt", "r") as file:
    content = file.read()
```



### match statement
: 패턴 매칭을 지원하는 구문으로 다중 조건을 처리하기 위해 사용  

**패턴 매칭**  
: 값이 특정 형식이나 구조에 맞는지 확인하는 기능 

```python
match variable:
    case 0:
        print("0")
    case 1:
        print("1")
    case _:
        print(variable)


match variable:
    case n if 10 <= n <= 20:
        print("between 10 and 20")
    case _:
        print("out of range")        
```