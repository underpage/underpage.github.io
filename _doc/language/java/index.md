---
order: 1
title: Java
description: 자바 (Java)
summary:
keywords:
- programming language
- java
tags:
- java
- language
created_time: 2025-10-10 22:58
modified_time: 2025-10-10 23:00
---

# Java
: 자바 프로그램 개발을 위한 프로그래밍 언어, 실행 환경, 개발 도구의 총체  

**플랫폼**
- [자바 플랫폼](./java-platform.md)
  - [자바 개발 키트 (JDK)](./jdk.md)
    - [자바 가상머신 (JVM)](./jvm.md)
    - [JVM 구현체](./jvm-implement.md)
- [자바 버전](./java-version.md)
- [OpenJDK 프로젝트](./java-project.md)
  - [자바 모듈 시스템](./java-module-system.md)

**언어 및 API**
- [자바 프로그래밍 언어](./java-lang/index.md)
- [자바 SE API](./java-api-se/index.md)
- [자바 EE API](./java-api-ee/index.md)

**개발 및 배포**
- [자바 프로그램](./java-program.md)
  - [자바 프로그램 실행](./java-program.md#java-program-execution)
  - [자바 컴파일 과정](./java-compilation-process.md)
- [자바 배포](./java-deployment.md)

**도구 및 생태계**
- [자바 표준 도구](./java-tool/index.md)
- [자바 에코시스템](./java-ecosystem.md)
  - [자바 프레임워크](../../framework/java/index.md)
  - [자바 라이브러리](./java-lib/index.md)


**히스토리**  
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