---
order: 1
title: html
description: HTML Label Tag
summary:
keywords:
- web
- html
- tag
- label
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Label Tag
: 입력 양식 요소의 목적을 설명하기 위한 태그   
: 요소와 레이블은 암시적 또는 명시적으로 연결되어야 함   


**사용 요소**  
- [input](./input.md)
- [output](./output.md)
- [textarea](./textarea.md)
- [button](./button.md)
- [select](./select.md)
- [meter](./meter.md)
- [progress](./progress.md)


속성 | 설명
---|---
for  | 연결될 요소 명시


```html
<!-- 명시적 연결 -->
<label for="name">이름</label>
<input type="text" id="name">


<!-- 암시적 연결 -->
<label>
  이름
  <input type="text" id="name">
</label>
```



## ARIA

**aria-label**  
: 양식 요소의 목적을 설명할 문자열 지정  
: 문자열이 시각적으로 표현되지 않는 경우 사용  

**aria-labelledby**  
: 다른 요소를 양식 요소와 연결하여 레이블로 사용  

```html
<!-- label -->
<label for="searchInput">Search</label>
<input type="text" id="searchInput">


<!-- aria-label -->
<input type="text" aria-label="Search">


<!-- aria-labelledby -->
<p id="searchLabel">Search</p>
<input type="text" aria-labelledby="searchLabel">

<form id="userForm">
  <span class="required" aria-hidden="true">*</span>
  <p id="nameInput">name</p>
  <input type="text" aria-labelledby="userForm nameInput">
</form>
```