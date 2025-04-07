---
order: 1
title: Programming
description: 프로그래밍 언어
summary:
keywords:
- programming
- programming language
- language implementation
tags:
- program
- language
created_time: 2024-09-12 06:36
modified_time: 2025-03-23 22:39
---

# Programming Language
: 프로그램을 작성하기 위해 특정 규칙을 따르는 구문(Syntax)과 의미론(Semantics)  
: 사용자와 컴퓨터 간 의사소통을 위한 도구로 사용자의 의도를 전달할 수 있도록 규칙을 제공함  
: 프로그래밍 언어는 특정 문제 해결이나 패러다임을 지원하기 위해 설계되어 고유한 철학을 가짐  
: 이러한 철학은 특정 문제에 어떤 언어가 적합한지를 나타내며 문법, 에코시스템 등 전반에 영향을 미침  

- [언어 분류](./classification/index.md)
- [언어 개념](./concept/index.md)
- [언어 요소](./element/index.md)
- [언어 구문론](./syntax.md)
- [언어 의미론](./semantics.md)


**특징**
- 정확성 : 사용자의 의도를 정확하게 표현함
- 명확성 : 코드의 의미가 모호하지 않고 일관되게 해석됨
- 일관성 : 언어의 문법과 규칙이 일관되게 적용됨
- 안전성 : 사용자의 실수를 최소화하고 버그를 방지하는 메커니즘을 제공함
- 확장성 : 새로운 개념이나 기능을 추가할 수 있음



## Programming Language Implementation
: 프로그래밍 언어 구현이란 언어의 명세를 실행 가능한 시스템으로 변환하는 과정  
: 프로그래밍 언어는 개념이 아니라 컴퓨터가 이해하고 실행하는 소프트웨어로 구현되어야 함  

주체 | 설명
---|---
설계자 | 언어의 문법과 의미론 및 새로운 개념을 정의함
구현자 | 언어가 실제로 실행될 수 있도록 컴파일러, 인터프리터, 가상 환경 등을 개발함
사용자 | 언어를 사용하여 소프트웨어를 개발함

**언어 명세**
- 문법
- 의미론
- 타입 시스템
- AST 명세

**언어 도구**
- 렉서
- 파서
- 컴파일러
- 인터프리터
- 어셈블러

**런타임 환경**
- 가상 머신
- 메모리 관리
- 표준 라이브러리