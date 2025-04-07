---
order: 1
title: Program
description: 최적화 기법 - 코드 최적화
summary:
keywords:
- program optimization
- code optimization
- constant folding
- variable scoping
tags:
- program
created_time: 2025-02-27 05:31
modified_time: 2025-03-01 01:10
---

# Code Optimization
: 불필요한 연산 제거, 변수 재사용, 상수 처리 등 기본적인 코드 개선 기법  
: 코드 실행 속도를 향상하고 메모리 사용량 감소를 목적으로 함  
: 대부분의 기법은 현대 컴파일러에서 자동으로 지원함  

- [상수 접기](#constant-folding)
- [죽은 코드 제거](#dead-code-elimination)
- [변수 범위 최적화](#variable-scoping)
- [연산 강도 감소](#strength-reduction)
- [함수 인라이닝](#function-inlining)
- [피프홀 최적화](#peephole-optimization)
- [레지스터 할당 최적화](#register-allocation)



## Constant Folding
상수 접기  
: 컴파일 시점에 상수 표현식을 미리 계산해 실행 시간에 발생하는 계산 비용을 줄이는 기법  
: 변경되지 않는 값들을 컴파일 시점에 미리 계산해 런타임 성능을 향상함  

1. 컴파일러가 코드를 분석해 상수 표현식을 식별하고 계산 여부를 판단
2. 식별된 상수 표현식을 컴파일 시점에 계산
3. 계산 결과를 직접 삽입

```js
var num = 1 + 2 + 3;

// 최적화
var num = 6;
```



## Dead Code Elimination
죽은 코드 제거  
: 프로그램 결과에 영향을 미치지 않는 코드를 제거하는 기법  
: 사용되지 않는 코드를 제거해 프로그램 크기를 줄여 실행 속도를 향상함  

1. 컴파일러가 코드의 제어 흐름을 분석해 실행되지 않거나 사용되지 않는 코드 블록을 식별
2. 식별된 코드를 최종 실행 파일에서 제거



## Variable Scoping
변수 범위 최적화  
: 변수의 범위와 생명 주기를 최적화해 메모리 사용을 개선하는 기법  
: 변수를 최소 범위에 선언하여 오류 가능성 및 가비지 컬렉션 부담이 감소함  

1. 변수가 실제로 사용되는 영역을 분석
2. 변수 선언과 범위를 최소화해 필요한 위치나 위치와 가까운 곳에 배치

```js
function fn(items) {
  var sum;
  for(var i=0 ; i<items.length ; i++) {
    sum += items[i];
  }

  for(var i=0 ; i<items.length ; i++) {}
}

// 최적화
function fn(items) {
  {
    var sum;
    for(var i=0 ; i<items.length ; i++) {
      sum += items[i];
    }
  }

  for(var i=0 ; i<items.length ; i++) {}
}
```



## Strength Reduction
연산 강도 감소  
: 비용 높은 연산을 동등한 결과를 내는 저비용 연산으로 대체하는 기법  
: 곱셈, 나눗셈, 거듭제곱 등은 비용이 높은 연산이며 덧셈, 시프트 연산 등은 저비용 연산  

1. 비용이 높은 연산을 식별
2. 동일한 결과를 내는 저비용 연산으로 대체

```js
var num = x * 2;

// 최적화
var num = x << 1;
```



## Function Inlining
함수 인라이닝  
: 함수 호출 대신 함수 본문을 직접 삽입해 함수 호출의 오버헤드를 제거하는 기법  
: 함수 호출은 상대적으로 비용이 비싸므로 자주 호출되는 간단한 함수라면 인라이닝 기법 사용  
: 반복되는 작은 함수에 효과적이며 큰 함수나 여러 위치에서 호출되는 함수는 효율이 저하됨  

1. 함수 호출 지점을 식별
2. 호출되는 함수의 본문을 호출 지점에 삽입

```js
function fn(num) {
  return num*num;    
}

function process() {
  for(var i=0; i < 1000 ; i++) {
    var result = fn(i);
    ...
  }
}

// 최적화
function process() {
  for(var i=0; i < 1000 ; i++) {
    var result = i*i;
    ...
  }
}
```


**함수 호출 오버헤드**  
: 함수를 호출할 때 발생하는 추가 비용  

1. 함수 호출시 스택에 새로운 프레임이 생성
2. 매개변수가 있다면 매개변수 값을 복사하거나 참조를 전달
3. 현재 함수 실행 위치, 레지스터 상태 등 저장
4. 함수 본문으로 명령어 실행 포인터 변경
5. 함수 본문 종료되면 값을 반환하고 원래 위치로 복귀
6. 함수 종료 후 스택 프레임 정리



## Peephole Optimization
피프홀 최적화  
: 컴파일러가 제한된 범위의 코드를 분석해 코드 블록을 더 효율적인 패턴으로 대체하는 기법  
: 불필요한 연산은 제거하고 명령어 시퀀스를 단순화하여 코드 크기를 줄이고 실행 속도를 향상함  

```js
var x = a + b
var y = a + b
var z = c + 0

// 최적화
var x = a + b
var y = x
var z = c
```



## Register Allocation
레지스터 할당 최적화  
: 자주사용되는 임시 값이나 변수를 레지스터에 할당하는 기법  
: 레지스터를 활용해 메모리 접근을 줄이고 명령어 실행 속도를 향상함  
: 인터프리터나 컴파일러가 레지스터 할당을 수행하며 어셈블리어 사용시 레지스터 할당이 가능함  

1. 변수 사용 패턴과 생명 주기 분석
2. 가장 자주 사용되는 변수를 레지스터에 할당

```c
int sum = 0;
for(int i = 0; i < n; i++) {
  sum += arr[i]; // sum과 i를 레지스터에 할당
}
```


언어 | 지원 여부
---|---
C      | GCC, Clang, MSVC 컴파일러가 레지스터 할당을 수행
Java   | JIT 컴파일러가 런타임에 동적 레지스터 할당을 수행
Python | PyPy 컴파일러가 제한적으로 레지스터 최적화를 수행