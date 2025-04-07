---
order: 1
title: html
description: HTML Embed Tag
summary:
keywords:
- web
- html
- tag
- embed
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Embed Tag
: 외부 리소스를 삽입하기 위한 태그  
: 리소스를 동적으로 제어해야 한다면 object 태그 사용이 적절함  


속성 | 설명
---|---
src  | 외부 리소스 url 지정
type | 외부 리소스 MIME 타입 명시  
width, height | 외부 리소스의 너비와 높이 지정


```html
<embed src="example.pdf" type="application/pdf">

<embed src="video.mp4" type="video/mp4" width="640" height="480">
<!-- 가능하지만 video 태그를 사용하는 것이 적절함 -->
```