---
order: 7
title: framework
description: 프레임워크 (인덱스)
summary:
keywords:
- framework
- framework classification
- opinionated
- unopinionated
tags:
- index
- framework
created_time: 2024-10-05 06:58
modified_time: 2025-02-01 02:00
---

# Framework
: 소프트웨어 개발을 위해 기본 구조와 기능 등을 제공하는 도구  
: 프레임워크는 아키텍처 원칙을 반영하고 다양한 아키텍처 스타일이나 디자인 패턴을 구현하고 특정 도메인에 대한 요구 사항이나 코딩 관행 등 다양한 요소를 종합해 만들어짐  
: 검증된 구조와 기능을 재사용함으로써 개발 생산성과 품질을 향상하는데 의의를 둠  

```
맥락에 따라 프레임워크는 소프트웨어 개발 과정을 체계화한 지식 체계를 의미하기도 함
```

- [Framework Classification](#framework-classification)
  - [Opinionated](#opinionated)
  - [Unopinionated](#unopinionated)
- [Framework Design](./framework-design.md)
- [Framework Principle](./framework-principle.md)


**framework vs library**  
: 프레임워크는 애플리케이션의 전체적인 구조와 흐름을 제어함  
: 라이브러리는 특정 기능을 수행하는 도구로 개발자가 호출하여 사용해 제어의 흐름을 결정함  

**framework vs software vs system**  
: 프레임워크는 소프트웨어 개발을 위한 기본 구조와 도구를 제공  
: 소프트웨어는 특정 작업을 수행하기 위해 설계와 개발이 완료된 프로그램  
: 시스템은 특정 기능을 수행하기 위해 하드웨어, 소프트웨어, 데이터 등이 상호작용하는 완성된 환경  
: 시스템은 문제를 해결하기 위해 완전한 솔루션을 제공하고 사용자는 시스템을 통해 정해진 기능을 활용함  


**history**
```
~ 1990년 초반 : 코드를 재사용하고 단순한 유틸리티성 라이브러리를 사용
~ 2000년 초반 : 엔터프라이즈 애플리케이션이 개발되기 시작하며 이를 위해 표준화된 개발 패턴이 도입
                다양한 디자인 패턴이 도입되고 이를 기반한 프레임워크들이 등장

~ 2010년 초반 : 웹 기술의 발전으로 웹 애플리케이션 수요가 급증하며 웹 프레임워크가 발전
                RESTful API 같은 기술이 유행하며 이를 기반으로 한 프레임워크들이 등장

2010년 ~ 현재 : 클라우드 컴퓨팅으로 패러다임이 바뀌며 이를 위한 분산 아키텍처 프레임워크가 발전 
```



## Framework Classification 
: 프레임워크는 특성에 따라 분류되며 하나의 프레임워크는 여러 분류에 속함  
: 크게는 Opinionated와 Unopinionated에 따라 프레임워크가 구분됨  

**접근 방식** 
- [Opinionated](#opinionated)
- [Unopinionated](#unopinionated)

**패러다임**
- Object-oriented
- Functional
- Reactive
- Event-driven

**아키텍처 패턴**
- MVC
- MVVM
- MVP 

**구현 방식**
- Monolithic
- Microservices

**규모**
- Full-stack
- Micro

**배포 방식**
- Server-side
- Client-side

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



### Opinionated
의견이 강한, 독선적 프레임워크  
: 특정 방식으로 코드를 작성하도록 엄격한 규칙과 구조를 제공하는 프레임워크  
: 규칙과 구조가 엄격하나 이를 통해 일관되고 신속한 개발이 가능함  
: 많은 사항들이 미리 결정되어 있어 규칙 습득이 필요하며 유연성이 떨어짐  

**invasive** (침투적)  
: Opinionated Framework가 갖는 특성  
: 프레임워크가 애플리케이션 코드에 깊이 관여해 애플리케이션이 프레임워크에 크게 의존  

**Convention over Configuration**  
: 미리 정의된 규칙과 패턴을 제공해 개발자가 설정을 거의 하지 않는 방식  
: ex. Ruby on Rails, Django, Spring Boot 등



### Unopinionated
의견이 적은, 비독선적 프레임워크  
: 강제성이 적고 사용자가 구조나 방식 등을 선택할 수 있는 프레임워크  
: 맞춤형 구조 구현이 가능하고 다른 프로젝트를 결합해 사용하는 등 유연성이 높음  
: 많은 설정을 사용자가 직접하며 규모가 클수록 전반적인 지식을 알아야 확장이 가능함  

**non-invasive** (비침투적)  
: Unopinionated Framework가 갖는 특성  
: 애플리케이션 코드가 프레임워크에 크게 의존하지 않음  

**Configuration First**  
: 개발자가 설정을 세부적으로 정의할 수 있도록 유연성을 제공하는 방식  
: ex. Express, Flask 등

**Library-based**  
: 라이브러리를 조합해 프로젝트를 구축하는 방식  
: ex. React 등



### Opinionated + Unopinionated
: Opinionated와 Unopinionated의 장점을 결합해 일관성과 유연성을 추구하는 프레임워크  
: 기본 구조와 규칙은 강제하지만 커스터마이징이 가능하도록 설계되어 확장성이나 유연성을 제공함  
: ex. Spring Boot, Nestjs  