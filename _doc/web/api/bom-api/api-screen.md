---
order: 3
title: Web API
description: Web API - Screen
summary:
keywords:
- web api
- bom api
- screen
- screenorientation
tags:
- web
- web api
created_time: 2024-11-06 01:00
modified_time: 2025-02-26 11:28
---

# Screen API
: 브라우저 화면에 대한 정보를 제공하는 인터페이스  

**스펙**  
https://www.w3.org/TR/cssom-view/#the-screen-interface


**속성과 메소드**

속성 | 설명
---|---
availWidth  | 작업 표시줄, 메뉴바 등을 제외한 사용 가능한 화면 너비 반환  
availHeight | 작업 표시줄, 메뉴바 등을 제외한 사용 가능한 화면 높이 반환
width       | 전체 화면 너비 반환
height      | 전체 화면 높이 반환
colorDepth  | 화면 색상을 표현하는 비트 수 반환 (24, 32)
pixelDepth  | 화면 해상도(픽셀 깊이) 반환
orientation | 화면의 방향에 대한 정보를 담은 ScreenOrientation 객체 반환  



## ScreenOrientation
: 브라우저에서 화면 방향과 관련된 정보를 제공하는 인터페이스
: [EventTarget](../event-target.md)을 확장하여 이벤트 리스너 사용 가능

**스펙**  
https://www.w3.org/TR/screen-orientation/#screenorientation-interface


**속성과 메소드**

속성 | 설명
---|---
type   | 화면의 방향 유형을 반환하거나 지정
angle  | 화면의 방향 각도를 반환하거나 지정 (0, 90, 180, 270)


**type**
```js
// 화면이 모든 방향으로 자유롭게 회전할 수 있도록 허용
screen.orientation.type = 'any';

// 장치의 자연스러운 방향으로 지정
screen.orientation.type = 'natural';

// 가로 방향으로 잠금을 설정
screen.orientation.type = 'landscape';

// 세로 방향으로 잠금을 설정
screen.orientation.type = 'portrait';

// 기본 화면 + 세로 모드로 잠금 설정
screen.orientation.type = 'portrait-primary';

// 보조 화면 + 세로 모드로 잠금 설정
screen.orientation.type = 'portrait-secondary';

// 기본 화면 + 가로 모드로 잠금 설정
screen.orientation.type = 'landscape-primary';

// 보조 화면 + 가로 모드로 잠금 설정
screen.orientation.type = 'landscape-secondary';
```


**event type**
```js
screen.addEventListener('change', () => {
  console.log(screen.orientation.type);
  console.log(screen.orientation.angle);
});
```


**lock()**   
: 주어진 값으로 화면의 방향을 잠금  
: Promise를 반환하는 메소드로 async/await 구문 사용 권장

```js
screen.orientation.lock('portrait');
```


**unlock()**   
: 화면 방향 잠금을 해제  