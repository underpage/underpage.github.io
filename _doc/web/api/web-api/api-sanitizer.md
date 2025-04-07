---
order: 1
title: Web API
description: Web API - Sanitizer API
summary:
keywords:
- web api
- sanitizer
tags:
- web
- web api
created_time: 2025-02-24 00:19
modified_time: 2025-02-26 12:02
---

# Sanitizer API
: 웹 브라우저에서 안전하게 HTML 콘텐츠를 삽입하기 위한 API  
: 임의 문자열이 안전하게 웹 페이지에 삽입될 수 있게 유해 문자열(HTML 요소 및 속성)을 제거함  
: Sanitizer를 통해 XSS같은 보안 취약점을 예방함  
: 현재 실험적 기술이며 표준 기술이 아님  

개념 | 설명
---|---
이스케이프 | 특수 문자를 HTML 엔티티로 변환
새니타이징 | 문자열에서 유해한 HTML 요소, 속성, 스크립트를 제거함

```
DOMPurify 라이브러리가 동일한 기능을 하는데 DOMPurify는 결과값이 문자열이고
Sanitizer는 DocumentFragment를 반환하여 DOM에 직접 삽입이 가능함 
```


**스펙**  
https://wicg.github.io/sanitizer-api


ex.
```js
var sanitizer = new Sanitizer();

var unsafeHTML = '<script>alert("XSS")</script><b>Safe Content</b>';
var safeHTML = sanitizer.sanitize(unsafeHTML);
```