---
order: 1
title: web
description: Web API - 브라우저 객체 모델
summary:
keywords:
- web
- web api
- bom
tags:
- web
- web api
created_time: 2024-11-06 00:56
modified_time: 2025-02-03 08:33
---

# BOM
Browser Object Model  
: 브라우저 객체 모델  
: 브라우저와 관련된 요소를 제어하기 위한 인터페이스   

- [Window](./api-window.md)
- [Navigator](./api-navigator.md)
- [Screen](./api-screen.md)
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