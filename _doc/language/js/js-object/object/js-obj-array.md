---
order: 1
title: JS
description: 자바스크립트 내장 객체 - Array
summary:
keywords:
- js
- js native object
- array
- foreach
- reduce
tags:
- js
created_time: 2025-02-20 02:32
modified_time: 2025-02-20 22:06
---

# JS Array
: 자바스크립트 [배열](../../js-lang/js-array.md)을 생성하고 공통 속성과 메소드를 제공하는 내장 객체  
: 유사 배열이 아닌 모든 배열은 Array.prototype을 상속받아 배열 관련 메소드를 사용함  
: 일부 메소드는 원본 배열을 수정하고 최신 불변 메소드는 새로운 배열을 반환함  

https://tc39.es/ecma262/#sec-array-objects


**속성**

속성 | 설명
---|---
length | 배열의 길이를 반환하거나 지정


**정적 메소드**
- [Array.from()](#arrayfrom)
- [Array.isArray()](#arrayisarray)
- [Array.of()](#arrayof)

**프로토타입 메소드**
- [Array.prototype.at()](#arrayprototypeat)
- [Array.prototype.concat()](#arrayprototypeconcat)
- [Array.prototype.copyWithin()](#arrayprototypecopywithin)
- [Array.prototype.entries()](#arrayprototypeentries)
- [Array.prototype.every()](#arrayprototypeevery)
- [Array.prototype.fill()](#arrayprototypefill)
- [Array.prototype.filter()](#arrayprototypefilter)
- [Array.prototype.find()](#arrayprototypefind)
- [Array.prototype.findIndex()](#arrayprototypefindindex)
- [Array.prototype.findLast()](#arrayprototypefindlast)
- [Array.prototype.findLastIndex()](#arrayprototypefindlastindex)
- [Array.prototype.flat()](#arrayprototypeflat)
- [Array.prototype.flatMap()](#arrayprototypeflatmap)
- [Array.prototype.forEach()](#arrayprototypeforeach)
- [Array.prototype.group()](#arrayprototypegroup)
- [Array.prototype.groupToMap()](#arrayprototypegrouptomap)
- [Array.prototype.includes()](#arrayprototypeincludes)
- [Array.prototype.indexOf()](#arrayprototypeindexof)
- [Array.prototype.join()](#arrayprototypejoin)
- [Array.prototype.keys()](#arrayprototypekeys)
- [Array.prototype.lastIndexOf()](#arrayprototypelastindexof)
- [Array.prototype.map()](#arrayprototypemap)
- [Array.prototype.pop()](#arrayprototypepop)
- [Array.prototype.push()](#arrayprototypepush)
- [Array.prototype.reduce()](#arrayprototypereduce)
- [Array.prototype.reduceRight()](#arrayprototypereduceright)
- [Array.prototype.reverse()](#arrayprototypereverse)
- [Array.prototype.shift()](#arrayprototypeshift)
- [Array.prototype.slice()](#arrayprototypeslice)
- [Array.prototype.some()](#arrayprototypesome)
- [Array.prototype.sort()](#arrayprototypesort)
- [Array.prototype.splice()](#arrayprototypesplice)
- [Array.prototype.toLocaleString()](#arrayprototypetolocalestring)
- [Array.prototype.toReversed()](#arrayprototypetoreversed)
- [Array.prototype.toSorted()](#arrayprototypetosorted)
- [Array.prototype.toString()](#arrayprototypetostring)
- [Array.prototype.toSpliced()](#arrayprototypetospliced)
- [Array.prototype.unshift()](#arrayprototypeunshift)
- [Array.prototype.values()](#arrayprototypevalues)
- [Array.prototype.with()](#arrayprototypewith)
- [Array.prototype/[@@iterator]()](#arrayprototypeiterator)


기능 | 메소드
---|---
제거 | pop(), shift(), splice()
추가 | push(), unshift(), concat()
수정 | fill(), copyWithin(), splice(), with()
순회 | forEach(), entries(), keys(), values(), Symbol.iterator()
검색 | find(), findIndex(), findLast(), findLastIndex(), includes(), indexOf(), lastIndexOf()
필터링 | filter(), every(), some()
변환 | map(), flatMap(), flat(), reduce(), reduceRight()
정렬 | sort(), toSorted(), reverse(), toReversed()
조각 | slice(), splice(), toSpliced()
결합 | concat(), join()



## Array.from()
: 유사 배열이나 [이터러블](../../js-lang/js-iterator.md) 객체를 배열로 반환  

```js
var arr = Array.from('string');

var arr = Array.from({length: 5});

var arr = Array.from({length: 5}, (_, i) => i = i + 1);
```



## Array.isArray()
: 주어진 값이 배열인지 여부를 반환

```js
Array.isArray([]) == true
Array.isArray(Array()) == true
Array.isArray(Array.of()) == true
Array.isArray(new Array()) == true
Array.isArray(Array.prototype) == true
```



## Array.of()
: 주어진 값을 요소로 갖는 새로운 배열 반환

```js
var arr = Array.of(1,2,3);
```



## Array.prototype.at()
: 지정한 인덱스에 해당하는 요소 반환
: 음수 인덱스를 지정하면 배열의 끝부터 역산함  

```js
var arr = [1,2,3];

arr.at(0) === 1
arr.at(5) === undefined

arr.at(-1) === 3
arr.at(-2) === 2
arr.at(-3) === 1
```



## Array.prototype.concat()
: 주어진 값이나 배열을 연결한 새로운 배열 반환  

```js
var arr = [0,0,0];

var newArr = arr.concat(0);
var newArr = arr.concat([1,1,1]);
var newArr = arr.concat([1,1,1], 2, 3, 4);

// 중첩 배열은 유지됨
var newArr = arr.concat([1,1,1, [2,2,2]]);
```



## Array.prototype.copyWithin()
: 대상 인덱스에 지정한 시작 인덱스에 해당하는 요소를 할당  
: 요소가 추가되지 않고 교체되므로 배열의 길이가 바뀌지 않음  

```js
var arr = [1,2,3,4,5];

arr.copyWithin(0, -1);
arr.toString() === '5,2,3,4,5'

arr.copyWithin(-1, 0);
arr.toString() === '1,2,3,4,1'
```



## Array.prototype.entries()
: 인덱스와 요소를 키/값으로 하는 이터레이터 객체 반환  

```js
var arr = ['a','b','c'];
var iterator = arr.entries();

for(var [key, value] of iterator){
  console.log(key, value);
}
```

**entries() vs values()**  
: entries()는 인덱스와 요소를 반환하고 values()는 요소(값)만 반환함  



## Array.prototype.every()
: 요소를 순회하며 주어진 콜백 함수를 적용하고 모든 결과가 참이면 참을 반환  
: 빈 배열에서 호출하면 무조건 참을 반환함  

```js
var arr = [0,0,0];

var result = arr.every((value) => value === 0);
```

**every() vs some()**  
: every()는 조건을 만족하지 않으면 순회를 중단하고 some()는 조건을 만족하면 순회를 중단함



## Array.prototype.fill()
: 요소를 순회하며 주어진 값을 지정된 인덱스 범위에 할당함  

```js
var arr = [0,0,0,0,0];

arr.fill(1);
arr.toString() === '1,1,1,1,1'

arr.fill(1, 0, 5);
arr.toString() === '1,1,1,1,1'

arr.fill(1, 2);
arr.toString() === '0,0,1,1,1'

// 배열의 길이를 변화시키지 않음
arr.fill(1, 0, 10);
```



## Array.prototype.filter()
: 요소를 순회하며 주어진 콜백 함수를 적용하고 그 결과를 요소로 갖는 새로운 배열 반환  

```js
var arr = [1,2,3,4,5,6,7,8];

var newArr = arr.filter((value, index) => value < 5);
newArr.toString() === '1,2,3,4'
```



## Array.prototype.find()
: 요소를 순회하며 주어진 콜백 함수를 적용하고 이를 만족하는 첫 번째 요소 반환  
: 만족하는 요소가 없는 경우 undefined를 반환함  

```js
var arr = [1,2,3,4,5];

var result = arr.find((value, index) => value > 1);
result === 2

var arr = [
  { key: 1, value: '일' },    
  { key: 2, value: '이' },    
  { key: 3, value: '삼' },  
  { key: 1, value: 'one' },  
  { key: 2, value: 'two' },  
];

var result = arr.find(item => item.key === 1);
// result = { key: 1, value: '일' }
```



## Array.prototype.findIndex()
: 요소를 순회하며 주어진 콜백 함수를 적용하고 이를 만족하는 첫 번째 요소의 인덱스 반환  
: 만족하는 요소가 없는 경우 -1을 반환함  



## Array.prototype.findLast()
: 요소를 역순으로 순회하며 주어진 콜백 함수를 적용하고 이를 만족하는 첫 번째 요소 반환

```js
var arr = [1,2,3,4,5];

var result = arr.findLast((value, index) => value > 1);
result === 5

var arr = [
  { key: 1, value: '일' },    
  { key: 2, value: '이' },    
  { key: 3, value: '삼' },  
  { key: 1, value: 'one' },  
  { key: 2, value: 'two' },  
];

var result = arr.findLast(item => item.key === 3);
// result = { key: 3, value: '삼' }
```



## Array.prototype.findLastIndex()
: 요소를 역순으로 순회하며 주어진 콜백 함수를 적용하고 이를 만족하는 첫 번째 요소의 인덱스를 반환  
: 만족하는 요소가 없는 경우 -1을 반환함  



## Array.prototype.flat()
: 주어진 깊이만큼 평평한(flat) 새 배열을 만들어 반환  
: 깊이를 생략하면 1단계만 적용되며, 배열에 구멍이 있는 경우 이를 제거함  

```js
var arr = [0,0,0, [1,1,1]];
var newArr = arr.flat();
// newArr = [0,0,0,1,1,1]

var arr = [[1],[[2]],[[[3]]]];
var newArr = arr.flat(2);
// newArr = [1,2,[3]]

var newArr = arr.flat(Infinity);
// newArr = [1,2,3]

var arr = [0, ,,, 0];
var newArr = arr.flat();
newArr.length === 2
```



## Array.prototype.flatMap()
: 요소를 순회하면서 주어진 콜백 함수를 적용하고 flat한 새 배열 반환  
: map() 수행 후 flat(1)을 적용한 메소드  

```js
var arr = ['hello', 'world'];

var newArr = arr.flatMap(v => v.split(""));
newArr.toString() === 'h,e,l,l,o,w,o,r,l,d'
```



## Array.prototype.forEach()
: 요소를 순회하며 주어진 콜백 함수를 적용함  
: forEach()는 break같은 빠져나가는 문장이 없으며 순회를 중단할 수 없음  
: async/await를 지원하지 않으므로 비동기 처리에는 for of 사용  

```js
var arr = [0,0,0];

arr.forEach((value, index, arr) => {
  console.log(value);
});
```

**forEach() vs map()**  
: forEach()는 반환값이 없으며 map()은 새로운 배열을 반환함  



## Array.prototype.group()
: 요소를 순회하며 콜백 함수의 반환값을 키로 사용해 요소를 그룹화한 객체 반환  
: 현재 제안 단계에 있으며 일부 브라우저에서만 지원  

```js
var arr = [
  { key: 1, value: '일' },    
  { key: 2, value: '이' },    
  { key: 3, value: '삼' },  
  { key: 1, value: 'one' },  
  { key: 2, value: 'two' },  
];

var group = arr.group(item => item.key);
/*
group = {
  1: [
    { key: 1, value: '일' }, 
    { key: 1, value: 'one' },  
  ],
*/
```



## Array.prototype.groupToMap()
: 요소를 순회하며 콜백 함수의 반환값을 키로 사용해 요소를 그룹화한 Map 객체 반환  



## Array.prototype.includes()
: 요소를 순회하며 주어진 값이 요소로 존재하면 참 반환  
: 검색을 시작할 시작 인덱스를 지정할 수 있음  

```js
var arr = [1,2,3,4,5];

var result = arr.includes(3);
result === true

var result = arr.includes(3, 3);
result === false


var arr = [NaN, undefined];
arr.includes(NaN) === true
arr.includes(undefined) === true
```

**includes() vs indexOf()**  
: includes()는 요소의 여부만 반환하고 indexOf()는 요소의 인덱스를 반환함  



## Array.prototype.indexOf()
: 요소를 순회하며 주어진 값을 요소로 가지는 첫 번째 인덱스 반환  
: 검색을 시작할 위치 인덱스를 지정할 수 있으며 생략할 경우 기본값은 0  
: 요소를 비교할 때 완전 일치 연산자를 사용하며, 해당하는 요소가 없다면 -1을 반환함  

```js
var arr = [1,1,1];
var result = arr.indexOf(1);
result === 0

var arr = [NaN, undefined];
arr.indexOf(NaN) === -1
arr.indexOf(undefined) === 1
```



## Array.prototype.join()
: 모든 요소를 연결해 하나의 문자열로 만들어 반환  
: 구분자를 지정할 수 있으며 생략시 쉼표가 기본 구분자로 삽입됨  
: 요소가 undefined나 null이면 빈 문자열로 처리됨  

```js
var arr = [0,0,0];
var result = arr.join('');
result === '000'
```



## Array.prototype.keys()
: 배열의 인덱스를 키로 가지는 새 이터레이터 객체 반환  

```js
var arr = [,,,,,];
var iterator = arr.keys();

for(var key of iterator) {
  console.log(key);
}
```



## Array.prototype.lastIndexOf()
: 요소를 역순으로 순회하며 주어진 값을 요소로 가지는 첫 번째 인덱스 반환  
: 검색을 시작할 위치 인덱스를 지정할 수 있으며 생략할 경우 기본값은 배열의 마지막 인덱스  
: 요소를 비교할 때 완전 일치 연산자를 사용하며, 해당하는 요소가 없다면 -1을 반환함  



## Array.prototype.map()
: 요소를 순회하며 주어진 콜백 함수를 적용하고 그 결과를 갖는 새로운 배열 반환   

```js
var arr = [1,2,3,4,5];

var newArr = arr.map((value, index, arr) => value * 2);
```



## Array.prototype.pop()
: 배열의 마지막 요소를 제거하고 해당 요소를 반환  
: 배열을 순회하지 않고 마지막 요소만 제거  



## Array.prototype.push()
: 주어진 값을 배열의 마지막 요소로 추가하고 변경된 배열의 길이 반환  
: 배열을 순회하지 않고 요소를 추가함  



## Array.prototype.reduce()
: 요소를 순회하며 주어진 콜백 함수를 적용하고 결과를 누적하고 이를 반환  
: reduce() 콜백 함수는 4개의 매개 변수를 받음 (accumulator, currentValue, index, array)  
: 초기값을 받으며 초기값이 없으면 배열의 첫 번째 요소가 초기값이 됨  

```js
var arr = [1,2,3,4,5];

var result = arr.reduce((x, y) => x + y);
result === 15

var result = arr.reduce((x, y) => x + y, 10);
result === 25

var newArr = arr.reduce((x, y) => {
  x.push(y*2);
  return x;
}, []);

var obj = arr.reduce((x, y, i) => {
  x[i] = y;
  return x;
}, {});
```



## Array.prototype.reduceRight()
: 요소를 순회하며 주어진 콜백 함수를 적용하고 이를 하나의 결과로 반환 

```js
var arr = [1,2,3,4,5];

var result = arr.reduceRight((x, y) => x + y);
result === 15
```



## Array.prototype.reverse()
: 요소를 순회하며 요소 순서를 반대로 함  



## Array.prototype.shift()
: 배열의 첫 번째 요소를 제거하고 해당 요소를 반환  
: 배열을 순회하지 않고 첫 번째 요소만 제거  
: [push()](#arrayprototypepush)와 함께 사용해 큐를 구현할 수 있음  



## Array.prototype.slice()
: 주어진 인덱스 범위에 해당하는 요소를 갖는 새로운 배열 반환  
: 종료 인덱스에 해당하는 요소는 포함되지 않음  

```js
var arr = [1,2,3,4,5,6,7,8];

var newArr = arr.slice(0, 4);
newArr.length === 4

// 배열 복사
var newArr = arr.slice();
```



## Array.prototype.some()
: 요소를 순회하며 주어진 콜백 함수를 적용하고 참인 결과가 나오면 순회를 중단하고 참을 반환  
: 빈 배열에서 호출하면 무조건 거짓을 반환함  

```js
var arr = [1,2,3];

var result = arr.some((value, index, array) => value < 2);
```



## Array.prototype.sort()
: 요소를 순회하며 요소를 정렬함  
: 기본적으로 문자열 기준 정렬되며, 숫자 정렬 시 비교 함수 필요

```js
var arr = [1,4,8,2,6,9,5,3,7];

arr.sort((a, b) => a - b); // 오름차순
arr.sort((a, b) => b - a); // 내림차순
```

**sort() vs toSorted()**  
: sort()는 원본 배열을 정렬하고 toSorted()는 정렬된 새로운 배열을 반환함  



## Array.prototype.splice()
: 요소를 순회하며 지정된 인덱스에 새 요소를 추가하거나 기존 요소를 교체하거나 제거함  
: 요소를 제거하는 경우 제거된 요소를 갖는 새 배열을 반환하며 제거된 요소가 없으면 빈 배열을 반환함  

> splice(start, deleteCount, ...items)

매개 변수 | 설명
---|---
start | 변경될 인덱스 
deleteCount | 제거할 요소의 개수로 0이면 제거없이 삽입만 수행
items | 추가될 요소

```js
var arr = [1, 1, 2];

// 새로운 요소 추가
arr.splice(0, 0, 0);

// 기존 요소 교체
arr.splice(2, 1, 2);
arr.splice(3, 1, 3);
or
arr.splice(2, 2, 2, 3);

// 기존 요소 제거
arr.splice(0, 0);

// 모든 요소 제거
arr.splice(0);

// 요소 복제
var newArr = arr.splice(0);
var newArr = arr.splice(0, arr.length);
```

특정 요소 제거
```js
var arr = ['a','b','c'];

var index = arr.indexOf('b');
var target = arr.splice(index, 1);
```

**splice() vs toSpliced()**  
: splice()는 원본 배열을 수정하고 toSpliced()는 수정된 새로운 배열을 반환함



## Array.prototype.toLocaleString()
: 모든 요소를 지역화된 문자열로 변환하여 연결한 문자열 반환  
: 요소가 null이나 undefined인 경우 빈 문자열로 변환됨  

```js
var prices = [1000, 2000, 3000];
var korPrices = prices.toLocaleString('ko-KR', { style: 'currency', currency: 'KRW' });
// korPrices = ₩1,000,₩2,000,₩3,000

var dates = [new Date()];
var korDates = dates.toLocaleString('ko-KR')
```



## Array.prototype.toReversed()
: 요소를 역순으로 순회하며 요소의 순서를 반대로 뒤집은 새로운 배열 반환  

```js
var arr = ['a','b','c'];
var newArr = arr.toReversed();
// newArr = ['c','b','a']
```



## Array.prototype.toSorted()
: 요소를 순회하며 요소를 정렬한 새로운 배열 반환  

```js

var arr = [1,4,8,2,6,9,5,3,7];
var newArr = arr.toSorted();
// newArr = [1,2,3,4,5,6,7,8,9]

// 비교 함수?
arr.toSorted((a, b) => b - a);
```



## Array.prototype.toString()
: 요소를 문자열로 반환  

```js
var arr = [1,2,3];
arr.toString() === '1,2,3'
```



## Array.prototype.toSpliced() 
: 요소를 순회하며 지정한 인덱스에 위치한 요소를 추가, 교체, 제거한 새로운 배열 반환  



## Array.prototype.unshift()
: 주어진 값을 배열의 첫 번째 요소로 추가하고 변경된 배열의 길이를 반환  

```js
var arr = [1,2,3];

var length = arr.unshift(0,0,0);
length === 6
```



## Array.prototype.values()
: 요소를 값으로 하는 이터레이터 객체 반환  

```js
var arr = [1,2,3];

var iterator = arr.values();
iterator.next();
```


## Array.prototype.with()
: 지정한 인덱스의 요소를 변경한 새로운 배열 반환  
: 음수 인덱스가 주어지면 배열의 끝부터 역산함  

```js
var arr = [0,0,0];

var newArr = arr.with(0, 1);
var newArr = arr.with(-1, 1);
```



## Array.prototype\[@@iterator]()
: 이터러블 프로토콜을 위한 내부 메소드  
: 배열의 요소를 순차적으로 접근할 수 있는 이터레이터 객체 반환  
: for of 반복문이나 전개 연산자 내부에서 사용됨  

```js
var arr = [0,0,0];

var iterator = arr[Symbol.iterator]();
```