---
order: 2
title: JS
description: 자바스크립트 모듈 시스템
summary:
keywords:
- js
- module system
- commonjs
- esm
tags:
- js
created_time: 2025-01-20 14:18
modified_time: 2025-02-15 00:01
---

# JS Module System
: 초기 자바스크립트는 모듈을 지원하지 않아 모든 코드는 전역 스코프로 실행됨  
: 웹이 발전하고 프로그램 규모가 커지면서 문제점이 발생하자 이를 보완하기 위한 모듈 패턴 등장  
: 서버 환경이 지원되면서 자바스크립트의 모듈화를 위해 다양한 모듈 포맷이 등장  
: ES2015 부터 공식적으로 모듈 시스템을 위한 표준 문법을 지원하게 됨  

- Module Pattern 
  - [IIFE](#iife)
  - [Revealing Module Pattern](#revealing-module-pattern)
- [Module-Format](#module-format)
  - [CommonJS](#commonjs)
  - [AMD](#amd)        
  - [UMD](#umd)
  - [ES Module](#es-module)


**모듈**  
: 프로그램을 구성하는 독립적이고 재사용 가능한 코드 단위

- 캡슐화 : 외부에 필요한 부분만 노출하고 내부의 세부 사항은 숨김
- 스코프 : 독립적인 스코프를 가지며 다른 모듈과 변수명이나 함수명이 충돌하지 않음
- 의존성 관리 : 다른 모듈이 필요한 경우 이를 명시적으로 선언하여 사용 가능


**모듈 시스템이 없는 경우 문제점**  
```html
<!--A.js-->
var NUM = 0;
function printNum() { console.log('A:', NUM); }

<!--B.js-->
var NUM = 1;
function printNum() { console.log('B:', NUM); }

<!--C.js-->
var NUM = 2;
printNum()

<!-- example.html -->
<script src="./js/A.js"></script>
<script src="./js/B.js"></script>
<script src="./js/C.js"></script>

<script>
var NUM = 3;
printNum();
</script>

<!--
파일 단위로 자바스크립트를 불러와도 실행 컨텍스트는 동일
=> A의 전역 변수가 B와 C에서 변수명이 동일하다면 오염됨
=> 함수명이 동일한 경우 마지막에 선언된 함수명이 실행됨
-->
```



## IIFE
Immediately Invoked Function Expression  
: 즉시 실행 함수 표현식  
: 함수 정의와 동시에 실행되는 자바스크립트 패턴  
: 함수 실행시 함수 스코프가 생성되어 전역 스코프 충돌을 방지하고 외부 접근이 제한됨  
: 초기화, 캡슐화, 변수 보호, 네임스페이스 오염 방지 등을 위해 사용  

> (함수 표현식)(함수 호출);


**생성 방법**
```js
(function() {})();

(() => {})();
 
-(function() {})();

+(function() {})()

~(function() {})();

!(function() {})();
```



## Revealing Module Pattern
: 노출식 모듈 패턴으로 IIFE을 기반으로 동작   
: 모듈 내부에서 사용하는 변수와 함수는 비공개로 정의하고 공개할 부분은 객체로 반환함  
: 노출식 모듈 패턴을 통해 캡슐화와 데이터 은닉 구현이 가능해짐  

```js
var Module = (function() {

  // private
  var _num = 0;

  // public
  function printNum() {
    console.log(_num);
  }

  return {
    printNum,
  }

})();


Module.printNum();
```



## Module Format
: 모듈 포맷이란 자바스크립트 코드를 모듈화하기 위한 형식 또는 규칙  
: 모듈 포맷으로 작성된 코드를 실행하려면 해당 모듈 포맷 명세를 구현한 모듈 로더가 필요함  
: 브라우저 환경에서 모듈 포맷을 지원하지 않는 경우 모듈을 실행하려면 모듈 번들러가 필요함  

용어 | 설명 | 도구
---|---|---
모듈 로더 | 런타임에 모듈을 로드하고 모듈간 종속성을 관리하는 도구 | RequireJS, SystemJS 등
모듈 번들러 | 빌드 단계에서 모듈을 분석하고 모듈을 단일 파일로 변환하는 도구 | Webpack, Rollup 등


**모듈 포맷 종류**  
- [CommonJS](#commonjs)
- [AMD](#amd)        
- [UMD](#umd)
- [ES Module](#es-module)



### CommonJS
= ServerJS  
: 서버 사이드 중심 모듈 명세  
: 서버 환경에서 자바스크립트 코드를 모듈화하기 위해 설계됨  
: 모듈이 순차적으로 로드되며 모듈 로드가 완료되기 전까지 다음 코드가 실행되지 않음  
: 캐싱 메커니즘을 지원하여 한 번 로드된 모듈은 재사용됨  
: 서버 환경에 최적화되어 있어 브라우저 환경에서는 이슈가 발생할 수 있음  


**원칙**
1. 모듈은 자신만의 독립적인 실행 영역을 가짐
2. 모듈 정의에는 exports 객체 사용
3. 모듈 사용에는 require 함수 사용

```js
// 모듈 내보내기1
module.exports = {
  obj: {},
};

// 모듈 내보내기2
var obj = {};
module.exports.obj = obj;

// 모듈 내보내기3
var obj = {};
exports.obj = obj;

// 주의
// exports는 module.exports를 가리키는 참조 변수
// exports에 새로운 객체를 할당하면 참조가 끊어지므로 주의해야함
exports = {};


// 모듈 가져오기 
var module = require('./example');
var { obj } = require('./example');

// 모듈은 캐싱되므로 별도 인스턴스가 필요하다면 new 키워드를 통해 인스턴스를 생성
var Module = require('./example');
var module = new Module();
```



### AMD
Asynchronous Module Definition  
: 클라이언트 사이드 중심 모듈 명세  
: 비동기식으로 모듈 로딩을 지원하기 위해 설계되었으며 브라우저 환경에 최적화되어 있음  

```js
// 모듈 정의
define('모듈', function() {
  return {
    method: function() {},
  };
});

// 모듈 사용
require(['모듈'], function(모듈) {
  모듈.method();
});
```



### UMD
Universal Module Definition  
: 만능 모듈 정의  
: CommonJS와 AMD의 호환성 문제 해결하기 위해 설계되어 다양한 환경을 지원  



### ES Module
: ES2015 부터 표준으로 지원하는 공식 모듈 시스템  
: 파일 단위로 모듈을 정의하며 모듈의 변수, 함수, 클래스는 명시적으로 내보내지 않으면 비공개  
: 동기식 모듈 로딩과 비동기식 모듈 로딩 모두 지원  
: import와 export 문은 코드 실행 전 분석되어 모듈 관계가 결정되는 정적 모듈 구조를 형성함  

**export**
```js
// default export
// 모듈에서 하나만 대표적으로 내보내기 위해 사용
// export default 문은 표현식을 내보내므로 변수 선언문과 사용 불가

// 방법1
export default function fn() {}

// 방법2
function fn() {}
export default { fn }


// named export
// 모듈에서 여러 값을 내보내기 위해 사용

// 방법1
export var obj = {};
export function fn() {}

// 방법2
var obj = {};
function fn() {}
export { obj, fn }


// mix export

// 방법1
export var obj = {};
export default function fn() {}

// 방법2
var obj = {};
function fn() {}
export { obj, fn as default }
```


**import**
```js
// default import
// default export는 하나만 내보내므로 가져올 때 이름을 변경할 수 있음
import method from 'example.js'

// named import
// named export는 여러 값을 내보내므로 특정 값을 가져올 수 있음
import { fn } from 'example.js'

// as 키워드를 사용해 모듈 이름을 변경할 수 있음
import { fn as f } from 'example.js'

// namespace import
// 모듈을 객체로 가져옴
import * as module from 'example.js'
module.fn();

// mix import
import method, { obj } from 'example.js'


// dynamic import
// ES2020 부터 import() 연산자를 지원하며 모듈을 비동기적으로 가져옴
import('./example.js').then((module) => {
  module.fn();
});

import( 조건 ? './example1.js' : './example2.js')
  .then((module) => {
    module.fn();
  });

(async () => {
  var module = await import('./example.js');
  module.fn();
})();
```


**import.meta**
: 현재 실행 중인 모듈에 대한 메타데이터를 가진 객체

속성 | 설명
---|---
import.meta.url | 현재 모듈의 URL 반환



**브라우저에서 모듈 사용**  
: 브라우저에서는 모듈의 경로와 확장자 입력 필수  
: ESM을 지원하는 브라우저는 nomodule 속성이 정의된 script 태그는 무시함  

```html
<!-- 방법1 -->
<script type="module" src="./example.js"></script>
<script nomodule src="./example-legacy.js"></script>


<!-- 방법2 -->
<script type="module">
import { fn } from './example.js'
</script>

<script nomodule>
</script>
```