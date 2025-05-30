---
order: 1.4
title: Python
description: 파이썬 연산자
summary:
keywords:
- python
- python operator
tags:
- python
created_time: 2025-04-07 04:37
modified_time: 2025-05-28 18:12
---

# Python Operator
: 연산을 수행하는 기호로 피연산자에 대해 특정 연산을 수행함  
: 대부분의 연산자는 피연산자의 내부 스페셜 메소드를 호출하는 방식으로 동작함  
: 일부 연산자는 (and, or, is 등) 스페셜 메소드를 사용하지 않고 언어 자체에서 구현됨  

- [산술 연산자](#arithmetic-operator)
- [비교 연산자](#comparison-operator)
- [논리 연산자](#logical-operator)
- [비트 연산자](#bitwise-operator)
- [복합 대입 연산자](#augmented-assignment-operator)
- [오버로딩 연산자](#overloading-operator)
- [멤버십 연산자](#membership-operator)
- [식별 연산자](#identity-operator)
- [접근 연산자](#access-operator)
- [언패킹 연산자](#unpacking-operator)
- [특수 연산자](#special-operator)


**사용자 정의 연산자**  
: 스페셜 메소드를 오버라이딩하여 사용자 정의 객체에 대한 사용자 정의 연산자를 구현할 수 있음  

연산자 | 스페셜 메소드
---|---
\+ | \__add__
\- | \__sub__



## Arithmetic Operator

연산자 | 설명
:---:|---
\+  | 덧셈
\-  | 뺄셈
\*  | 곱셈
/   | 부동소수점 나눗셈
//  | 정수 나눗셈 후 몫 반환
%   | 나머지 연산
\** | 거듭 제곱



## Comparison Operator
: 숫자면 크기를 비교하고 문자열이면 사전식으로 순서를 비교함  

연산자 | 설명
:---:|---
\== | 두 값이 같음
\!= | 두 값이 다름
\>  | 초과, 보다 큼
\<  | 미만, 보다 작음
\>= | 이상, 보다 크거나 같음
\<= | 이하, 보다 작거나 같음


**연쇄 비교**
```python
a, b, c = 1, 2, 3

(a < b < c) == True
```



## Logical Operator
: 파이썬 논리 연산은 기호 대신 키워드를 사용함  

키워드 | 설명
:---:|---
and | 두 조건이 모두 참이면 참 
or  | 두 조건 중 하나라도 참이면 참
not | 조건이 참이면 거짓, 거짓이면 참 

```python
x = True
y = False

(x and y) == False
```



## Bitwise Operator

연산자 | 이름 | 설명
:---:|---|---
&   | 비트 AND | 비트가 모두 1일 때 1 반환
\|  | 비트 OR | 비트 중 하나라도 1이면 1 반환
^   | 비트 XOR | 비트가 서로 다르면 1 반환
\~  | 비트 NOT | 각 비트를 반전함
\<< | 왼쪽 시프트 | 비트를 왼쪽으로 이동하고 오른쪽을 0으로 채움
\>> | 오른쪽 시프트 | 비트를 오른쪽으로 이동하고 왼쪽을 부호 비트로 채움



## Augmented Assignment Operator
: 변수의 값을 연산하고 그 결과를 기존 변수에 대입하는 연산자  

연산자 | 설명
:---:|---
\+=  | 변수에 값을 더하고 결과를 대입함
\-=  | 변수에 값을 빼고 결과를 대입함
\*=  | 변수에 값을 곱하고 결과를 대입함
/=   | 변수에 부동소수점 나눗셈하고 결과를 대입함
//=  | 변수에 정수 나눗셈하고 몫을 대입함
%=   | 변수에 값을 나누고 나머지 값을 대입함
\**= | 변수에 값을 거듭 제곱하고 결과를 대입함



## Overloading Operator
: 피연산자의 타입에 따라 다른 연산을 수행하는 연산자  

연산자 | 설명
:---:|---
\+  | 숫자면 덧셈 연산자이며 문자열, 리스트, 튜플이면 연결 연산자
\*  | 숫자면 곱셈 연산자이며 문자열, 리스트, 튜플이면 반복 연산자
\-  | 숫자면 빼기 연산자이며 집합이면 차집합 연산자
%   | 숫자면 나머지 연산자이며 문자열이면 문자열 포맷팅 연산자

```python
# 연결 연산
data = [1,2,3] + [4,5,6]

# 반복 연산
data = [1] * 5

# 차집합 연산
data = {1, 2, 3} - {3}
```



## Membership Operator
: 특정 요소가 컬렉션(문자열, 리스트, 튜플 등)에 존재하는지 확인하는 연산자  

연산자 | 설명
:---:|---
in | 값이 컬렉션에 존재하면 참 반환
not in | 값이 컬렉션에 존재하지 않으면 참 반환

```python
data = [1,2,3]
(1 in data) == True
```



## Identity Operator 
: 객체의 메모리 주소를 비교하는 연산자  
: 정체성 연산자를 통해 두 객체가 같은 객체인지 판별함  

연산자 | 설명
:---:|---
is | 두 객체가 같은 메모리 위치를 참조하면 참 반환
is not | 두 객체가 다른 메모리 위치를 참조하면 참 반환

``` python
data = [1,2,3]
new_data = data

(data is new_data) == True
(data is [1,2,3]) == False

# == 연산자는 객체의 값이 같은지 확인함
(data == [1,2,3]) == True
```



## Access Operator
: 객체의 내부 요소에 접근하거나 호출하기 위한 연산자  

연산자 | 이름 | 설명
:---:|---|---
[] | 구독 연산자 | 객체의 슬라이싱이나 인덱싱을 위한 연산자
.  | 속성 접근 연산자 | 객체의 속성이나 메소드에 접근하는 연산자
() | 함수 호출 연산자 | 함수나 callable 객체를 호출하는 연산자


**구독 연산자**
```python
data = [1,2,3]

# __getitem__
data[0]

# __setitem__
data[0] = 0

# __delitem__
deal data[0]
```



## Unpacking Operator
: 컨테이너 요소들을 개별적으로 꺼내어 함수 호출, 리스트 생성 등에 사용하는 연산자  
: 스페셜 메소드가 존재하지 않으며 언어에서 문법으로 구현됨  

연산자 | 설명
---|---
\*  | iterable 요소들을 하나씩 꺼내 전달함
\** | 딕셔너리의 키/값을 key=value 형식으로 전달함

```python
def function(a, b, c):
  pass

args = [1,2,3]
kwargs = {"a": 1, "b": 2, "c": 3}

function(*args)
function(**kwargs)
```



## Special Operator

연산자 | 이름 | 설명
:---:|---|---
@  | 행렬 곱셈 연산자 | 행렬 간 곱셈에 사용되는 연산자
:= | 왈러스 연산자 | 변수에 값을 할당하면서 동시에 표현식을 평가하는 연산자


**행렬 곱셉 연산자**
```python
import numpy as np

a = np.array([[1, 2], [3, 4]])
b = np.array([[5, 6], [7, 8]])
a @ b  # array([[19, 22], [43, 50]])

# [1 2]  [5 6] = [1, 2] [5, 7] = 1*5 + 2*7 = 19 | [1, 2] [6, 8] = 1*6 + 2*8 = 22
# [3 4]  [7 8] = [3, 4] [5, 7] = 3*5 + 4*7 = 43 | [3, 4] [6, 8] = 3*6 + 4*8 = 50
```


**왈라스 연산자**
``````python
data = [1,2,3,4,5]
result = [i for n in data if(i := n*2) > 4]
# [6, 8, 10]

# 1. for n in data
# 2. i := n*2
# 3. i > 4
```