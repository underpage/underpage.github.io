---
order: 0.11
title: python
description: 파이썬 변수
summary:
keywords:
- python
- python variable
- 파이썬 변수
tags:
- language
- python
created_time: 2024-11-26 01:51
modified_time: 2024-11-27 19:49
---

# Python Variable
: 파이썬은 동적 타이핑 언어로 변수에 값을 할당하는 순간 객체가 생성되고 초기화됨  
: 파이썬은 일반적인 프로그래밍 언어처럼 변수 선언과 초기화 문법을 요구하지 않음  
: 변수에 데이터를 할당하는 것이 아니라 변수를 객체에 바인딩하는 메커니즘으로 동작함  
: 문법적으로 상수를 지원하지 않으며 3.8부터 지원하는 final 키워드 통해 재할당을 제약할 수 있음  

- [변수 종류](#variable-type)
- [변수 예약어](#variable-keyword)
- [변수 타입 힌트](#variable-type-hints)


```python
# 변수 선언만 불가능
# num

# 변수 할당 (바인딩)
# 데이터를 객체로 생성해 메모리에 할당하고 이 메모리 주소를 반환하면 변수가 이를 참조함
# 숫자 0은 int 클래스의 객체로 생성되어 int 클래스의 메소드를 사용할 수 있음
num = 0
text = "python"

# 체인 할당
# 같은 객체를 여러 변수가 참조함
n1, n2, n3 = 0


# 언팩킹
# 우변에 있는 iterable 객체의 각 값을 각각 다른 변수에 할당함
n1, n2, n3 = [1, 2, 3]
n1, n2, n3 = (1, 2, 3)


# 언더스코어
# 대화형 인터프리터에서는 언더스코어는 마지막 계산 결과를 저장함  

## 사용되지 않는 값을 무시하기 위해 사용
n1, _ , n = (1, 2, 3)
n1, *_ , n5 = (1, 2, 3, 4, 5)

## 의미 없는 값을 나타내기 위해 사용
_ = 0
print(_)


# 객체 타입(클래스) 반환
type(num)


# 객체의 id(메모리 주소) 반환  
n1 = n2 = 0
id(n1) == id(n2)


# 객체 정보 확인
dir(num)
```


**변수 생성 과정**
1. 객체를 재사용하거나 새로 생성하고 메모리 주소를 반환  
  1-1. 변수가 참조하는 기존 객체가 있다면 해당 객체를 재사용
  1-2. 재사용 할 객체가 없다면 CPython에 생성된 객체를 확인해 객체가 존재하면 이를 사용함
  1-3. 재사용 할 객체가 없다면 새로운 객체를 생성하고 이를 메모리에 저장함
2. 반환된 메모리 주소를 변수가 참조하고 객체의 참조 카운트를 증가함  
  2-1. 모든 객체는 참조 카운트를 가지며 변수가 객체를 참조하면 참조 카운트가 증가함
  2-2. 참조가 제거되거나 변수가 다른 객체를 참조하면 참조 카운트를 감소함
  2-3. 객체의 참조 카운트가 0이 되면 해당 객체는 메모리에서 제거됨 (인터닝된 객체 제외)

```python
import sys

# 새로운 객체 생성
n1 = 257

# n1과 n2는 동일한 객체를 참조
n2 = n1

# 객체의 참조 카운트 반환 
# 함수 호출시 객체를 참조하므로 (참조 수 + 1) 이 반환됨
print(sys.getrefcount(n1))
```


**인터닝**  
: 최적화를 위해 작은 정수와 짧은 문자열 객체를 재사용하는 메커니즘  
: 작은 정수는 -5 ~ 256 값을 가진 정수 객체로 인터프리터가 시작시 사전 생성함  
: 작은 정수가 아닌 정수는 필요 시점에 새로 객체를 생성함  
: 문자열은 컴파일 시점에 짧은 문자열이 반복되는 경우 이를 재사용함  
: 공백이 없으며 아스키 문자로 구성된 문자열은 자동으로 인터닝됨  

```python
import sys

# 문자열을 강제로 인터닝 처리함
x = sys.intern("hello world")
```



## Variable Type
: 파이썬 변수는 변수의 성격와 사용 위치에 따라 분류됨  

**위치에 따라**  
: 변수 위치에 따라 변수 스코프가 결정되어 변수 수명에 영향을 미침  

종류 | 설명
---|---
전역 변수 | 함수 외부에 선언되며 모듈 전체에서 접근 가능함
지역 변수 | 함수 내부에서 선언되며 함수가 종료되면 제거되며 함수 외부에서 접근 할 수 없음
매개 변수 | 함수 호출 시 전달되는 변수 (기본 매개변수, 가변 매개 변수, 위치 매개변수 등)
루프 변수 | 반복문에서 사용하는 임시 변수로 일부는 반복문 외부에서 접근 가능함


**성격에 따라**  
: [클래스](./python-class.md) 관점에서 용도에 따라 클래스 변수와 인스턴스 변수로 분류됨  


**용도에 따라**  

종류 | 설명
---|---
언더스코어 변수 | 변수명을 언더스코어로 사용하는 변수로 사용 관례와 용도가 존재함
환경 변수 | 실행 환경을 위해 외부에서 설정한 값으로 `os.environ` 객체를 통해 코드에서 사용됨


```python
# 전역 변수
num = 0

## 문법적으로 상수를 지원하지 않으며 관례적으로 상수는 대문자로 표기함  
NUM = 0


# 지역 변수
def func():
    # 전역 변수와 지역 변수 이름이 같아도 스코프가 다르므로 다른 변수로 취급함
    num = 100

    
# 매개 변수
## 위치 매개 변수
def func(a, b, c):
    pass

## 기본 매개 변수
def func(a, b=1, c=2):
    pass

## 가변 매개 변수와 가변 키워드 매개 변수
def func(*args, **kwargs):
    pass

## 키워드 전용 매개 변수
def func(*, key1, key2):
    pass


# 루프 변수
## 외부에서 변수에 접근 가능
for i in range(5):
    pass

## 외부에서 변수에 접근 불가
[i for i in range(5)]


# 스텝 변수
## i는 루프 변수이며 2는 스텝 변수
for i in range(0, 10, 2): 
    pass
```


**매개 변수 종류**  
: 파이썬은 키워드와 값을 함께 전달하는 방식을 키워드 인자라고 표현함  

종류 | 변수 | 설명
---|---|---
가변 매개 변수 | *args | 가변 위치 매개 변수를 받음 (튜플로 전달됨)
가변 키워드 매개 변수 | **kwargs | 가변 키워드 인자(키와 값)를 받음 (딕셔너리로 전달됨)
키워드 전용 매개 변수 | * 뒤에 선언된 변수 | 키워드 인자만 받을 수 있음

```python
# 키워드 전용 매개 변수
def func(*, a, b):
    print(a, b)

func(a=1, b=2)
```



## Variable Keyword
: 변수와 관련된 키워드로 변수의 동작이나 접근 방식을 다르게 정의하기 위해 사용됨  

- global
- nonlocal
- final
- del

```python
# global
num = 0

def func():
    # 함수 내부에서 global 키워드를 사용해 전역 변수를 참조함
    # global 키워드를 사용하지 않으면 지역 변수로 간주됨
    global num
    num = 1


# nonlocal
def outer():
    num = 0

    def inner():
        # 중접 함수 내부에서 nonlocal 키워드를 사용해 가장 가까운 외부 함수의 지역 변수를 참조함
        # nonlocal 키워드를 사용하지 않으면 중첩 함수의 지역 변수로 간주됨
        nonlocal num
        num = 10

    inner()
    print(num == 10)


# final
# 3.8부터 지원된 키워드로 변수의 재할당 방지를 목적으로 함
from typing import Final

num: Final = 0 


# del
# 객체의 참조를 제거
# 객체가 바로 제거되는 것이 아니며 객체의 참조 카운트가 0이 되면 가비지 컬렉터가 객체를 제거함
del num 
```



## Variable Type Hints
: 3.5부터 지원되는 타입 힌트를 통해 변수의 데이터 타입을 명시 할 수 있음  
: 데이터 타입을 명시적으로 지정해 코드의 가독성을 높이고 타입 오류를 방지할 수 있음  
: 타입 힌트는 실제 코드의 실행에 영향을 주지 않으며 타입 검사 도구가 정적 분석을 할 때 사용됨

```python
num: int = 0
text: str = "python"

def add(a: int, b: int) -> int:
    return a + b
```