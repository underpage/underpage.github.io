---
order: 1
title: html
description: HTML Object Tag
summary:
keywords:
- web
- html
- tag
- object
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Object Tag
: 외부 리소스를 웹 문서에 삽입하기 위한 태그  
: 다양한 리소스를 표현할 수 있지만 이미지는 img태그 비디오는 video 태그 사용이 적절  

**포함 요소**
- param


속성 | 설명
---|---
data | 외부 리소스 url 지정
type | 외부 리소스 MIME 타입 명시  
name | 요소 이름 지정
usemap | 이미지 맵 이름 지정  
form   | 요소와 연결될 form 태그 지정
width, height | 너비와 높이 지정
typemustmatch | 타입 일치 검사 (불리언 속성)


```html
<object data="content.html" type="text/html">
  <p>Your browser does not support the <code>object</code> element.</p>
</object>


<object data="data.json" type="application/json">
  <p>Your browser does not support the <code>object</code> element.</p>
</object>


<object data="document.pdf" type="application/pdf">
  <p>Your browser does not support the <code>object</code> element.</p>
</object>


<object data="image.svg" type="image/svg+xml">
  <p>Your browser does not support the <code>object</code> element.</p>
</object>

<object data="image.svg" type="image/svg+xml" typemustmatch>
  <p>Your browser does not support the <code>object</code> element.</p>
</object>
<!-- data 속성과 type 속성으로 명시된 타입이 일치하는지 검사함 -->
```