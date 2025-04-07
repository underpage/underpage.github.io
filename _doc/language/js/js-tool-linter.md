---
order: 5.4
title: JS
description: 자바스크립트 - 린터
summary:
keywords:
- js
- js linter
- eslint
- standardjs
- biome
tags:
- js
- tool
created_time: 2025-02-15 01:18
modified_time: 2025-02-15 01:44
---

# JS Linter
: 자바스크립트 문법, 버그, 코딩 컨벤션 등을 검사하는 정적 코드 분석 도구  
: 자바스크립트는 컴파일 언어가 아니라서 코드 작성 중 문법 오류가 나도 실행전까지 발견하기 어려움  
: 이를 보완하기 위해 린터를 통해 코드가 규칙에 맞게 작성되었는지 확인함  
: Node 기반 린터의 느린 속도를 보완하기 위해 최근에는 Rust 기반 린터들이 등장  

- [JSLint](#jslint)
- [JSHint](#jshint)
- [ESLint](#eslint) 
- [StandardJS](#standardjs)
- XO
- Biome
- Oxc


**linting**  
: 소스 코드의 문법 오류, 버그, 스타일 가이드에 맞는지 검사하는 과정  



## JSLint
: 최초로 만들어진 린터  
: 엄격하고 강제적인 규칙을 적용하며 설정이 제한적  

https://github.com/jslint-org/jslint  


```bash
curl -L https://www.jslint.com/jslint.mjs > jslint.mjs

node jslint.mjs examle.js
```



## JSHint
: JSLint를 기반으로 만들어진 린터  
: JSLint 보다 더 유연한 규칙을 적용하며 유연한 설정 제공  

https://github.com/jshint/jshint


```bash
npx jshint example.js
```



## ESLint
: Node 기반으로 동작하는 린터  
: 확장성과 플러그인 지원이 뛰어나며 다양한 코딩 스타일을 지원함  

https://eslint.org


```bash
# 설치 + 구성
npm init @eslint/config

# 설치 + 기본 구성 사용 
npm init @eslint/config -- --config eslint-config-standard
```



## StandardJS
: ESLint 기반 린터  
: 미리 정의된 스타일 가이드를 따라 설정없이 바로 사용함  

https://standardjs.com/


```bash
npx standard
standard "src/util/**/*.js" "test/**/*.js"
```



## Biome
: Rust 기반으로 개발된 린터  
: 포매터, 프리터 기능이 포함되어 있음  
: 네이티브 바이너리 형태로 배포되어 별도의 런타임이 필요하지 않음  

```bash
npx biome check .
```