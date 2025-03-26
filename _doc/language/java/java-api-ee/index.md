---
order: 4
title: java
description: 자바 엔터프라이즈 에디션
summary:
keywords:
- java
- java api
- java enterprise edition
- jakarta ee
- microprofile
tags:
- java
created_time: 2024-10-07 06:21
modified_time: 2025-03-26 22:28
---

# Java EE
: 자바 엔터프라이즈 애플리케이션 개발을 위한 표준 사양  
: 대규모 동시 접속, 분산 시스템, 트랜잭션 관리 등 엔터프라이즈 애플리케이션 개발을 위한 스펙 제공  
: Java EE는 스펙만 정의하며 이를 구현한 서드파티 애플리케이션 서버를 통해 사용함  

- [Jakarta EE Architecture](#jakarta-ee-architecture)
- [Jakarta EE Application](#jakarta-ee-architecture)
  - [Jakarta EE Spec](#jakarta-ee-spec)
- [Jakarta EE Implementation](#jakarta-ee-implementation)
- [MicroProfile](#microprofile)


**Jakarta EE**  
: Java EE 소유권이 Eclipse Foundation으로 이전되며 Jakarta EE로 명칭이 변경됨  
: Jakarta EE는 클라우드 네이티브와 마이크로서비스 환경 지원을 강화함  

**JESP**  
: Jakarta EE Specification Process  
: Jakarta EE 사양 프로세스  

**Jakarta EE Version**
- https://jakarta.ee/specifications/platform/10/
- https://jakarta.ee/specifications/platform/11/


**history**  
> J2SE 1.2 일부 => J2EE => Java EE => Jakarta EE 

```
초기에는 J2SE 1.2 일부로 정의되었으나 2-tier 모델에서 3-tier 모델로 변화하며 
데이터베이스 연동, 트랜잭션 관리 등의 기술이 필요해졌고 이를 위해 벤더사에서 구현해야 할 스펙을 정의한 것이 초기 J2EE
```



## Jakarta EE Architecture
: 엔터프라이즈 애플리케이션 개발을 위한 표준화된 아키텍처  
: Jakarta EE는 아키텍처의 각 계층을 기반으로 구체적인 기술과 스펙을 정의함  

```
Client Tier  |   Middle Tier   |  EIS Tier (Enterprise Information System)
```


### Client Tier
= 프레젠테이션 티어  
: 사용자 인터페이스를 담당하는 티어  
: 사용자의 요청을 받아 애플리케이션 서버에 보내고 응답을 받아 사용자에게 전달함  


### Middle Tier
= 애플리케이션 티어, 비즈니스 로직 티어, 데이터 접근 티어  
: 애플리케이션의 비즈니스 로직을 처리하는 티어로 웹 계층과 비즈니스 계층으로 나뉠 수 있음  

**Web Tier**  
: 클라이언트 요청을 받아 비즈니스 계층으로 전달하고 결과를 받아 응답을 반환함  
: Servlet, JSP, JSTL, JSF 등 기술이 사용됨  

**Business Tier**  
: 요청에 따라 비즈니스 로직을 처리하고 응답을 생성함  
: 필요시 EIS 계층에 데이터를 요청하거나 데이터를 전달함  
: CDI, EJB, JPA 등 기술이 사용됨  


### EIS Tier
= 데이터 티어, 퍼시스턴스 티어  
: 엔터프라이즈 정보 시스템과 상호작용 하는 티어  
: 데이터베이스나 ERP 같은 정보 시스템과 통신해 데이터를 처리하고 관리함  
: JDBC, JPA, JTA, JCA 등 기술이 사용됨  



## Jakarta EE Application
: Jakarta EE 모듈로 구성되고 Jakarta EE 컨테이너에서 실행되는 애플리케이션  
: 하나 이상 모듈로 구성되며 하나 이상의 컨테이에서 실행될 수 있음  

```
Application = Module + Module (Component + Component)
```

**구성 요소**

요소 | 설명
---|---
Spec      | Jakarta EE API 기술 사양과 인터페이스 정의
Container | Jakarta EE 애플리케이션을 실행하고 관리하는 환경
DD File   | Jakarta EE 애플리케이션의 구성 및 배포 정보를 담고 있는 파일
Module    | Jakarta EE 애플리케이션을 구성하는 기본 단위


**EAR** (Enterprise Application Archive)  
: Jakarta EE 애플리케이션을 배포할 수 있게 하나로 패키징하는 표준 방식  
: 애플리케이션을 구성하는 여러 모듈, 설정 파일, 메타데이터 정보를 포함하여 하나의 단위로 관리함  

```bash
example.ear
├── web-module.war
├── ejb-module.jar
└── META-INF
    ├── application.xml  # 설정 파일 (옵션)
    └── MANIFEST.MF      # 메타데이터 정보
```



### Jakarta EE Spec
: Jakarta EE는 스펙을 Core Profile, Web Profile, Full Platform로 분류해 제공함  
: 상위 프로파일은 하위 프로파일의 모든 기능을 포함하고 추가 기능을 제공함  

**profile**  
: 특정한 환경, 요구 사항, 목표를 위해 선택된 기능 집합을 의미  

> Full Platform > Web Profile > Core Profile


**Core Profile**  
: Jakarta EE 10부터 도입  
: 클라우드 네이티브 및 마이크로서비스 환경에서 개발하기 위한 최소 스펙 집합  
: 가장 경량화된 프로파일로 마이크로서비스 환경에 사용하기 적합  

- Jakarta Annotations
- Jakarta Expression Language
- Jakarta CDI Lite
- Jakarta JSON
- Jakarta JSON Binding
- Jakarta JSON Processing
- Jakarta REST


**Web Profile**  
: 웹 애플리케이션 개발에 필요한 스펙 집합  
: 웹 애플리케이션을 위한 핵심 기술들로 구성됨  

- Jakarta Annotations
- Jakarta Expression Language
- Jakarta Servlet
- Jakarta CDI Full
- Jakarta Persistence
- Jakarta Validation
- Jakarta Security
- Jakarta Enterprise Beans Lite
- Jakarta Server Pages
- Jakarta Faces
- Jakarta WebSocket
- Jakarta Transactions


**Full Platform**  
: 엔터프라이즈 애플리케이션 개발에 필요한 스펙 집합  
: 엔터프라이즈 애플리케이션 개발을 위한 포괄적인 솔루션을 제공함  

- Jakarta Activation
- Jakarta Authentication
- Jakarta Authorization
- Jakarta Connectors
- Jakarta Enterprise Beans
- Jakarta Mail
- Jakarta Messaging
- Jakarta Batch
- Jakarta Transactions
- Jakarta EE Management
- Jakarta XML Binding
- Jakarta XML Web Services



### Jakarta EE Container
: Jakarta EE 컴포넌트와 모듈을 실행하고 생명주기를 관리하는 런타임 환경  
: 배포 설명자를 통해 다양한 구성을 관리하나 최근에는 어노테이션을 통해 관리함  

컨테이너 | 배포 설명자 | 설명
---|---|---
Web (Servlet) Container      | web.xml | JSP 컴파일, Servlet 실행 및 관리
Enterprise Bean Container    | ejb-jar.xml | EJB 실행 및 관리
Application Client Container | application-client.xml | Java SE 애플리케이션 실행
Connector Container          | ra.xml | 외부 시스템과의 연결을 관리



### Jakarta EE Module
: Jakarta EE 애플리케이션을 구성하는 요소로 애플리케이션은 하나 이상 모듈로 구성됨  
: Jakarta EE 모듈은 특정 역할이나 기능을 수행하며 독립적으로 배포 가능한 단위  
: Jakarta EE 모듈은 하나 이상 컴포넌트로 구성되며 특정 Jakarta EE 컨테이너에서 실행됨  
: 하나의 모듈이 하나의 컨테이너에서 실행되거나 여러 모듈이 하나의 컨테이너에서 실행될 수 있음  

모듈 | 패키징 | 설명
---|---|---
Web Module | .war | Servlet, JSP 등 웹 컴포넌트로 구성
EJB Module | .jar | 엔터프라이즈 자바 빈즈로 구성
Application Client Module | .jar | Java SE 컴포넌트로 구성



#### Jakarta EE Component
: 실제로 기능을 수행하는 구체적인 코드 단위  
: 컴포넌트는 독립적으로 개발, 테스트, 배포가 가능하며 모듈을 구성함  

컴포넌트 | 설명
---|---
Web Component             | HTTP 요청 처리, UI 제공
Enterprise Bean Component | 비즈니스 로직 처리, 트랜잭션 관리, 보안 관리
Application Client        | Jakarta EE API에 접근하는 Java SE 애플리케이션
Connector Component       | 외부 시스템과 연결하고 관리하기 위한 어댑터



## Jakarta EE Implementation
: Jakarta EE는 스펙을 정의할 뿐 실제 구현은 벤더사에서 수행함  
: 벤더사는 표준을 준수하면서 자체적인 최적화를 제공함  
: 구현체는 Jakarta EE의 호환성 인증(TCK)을 통과해야 서비스로 제공 가능함  

**Core Profile**

구현체 | 특징
---|---
Piranha Cloud | 최소한의 Jakarta EE 기능을 지원하는 경량 마이크로서비스 런타임


**Servlet Container**  
: Jakarta Servlet 스펙을 구현하며 HTTP 요청 처리를 위한 특화된 런타임 환경  

구현체 | 특징
---|---
Apache Tomcat | 소규모 애플리케이션이나 테스트를 위한 경량 서블릿 컨테이너
Jetty    | 최소한의 리소스로 동작하며 임베디드 서버에 최적화됨
Undertow | 고성능 논블로킹 웹 서버로 WildFly의 서블릿 컨테이너


**Web Profile**

구현체 | 특징
---|---
Apache TomEE  | Tomcat을 기반으로 Full Web Profile 스펙을 구현함
Open Liberty  | 클라우드 네이티브를 위한 경량 런타임
Payara Server | GlassFish를 오픈소스로 포크한 구현체


**Full Platform**
- WildFly
- GlassFish
- WebSphere Server
- Open Liberty
- Payara Server
- Resin



## MicroProfile
: Java EE의 느린 버전 업데이트로 새로운 기술이나 패러다임에 대한 스펙이 미진하여 <br>여러 벤더사에서 이에 대응하기 위해 Java EE 표준을 기반으로 스펙을 확장하거나 추가하는 프로젝트  
: 주로 마이크로서비스와 클라우드 네이티브 개발을 위한 스펙을 정의하고 기술 및 도구를 제공함  
: Jakarta EE와 상호 보완적 관계로 MicroProfile의 일부 스펙이 Jakarta EE에 통합됨  

```
MicroProfile 프로젝트는 현재 이클립스 재단에서 관리하나 Jakarta EE와 분리되어 운영됨
MicroProfile는 혁신적이고 실험적인 기술을 빠르게 도입하여 Jakarta EE의 표준을 보완하는 역할을 함
```


**API**
- MicroProfile Config
- MicroProfile Context Propagation
- MicroProfile JWT
- MicroProfile Security
- MicroProfile REST Client
- MicroProfile GraphQL
- MicroProfile OpenAPI
- MicroProfile OpenTracing
- MicroProfile Metrics
- MicroProfile Health
- MicroProfile Fault Tolerance
- MicroProfile Reactive Messaging
- MicroProfile Reactive Streams Operators


**Implementations**  
: MicroProfile 프로젝트에서 만든 구현체  

구현 | 특징
---|---
Open Liberty  | 클라우드 네이티브 환경을 지원하는 모듈형 런타임 (Jakarta EE 스펙 지원)
Payara Micro  | Jakarta EE 기반 경량 마이크로서비스/임베디드 서버
Apache TomEE  | 최소한의 리소스로 엔터프라이즈 기능 제공하는 런타임
Thorntail     | 경량 마이크로서비스 런타임
KumuluzEE     | 경량 마이크로서비스 프레임워크


**Support**  
: MicroProfile API를 지원하는 도구  

도구 | 특징
---|---
Quarkus       | 네이티브 프레임워크
Helidon       | 마이크로서비스 프레임워크 
Micronaut     | 클라우드 네이티브 프레임워크


**MicroProfile Starter**  
: MicroProfile 기반 프로젝트를 생성할 수 있는 웹 기반 도구  

https://start.microprofile.io