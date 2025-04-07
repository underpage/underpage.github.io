---
order: 0.31
title: data
description: 데이터 타입
summary:
keywords:
- data
- data representation
- 데이터 타입
tags:
- data
- computer
created_time: 2024-09-20 15:00
modified_time: 2024-10-26 22:16
---

# Data Type
: 데이터 타입이란 데이터를 타입으로 분류하는 분류 체계  
: 프로그래밍 언어가 발전하며 데이터를 정확하고 효율적으로 처리하기 위해 도입  
: 데이터 타입을 통해 정확한 연산을 수행하며 적절한 크기의 메모리 공간을 할당함  
: 데이터 타입은 개발자와 컴파일러에게 데이터를 처리하는 방법에 대한 정보를 제공함  
: 데이터 타입의 도입은 [자료 구조](./data-structure/index.md)와 [타입 시스템](../program/language/type-system.md) 발전으로 이어짐  

**type**  
: 어떤 값과 다른 값을 분별할 수 있는 고유한 특성  


**history**
```
- 1957년 포트란 언어에서 정수와 부동소수점 타입을 도입
- 1958년 알골 언어에서 불리언 타입 도입 
- 1960년대 알골 언어에서 배열이나 구조체같은 복합 데이터 타입 도입
- 1970년대 파스칼 언어에서 사용자 정의 데이터 타입을 지원
- 1980년대 객체 지향 프로그래밍이 발전하며 타입 시스템도 발전
- 1980년대 제네릭 프로그래밍이 나타나며 데이터 타입을 추상적으로 처리하는 기법 도입
- 1980년대 함수형 프로그래밍이 발전하며 타입 추론 개념 도입
```



## Computer System Data Type
: 컴퓨터 시스템 내에서 사용되는 데이터 타입  
: 하드웨어 수준에서는 데이터 타입이 저수준이며 소프트웨어 수준에서는 데이터 타입의 추상화 수준이 높아짐  


**하드웨어 데이터 타입**
- Integer
- Floating Point
- Bit fields
- Address


**리눅스 데이터 타입**
- 기본 데이터 타입 (char, short, int, long, float, double)
- 시스템 특화 타입 (pid_t, size_t, time_t)
- 포인터 타입
- 구조체 (struct)
- 공용체 (union)


**윈도우 데이터 타입**
- 기본 데이터 타입 (BYTE, WORD, DWORD, QWORD, INT 등)
- 포인터 (LPVOID, HANDLE, HWND, HINSTANCE)
- 문자열 (LPSTR, LPCWSTR 등)
- 구조체
- 특수 목적 타입 (COLORREF, LPARAM, WPARAM)


**프로그래밍 언어 데이터 타입**  
= 추상화된 데이터 타입  

- 기본 데이터 타입
- 복합 데이터 타입
- 사용자 정의 타입
- 특수 목적 타입
