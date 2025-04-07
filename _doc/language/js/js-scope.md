---
order: 1.2
title: JS
description: 자바스크립트 스코프
summary:
keywords:
- js
- js scope
- global scope
- local scope
- module scope
tags:
- js
created_time: 2025-02-14 23:59
modified_time: 2025-02-18 19:47
---

# JS Scope
: 스코프(범위)란 변수, 함수, 클래스를 참조하고 조작할 수 있는 유효 범위  
: 자바스크립트는 [렉시컬(정적) 스코프](../../program/language/concept/scope.md) 기반으로 동작해 선언된 위치를 기준으로 스코프가 결정됨  
: 함수는 항상 새로운 스코프를 생성하나 if문이나 for문 같은 블록문은 별도의 스코프를 생성하지 않음  
: ES6부터는 블록문이 스코프를 생성하나 let과 const 키워드로 선언된 식별자에만 적용됨  

**종류**   
- [전역 스코프](global-scope)
- 지역 스코프
  - [함수 스코프](#function-scope)
  - [블록 스코프](#block-scope)
- [모듈 스코프](#module-scope)


스코프 | 대상
---|---
전역 스코프 | 변수 (var, let, const)
함수 스코프 | 변수 (var)
블록 스코프 | 변수 (let, const), 클래스
모듈 스코프 | 변수, 함수, 클래스


**렉시컬 환경**  
: 자바스크립트 [실행 컨텍스트](./js-execution-context.md) 내부에서 스코프와 식별자 바인딩을 관리하는 내부 객체  
: 변수, 함수, 클래스의 선언 정보와 외부 환경 참조 정보를 저장함  
: 외부 환경 참조를 통해 상위 스코프와 연결되어 스코프 체인을 형성함  
: 실행 컨텍스트가 생성될 때 해당 컨텍스트에 대응하는 렉시컬 환경이 함께 생성됨  


**스코프 체인**  
: 식별자를 찾기 위해 스코프를 연쇄적으로 검색하는 메커니즘  
: 현재 스코프에 식별자가 없으면 상위 스코프로 순차적으로 검색을 진행함  
: 최종적으로 전역 스코프에 도달하고 전역 스코프에서도 식별자를 찾지 못하면 검색을 멈추고 RHS 참조시 ReferenceError를 반환하고 LHS 참조시 (엄격 모드가 아닐 경우) 전역 스코프에 암묵적으로 변수를 생성함  

용어 | 설명 | 예시
---|---|---
RHS (right hand side)| 값을 참조할 때 발생 | console.log(num)
LHS (left hand side) | 값을 할당하는 대상을 찾을 때 발생 | num = 0



### Global Scope   
: 코드의 최상위 레벨에서 선언된 변수가 가지는 유효 범위  
: 스코프 체인에서 최상위에 존재해 모든 영역에서 접근 가능함  
: var 키워드로 선언한 변수는 전역 객체의 프로퍼티가 되어 전역 객체를 통해 간접 접근이 가능함  
: 플랫폼에 따라 전역 객체가 다르므로 여러 환경을 지원한다면 globalThis 키워드 사용  
: let과 const 키워드로 선언한 변수는 전역 객체를 통한 간접 접근이 불가능함  

환경 | 전역 객체
---|---
browser    | window
web worker | self
node       | global

```js
var varNum = 0;
let letNum = 1;

window.varNum === 0
window.letNum === undefined
```



### Function Scope
: 함수 내부에서 선언된 변수가 가지는 유효 범위  
: 함수 안에서 var 키워드로 선언된 변수는 해당 함수 내부에서만 접근 가능  
: 함수 스코프 경우 [호이스팅](./js-hoisting.md)이 발생해 변수 선언 전 접근이 가능함  


**hoisting**  
: 변수 선언이 되기 전에 접근이 가능하지만 undefined로 초기화된 상태  

```js
function fn() {
  console.log(num === undefined);
  var num = 5;
  console.log(num === 5);
}
```


**context**  
: 함수가 실행되는 환경으로 실행 시점에 따라 this가 가르키는 대상이 달라짐  

```js
var num = 0;

var obj = {
  num: 1,
  // this : 전역 객체를 가르킴
  context: this.num,
  fn: function() {
    // this : 해당 객체를 가르킴
    return this.num;
  }
};

(this.num === 0) == true  
(obj.context === 0) == true

(obj.fn() === 1) == true
```



### Block Scope
: 중괄호 내부에서 선언된 변수와 클래스가 가지는 유효 범위  
: 중괄호 안에서 let과 const 키워드로 선언된 변수는 해당 중괄호 내부에서만 접근 가능  
: 블록 스코프 경우 호이스팅되지만 [TDZ](./js-hoisting.md#tdz)에 의해 변수 선언 전 접근이 불가능함  

```js
{
  /* 외부 블록 */
  let x = 1;
  x === 1

  { 
    /* 내부 블록 */
    let x = 0; // 변수 섀도잉
    x === 0
  }

}
```



### Module Scope
: [모듈 시스템](./js-module-system.md#es-module)이 도입되며 모듈 단위로 적용되는 유효 범위  
: 모듈 내에서 선언된 변수, 함수, 클래스는 해당 모듈 내부에서만 접근이 가능함  
: export 키워드로 내보내면 외부에서 접근할 수 있음  

```js
const num = 0;

export { num }; 
```