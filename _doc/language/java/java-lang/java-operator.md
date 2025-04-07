---
order: 0.42
title: java
description: 자바 연산자
tags:
- programming language
- language
- java
created_time: 2024-10-14 05:03
modified_time: 2024-10-14 20:55
---

# Java Operator Classification
: 연산자는 연산을 수행하기 위한 기호로 기능이나 용도에 따라 분류됨  

**분류**
- [할당 연산자](#assignment-operator)
- 단항 연산자
  - [부호 연산자](#sign-operator)
  - [연결 연산자](#concatenation-operator)
  - [증감 연산자](#increment-operator)
  - [논리 부정 연산자](#logical-not-operator)
  - [틸트 연산자](#tilde-operator)
- 이항 연산자  
  - [산술 연산자](#arithmetic-operator)
  - [비교 연산자](#comparison-operator)
  - [논리 연산자](#logical-operator)
  - [비트 연산자](#bitwise-operator)
  - [시프트 연산자](#shift-operator)
- [삼항 연산자](#ternary-operator)   
- [복합 할당 연산자](#compound-assignment-operator)
- [instanceof](#instanceof)
- [new](#new)
- [diamond](#diamond)


**관련 용어**

용어 | 설명
---|---
operand (피연산자) | 연산자가 작용하는 대상
term (항) | 피연산자의 조합을 의미
expression (수식) | 하나 이상 피연산자와 연산자로 구성된 조합 


**수식**  
: 피연산자와 연산자와 연산 우선 순위를 지정하기 위한 괄호로 구성되고 결과를 도출함  
: 산술 수식, 비교 수식, 논리 수식, 삼항 수식이 존재 


**우선 순위**  
: 여러 연산자가 포함된 수식에서 어떤 연산자가 먼저 수행되는지 결정하는 규칙  
: 우선 순위가 같은 연산자가 연속으로 존재할 경우 왼쪽에서 오른쪽으로 연산함  

- 단항 연산자 > 이항 연산자 > 삼항 연산자
- 산술 > 비교 > 논리 > 대입  



## Assignment Operator
= 할당 연산자, 대입 연산자  
: 연산자를 기준으로 우측 피연산자를 좌측 피연산자에 할당  
: 연산의 결과를 대입하는 역할로 우선 순위가 가장 낮음  

```java
int num = 1;

int a = b = c = 1;
```


## Sign Operator
= 부호 연산자  
: 피연산자가 하나이며 숫자일 경우 양수나 음수를 나타냄  
: 양수일 경우 부호를 생략하며 음수일 경우 부호를 사용함  

연산자 | 설명
---|---
\+  | 양수
\-  | 음수


## Concatenation Operator
= 연결 연산자  
: 피연산자가 하나이며 문자일 경우 연결 연산을 함  

```java
String str = "str";
str = str + "ing";
```


## Increment Operator
= 증감 연산자

연산자 | 설명
---|---
\++  | 증감 연산자 (Increment)
\--  | 감소 연산자 (Decrement)

```java
// 전위 증감 연산자 : 값 증가 후 리턴
int num = 0;
int result = ++num;

(num == 1) == true
(result == 1) == true


// 후위 증감 연산자 : 값 리턴 후 증가
int num = 0;
int result = num++;

(num == 1) == true
(result == 0) == true
```


## Logical NOT Operator
= 논리 부정 연산자  
: 논리 연산자 일종으로 boolean 값을 반대로 함  


## Tilde Operator
= 틸트 연산자, 비트 NOT 연산자, 비트 반전 연산자, 단항 비트 보수 연산자  
: 비트 패턴을 반전시킴  

```java
byte b = (byte) 0b1000_0000;

(b == -128) == true
(~b == 127) == true
(((byte) 0b0111_1111) == 127) == true
```


## Arithmetic Operator
= 산술 연산자  
: 정수를 0으로 나누면 예외가 발생하고 실수를 0으로 나누면 NaN 반환  

연산자 | 설명
---|---
\+  | 가산 연산
\-  | 빼기 연산
\*  | 곱셈 연산
/   | 나누기 연산
%   | 나누기 연산 후 나머지 값 반환


```java
(10/3 == 3) == true
(10/3.0 == 3.3333333333333335) == true
```


## Comparison Operator
= 비교 연산자, 관계 연산자  

연산자 | 설명
---|---
==    | 피연산자가 같으면 참
!=    | 피연산자가 같지않으면 참
\>    | 좌측 피연산자가 크면 참
\>=   | 좌측 피연산자가 우측 피연산자와 같거나 크면 참
<     | 우측 피연산자가 크면 참
<=    | 우측 피연산자가 좌측 피연산자와 같거나 크면 참



## Logical Operator
= 논리 연산자  
: 쇼트 서킷 평가로 처음 피연산자로 결과를 판단할 수 있다면 다음 피연산자는 평가하지 않음  

연산자 | 설명
---|---
&& | 논리곱 연산자(AND) : 좌측 우측 모두 참이면 참 반환
&brvbar;&brvbar; | 논리합 연산자(OR) : 좌측과 우측 중 하나만 참이면 참 반환


## Bitwise Operator
= 비트 연산자  
: 각 비트에 대해 논리 연산 수행  

연산자 | 설명
---|---
&        | 비트 AND 연산자 : 좌측 우측 비트가 모두 1이면 1을 반환하고 아니면 0을 반환
&brvbar; | 비트 OR 연산자 : 좌측 우측 비트가 하나라도 1이면 1을 반환하고 모두 0이면 0 반환
^        | 비트 XOR 연산자 : 좌측 우측 비트가 다르면 1을 같으면 0을 반환   


## Shift Operator
= 시프트 연산자  
: 비트를 왼쪽이나 오른쪽으로 이동시키는 연산자  

연산자 | 설명
---|---
\<<    | 왼쪽 시프트 연산자 : 주어진 값 만큼 비트를 왼쪽으로 이동시키고 빈 값은 0으로 채움  
\>>    | 오른쪽 시프트 연산자 : 주어진 값 만큼 비트를 오른쪽으로 이동시키고 빈 값은 부호 비트로 채움
\>>>   | 부호없는 오른쪽 시프트 연산자 : 주어진 값 만큼 비트를 오른쪽으로 이동시키고 빈 값은 0으로 채움

```java
// 0000 0000 0000 0000 0000 0000 0000 0001
// 0000 0000 0000 0000 0000 0000 0010 0000
(1 << 5) == 32 // 1을 왼쪽으로 5비트 이동

0000 0000 0000 0000 0000 0000 0000 0101
0000 0000 0000 0000 0000 0000 0000 0010
(5 >> 1) == 2  // 5를 왼쪽으로 1비트 이동
```


## Ternary Operator
= 삼항 연산자, 조건부 연산자  

> expression ? true : false;


## Compound Assignment Operator
= 복합 할당 연산자  
: 할당과 연산을 동시에 수행

연산자 | 설명
---|---
\+=     | 더하기 연산 후 할당
\-=     | 빼기 연산 후 할당
\*=     | 곱하기 연산 후 할당
/=      | 나누기 연산 후 할당
%=      | 모듈러 연산 후 할당
\<<=    | 시프트 연산 후 할당
\>>=    | 시프트 연산 후 할당
\>>>=   | 시프트 연산 후 할당
&=      | 비트 연산 후 할당
&brvbar;= | 비트 연산 후 할당
^=      | 비트 연산 후 할당


## instanceof 
= 객체 비교 연산자  
: 객체를 비교해 해당 클래스의 인스턴스이면 참 반환  
: Java 14부터 타입 검사와 캐스팅을 동시에 수행하는 패턴 매칭 지원  

```java
String str = "";

(str instanceof String) == true
(str instanceof Object) == true

// 패턴 매칭
if(str instanceof String s) {
    System.out.println(s);
}
```


## new
= 객체 생성 연산자  
: 객체 생성을 위해 사용하는 키워드이자 연산자  
: 새 객체를 위해 메모리를 할당하고 메모리에 대한 참조를 반환   



## diamond
: Java 7부터 도입된 연산자  
: 제네릭 인스턴스 생성시 컴파일러에 의해 타입 추론  

```java
List<String> list = new ArrayList<>();
```