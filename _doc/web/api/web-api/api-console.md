---
order: 1
title: Web API
description: Web API - Console API
summary:
keywords:
- web api
- console
tags:
- web
- web api
created_time: 2024-11-05 22:34
modified_time: 2025-02-26 12:02
---

# Console API
: 브라우저의 개발자 도구를 통해 디버깅, 로깅, 오류 추적 등을 지원하기 위한 인터페이스  
: console은 전역 객체로 브라우저 개발자 도구의 콘솔과 연동됨  

**스펙**  
https://console.spec.whatwg.org


**로그 레벨별 메소드**

레벨 | 메소드
---|---
log   | log(), trace(), dir(), dirxml(), group(), groupCollapsed(), debug(), timeLog()
info  | count(), info(), timeEnd()
warn  | warn(), countReset()
error | error(), assert()


**console.assert()**  
: 주어진 조건이 거짓인 경우 메시지 출력  

```js
console.assert(false, 'message');
```


**console.clear()**  
: 스택을 전부 지움  


**console.table()**  
: 객체의 데이터를 표 형태로 출력  


**console.trace()**  
: 스택 트레이스 출력  


**console.dir()**  
: 객체의 속성을 계층 구조로 출력  
: 일반적으로 DOM 요소나 JSON 객체를 출력하는데 사용  


**console.count()**  
: 호출된 횟수를 카운트 함  
: 레이블을 지정하면 레이블에 카운트되며 레이블을 지정하지 않으면 default 레이블이 적용됨  

```js
function fn() {
  console.count('label');
}
fn();
fn();

// 카운트 초기화
console.countReset('label');
```


**console.group()**  
: 로그를 그룹으로 묶어 출력  

```js
console.group();
console.log('1');
console.log('2');
console.log('3');
console.groupEnd();
```


**console.time()**  
: 코드 실행 시간 측정  

```js
console.time('label');

let result = 0;
for(let i = 0; i < 1000; i++) {
  result += i;
  if(i == 500) {
    console.timeLog('label');
  }
}

console.timeEnd('label');
```


**console.profile()**  
: 성능 프로파일링 메소드로 크롬이나 파이이폭스에서만 지원  
: 메소드 호출 후 개발자 도구의 Performance 또는 Profiles 탭을 통해 확인  

```js
console.profile('label');

let result = 0;
for(let i = 0; i < 1000; i++) {
  result += i;
}

console.profileEnd('label');
```