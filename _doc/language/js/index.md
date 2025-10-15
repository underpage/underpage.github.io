---
order: 1
title: JS
description: 자바스크립트 (ECMAScript)
summary: 사용자 동적 상호작용 및 DOM 제어를 위한 브라우저 스크립팅 언어인 자바스크립트 대한 개요
keywords:
- ecmascript
- javascript
- js
- es2024
- es2025
tags:
- js
- language
created_time: 2025-10-10 23:20
modified_time: 2025-10-15 23:59
---

# JavaScript 
: 사용자와 동적 상호작용, DOM 제어, 자바 애플릿을 대체하기 위해 만들어진 브라우저 스크립팅 언어  
: 초기에는 브라우저 환경에서만 동작했으나 최근에는 모바일, 서버 등 다양한 환경을 지원하며 생태계를 형성  
: ECMA-262라는 표준 사양을 따르는 언어를 ECMAScript라 명칭하나 여전히 자바스크립트로 통용됨  

- [ECMAScript](#ecmascript)
- [JS Language](./js-lang/index.md)
  - [Native Object](./js-object/object/index.md)
  - [Built-in Class](./js-object/class/index.md)
- JS Core Concept
  - [JS Hoisting](./js-hoisting.md)
  - [JS Scope](./js-scope.md)
  - [JS Closure](./js-closure.md)
  - [JS Execution Context](./js-execution-context.md)
- [JS Module System](./js-module-system.md)
- [JS Runtime Environment](./js-runtime-environment.md)
  - [Node](./ssjs-node/index.md)
  - [Deno](./ssjs-deno/index.md)
  - [Bun](./ssjs-bun/index.md)
- [JS Asynchronous Programming](./js-asyn-programming.md)
- [AltJS](./js-alt.md)
  - [TypeScript](./ts/index.md)
- JS Development Tools
  - [JS Package Manager](./js-package-manager.md)
  - [JS Transpiler](./js-tool-transpiler.md)
  - [JS Build](./js-tool-build.md)
  - [JS Linter](./js-tool-linter.md)
  - [JS Testing](./js-tool-testing.md)
  - [JS Monorepo](./js-tool-monorepo.md)
- [JS Execution Mechanism](./js-execution-mechanism.md)
  - JS Performance Optimization
  - JS Debugging
- [JS Ecosystem](./js-ecosystem.md)
- [Frontend Pattern](./frontend-pattern/index.md)


**히스토리**  
https://dl.acm.org/doi/10.1145/3386327  



## ECMAScript
: ECMA-262 규격을 따르는 자바스크립트 언어 공식 명칭  

```
벤더사 마다 다른 스크립트 언어 사용으로 인한 호환 문제로 넷스케이프에서 Ecma(기관)에 스크립트 언어 표준을 제안하여 
Ecma(기관)의 TC39라는 기술 위원회에서 문법 표준화, 크로스 플랫폼, 벤더사 중립을 목적으로 표준 결정

당시 자바스크립트는 Sun에서 상표권을 보유하고 있어 임시로 ECMAScript라 명명하고 대체할 후보를 찾았으나
자바스크립트, 라이브스크립트 이름 모두 사용하지 못하게 되면서 ECMAScript를 표준 이름으로 사용

- 넷스케이프(Navigator): 모카스크립트 > 라이브스크립트 > 자바스크립트   
- 마이크로소프트(Internet Explorer): VBScript, JScript 
```

**주요 스펙**
- ECMA-262 (https://ecma-international.org/publications-and-standards/standards/ecma-262/) -- JS Spec
- ECMA-402 (https://ecma-international.org/publications-and-standards/standards/ecma-402/) -- Intl API
- ECMA-404 (https://ecma-international.org/publications-and-standards/standards/ecma-404/) -- Json



### ECMA-262
: ECMAScript 표준 명세서  
: 플랫폼에 종속되지 않는 핵심 API만 정의  


**명세 준수 테스트**  
https://github.com/tc39/test262


The World of ECMAScript  
https://johnresig.com/files/ecma-cloud.png



### ECMAScript Version
: 일반적으로 매년 업데이트되며 각 버전에 출시 년도가 붙음  
: 초기에는 ES6 처럼 숫자 기반 버전을 사용했으나 공식적으로는 년도를 기반으로 함  

> ES1 ~ ES3 (ES4 폐기) > ES5 > ES6(ES2015) ~ ES2023 > ES2024


**ES4**  
클래스 기반 객체 지향, 메소드 오버로딩, 연산자 오버로딩, 타입 어노테이션 등 새로운 기술 도입을 시도했으나  
기존 자바스크립트와 너무 달라 호환성 문제 및 복잡성 증가로 폐기됨 [more](https://auth0.com/blog/the-real-story-behind-es4)


**버전 별 특징**

버전 | 업데이트
---|---
ES10 | Object.fromEntries(), Array.prototype.flat(), Array.prototype.flatMap()
ES11 | `??` 연산자, `?.` 연산자, Promise.allSettled(), BigInt 데이터타입
ES12 | 논리 할당 연산자, WeakRefs 클래스, FinalizationRegistry 클래스
ES13 | Array.at(), 클래스 필드 정의 문법
ES14 | Array.findLast(), Hashbang 지원
ES15 | RegExp.escape(), Promise.try(), Iterator 헬퍼


**ES.Next** (https://tc39.es/)  
: 현재 버전의 다음 버전에 포함될 예정인 기능이나 제안 기능들을 지칭하는 용어  
: 제안된 기능은 여러 단계를 거쳐 최종 승인되면 스펙에 추가됨  

단계 | 설명
---|---
Stage 0 | 새로운 아이디어나 기능을 제안
Stage 1 | 아이디어나 기능의 개념을 구체화해 제안서 형태로 작성해 기술 위원회에 제출
Stage 2 | 기능의 구체적인 문법과 API를 작성해 실행 가능한 형태로 구체화함
Stage 3 | 기능이 거의 최종 형태로 구현되어 테스트하고 피드백을 받아 수정함
Stage 4 | 공식적으로 승인되어 표준에 포함됨