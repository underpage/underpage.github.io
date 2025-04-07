---
order: 4
title: Web API
description: Web API - History
summary:
keywords:
- web api
- bom api
- history
tags:
- web
- web api
created_time: 2024-11-06 01:00
modified_time: 2025-02-26 11:28
---

# History API
: 브라우저의 방문 기록을 관리하고 제어하기 위한 인터페이스  

**스펙**  
https://html.spec.whatwg.org/multipage/history.html#the-history-interface


**속성과 메소드**

속성 | 설명
---|---
length  | 방문 스택에 기록된 목록 수 반환
scrollRestoration  | 스크롤 위치 복원 여부를 지정하거나 반환   
state   | 현재 기록된 상태 반환


```js
// 페이지 이동시 이전 스크롤 위치로 복원
history.scrollRestoration = 'auto';

// 스크롤 위치를 복원하지 않음
history.scrollRestoration = 'manual';
```


**history.go()**  
: 현재 페이지를 기준으로 전달된 값만큼 페이지 이동  

```js
history.go(-1) === history.back()
history.go(1) === history.forward()

history.go() === location.reload()
history.go(0) === location.reload()
```


**pushState()**  
: 방문 스택에 새로운 기록 추가   
: 페이지를 로드하지 않음  

```js
history.pushState({}, 'title', 'url');
```


**replaceState()**  
: 현재 기록 상태를 수정  

```js
history.replaceState({}, 'title', 'url');
```