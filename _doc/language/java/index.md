---
order: 1
title: Java
description: 자바 플랫폼
summary:
keywords:
- programming language
- java platform
- java
- jcp
- jsr
- jep
tags:
- java
- language
created_time: 2024-09-09 22:51
modified_time: 2025-03-04 23:02
---

# Java Platform
: 자바 프로그램 개발을 위한 프로그래밍 언어와 개발 도구 및 실행 환경(플랫폼)  

- [Java Platform](#java-platform)
  - [JDK](./jdk.md)
    - [JVM](./jvm.md)
    - [JVM Implementation](./jvm-implement.md)
- [Java Version](./java-version.md)
- [Java OpenJDK Project](./java-project.md)
  - [Java Module System](./java-module-system.md)
- [Java Program](./java-program.md)
  - [Java Program Execution](./java-program.md#java-program-execution)
  - [Java Compilation Process](./java-compilation-process.md)
- [Java Deployment](./java-deployment.md)
- [Java Programming Language](./java-lang/index.md)
- [Java SE API](./java-api-se/index.md)
- [Java EE API](./java-api-ee/index.md)
- [Java Standard Tool](./java-tool/index.md)
- [Java Ecosystem](./java-ecosystem.md)
  - [Java Framework](./java-framework/index.md)
  - [Java Library](./java-lib/index.md)


**history**  
```
1991년 Green 팀에서 기기 간 커뮤니케이션을 가능하게 해주는 기술 고려 (컨버전스, 네트워크, 분산, 보안) 
당시에는 제품마다 다른 CPU가 존재해 특정 CPU에 종속하지 않기 위해 가상 컴퓨터 개념 도입 (JVM, JRE)
이를 위해 C++를 확장하려 했으나 메모리 문제로 Oak라는 프로그래밍 언어를 만듬 (GC, 객체지향)
개발된 기술을 시연했으나 거래가 무산되며 초점을 웹에 맞추며 웹에 적합하게 구현한 Java 언어를 만듬

1995년  Java 1.0 공식 출시
1998년  다른 조직에서 표준화에 참여할 수 있도록 JCP를 설립
2006년  Sun이 Java를 오픈소스로 전환함 (OpenJDK 프로젝트)
2010년  Oracle이 Sun을 인수하여 Java 소유권 획득
2017년  Oracle이 Java EE를 Eclipse Foundation으로 이관
2019년  Java EE가 Jakarta EE로 변경됨
```



## Java Platform
: 자바 프로그램을 개발하고 실행하기 위한 표준 플랫폼  
: 자바 기술을 환경과 목적에 맞게 사용 및 확장하기 위해 여러 플랫폼으로 분리됨  

플랫폼 사양 | 특징 | 패키지
---|---|---
Java SE (Standard Edition)      | 핵심 기능, 범용 애플리케이션 | [JDK](./jdk.md)
Jakarta EE (Enterprise Edition) | 엔터프라이즈 애플리케이션 | Jakarta EE SDK
Java ME (Micro Edition)         | 모바일, 임베디드, IoT | Java ME SDK
Java ME Embedded                | 경량화된 Java ME | Java Embedded Suite
Java Card                       | 스마트카드 및 보안 장치 | Java Card SDK

```
1995년  Java 1.0 (Java SE)
1998년  대규모 환경에 적합한 기술이 필요해지며 이를 반영한 Java를 SE와 EE로 분리
1999년  모바일과 임베디드 장치가 대중화되며 이를 위해 Java ME 도입
         Java ME는 제한된 자원을 사용하는 장치에서 작동하기 위해 설계된 경량화 버전
```



## JCP
Java Community Process  
: 자바 관리 조직  
: 자바 플랫폼 버전 및 기술 사양을 제안/검토/승인하는 커뮤니티  
: Jakarta EE 경우 기술 사양은 Jakarta EE Working Group에서 검토  

**JESP**  
: Jakarta EE Specification Process  
: Jakarta EE 사양 프로세스  



### JSR
Java Specification Requests  
: 자바 스펙 요구서  
: 자바 플랫폼에 추가된 사양 및 기술에 대한 공식 문서  

JSR-ID  | 기술
---|---
384 | Java SE 11
392 | Java SE 17
397 | Java SE 22
901 | JLS (Java Language Specification)
924 | JVM
926 | Java 3D API
927 | Java TV API

**JSR list**  
https://www.jcp.org/en/jsr/all



### JEP
JDK Enhancement Proposal  
: 자바 플랫폼 기능 개선이나 변경 사항을 제안하는 공식 프로세스  
: 제안된 사항의 구현 여부를 결정하는 절차  

> JEP 작성 > JEP 제출 > 검토 및 피드백 > 승인 > 개발

단계 | 설명
---|---
Incubator | 새로운 기능이나 API의 초기 개발 및 실험 단계
Preview   | 인큐베이터에서 테스트된 기능이 안정성을 확보해 커뮤니티의 추가 피드백을 받는 단계
Standard  | 충분한 피드백과 테스트를 거친 공식 표준 기능


**JEP list**  
https://openjdk.org/jeps/0