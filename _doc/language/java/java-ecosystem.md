---
order: 6
title: java
description: 자바 에코시스템
summary:
keywords:
- java
- java ecosystem
- framework
- tool
tags:
- language
- java
- tool
created_time: 2024-10-07 06:11
modified_time: 2025-01-19 17:19
---

# Java Ecosystem
: 자바 애플리케이션을 개발, 배포, 유지보수하기 위한 도구, 라이브러리, 프레임워크 집합  

- [Java Application Server](#java-application-server)
- [Java Library](#java-library)
- [Java Template Engine](#java-template-engine)
- Java Frameworks
  - [Java DI Framework](#java-di-framework)
  - [Java Web Framework](#java-web-framework)
  - [Java Security Framework](#java-security-framework)
  - [Java Microservices Framework](#java-microservices-framework)
  - [Java Concurrency Framework](#java-concurrency-framework)
  - [Java Persistence Framework](#java-persistence-framework)
  - [Java Logging Framework](#java-logging-framework)
  - [Java Testing Framework](#java-testing-framework)
- Java Development Tools
  - [Java Build Tool](#java-build-tool)
  - [Java Document Tool](#java-document-tool)
  - [Java Monitoring Tool](#java-monitoring-tool)
  - [Java Code Quality Tool](#java-code-quality-tool)



## Java Application Server

- Tomcat
- Jetty
- WildFly
- GlassFish
- WebSphere
- WebLogic



## Java Library

**Apache Commons Collections**  
: Java Collections Framework를 확장해 여러 유용한 컬렉션 클래스와 메서드를 제공  

**Eclipse Collections**  
: Eclipse 재단에서 제공하는 컬렉션 라이브러리  
: Java Collections Framework를 확장해 추가 기능과 성능 최적화를 제공  

**Guava**  
: Java Collections Framework를 확장해 추가 컬렉션 타입과 유틸리티 메서드를 제공  



## Java Template Engine
: 정적 문서에 데이터를 삽입해 클라이언트에 전달할 최종 문서를 생성하는 시스템  

**text**   
- Thymeleaf
- Freemarker
- Velocity
- Java Server Pages
- Handlebars
- StrSubstitutor

**layout**  
- Tiles
- SiteMesh

**logic-less**   
- Mustache


## Java Frameworks

- [Java DI Framework](#java-di-framework)
- [Java Web Framework](#java-web-framework)
- [Java Security Framework](#java-security-framework)
- [Java Microservices Framework](#java-microservices-framework)
- [Java Concurrency Framework](#java-concurrency-framework)
- [Java Persistence Framework](#java-persistence-framework)
- [Java Logging Framework](#java-logging-framework)
- [Java Testing Framework](#java-testing-framework)


### Java DI Framework

- Java EE CDI
- Spring DI Container
- Google Guice
- Pico Container
- Seasar


### Java Web Framework

- Spring MVC
- Spring Boot
- Micronaut
- Quarkus
- Play
- Vert.X
- OpenLiberty
- Vaadin
- Wicket
- Hilla


### Java Security Framework

- Spring Security
- Apache Shiro


### Java Microservices Framework

- Spring Boot
- Micronaut 
- Quarkus
- Dropwizard
- Helidon


### Java Concurrency Framework

- Akka
- Disruptor
- RxJava


### Java Persistence Framework

- MyBatis
- Hibernate
- EclipseLink


### Java Logging Framework

**interface**  
: Logging Wrapper, Logging Facade  
: 로깅 관련 추상 레이어  
: 로깅 프레임워크 위에서 작동하는 인터페이스  

- Aapache Commons Logging
- SLF4J (Simple Logging Facade for Java)


**implementation**  
: Logging Wrapper 구현체  

- Log4j2
- Logback
- Tinylog
- Logbook


### Java Testing Framework

- JUnit
- TestNG
- Mockito
- JMeter
- EasyMock
- Powermock
- JBehave



## Java Development Tools

- [Java Build Tool](#java-build-tool)
- [Java Document Tool](#java-document-tool)
- [Java Monitoring Tool](#java-monitoring-tool)
- [Java Code Quality Tool](#java-code-quality-tool)


### Java Build Tool

- Maven
- Gradle


### Java Document Tool

- Javadoc
- OpenAPI (Swagger)


### Java Monitoring Tool

- JProfiler
- VisualVM


### Java Code Quality Tool

- SonarQube
- Checkstyle
- PMD


### Java Static Analysis Tool

- DeepSource
- SpotBugs