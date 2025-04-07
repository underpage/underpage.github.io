---
order: 1
title: javascript
description: 자바스크립트 문장
summary:
keywords:
- js
- js language
- js statement
tags:
- language
- js
created_time: 2025-01-23 22:05
modified_time: 2025-01-23 23:07
---

# JS Statement
: 실행 가능한 최소한의 독립적인 코드 단위  
: 특정 작업을 수행하거나 제어하는 명령어로 자바스크립트의 문장은 완료된 값(completion value)을 반환함  
: [표현식](./js-expression.md)은 문장처럼 자동할 수 있으나 문장은 표현식처럼 작동할 수 없음  
 
- [빈문](#empty-statement)
- [대입문](#assignment-statement)
- [선언문](#declaration-statement)
- [블록문](#block-statement)
- [표현식문](#expression-statement)
- [제어문](#control-statement)
- [흐름 제어문](#flow-control-statement)
- [디버거문](#debugger-statement)
- [예외처리문](#exception-handling-statement)
- [모듈문](#import-export-statement)


**Completion Value**  
: 문장의 실행 결과를 나타내는 값  

```js
// 선언문
var x;
(x === undefined) == true


// 블록문은 마지막 실행문이나 표현식을 완료 값으로 반환
// 3 반환
{1, 2, 3}

// 4 반환
if(true) {
  a = 1+1;
  b = 2+2;
}


// 완료된 값 사용
// 현재 문법적으로 완료된 값 사용을 지원하지 않음
var num = eval('if(true){1+1}');
(num === 2) == true
```



## Empty Statement
: 아무런 동작도 수행하지 않는 문장  

```js
var arr = [];
for(var i=0; i<5 ; arr[i++]=i) /* empty */;
```



## Assignment Statement
= 할당문  
: 대입 연산자를 통해 변수에 값을 할당하는 문장  

```js
// 선언문
var x;
let y;

// 할당문
x = 0;

// 다중 할당문
x = y = 0;

// 조건 할당문
x = (y == 0) ? true : false;
```



## Declaration Statement
: 변수, 함수, 클래스 등을 선언하는 문으로 모든 선언문은 엔진에 의해 [호이스팅](../js-hoising.md) 됨   

**변수 선언문**
```js
var x;
let y;
const z = {};


// 호이스팅
console.log(a); // undefined
console.log(b); // Cannot access 'b' before initialization

var a = 1;
let b = 2;
```

**함수 선언문**
```js
function fn() {}
```

**클래스 선언문**
```js
class Example {
  constructor() {}
}
```



## Block Statement
= 복합문  
: 여러 문장을 중괄호로 묶어 하나의 단위로 그룹화한 문장  
: 블록문은 자체적인 스코프를 형성해 let과 const로 선언된 변수는 해당 블록에서만 사용 가능  

```js
{
  // 블록 영역
}

{
  var num = 0;
  const str = 'string';
}

console.log(num);
console.log(str); // str is not defined
```



## Expression Statement
: 문장으로 작성 가능하면서 표현식으로도 작성 가능한 문장  

```js
var num = 1;
var result;

// statement
if(num === 1) {
  result = true;
} else {
  result = false;
}

// expression statement
result = (num === 1) ? true : false ;
```



## Control Statement
: 프로그램 흐름을 제어하는 문장들

**조건문**
- if
- switch

**반복문**
- for
- for in
- for of
- for await
- while
- do while


**for**
> for(초기식 ; 조건식 ; 종결식)

```js
// 초기식 생략
var num = 0;
for( ; num < 5 ; ++num) {
  console.log(num);
}

// 조건식 생략  
for(var num = 0; ; ++num) {
  console.log(num);
  if(num == 5) break;
}
```

**for in**  
: 배열의 인덱스 순회  
: 객체의 mark된 프로퍼티를 제외한 키 순회  

> for(variable in object)

```js
for(var i in ['a','b','c']) {
  console.log(i);
}


var obj = {a: 1, b: 2, c: 3};
for(var key in obj) {
  console.log(`${key} :: ${obj[key]}`);
}
```


**for of**  
: 이터러블 객체의 값 순회  

> for(variable of iterable)

```js
(Symbol.iterator in []) == true
(Symbol.iterator in new Array()) == true
(Symbol.iterator in new String()) == true

(Symbol.iterator in {}) == false
(Symbol.iterator in new Object()) == false


for(var val of [1, 2, 3]){
  console.log(val);
}


// 일반 객체
var obj = {a: 1, b: 2, c: 3};
for(var [key, val] of Object.entries(obj)) {
  console.log(`${key} :: ${val}`);
}
```


**for await**  
: 비동기 이터러블 객체 순회  

> for await (variable of iterable)

```js
var result = async(arr) => {
  for await (var val of arr) {
    console.log(val);
  }    
}

result([1,2,3]);
```



## Labeled Statement
: 중첩된 반복문이나 스위치문에서 특정 블록을 지정

```js
labelName: while(condition) {
  break labelName;
}
```



## Flow Control Statement
: 제어 흐름문의 실행 방식을 바꾸는 문장들

키워드 | 설명
---|---
return   | 함수 실행을 종료하고 함수를 호출한 곳으로 반환 값을 가지고 돌아감
break    | 조건문과 반복문 실행중 해당 문을 만나면 빠져나감  
contiune | 반복문 실행중 현재 실행문을 중단하고 다음 단계로 건너 뜀  



## Exception Handling Statement
: 예외처리 문

- try catch
- try catch finally



## Debugger Statement
: 코드의 실행을 일시적으로 멈추고 디버깅 함수를 호출하는 문

```js
debugger;
```



## Import Export Statement
: [모듈 시스템](../js-module-system.md)에서 모듈을 가져오거나 내보내기 위한 문장  

```js
// 모듈을 내보냄
export default function fn() {}

// 모듈을 가져옴
import fn from 'module.js';
```