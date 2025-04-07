---
order: 3
title: java
description: 자바 프로젝트
summary:
keywords:
- java
- java project
- jigsaw
- graal
tags:
- language
- java
created_time: 2024-10-07 06:23
modified_time: 2025-01-19 16:41
---

# Java Project
: 자바 언어 및 플랫폼의 특정 기능을 향상시키거나 새로운 기능을 추가하기 위한 연구 및 개발 작업  

https://openjdk.org/projects  


**자바 확장**
- Babylon

**언어 기능 개선**
- Amber
- Coin
- Jigsaw
- Valhalla

**런타임 성능**
- Loom
- Panama
- Leyden

**도구 및 플랫폼**
- Graal
- Skara



## Babylon
: SQL, 머신러닝, 미분가능 프로그래밍 등 외부 프로그래밍 모델 지원을 위한 프로젝트  

https://openjdk.org/projects/babylon/



## Amber 
: 지역 변수 유형 추론, 레코드, 패턴 매칭, 스위치 표현식 등 자바 언어의 기능을 확장 위한 프로젝트  

- 지역 변수 타입 추론
- 향상된 스위치 문과 표현식
- Record 클래스
- Sealed 클래스 



## Coin
: 작은 규모의 자바 언어 문법 기능 개선을 위한 프로젝트로 현재는 Amber 프로젝트에 통합

- 다이아몬드 연산자 개선
- try-with-resources 간소화
- 다중 catch 블록



## Jigsaw
: 자바 표준 모듈 시스템 도입을 위한 프로젝트  
: 애플리케이션을 모듈화하여 의존성 관리를 개선하고 성능을 향상시키는 것이 목표  

- 모듈 시스템
- jlink 도구 
- jdeps 도구



## Valhalla
: 자바 성능 및 메모리 향상을 목표로 하는 프로젝트  

- Primitive 클래스
- Universal Generics : 모든 타입에 대한 제네릭
- Specialized Generics : 성능 최적화된 제네릭



## Loom
: 자바의 동시성 모델을 개선하기 위한 프로젝트
: 동시성과 확장성 처리 방식 개선을 목표로 파이버(가상 스레드) 도입 및 가상 스레드 생성 및 관리를 위한 API 개발  

- Virtual Threads : 경량 스레드 제공
- StructuredTaskScope



## Panama 
: C++, 운영체제 API 같은 자바가 아닌 인터페이스와 상호작용하는 방식을 개선하기 위한 프로젝트   
: 자바와 네이티브 코드 간의 상호작용을 쉽게 하기 위한 프로젝트로 JNI의 대체 방안을 제공

- Foreign Function & Memory API
- Vector API



## Leyden
: 정적 이미지를 도입해 자바 애플리케이션의 속도와 성능을 향상시키기 위한 프로젝트  



## Graal
: 고성능 자바 가상 머신(GraalVM) 및 네이티브 이미지 생성 프로젝트  

- GraalVM
- Native Image
- Truffle 프레임워크



## Skara 
: 자바의 개발 프로세스를 현대화하기 위한 프로젝트  

- Git 기반 워크플로우
- GitHub 통합: 코드 리뷰 및 이슈 관리
- GitHub 용 봇 및 CLI 도구