---
order: 2
title: web
description: DOM 이벤트 매커니즘
summary:
keywords:
- dom
- dom event
- custom event
tags:
- web
created_time: 2024-11-01 22:30
modified_time: 2025-02-04 19:20
---

# DOM Event
: 브라우저에서 발생하는 이벤트를 처리하는 매커니즘  
: 이벤트가 발생하면 이를 감지해 이벤트를 전파하고 핸들링하는 시스템  

- [이벤트 처리 흐름](#event-handling-flow)
- [이벤트 객체](#event-object)
- [이벤트 모델](#event-model)
- [이벤트 등록](#event-registration)
- [사용자 정의 이벤트](#custom-event)


**이벤트**  
: 사용자 행동(클릭, 키 입력), 시스템 변화(폼 제출) 등으로 인해 발생하는 상태 변화  
: 특정 요소에서 이벤트가 발생하면 이벤트 리스너가 이를 감지하고 처리함  

요소 | 설명
---|---
이벤트 타입 | 이벤트를 식별하는 문자열
이벤트 대상 | 이벤트가 발생하는 DOM 요소
이벤트 리스너 | 이벤트를 감지하고 처리하는 함수
이벤트 핸들러 | 이벤트 리스너 안에서 실행되는 함수

```js
// 이벤트 대상
var el = document.getElementById('id');

// 이벤트 리스너
el.addEventListener('이벤트 타입', 이벤트 핸들러);
```


**이벤트 타입**  
https://www.w3.org/TR/uievents/#event-types-list



## Event Handling Flow
: 이벤트가 발생하고 처리되는 과정  

**단계**
```
이벤트 감지 => 이벤트 객체 생성 => 이벤트 전파 => 이벤트 리스너 호출
```

1. 이벤트가 발생하면 브라우저가 이를 감지해 즉시 [이벤트 객체](#event-object)를 생성하고
2. 해당 요소에 이벤트를 발생 시켜 [이벤트 모델](#event-model)에 따라 이벤트 전파 과정이 시작됨
3. 이벤트가 전파되면서 요소에 등록된 이벤트 리스너들이 순차적으로 호출되어 작업을 수행함



## Event Object
: 이벤트에 대한 정보를 가지고 있는 객체  
: 이벤트가 발생하면 브라우저가 이를 감지하고 [이벤트 객체](../api/dom-api/api-event.md)를 생성함  

이벤트 객체 | 이벤트 타입
---|---
Event         | abort, blur, change, focus, input, reset, submit, resize 등
UIEvent       | load, unload, resize, scroll
MouseEvent    | click, dblclick, mousedown, mouseup 등
PointerEvent  | pointerover, pointerenter, pointerdown, pointermove 등
WheelEvent    | wheel
KeyboardEvent | keydown, keyup
FocusEvent    | focus, blur, focusin, focusout
InputEvent    | input, beforeinput
TouchEvent    | touchstart, touchend, touchmove, touchcancel
DragEvent     | drag, dragstart, dragend, dragenter, dragover, dragleave, drop


**구조**
```
EventTarget
- Event 
  - UIEvent
    - MouseEvent
      - PointerEvent
      - WheelEvent
    - KeyboardEvent
    - FocusEvent
    - InputEvent 
    - TouchEvent
  - CompositionEvent
  - ClipboardEvent
  - DragEvent
  - AnimationEvent
  - TransitionEvent
  - ProgressEvent
  - StorageEvent
  - CustomEvent
```


**스펙**  
https://www.w3.org/TR/uievents



## Event Model
= 이벤트 흐름, 이벤트 전달  
: DOM 트리에서 이벤트가 전파되고 처리되는 메커니즘
: 이벤트는 3가지 단계(캡처링, 타깃, 버블링)를 거쳐 전파됨  


**캡처링**  
: 최상위 요소(window)에서 시작해 대상 요소로 이벤트가 전달됨  
: 부모 요소에서 자식 요소 방향으로 이벤트가 전파  

**타깃**  
: 이벤트가 실제로 발생한 대상 요소에 전달됨  

**버블링**  
: 대상 요소에서 시작해 최상위 요소(window)로 이벤트가 전달됨  
: 자식 요소에서 부모 요소 방향으로 이벤트가 전파  


```js
var el = document.getElementById('id');

function callback(e) {
  e.stopPropagation(); // 이벤트 전파 중단
}

el.addEventListener('click', callback, {
  capture: true,  // 캡처링 단계에서 이벤트 리스너 실행
  capture: false, // 버블링 단계에서 이벤트 리스너 실행
});
```


**이벤트 위임**
: 이벤트 모델을 활용한 처리 방법 
: 부모 요소에 이벤트 리스너를 등록하고 자식 요소에서 이벤트 리스너를

ex
```js
var ul = document.getElementById('ul');

ul.addEventListener('click', (ev) => {
  if(ev.target.tagName === 'LI') {
    console.log(e.target.textContent);
  }
});
```



## Event Registration
: 이벤트를 등록하는 다양한 방법들


**인라인 이벤트**  
: 요소의 속성에 이벤트 핸들러 등록  
: HTML과 JS 결합이 높고 유지보수가 떨어지므로 사용이 지양됨  

```html
<tag onclick="console.log('click')">
```


**이벤트 핸들러**  
: 요소의 [이벤트 속성](../html/html-attribute-event.md)을 통해 이벤트 등록  
: 동일한 이벤트 속성에 여러 이벤트를 등록해도 마지막에 정의된 이벤트만 동작함  

```js
var el = document.getElementById('id');
el.onclick = (ev) => {
  console.log(ev);
};
```


**이벤트 리스너**  
: addEventListener() 메소드를 사용해 이벤트 등록  
: 여러 이벤트를 등록할 수 있으며 이벤트 리스너를 동적으로 추가하고 제거할 수 있음  

```js
var el = document.getElementById('id');

function callback(ev) {
  // 이벤트가 발생하면 호출되는 함수 첫번째 인수로 이벤트 객체가 전달됨
  console.log(ev);

  // 이벤트 제거
  el.removeEventListener('click', callback);
}

// 이벤트 등록
el.addEventListener('click', callback);
```



## Custom Event
: [CustomEvent](../api/dom-api/api-customevent.md)를 통해 사용자 정의 이벤트 생성 지원  

```js
// 이벤트 생성
var customEvent = new CustomEvent('myCustomEvent', {
  detail: { message: '커스텀 이벤트 데이터' },
  bubbles: true,
  cancelable: true,
});

// 이벤트 리스너 등록
el.addEventListener('myCustomEvent', (ev) => {
  console.log(ev.detail.message);
});

// 이벤트 수동 디스패치
// 이벤트를 강제로 발생시켜 이벤트 리스너에 상태 변경을 알림
// 이벤트가 디스패치되지 않으면 리스너가 호출되지 않음
el.dispatchEvent(customEvent);
```


**dispatch**  
: 이벤트를 특정 요소로 전송하고 해당 요소의 이벤트 리스너를 트리거하는 메커니즘  
: 사용자 정의 이벤트는 명시적으로 디스패치가 필요함  