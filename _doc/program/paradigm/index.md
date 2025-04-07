---
order: 2
title: Programming
description: 프로그래밍 패러다임
summary:
keywords:
- program
- programming
- programming paradigm
tags:
- program
created_time: 2024-09-18 01:35
modified_time: 2025-02-27 10:21
---

# Programming Paradigm
: 프로그램을 설계하고 구현할 때 사용하는 이론적 접근 방식  
: 문제 해결 방법을 체계화하며 코드 구조, 제어 흐름, 상태 관리 방식에 대한 지침을 제공함  
: 대부분 언어는 한 개 이상의 패러다임을 지원하며 특정 패러다임 원칙을 완벽하게 구현하지 않음  

- [명령형 프로그래밍](./imperative-programming.md)
  - 비구조적 프로그래밍
    - 순차적 프로그래밍
  - 구조적 프로그래밍
    - 절차적 프로그래밍
    - 객체 지향 프로그래밍
    - 모듈형 프로그래밍
- [선언형 프로그래밍](./declarative-programming.md)
  - 함수형 프로그래밍
  - 논리형 프로그래밍
  - 값 중심 프로그래밍
- [동시성 프로그래밍](./concurrent-programming.md)
  - 병렬 프로그래밍
  - 분산 프로그래밍
- [반응형 프로그래밍](./reactive-programming.md)
  - 이벤트 기반 프로그래밍
  - 데이터 흐름 프로그래밍


**시대별 패러다임**
```
- 1960년대 : 구조적 프로그래밍 (Fortran)
- 1970년대 : 절차적 프로그래밍 (C)
- 1980년대 : 객체 지향 프로그래밍 (C++, Smalltalk)
- 1990년대 : 함수형 프로그래밍 (Haskell, LISP 등)
- 2000년대 : 동시성 프로그래밍, 이벤트 기반 프로그래밍
- 2010년대 : 클라우드 네이티브, 분산 프로그래밍, 반응형 프로그래밍, 멀티 패러다임 언어
```


**패러다임 특징**
- 높은 수준의 추상화 제공
- 문제 해결을 위한 다양한 방식 제시
- 프로그램 구조(모듈화, 재사용성, 확장성)에 영향을 미침
- 프로그램이 어떻게 실행되는지 모델을 제공
- 프로그램 상태를 관리하는 방법에 대한 방식을 제시



## Advanced Programming Paradigm
≒ Programming Techniques  
: 패러다임에서 사용된 프로그래밍 기법이나 기존 패러다임을 확장한 방식 및 개념  
: 패러다임과 기법의 경계에 있으며 어느쪽에 속하는지 구분이 어렵고 구분하는 기준이 없음  
: 일반적으로 패러다임은 추상화 수준이 높고 기법은 구체적인 구현 방식을 제공함  
: 일부 기법들은 독립적인 패러다임으로 발전할 수 있음  

- [제네릭 프로그래밍](./generic-programming.md)  
- [메타 프로그래밍](./meta-programming.md)  
- [관점 지향 프로그래밍](./aspect-oriented-programming.md)  
- [언어 지향 프로그래밍](./language-oriented-programming.md)  
- [계약 기반 프로그래밍](./contract-programming.md)  


```
AOP는 패러다임이면서 동시에 OOP의 한계를 보완하는 기법에 속함
IoC와 DI는 AOP보다 더 구체적이고 특화된 기법에 속함 (아키텍처나 패턴에 가까움)
```