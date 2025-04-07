---
order: 3
title: JS
description: 자바스크립트 실행 환경
summary:
keywords:
- js
- js runtime environment
- csjs
- ssjs
tags:
- js
created_time: 2025-01-22 18:40
modified_time: 2025-02-15 00:01
---

# JS Runtime Environment
: 자바스크립트 프로그램이 실행되는 다양한 환경  
: 실행 환경에 따라 런타임의 구성 요소가 다르며 제공되는 기능도 차이가 존재함  

- [Client Side JavaScript](#csjs) 
- [Server Side JavaScript](#ssjs)


**JS Runtime**  
: 자바스크립트 코드가 실행되는 구체적인 환경

실행 환경 | 런타임 | 특징
---|---|---
클라이언트 | 웹 브라우저, Electron | DOM 조작, Web API 호출, 브라우저 제약 존재
서버 | Node, Deno, Bun | 파일 시스템, 네트워크, 운영체제 API 등 가능
임베디드 시스템 | Espruino, JerryScript | 저사양 디바이스를 위한 경량 런타임



## CSJS
Client Side JavaScript  
: 클라이언트 즉 브라우저에서 실행되는 자바스크립트  
: HTML, CSS 같은 클라이언트 측 컴포넌트를 조작하고 처리함  
: 클라이언트 런타임(브라우저)을 통해 실행되므로 일부 제약이 존재  

```
  JS code 
-----------
  Browser (ex. chrome) 
  - JS engine (ex. v8)
  - Web API   
  - ...
```


**브라우저 제약**  
: 사용자가 브라우저 설정을 통해 자바스크립트 사용을 비활성화 할 수 있음  
: 브라우저 보안 정책으로 인한 제약 존재 (운영체제 접근, 로컬 파일 시스템 접근, CORS 등)  
: 브라우저 탭 간 직접적인 통신 불가


**호환성 문제**  
: 브라우저마다 지원하는 사양이 달라 최신 문법 사용시 [트랜스파일러](./js-tool-transpiler.md)를 통해 지원되는 문법으로 구문 변환 필요   


**호환성 확인**  
https://caniuse.com/



## SSJS
Server Side JavaScript  
: 서버 측에서 실행되는 자바스크립트  
: 클라이언트와 서버의 간격을 없애기 위해 서버 측 런타임이 만들어짐  
: 서버 측 런타임은 독립적인 자바스크립트 엔진으로 구성되어 자바스크립트 코드를 실행함  

```
  JS code 
-----------
  JS Runtime (ex. node)
  - JS engine (ex. v8)
  - Runtime API
  - ... 
```


**서버 측 런타임**  
: 서버 측 런타임은 자바스크립트 엔진, 내장 객체, Runtime API 등으로 구성됨 
: 호출 스택 관리, 비동기 작업 처리, 메모리 관리 등 자바스크립트를 실행을 위한 환경을 제공함  
: 다양한 서버측 런타임이 있으며 대표적으로는 Node, Deno, Bun이 있음  

런타임 | 엔진 | 개발 언어 | 출시
---|---|---|--- 
[Node](./ssjs-node/index.md) | v8 | c++  | 2009, Ryan Dahl
[Deno](./ssjs-deno/index.md) | v8 | rust | 2020, Ryan Dahl
[Bun](./ssjs-bun/index.md)   | JavaScriptCore | zig | 2022, Jarred Sumner