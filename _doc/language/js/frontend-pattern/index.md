---
order: 10
title: JS
description: 프론트엔드 패턴 및 아키텍처
summary:
keywords:
- js
- js pattern
- js architecture
- virtual dom
- routing
- rendering
tags:
- js
- architecture
created_time: 2025-01-20 14:49
modified_time: 2025-02-17 20:32
---

# Frontend Pattern
: 프론트엔드 애플리케이션 개발을 위한 설계, 구현 패턴, 아키텍처 집합  

**개념/기술**
- Virtual DOM
- Routing
- Progressive Enhancement
- Graceful Degradation
- State Synchronization

**방법론**
- [Monorepo](./monorepo.md)
- [Frontend for Backend](./frontend-for-backend.md)
- [Unobtrusive JavaScript](./unobtrusive-js.md)

**렌더링 패턴**
- 기본 렌더링
  - [클라이언트 사이드 렌더링](./csr.md)
  - [서버 사이드 렌더링](./ssr.md)
  - [정적 사이트 생성](./ssg.md)
- [고급 렌더링](./advanced-rendering.md)
  - 보편적 렌더링
  - 사전 렌더링
  - 증분 렌더링
  - 점진적 정적 재생성
  - 스트리밍 서버 사이드 렌더링
  - 엣지 렌더링
- [하이드레이션](./hydration.md)
  - [부분 하이드레이션](./hydration.md#partial-hydration)
  - [선택적 하이드레이션](./hydration.md#selective-hydration)
  - [점진적 하이드레이션](./hydration.md#progressive-hydration)

**상태 관리 패턴**
- [Flux](./flux.md)
- [Redux](./redux.md)
- [MobX](./mobx.md)
- [Recoil](./recoil.md)
- [Jotai](./jotai.md)
- [Zustand](./zustand.md)

**아키텍처**
- [Single Page Application](./spa.md)
- [Progressive Web App](./pwa.md)
- [Backend for Frontend](./bff.md)
- [Micro Frontend Architecture](./micro-frontend.md)
- [Island Architecture](./island.md)
- [Resource Oriented Client Architecture](./roca.md)
