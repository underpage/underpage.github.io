---
order: 2
title: web
description: Web API - EventTarget
summary:
keywords:
- web
- web api
- eventtarget
tags:
- web api
created_time: 2025-02-03 00:29
modified_time: 2025-02-04 20:24
---

# EventTarget
: 이벤트를 처리를 위한 기본 기능을 제공하는 인터페이스  
: [Event](./dom-api/api-event.md)는 이벤트 정보를 담는 인터페이스  

**스펙**  
https://dom.spec.whatwg.org/#interface-eventtarget


**구현**
- [Window](./bom-api/api-window.md)
- [ScreenOrientation](./bom-api/api-screen.md#screenorientation)
- [Node](./dom-api/api-node.md)
- ...


**addEventListener()**  
: 주어진 이벤트 타입으로 이벤트 리스너를 등록

```js
var el = document.getElementById('id');

el.addEventListener('type', callback, {
  capture: true,   // 캡처링 단계에서 리스너를 호출
  once: true,      // 리스너를 한 번만 실행하고 제거
  passive: true,   // 리스너가 preventDefault()를 호출하지 않음
  signal: AbortController.signal // AbortSignal를 통해 리스너 제거
});
```


**removeEventListener()**  
: 등록한 이벤트 리스너 제거

```js
var el = document.getElementById('id');

el.addEventListener('type', callback);
el.removeEventListener('type', callback);
```


**dispatchEvent()**  
: 이벤트 수동 발생
