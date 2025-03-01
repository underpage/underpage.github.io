---
order: 0.3
title: data structure
description: 자료구조 - 스택
summary:
keywords:
- data
- data structure
- stack
- 스택
tags:
- data
created_time: 2024-10-24 13:32
modified_time: 2024-11-08 17:54
---

# Stack
: 스택은 리스트에서 데이터의 삽입과 삭제가 한쪽 끝에서만 일어나는 자료구조  
: 마지막에 삽입된 요소가 가장 먼저 처리되는 후입선출 구초 (LIFO)  
: 배열이나 연결 리스트를 통해 구현되며 함수 호출 관리와 중간값 저장 등의 용도로 사용  
: 스택은 후입선출 구조이므로 데이터를 순차적으로 접근해야 하며 임의 접근이 불가능함  

**history**
```
함수 호출시 현재 위치와 상태를 저장하고 함수가 끝나면 원래 위치로 돌아가는 구조가 필요했는데
여러 방법 중 후입선출 구조가 이에 적합하여 함수 호출을 관리를 위해 사용됨

초기 스택은 하드웨어 자체에서 구현되거나 배열 기반으로 구현됨
1960년대 이후 컴퓨터 과학이 발전하면서 스택 자료구조와 이론이 체계적으로 정립됨

현대에는 소프트웨어 기반 스택이 주를 이루나 스택 포인터 레지스터와 같은 하드웨어 스택도 여전히 존재함
```


용어 | 설명
---|---
Top  | 현재 스택에서 요소의 삽입과 삭제가 이루어지는 위치
Push | 스택에 요소를 삽입하는 것
Pop  | 스택에서 요소를 꺼내는 것
Stack Pointer | Top를 가르키는 포인터로 마지막으로 삽입된 요소의 위치를 추적함


**문제점**  
: 스택의 동작 원리에서 파생된 문제

- 스택 언더 플로 : 스택이 가득 찬 상태에서 더 많은 데이터를 삽입하려고 할 때 발생
- 스택 오버 플로 : 비어 있는 스택에서 요소를 제거하려고 할 때 발생

**시간 복잡도**
- 접근 : O(n)
- 조회 : O(1)
- 삽입 : O(1)
- 삭제 : O(1)


**구현체**
- 배열 기반 스택
- 연결 리스트 기반 스택

**특징**

특징 | 배열 기반 스택 | 연결 리스트 기반 스택
---|---
메모리 크기 | 고정된 크기 (컴파일 시점에 결정) | 가변적인 크기 (실행 시점에 동적으로 변경)
메모리 할당 | 메모리 연속 할당 | 노드 단위로 필요할 때마다 동적 할당
메모리 접근 | 인덱스를 통해 직접 접근 | 포인터를 따라가는 간접 접근 (상대적으로 느림)

**선택 기준**

자료구조 | 기준
---|---
배열 기반 | 성능과 캐시 효율이 중요한 경우
연결 리스트 기반 | 크기가 동적으로 변하는 경우