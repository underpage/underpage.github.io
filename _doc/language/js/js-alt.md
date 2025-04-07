---
order: 4
title: JS
description: 자바스크립트 대안 언어 및 도구
summary:
keywords:
- js
- alternative to js
- typescript
- dart
- purescript
tags:
- js
created_time: 2025-01-20 14:22
modified_time: 2025-02-15 00:06
---

# AltJS
Alternative to JavaScript  
: 자바스크립트 단점을 보완하거나 해결한 도구나 언어  
: 동적 타입 문제, 모듈 시스템 부재 등 초기 자바스크립트 단점을 보완하기 위해 등장  
: 현재는 자바스크립트 발전으로 타입스크립트같은 일부만 도구나 언어외에는 사용하지 않는 추세  

**Compile to JS**
- [TypeScript](./ts/index.md)
- [Dart](#dart)
- [PureScript](#purescript)

**altjs list**  
http://smurfpandey.github.io/altjs/



## Dart   
: Dart는 구글에서 만든 프로그래밍 언어  
: dart2js 컴파일러를 통해 Dart 코드를 자바스크립트로 컴파일해 브라우저에서 동작할 수 있게 지원  
: Dart는 강한 타입, null safety 등 자바스크립트에 없는 기능을 지원  

```dart
import 'dart:js' as js;

void main() {
  print("dart!");
  example();
}

void example() {
  int value = 0;
  js.context['key'] = value;
}
```



## PureScript
: PureScript은 함수형 프로그래밍 언어로 자바스크립트로 컴파일되어 런타임 환경에서 실행됨  
: Haskell 언어의 영향을 받아 설계되어 강력한 함수형 프로그래밍 스타일을 지원함  
: purescript라는 컴파일러와 pulp라는 자체 빌드 도구와 bower 레지스트리를 사용함  

```bash
npm i -g purescript pulp bower

pulp init

pulp server
# http://localhost:1337
```