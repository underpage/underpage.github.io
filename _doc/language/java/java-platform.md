---
order: 1
title: Java
description: 자바 플랫폼
summary:
keywords:
- java
- java platform
- jcp
- jsr
tags:
- java
created_time: 2025-05-30 18:22
modified_time: 2025-05-30 19:32
---

# Java Platform
: 자바 프로그램을 개발하고 실행하기 위한 표준 플랫폼  
: 자바 기술을 환경과 목적에 맞게 사용하고 확장하기 위해 다양한 플랫폼을 지원함  
: 자바 플랫폼은 [자바 관리 조직](#jcp)을 통해 발전하고 표준화됨  

플랫폼 사양 | 특징 | 패키지
---|---|---
Java SE (Standard Edition)      | 핵심 기능, 범용 애플리케이션 | [JDK](./jdk.md)
Jakarta EE (Enterprise Edition) | 엔터프라이즈 애플리케이션 | Jakarta EE SDK
Java ME (Micro Edition)         | 모바일, 임베디드, IoT | Java ME SDK
Java ME Embedded                | 경량화된 Java ME | Java Embedded Suite
Java Card                       | 스마트카드 및 보안 장치 | Java Card SDK


**history**
```
1995년  Java 1.0 출시 (Java SE)
1998년  Java 2.0 출시
         대규모 환경에 적합한 기술이 필요해지며 SE와 EE로 플랫폼 분리

1999년  모바일과 임베디드 장치가 대중화되며 이를 위해 Java ME 도입
         Java ME는 제한된 자원을 사용하는 장치에서 작동하기 위해 설계된 경량화 버전

2006년  Java SE와 Java EE로 명칭 변경
2019년  Java EE가 Jakarta EE로 명칭이 변경됨
```



## JCP
Java Community Process  
: 자바 표준화 관리 조직  
: 자바 공식 표준 사양(JSR)을 제안/검토/승인하는 커뮤니티 기반 프로세스  
: 오라클이 주도하며 JSR을 통해 자바 관련 기술의 공식 표준을 정의함  
: Jakarta EE 경우 기술 사양은 Jakarta EE Working Group에서 검토함  



### JSR
Java Specification Requests  
: 자바 스펙 요구서  
: 자바 플랫폼에 추가된 사양이나 새로운 기술에 대한 공식 문서  

**주요 문서**

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



## JEP
JDK Enhancement Proposal  
: JDK 개선 제안서  
: 자바 플랫폼 기능 개선이나 변경 사항을 제안하는 프로세스로 OpenJDK 커뮤니티에서 관리함  
: 제안된 사항의 구현 여부를 결정하며 비공식적인 개선 제안도 포함됨  
: JSR과 별개로 운영되며 일부 JEP 경우 JSR로 발전할 수 있음  

> JEP 작성 > JEP 제출 > 검토 및 피드백 > 승인 > 개발 및 반영

단계 | 설명
---|---
Incubator | 새로운 기능이나 API의 초기 개발 및 실험 단계
Preview   | 인큐베이터에서 테스트된 기능이 안정성을 확보해 커뮤니티의 추가 피드백을 받는 단계
Standard  | 충분한 피드백과 테스트를 거친 공식 표준 기능


**JEP list**  
https://openjdk.org/jeps/0