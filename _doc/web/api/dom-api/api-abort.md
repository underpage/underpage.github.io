---
order: 8
title: Web API
description: Web API - Abort
summary:
keywords:
- web api
- dom api
- abortcontroller
- abortsignal
tags:
- web
- web api
created_time: 2025-02-03 08:38
modified_time: 2025-02-26 11:35
---

# Abort
: 작업을 중단(abort)하기 위한 인터페이스 집합  
: Event, Promise, Fetch 등 일부 기능에서 작업을 중단하기 위해 도입됨  

**인터페이스**
- [AbortController](#abortcontroller)
- [AbortSignal](#abortsignal)

ex
```js
var controller = new AbortController();
var signal = = controller.signal;

fetch('url', {signal})
  .then((response) => console.log(response))
  .catch((err) => console.log(err));

// 일정 시간 후 요청 중단
setTimeout(() => controller.abort(), 3000);
```



## AbortController
: 작업을 취소하기 위해 중단 신호를 보내는 인터페이스  

**스펙**  
https://dom.spec.whatwg.org/#interface-abortcontroller


**속성과 메소드**

속성 | 설명
---|---
signal | AbortSignal 객체 반환    


**abort()**  
: 작업 취소 신호를 전달하는 메소드  
: 호출되면 AbortSignal 객체의 aborted 속성이 true로 변경됨  



# AbortSignal
: 중단 신호를 나타내기 위한 인터페이스  

**스펙**  
https://dom.spec.whatwg.org/#interface-AbortSignal


**속성과 메소드**

속성 | 설명
---|---
aborted | 요청이 중단되면 true를 반환
reason  | 요청이 중단된 이유 반환

```js
var controller = new AbortController();
var signal = controller.signal;

signal.addEventListener('abort', () => {
  console.log(signal.reason);
});

// 작업 중단
controller.abort('중단 이유');
```


**timeout()**  
: 지정한 시간 후 자동으로 작업 중단하는 정적 메소드  

```js
var controller = new AbortController();
var signal = AbortSignal.timeout(3000);
```