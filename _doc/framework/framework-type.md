---
order: 1
title: framework
description: 프레임워크 종류
summary:
keywords:
- framework
- framework type
- meta framework
tags:
- framework
created_time: 2025-02-17 23:58
modified_time: 2025-02-18 01:55
---

# Framework Type
: 프레임워크의 설계 철학과 근본적인 구조 등에 따른 분류  
: 추상화, 컴포넌트 등 프레임워크가 가진 본질적인 성격을 나타냄  

**구조**
- [메타프레임워크](#meta-framework)
- [추상화 프레임워크](#abstraction-framework)
- [컨텍스트 프레임워크](#context-framework)
- [구성 프레임워크](#composition-framework)

**구현**
- [컴포넌트 기반 프레임워크](#component-based-framework)
- [라이브러리 기반 프레임워크](#library-based-framework)

**목적**
- [서비스 프레임워크](#service-framework)
- [API 기반 프레임워크](#api-based-framework)



## Meta Framework
: 기존 프레임워크를 기반으로 기능을 확장, 보완, 재구성한 프레임워크  
: 기존 프레임워크의 한계를 보완하기 위해 확장된 기능이나 개발 생산성을 제공함  
: ex. Nuxt.js (Vue 기반), Next.js (React 기반), SvelteKit (Svelte 기반)



## Abstraction Framework
: 복잡한 시스템이나 세부사항을 추상화하여 공통 인터페이스를 제공하는 프레임워크  
: 사용자는 복잡한 구현을 신경 쓰지 않고 상위 수준의 인터페이스로 작업함
: ex. Hibernate, GraphQL



## Context Framework
: 전반적인 실행 환경(컨텍스트)를 제공하는 프레임워크  
: 프레임워크는 환경이나 조건에 맞춰 동작하며 상황에 따라 동적으로 동작을 변경함  
: 일반적으로 의존성 주입, 설정 기반 실행, 자동 구성을 지원함
: ex. Spring, Micronaut, NestJS  



## Composition Framework
: 다양한 모듈이나 컴포넌트를 조합해 애플리케이션을 구성하는 프레임워크  
: 프레임워크 자체는 최소한의 기능만 제공하고 필요한 기능을 선택적으로 추가하는 방식  



## Component-based Framework
: 재사용 가능한 컴포넌트 단위로 구성하는 프레임워크  
: 컴포넌트의 조합과 상호작용을 통해 애플리케이션을 구축함  
: ex. Vue, React, Svelte



## Library-based Framework
: 라이브러리로 기능을 추가하는 경량화된 프레임워크  
: 또는 프레임워크와 라이브러리의 경계가 뚜렷하지 않은 프레임워크  
: 특정 기능을 강제하지 않고 다양한 라이브러리를 선택적으로 조합해 프레임워크를 확장함  
: ex. Express, React 


## Service Framework
: 서비스 인터페이스나 API 중심 개발을 지원하는 프레임워크  
: 주로 서비스 지향 아키텍처(SOA)나 마이크로서비스(MSA)를 구축하는데 활용됨  
: ex. Spring Boot, Django, NestJS  



## API-based Framework
: API 설계를 최적화한 프레임워크  
: API 서버를 구축하거나 클라이언트와의 데이터 통신을 위한 기능을 제공  
: ex. FastAPI, Apollo