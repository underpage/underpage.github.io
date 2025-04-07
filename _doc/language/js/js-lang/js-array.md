---
order: 8
title: JS
description: 자바스크립트 배열
summary:
keywords:
- js
- js array
- exotic object
tags:
- js
created_time: 2025-02-18 20:51
modified_time: 2025-02-20 02:30
---

# JS Array
: 자료 구조의 배열과 다르게 특수한 객체(Exotic Object)로 구현되어 객체에 가까움  
: 다양한 데이터 타입을 저장하고 배열 크기가 동적으로 조절되며 메모리에 비연속적으로 저장됨  
: 인덱스가 객체의 키처럼 작동해 문자열로 동작할 수 있지만 내부적으로는 숫자로 변환됨  
: 배열에 속성을 추가할 수 있으나 length에 영향을 미치지 않음  

**Exotic Object**  
: 특별한 동작을 가지는 객체로 일반 객체과 다르게 구현되어 있음  
: 배열, 문자열, 유사 배열 객체, 프로미스, 프록시 등  


**배열 종류**
- [밀집 배열](#dense-array)
- [희소 배열](#sparse-array)
- [연관 배열](#associative-array)
- [유사 배열](#array-like-object)
- [다차원 배열](#multidimensional-array)
- [형식화 배열](#typed-array)


**배열 생성**
```js
// 1. 리터럴
var arr = [];

// 2. 전역 함수
var arr = Array();

// 3. 생성자
var arr = new Array();

// 4. 메소드
var arr = Array.of(1,2,3);
var arr = Array.from({length: 5});

// 5. 전개 연산자
var arr = [...'123'];
```


**배열 제거**
```js
var arr = [1,2,3];

// 참조는 유지하고 모든 요소만 제거
arr.length = 0;

// 새 배열을 할당
arr = [];
```


**배열 복사**
```js
var arr = [1,2,3];

// 얕은 복사
var newArr = arr.slice();
var newArr = arr.concat([]);
var newArr = [...arr];

// 깊은 복사
var newArr = JSON.parse(JSON.stringify(arr));
var newArr = structuredClone(arr);
```


**배열 순회**
```js
var arr = [1,2,3];

for(var i=0 ; i < arr.length ; i++) {
  console.log(arr[i]);
}

for(var value of arr) {
  console.log(value);
}

var index = 0;
while(index < arr.length) {
  console.log(arr[index]);
  ++index;
}

arr.forEach((value, index) => {
  console.log(value);
});

arr.some((value) => {
  console.log(value);
});
```


**V8 배열 요소 타입**  
: V8 경우 내부적으로 요소를 약 20개 타입으로 구분  

https://v8.dev/blog/elements-kinds  
https://chromium.googlesource.com/v8/v8.git/+/master/src/elements-kind.cc  

```js
// PACKED_SMI_ELEMENTS : 단일 타입
var arr = [1,2,3];

// PACKED_DOUBLE_ELEMENTS : 부동 소수점 혹은 SMI로 표현 불가능한 정수
var arr = [0.1,0.2,0.3];

// PACKED_ELEMENTS : 모든 타입을 저장하며 최적화 손실, SMI과 DOUBLE에 비교해 메모리 공간을 더 차지
var arr = ['a','b','c'];
var arr = [1,1.5,'a'];

// HOLEY_ELEMENTS : 희소 배열 최적화를 위한 구분
var arr = [1, , , 5];


// 1. PACKED_SMI_ELEMENTS 타입
var arr = [1];

// 2. PACKED_DOUBLE_ELEMENTS 타입으로 변환됨
arr.push(1.5);

// 3. PACKED_ELEMENTS 타입으로 변환됨
arr.push('2');

// 4. HOLEY_ELEMENTS 타입으로 변환됨
arr[10] = 0;

// 5. DICTIONARY_ELEMENTS 타입으로 변환됨  
arr[10000] = 0;
```



## Dense Array
= Packed Array  
: 밀집 배열이란 연속된 요소를 가지는 배열

```js
var arr = [1,2,3];
```



## Sparse Array
= 성긴 배열  
: 희소 배열이란 인덱스에 대응하는 요소가 없는 배열로 배열의 길이와 요소의 개수가 다름  
: 일부 자바스크립트 엔진은 희소 배열을 일반 객체처럼 처리해 성능이 저하될 수 있음  

```js
var arr = [0, , , , 1];

var arr = [];
arr[10] = 0;

// 엔진에 따라 최대 인덱스까지 메모리 할당 여부는 다름
var arr = new Array(100);

// 홀 제거
var arr = new Array(10);
arr.fill(0);
```


**V8에서 희소 배열 처리를 위해 사용하는 배열 저장소**
- linear storage
- hash table storage

```js
var arr = [];

// V8은 희소 배열을 키/값과 설명자를 쌍으로 저장 (DICTIONARY_ELEMENTS)
arr[100] = 0;
```



## Associative Array
: 연관 배열이란 문자열 키를 사용하는 배열  
: 자바스크립트는 연관 배열을 지원하지 않지만 배열이 객체이므로 문자열 키를 사용할 수 있음  
: 문자열이 숫자형으로 변환이 불가능하면 legnth에 영향을 미치지 않음  

```js
var arr = [1,2,3];

arr.key = 'value';
arr['키'] = '값';
arr[3] = 4;
arr['4'] = 5;

arr.key === 'value'
arr.length === 5
```



## Array-like Object
: 유사 배열이란 length 속성이 있지만 Array.prototype 메소드를 직접 사용할 수 없는 배열  
: DOM의 [NodeList](../../../web/api/dom-api/api-nodelist.md)와 Aguments 객체가 유사 배열  

```js
// 유사 배열을 배열로 변환
var divs = document.querySelectorAll('div');
var divsArray = Array.from(divs);
```



## Multidimensional Array
: 자바스크립트에서 다차원 배열이란 배열의 요소로 배열을 사용하는 배열

```js
var arr = [
  [0, 'a'],
  [1, 'b'],
  [2, 'c'],
];

arr.push([3, 'd']);

arr.length === 4
```



## Typed Array
: [형식화 배열](../js-object/class/js-class-typedarray.md)이란 크기가 고정된고 특정 데이터 타입만 저장하는 배열  
: WebAPI(Audio, Canvas, WebSocket, WebGL 등)의 바이너리 데이터를 효율적으로 처리하기 적합  

https://2ality.com/2015/09/typed-arrays.html

