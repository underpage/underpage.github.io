---
order: 7.1
title: Web API
description: Web API - CustomEvent
summary:
keywords:
- web api
- dom api
- custom event
tags:
- web
- web api
created_time: 2025-02-03 10:19
modified_time: 2025-02-26 11:37
---

# CustomEvent
: 사용자 정의 이벤트를 만들기 위한 인터페이스로 [Evnet](./api-event.md)를 상속함  

**스펙**  
https://dom.spec.whatwg.org/#interface-customevent


ex.
```js
var customEvent = new CustomEvent('myCustomEvent', {
  detail: { message: '커스텀 이벤트 데이터' },
});

var el = document.getElementById('id');

el.addEventListener('myCustomEvent', (ev) => {
  console.log(ev.detail.message);
});

el.dispatchEvent(customEvent);
```


**속성과 메소드**

속성 | 설명
---|---
detail | 사용자 데이터 정의 또는 반환