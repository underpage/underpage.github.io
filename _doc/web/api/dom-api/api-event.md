---
order: 7
title: Web API
description: Web API - Event
summary:
keywords:
- web api
- dom api
- event
tags:
- web
- web api
created_time: 2025-02-03 08:50
modified_time: 2025-02-26 11:36
---

# Event
: [DOM 이벤트](../../dom/dom-event.md) 처리를 위한 속성과 메소드가 정의된 인터페이스

**스펙**  
https://dom.spec.whatwg.org/#interface-event


**속성과 메소드**

속성 | 설명
---|---
type       | 이벤트 타입을 문자열로 반환  
target     | 이벤트가 발생한 DOM 요소 반환  
currentTarget | 현재 이벤트 핸들러가 실행되고 있는 DOM 요소 반환  
eventPhase | 이벤트 전파 단계를 나타내는 숫자 반환
bubbles    | 이벤트 버블링 방식 사용 여부 반환
cancelable | 이벤트 취소 가능 여부 반환  
defaultPrevented | preventDefault()가 호출되었는지 여부 반환
composed   | 이벤트가 Shadow DOM 경계를 넘어 전파될 수 있는지 여부 반환
isTrusted  | 이벤트가 브라우저에 의해 생성되면 true 반환
timeStamp  | 이벤트 생성 시간을 밀리초로 반환


**currentTarget**

값 | 설명
---|---
0 | 이벤트가 처리되지 않은 상태
1 | 캡처링 단계
2 | 대상 요소에 도달한 단계
3 | 버블링 단계


**target vs currentTarget**  
```html
<div id="container" style="width:150px;height:150px;background:red;">
  <div style="width:100px;height:100px;background:yellow;"></div>
</div>

<script>
var el = document.getElementById('container');
el.addEventListener('click', callback);

function callback(e) {
  console.log(e.target);
  console.log(e.currentTarget);
}
</script>
```


**composedPath()**  
: 이벤트가 통과하는 요소들을 배열로 반환  


**stopPropagation()**  
: 이벤트 전파 중단  
: 이벤트 버블링과 캡처링 전파를 중단하며 동일한 요소의 이벤트 리스너는 실행됨  


**stopImmediatePropagation()**  
: 이벤트 전파를 완전히 중단해 동일한 요소라도 이벤트 리스너가 실행되지 않음  


**preventDefault()**  
: 요소의 기본 동작을 취소함  