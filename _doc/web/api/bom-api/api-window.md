---
order: 1
title: Web API
description: Web API - Window
summary:
keywords:
- web api
- bom api
- window
tags:
- web
- web api
created_time: 2024-11-06 01:00
modified_time: 2025-02-26 11:29
---

# Window API
: [WindowOrWorkerGlobalScope](../windoworworkerglobalscope.md) 인터페이스를 구현하는 최상위 객체  
: window 객체는 브라우저 기능을 자바스크립트 인터페이스로 노출시키는 브릿지 역할을 함  
: 웹 문서가 로드될 때 자동으로 생성되며 웹 문서를 닫으면 제거되고 관련된 데이터도 정리됨  

**스펙**  
https://html.spec.whatwg.org/multipage/window-object.html#window


**속성과 메소드**

속성 | 설명
---|---
window     | 현재 Window 객체 반환
self       | 현재 Window 객체 반환
document   | [Document](../dom-api/api-document.md) 객체 반환
name       | 윈도우 이름을 반환하거나 지정
location   | [Location](./api-location.md) 객체 반환
history    | [History](./api-history.md) 객체 반환
navigation | [Navigation](../web-api/api-navigation.md) 객체 반환
customElements | CustomElementRegistry 객체 반환
locationbar  | locationbar가 표시되면 true 반환
menubar      | menubar가 표시되면 true 반환
personalbar  | personalbar가 표시되면 true 반환
scrollbars   | scrollbars가 표시되면 true 반환
statusbar    | statusbar가 표시되면 true 반환
toolbar      | toolbar가 표시되면 true 반환
status       | statusbar의 텍스트를 반환하거나 지정
closed       | 윈도우가 닫혀있으면 true 반환
frames       | WindowProxy 객체 반환
length       | 프레임 수 반환
top          | 윈도우가 계층 구조를 형성한다면 최상위에 위치한 윈도우 반환
opener       | 현재 Window를 연 Window 객체 반환
parent       | 현재 Window의 부모 Window 객체 반환
frameElement | 현재 Window가 포함된 Element 객체 반환
navigator    | [Navigator](./api-navigator.md) 객체 반환
originAgentCluster | 동일 출처 문서들의 에이전트 클러스터링 상태를 나타내는지 여부 반환


**close()**  
: 현재 창을 닫고 창이 닫히면 true를 반환하고 닫히지 않으면 false 반환  


**stop()**  
: 현재 웹 문서가 로딩중이면 로딩을 중지  


**focus()**  
: 현재 창이나 탭을 포커스함


**blur()**  
: 현재 창이나 탭의 포커스를 제거함  


**open()**  
: 새로운 창이나 탭을 열어 지정한 URL을 로드  
: URL을 지정하지 않으면 about:blank 반환  

```js
var target = '_blank';

var options = {
  // 윈도우 위치
  top: 0,
  left: 0,
  screenX: 0,
  screenY: 0,

  // 윈도우 크기
  width: 0,
  height: 0,
  innerWidth: 0,
  innerHeight: 0,

  // UI 표시
  menubar: true,
  toolbar: true,
  titlebar: true,
  status: true,
  location: true,
  resizable: true,
  scrollbars: true,
};

window.open('http://example.com', target, options);
```


**postMessage()**  
: 창, 프레임, 웹 워커 간 데이터를 전송하는 메소드  

index.html
```html
<button id="button">button</button>

<script>
var worker = new Worker('worker.js');

document.getElementById('button').addEventListener('click', () => {
  worker.postMessage('index data');
});

worker.addEventListener('message', (ev) => {
  console.log(ev.data);
});
</script>
```

worker.js
```js
self.addEventListener('message', (ev) => {
  console.log(ev.data);
  self.postMessage('worker data');
});
```



## Window Extension
: window 인터페이스에 기능을 추가해 확장


### CSSOM
: 뷰포트, 스크롤, 창 크기, 위치 등 정보 제공  

**스펙**  
https://drafts.csswg.org/cssom-view/#dom-window-screen


**속성과 메소드**

속성 | 설명
---|---
screen         | Screen 객체 반환
visualViewport | VisualViewport 객체 반환
innerWidth  | 스크롤을 포함한 윈도우의 뷰포트 너비 반환  
innerHeight | 스크롤을 포함한 윈도우의 뷰포트 높이 반환  
scrollX     | 현재 문서의 수평 스크롤 위치를 반환
scrollY     | 현재 문서의 수직 스크롤 위치를 반환
pageXOffset | 문서의 수평 오프셋 반환
pageYOffset | 문서의 수직 오프셋 반환
screenX     | 윈도우의 좌측 가장자리의 스크린 좌표를 반환
screenY     | 윈도우의 상단 가장자리의 스크린 좌표를 반환
outerWidth  | 윈도우의 전체 너비 반환 (브라우저 UI 포함됨)
outerHeight | 윈도우의 전체 높이 반환 (브라우저 UI 포함됨)
devicePixelRatio | 현재 표시 장치의 물리적 픽셀과 CSS 픽셀의 비율 반환


**getComputedStyle()**  
: 전달받은 요소의 모든 CSS 속성을 담은 [CSSStyleDeclaration](../css-api/cssom.md#cssstyledeclaration) 객체 반환

```js
var element = document.getElementById('element');
var css = window.getComputedStyle(element);
```


**matchMedia()**   
: 전달받은 미디어 쿼리에 대한 MediaQueryList 객체 반환  

```js
var mq = window.matchMedia('min-width:300px');
```