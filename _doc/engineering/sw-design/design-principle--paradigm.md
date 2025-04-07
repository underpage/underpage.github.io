---
order: 1.2
title: software engineering
description: 소프트웨어 디자인 원칙
summary:
keywords:
- software engineering
- software design principle
- 소프트웨어 디자인 원칙
tags:
- software engineering
created_time: 2024-10-09 05:43
modified_time: 2025-01-16 11:55
---

# Paradigm-Based Design Principle
: 특정 프로그래밍 패러다임 특징에 기반해 적용되는 설계 원칙  

- [절차적 프로그래밍 원칙](#procedural-programming-principles)
- [객체지향 프로그래밍 원칙](#object-oriented-programming-principles)
  - [RDD](#rdd)
  - [SOLID](#solid)
  - [GRASP](#grasp)
- [함수형 프로그래밍 원칙](#functional-programming-principles)



## Procedural Programming Principles
: 절차적 프로그래밍 원칙은 프로그램이 순차적으로 실행되는 흐름에 초점을 둠  
: 기능을 순차적인 단계로 나누고 제어 흐름을 명확하게 하여 가독성과 유지보수성을 높임  

- 기능은 모듈 단위로 분리되어야 함
- 코드 흐름이 논리적이고 순차성을 유지해야 함
- 상태 변화가 함수 호출로 이루어지도록 제어해 상태를 명확하게 관리해야 함 



## Object-Oriented Programming Principles
: 클래스와 객체를 기반으로 캡슐화, 상속, 다형성 등을 활용함  


### RDD
Responsibility Driven Design
: 현실 세계의 문제를 책임을 기준으로 객체로 변환해 객체의 역할과 상호작용을 정의  
: 객체는 서로 독립적이면서 자신의 책임을 다하고 객체 간 협력해야 함  



### SOLID
: 객체지향 프로그래밍의 5가지 기본 설계 원칙  
: 클래스나 모듈이 유지보수성과 확장성을 갖도록 하는 구체적인 규칙


**단일 책임 원칙**  
: Single Responsibility Principle  
: 클래스에 명확한 단일 책임만 부여하고 클래스는 자신에게 정의된 기능에만 집중하고 책임지는 설계 원칙  


**개방-폐쇄 원칙**  
: Open Closed Principle  
: 확장을 위해서는 개방되고, 변경을 위해서는 폐쇄되는 설계 원칙  
: 기능을 쉽게 확장할 수 있지만 확장한 기능이 다른 기능에 영향을 미치지 않게 함  


**리스코프 대체 원리**  
: Liskov Substitution Principle   
: 상속 관계인 하위 타입이 상위 타입의 조건-규약을 지키며 상위 타입을 치환-대체가 가능해야하는 설계 원칙     
: 상위 타입의 규약을 지킬 수 없다면 별개 타입으로 구현해야 함   


**인터페이스 분리 원칙**  
: Interface Segregation Principle  
: 모든 기능을 하나의 인터페이스에 포함하지 말고 기능에 따라 여러 인터페이스로 분리하는 설계 원칙   


**의존성 역전 원칙**  
: Dependency Inversion Principle  
: 추상 클래스나 인터페이스를 통해 객체를 느슨하게 결합하는 설계 원칙  
: 객체나 모듈은 추상 클래스나 인터페이스에 의존해 변화에 따른 영향을 최소화함  

```
상위 계층 -- 정책 결정
하위 계층 -- 세부 사항  
```



### GRASP
General Responsibility Assignment Software Principles  
: 객체 간 책임을 할당하고 역할을 명확히하는 설계 원칙 

- 정보 전문가 : 책임을 수행할 정보를 가진 클래스에 책임을 할당
- 창조자 : 객체를 생성하는 책임이 있는 객체
- 컨트롤러 : 시스템 이벤트를 처리하는 객체
- 낮은 결합도 : 객체 간 의존성 최소화
- 높은 응집도 : 객체는 명확하고 관련되는 책임만 가짐
- 간접 참조 : 중간 객체를 통해 결합도를 감소함
- 다형성 : 타입에 따른 변화는 다형성으로 처리함
- 변화 보호 : 변화 가능성이 있는 부분을 캡슐화함



## Functional Programming Principles
: 함수형 프로그래밍 원칙이란 순수 함수성과 불변성을 강조하는 설계 원칙  
: 순수 함수성이란 함수는 동일한 입력에 대해 항상 동일한 출력을 하고 외부 상태를 변경하지 않음  
: 불변성이란 데이터가 변경되지 않으며 변경된다면 새로운 데이터를 생성함  