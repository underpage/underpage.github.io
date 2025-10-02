---
order: 8
title: Framework
description: 프레임워크 (인덱스)
summary: 소프트웨어 개발을 위한 기본 구조와 기능을 제공하는 프레임워크에 대한 정의와 프레임워크 분류, 유형 등에 대한 개요
keywords:
- framework
- framework classification
- opinionated
- unopinionated
tags:
- framework
- index
created_time: 2025-10-02 04:25
modified_time: 2025-10-02 04:52
---

# Framework
: 소프트웨어 개발을 위해 기본 구조, 설정, 기능 등을 제공하는 도구  
: 프레임워크는 아키텍처 원칙을 반영하고 다양한 아키텍처 스타일이나 디자인 패턴을 구현하고 특정 도메인에 대한 요구 사항이나 코딩 관행 등 다양한 요소를 종합해 만들어짐  
: 검증된 기능을 재사용함으로써 개발 생산성과 품질을 향상하는데 의의를 둠  

- [프레임워크 분류](#framework-classification) (외부적/응용적 특성)
- [프레임워크 유형](./framework-type.md) (내부적/구조적 본질)
- [프레임워크 원칙](./framework-principle.md)
- [프레임워크 설계](./framework-design.md)
- [프레임워크 구현 기술](./framework-implementation.md)


**framework vs library**  
: 프레임워크는 애플리케이션의 전체적인 구조와 흐름을 제어함  
: 라이브러리는 특정 기능을 수행하는 도구로 개발자가 호출해 사용하며 제어의 흐름을 결정함  

**framework vs software vs system**  
: 프레임워크는 소프트웨어 개발을 위한 기본 구조와 도구를 제공  
: 소프트웨어는 특정 작업을 수행하기 위해 설계와 개발이 완료된 프로그램  
: 시스템은 특정 기능을 수행하기 위해 하드웨어, 소프트웨어, 데이터 등이 상호작용하는 완성된 환경  
: 시스템은 문제를 해결하기 위해 완전한 솔루션을 제공하고 사용자는 시스템을 통해 정해진 기능을 활용함  


**히스토리**
```
~ 1990년 초반  단순한 유틸리티성 라이브러리를 사용해 코드를 재사용함
~ 2000년 초반  엔터프라이즈 애플리케이션 개발이 증가하며 이를 위해 표준화된 개발 패턴이 도입됨
              디자인 패턴이 보편화되고 이를 기반으로 하는 프레임워크들이 등장

~ 2010년 초반  웹 기술의 발전으로 웹 애플리케이션 수요가 급증하며 웹 프레임워크가 발전함
              RESTful 아키텍처 스타일이 유행하며 이를 기반으로 한 프레임워크들이 등장

2010년 ~ 현재  클라우드 컴퓨팅으로 패러다임이 바뀌며 이를 위한 분산 아키텍처 프레임워크가 발전함
```



## Framework Classification
: 프레임워크는 특성에 따라 분류되며 하나의 프레임워크는 여러 분류에 속함  


**프로그래밍 패러다임**
- Object-oriented
- Functional
- Reactive
- Event-driven

**아키텍처 패턴**
- MVC
- MVVM
- MVP 

**아키텍처 스타일**
- Monolithic
- Microservices

**규모**
- Full-stack
- Micro

**영역별**
- Web
- Mobile
- Desktop
- Embedded

**기능별**
- UI/UX Framework
- ORM Framework
- Testing Framework
- Logging Framework
- Security Framework
- Data Processing Framework