---
order: 1
title: Framework
description: 스프링 프로젝트
summary:
keywords:
- java framework
- spring projects
tags:
- framework
- java
created_time: 2025-04-07 04:36
modified_time: 2025-04-30 01:38
---

# Spring Projects  
: 웹, 시큐리티, 클라우드 등을 다양한 영역의 솔루션을 제공하는 종합적인 자바 생태계  
: 일부 프로젝트는 독립적인 프레임워크이며 일부는 다른 프로젝트와 함께 연동되어 작동함  
: 주로 자바 언어를 지원하나 코틀린, 그루비 등 JVM 기반 언어도 공식적으로 지원함  

https://spring.io/projects  
https://github.com/spring-projects  


**우산형 프로젝트**  
: 공통 목표를 가진 여러 프로젝트나 모듈을 포괄하는 상위 프로젝트를 의미함  
: 우산형 프로젝트는 자체적인 릴리스 주기와 버전 관리를 가지며 다양한 하위 모듈을 포함함  

- [Spring Framework](./spring-framework.md)
- [Spring Boot](./spring-boot.md)
- [Spring Security](./spring-security.md)
- [Spring Batch](./spring-batch.md)
- [Spring Data](./spring-data.md)
- [Spring Integration](./spring-integration.md)
- [Spring Cloud](./spring-cloud.md)
- [Spring AI](./spring-ai.md)



## Spring Project Category

**웹**

프로젝트 | 설명
---|---
Spring Framework        | 스프링 프로젝트를 위한 핵심 모듈을 제공하는 프레임워크
Spring Boot             | 독립 실행형 애플리케이션 또는 마이크로서비스를 위한 프레임워크
Spring Web Flow         | 상태 기반 웹 애플리케이션의 데이터 흐름을 제어하기 위한 프레임워크
Spring Web Services     | 계약 기반 SOAP 웹 서비스 개발을 위한 프레임워크
Spring REST Docs        | RESTful 문서 생성을 위한 도구
Spring HATEOAS          | REST의 하이퍼미디어 링크 표현을 위한 라이브러리
Spring for GraphQL      | GraphQL 기반 애플리케이션을 위한 도구


**보안**

프로젝트 | 설명
---|---
Spring Security         | 애플리케이션 보안을 위한 인증과 권한을 제공하는 프레임워크
Spring Authorization Server | OAuth 2.1, OpenID Connect 1.0 인증 서버 구축을 위한 프레임워크
Spring Session          | 세션 관리를 위한 도구 및 프레임워크
Spring Vault            | [Vault](https://www.vaultproject.io/)를 사용한 비밀 관리를 위한 템플릿 제공   
Spring CredHub          | CredHub API에 대한 자바 라이브러리 제공


**데이터 및 메시징**

프로젝트 | 설명
---|---
Spring Data             | 여러 데이터 저장소에 통합적으로 접근하기 위한 프레임워크
Spring Batch            | 배치 애플리케이션 개발을 위한 프레임워크
Spring LDAP             | LDAP 프로그래밍 사용을 위한 프레임워크 
Spring Integration      | 스프링 프레임워크와 외부 시스템 통합(EAI)을 위한 메시징 프레임워크
Spring AMQP             | 메시지 지향 미들웨어(MOM)와 통합을 위한 AMQP 템플릿 제공
Spring for Apache Kafka | Apache Kafka 템플릿 제공
Spring for Apache Pulsar| Apache Pulsar 사용을 위한 템플릿 제공


**최신 기술**

프로젝트 | 설명
---|---
Spring Cloud            | 분산 시스템 구축을 위한 프레임워크
Spring Cloud Data Flow  | 배치 및 스트리밍 데이터 파이프라인 구축을 위한 오케스트레이션 도구
Spring Modulith         | 스프링 기반 애플리케이션의 명확한 모듈 경계를 정의하고 관리하는 도구
Spring AI               | AI를 스프링 애플리케이션에 쉽게 통합하기 위한 도구


**도구 및 유틸리티**

프로젝트 | 설명
---|---
Spring CLI              | 스프링 애플리케이션을 효율적으로 관리하고 실행하기 위한 도구
Spring Shell            | 커맨드라인 애플리케이션 개발을 위한 도구
Spring Flo              | 파이프라인과 그래프를 위한 HTML5 비주얼 빌더 제공
Spring Statemachine     | state machine 개발을 위한 프레임워크