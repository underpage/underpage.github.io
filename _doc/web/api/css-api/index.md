---
order: 4
title: Web API
description: Web API - 스타일 시트 API
summary:
keywords:
- web api
- css api
- cssom
- css typed om
tags:
- web
- web api
created_time: 2024-11-02 02:41
modified_time: 2025-02-26 11:40
---

# CSS API
: 웹 문서의 스타일을 동적으로 정의하고 조작하기 위한 인터페이스 집합  

- [CSSOM](./cssom.md)
- [CSS Animation](./css-animation.md)
- [CSS Typed OM](./typed-om.md)


**CSSOM vs Typed OM**  
: CSSOM는 스타일 정보를 문자열로 처리하며 Typed OM는 객체로 처리함  

```js
// CSSOM
el.style.width = '100px';
console.log(element.style.width);

// Typed OM
el.attributeStyleMap.set('width', CSS.px(100));
console.log(element.attributeStyleMap.get('width'));
```