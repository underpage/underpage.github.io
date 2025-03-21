---
order: 1
title: Programming
description: 프로그래밍 언어 개념과 분류
summary:
keywords:
- programming
- programming language
- language implementation
- language classification
- syntax
tags:
- program
created_time: 2024-09-12 06:36
modified_time: 2025-03-21 22:43
---

# Programming Language
: 프로그램을 작성하기 위해 특정 규칙을 따르는 구문(Syntax)과 의미론(Semantics)  
: 사용자와 컴퓨터 간 의사소통을 위한 도구로 사용자의 의도를 전달할 수 있도록 문법과 규칙을 제공함  
: 프로그래밍 언어는 특정 문제 해결이나 패러다임을 지원하기 위해 설계되어 고유한 철학을 가짐  
: 이러한 철학은 특정 문제에 어떤 언어가 적합한지를 나타내며 문법, 에코시스템 등 전반에 영향을 미침  

- [언어 개념](./concept/index.md)
- [언어 구문](./syntax/index.md)
- [언어 구현](#programming-language-implementation)
- [언어 분류](#programming-language-classification)
- [언어 패러다임](../paradigm/index.md)



## Programming Language Classification
: 프로그래밍 언어는 추상화 수준, 실행 방식, 패러다임, 사용 목적 등 다양한 기준으로 분류됨  
: 언어는 특정 요구 사항과 목적을 위해 만들어지고 시간이 지나면서 다른 패러다임을 받아들이고 기능이 확장됨  
: 때문에 언어는 하나의 분류에 속하는게 아니라 다중 분류를 가짐  

> 저수준 언어 > 고수준 언어 > 시각적 언어


```
초기 프로그래밍은 기계어를 사용했으나 기계어를 직접 작성하기 어려워 어셈블리 언어가 개발됨
어셈블리 언어는 어셈블러를 통해 한 번에 한 줄씩 기계어로 변환됨 (인터프리터와 다름)

1950년대 전체 소스 코드를 한 번에 기계어로 변환하는 컴파일러가 등장
컴파일러는 작업 속도는 빠르지만 프로그램이 수정되면 컴파일 과정을 다시 거쳐야하는 단점이 존재

1960년대 소스 코드를 한 줄씩 해석하고 즉시 실행하는 인터프리터가 개발됨
```

**프로그래밍 언어**
- **[저수준 언어](./low-level-language.md)**
  - 기계어
  - 어셈블리어
- **[고수준 언어](./high-level-language.md)**
  - 실행 방식
    - 컴파일 언어
    - 인터프리터 언어
    - 스크립트 언어
    - 트랜스파일 언어
    - 하이브리드 언어
    - 임베디드 언어
  - 타입 시스템
    - 정적 언어/동적 언어
    - 강타입 언어/약타입 언어
    - 타입 선언 언어/타입 추론 언어
  - 패러다임
    - 명령형 언어
      - 절차적 언어  
      - 객체 지향형 언어
      - 이벤트 기반 언어
    - 선언형 언어
      - 논리형 언어 
      - 함수형 언어
      - 반응형 언어
    - 동시성 언어
      - 동시 병행 언어
      - 분산형 언어
  - 플랫폼 의존성
    - 플랫폼 독립 언어
    - 플랫폼 의존 언어
  - 특수 목적 언어
    - [도메인 특화 언어](./domain-specific-language.md)
    - [마크업 언어](./markup-language.md)
    - [계약 지향 언어](./contract-oriented-language.md)
    - [글루 언어](./glue-language.md)
    - 에소테릭 언어
- [시각적 언어](./visual-language.md)

**명세 언어**
- [메타 언어](./specification-language.md#meta-language)
- [스키마 언어](./specification-language.md#schema-language)

```
프로그래밍 언어는 데이터를 변환하는 반면
마크업 언어는 데이터를 표현하므로 마크업 언어가 프로그래밍 언어의 하위 집합에 속하지는 않음
```


**프로그래밍 언어 분류**   
https://en.wikipedia.org/wiki/Timeline_of_programming_languages  
https://en.wikipedia.org/wiki/List_of_programming_languages_by_type  