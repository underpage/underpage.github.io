---
order: 1
title: web
description: Web API - WindowOrWorkerGlobalScope
summary:
keywords:
- web
- web api
- windoworworkerglobalscope
tags:
- web
- web api
created_time: 2024-11-06 01:07
modified_time: 2025-02-04 20:11
---

# WindowOrWorkerGlobalScope
: 브라우저 환경과 워커 환경 모두에서 필요한 공통 기능을 제공하는 인터페이스  
: 브라우저 창이나 탭마다 독립적인 메인 스레드가 생성됨  
: 웹 워커는 한 개의 메인 스레드와 연결되어 있으며 메인 스레드와 별도로 실행되는 스레드  

**스펙**  
https://html.spec.whatwg.org/multipage/webappapis.html#windoworworkerglobalscope  


**구현**
- [Window](./bom-api/api-window.md)
- [WorkerGlobalScope](./web-api/api-web-worker.md#workerglobalscope)


**속성과 메소드**

속성 | 설명
---|---
origin  | URL origin을 문자열로 반환  
isSecureContext     | 현재 컨텍스트가 안전한지 여부 반환
crossOriginIsolated | 현재 컨텍스트가 교차 출처 격리 상태인지 여부 반환


**btoa()**  
: U+0000 ~ U+00FF 범위의 문자열을 Base64로 인코딩하고 반환  


**atob()**  
: Base64로 인코딩된 데이터를 디코딩하고 반환  


**setTimeout()**  
: 제한 시간 후 핸들러를 한 번만 호출  


**clearTimeout()**  
: 제한 시간 후 setTimeout() 제거  


**setInterval()**  
: 제한 시간마다 핸들러를 호출


**clearInterval()**  
: 제한 시간 후 setInterval() 제거  


**queueMicrotask()**  
: 작업을 마이크로태스크 큐에 추가하면 현재 작업 완료 후 해당 작업이 실행됨  
: 자바스크립트는 마이크로태스크 큐를 통해 비동기 작업의 실행 순서를 제어  
: 즉시 실행이 필요한 경우 마이크로태스크 큐에 추가하면 작업을 바로 처리할 수 있음  
: Promise 객체의 then()과 catch()는 내부적으로 queueMicrotask()를 사용함  

```js
setTimeout(() => {
  console.log('2');
}, 0);

// 다음 작업
queueMicrotask(() => {
  console.log('1');
});

// 현재 작업
console.log('0');
```


**createImageBitmap()**  
: 주어진 리소스로부터 ImageBitmap 객체 생성  
: ImageBitmap 객체는 GPU에 최적화된 형태로 생성되며 Canvas와 상호작용을 지원함  
: 리소스가 여러번 사용되는 경우 ImageBitmap 객체로 생성하면 성능을 향상할 수 있음  

```js
var img = new Image();
img.src = 'image.jpg';

img.onload = async () => {
  var bitmap = await createImageBitmap(img);
}
```