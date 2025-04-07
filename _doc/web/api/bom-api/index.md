---
order: 1
title: Web API
description: Web API - 브라우저 객체 모델 API
summary:
keywords:
- web api
- bom api
- window
- navigator
- history
- location
tags:
- web
- web api
created_time: 2024-11-06 00:56
modified_time: 2025-02-26 11:28
---

# BOM API
Browser Object Model  
: 웹 브라우저와 상호작용하기 위한 인터페이스 집합  
: 브라우저 창, 탭, 주소 표시줄, 히스토리, 네비게이션같은 브라우저 요소를 제어할 수 있음  

- [Window](./api-window.md)
- [Navigator](./api-navigator.md)
- [Screen](./api-screen.md)
  - [ScreenOrientation](./api-screen.md#screenorientation)
- [History](./api-history.md)
- [Location](./api-location.md)


**구조**
```bash
# host object   
Window (BOM)
 ├─ Navigator
 ├─ Screen
 ├─ History
 ├─ Location
 ├─ Frames
 └─ Document (DOM)
     └─ ...

# native object
JS Built-in Object
 └─ ...
```