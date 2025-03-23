---
order: 5
title: Programming
description: 명세 언어
summary:
keywords:
- programming language
- specification language
- meta language
- schema language
- idl
tags:
- program
- language
created_time: 2024-10-28 03:43
modified_time: 2025-03-23 21:12
---

# Specification Language
= Definition Language  
: 명세 언어란 시스템, 다른 언어, 데이터 구조의 동작이나 구조를 정의하는 언어  
: 프로그래밍 언어나 데이터 구조를 설명하기 위해 사용되는 도구에 가까움  
: 명세 언어는 설계나 동작을 표현하므로 명확하고 모호하지 않아야 함

- [메타 언어](#meta-language)
- [스키마 언어](#schema-language)
- [인터페이스 정의 언어](#interface-definition-language)
- 형식 명세 언어
- 행동 명세 언어



## Meta Language
: 프로그래밍 언어를 정의하거나 설명하는데 사용되는 언어  
: 프로그램을 생성하기 위한 문법, 구문, 어휘 등 의미론을 정의하기 위해 사용됨  
: 또는 프로그래밍 언어 자기 자신을 수정하거나 확장하는 언어를 의미함  

**종류**
- 정규 표현식
- 구문 정의 언어

```
정규 표현식은 텍스트 패턴을 설명하고 정의하므로 메타 언어로 분류될 수 있음  
```



### Syntax Definition Language
: 구문 정의 언어란 다른 언어를 정의하거나 설명하는데 사용되는 언어

**BNF** (Backus-Naur Form)  
: 프로그래밍 언어의 문법을 표현하기 위해 사용되는 메타 언어 또는 표기법  
: 언어, 명령어, 프로토콜 등의 형식을 정의함  

**EBNF** (Extended BNF)  
: BNF의 확장으로 더 많은 기호와 규칙을 추가해 더욱 간결하고 명확하게 문법을 표현함

**ABNF** (Augmented BNF)  
: BNF의 또 다른 확장으로 주로 인터펫 프로토콜을 정의하기 위해 사용됨  



## Schema Language
: 데이터베이스나 정보 시스템에서 데이터의 구조를 정의하는 언어  
: 데이터의 형식, 제약조건, 관계 등을 명시하고 데이터 검증이나 규칙을 설정함  

**종류**
- XML Schema
- JSON Schema
- Database Schema Languages (SQL DDL)
- DTD (Document Type Definition)
- Swagger Schema



## Interface Definition Language
: 인터페이스 정의 언어는 소프트웨어 시스템 간 상호작용을 정의하기 위해 언어  

**종류**
- CORBA IDL
- Microsoft IDL
- WebIDL
- Thrift