---
order: 10
title: Java
description: 자바 에코시스템
summary:
keywords:
- java
- java ecosystem
- framework
- tool
tags:
- java
- tool
created_time: 2025-04-07 04:36
modified_time: 2025-09-26 15:38
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
  - [Java AI Framework](#java-ai-framework)
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
- Undertow
- WildFly
- GlassFish



## Java Library

**Apache Commons Collections**  
: Java Collections Framework 확장으로 여러 유용한 컬렉션 클래스와 메소드 제공  

**Eclipse Collections**  
: Eclipse 재단에서 제공하는 컬렉션 라이브러리  
: Java Collections Framework를 확장해 추가 기능 및 성능 최적화 제공  

**Guava**  
: Java Collections Framework 확장으로 추가 컬렉션 타입과 유틸리티 메소드 제공  



## Java Template Engine
: 정적 문서에 데이터를 삽입해 동적 콘텐츠를 생성하는 시스템  

- Thymeleaf
- Freemarker
- Mustache
- Pebble
- Java Server Pages 



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

- Jakarta EE CDI
- Spring DI Container
- Google Guice
- Micronaut DI


### Java Web Framework

- Spring MVC
- Spring Boot
- Micronaut
- Quarkus
- Helidon
- Play
- Vert.X
- Vaadin
- Hilla
- OpenLiberty


### Java Security Framework

- Spring Security
- Apache Shiro


### Java Microservices Framework

- Spring Boot
- Micronaut
- Quarkus
- Helidon
- Dropwizard


### Java Concurrency Framework

- Spring WebFlux
- RxJava
- Akka
- LMAX Disruptor


### Java Persistence Framework

- MyBatis
- Hibernate
- EclipseLink


## Java AI Framework

**Native**  
: 인공지능 알고리즘을 Java로 구현한 라이브러리    

- Tribuo: 머신러닝용 자바 라이브러리
- Smile
- Weka
- MOA
- DeepLearning4J
- ND4J
- EJML
- Apache Commons Math


**Interoperability**  
: 서로 다른 언어나 플랫폼 간 연동을 통해 같이 동작하는 방식을 의미함  
: Java에서 사용 가능한 인공지능 라이브러리  

- GraalVM Python: GraalVM 위에서 파이썬 실행
- Java Embedded Python: 파이썬 코드 임베드
- Py4J
- OpenNLP
- Stanford CoreNLP
- ImageJ
- OpenCV Java
- LangChain4j
- Ollama4j


**Hybrid**  
: Java API를 제공하며 실행은 네이티브 엔진(PyTorch, TensorFlow)에 위임하는 방식  
: 자바 생태계와 최신 인공지능 기술 활용이 가능함  

- Deep Java Library (DJL)
- TensorFlow Java



### Java Logging Framework

**interface**  
: Logging Wrapper, Logging Facade  
: 로깅 관련 추상 레이어  
: 로깅 프레임워크 위에서 작동하는 인터페이스  

- SLF4J (Simple Logging Facade for Java)


**implementation**  
: Logging Wrapper 구현체  

- Log4j2
- Logback


### Java Testing Framework

- JUnit
- TestNG
- Mockito
- Spring Boot Test



## Java Development Tools

- [Java Build Tool](#java-build-tool)
- [Java Document Tool](#java-document-tool)
- [Java Monitoring Tool](#java-monitoring-tool)
- [Java Code Quality Tool](#java-code-quality-tool)


### Java Build Tool

- Maven
- Gradle
- Bazel


### Java Document Tool

- Javadoc
- OpenAPI (Swagger)
- Spring REST Docs


### Java Monitoring Tool

- JProfiler
- VisualVM
- Micrometer


### Java Code Quality Tool

- SonarQube
- SpotBugs
- PMD
- Checkstyle
- DeepSource
- CodeQL