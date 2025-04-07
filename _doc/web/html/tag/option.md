---
order: 1
title: html
description: HTML Option Tag
summary:
keywords:
- web
- html
- tag
- option
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Option Tag
: 드롭다운이나 리스트 박스에서 선택 가능한 항목을 나타내는 태그  

**부모 요소**
- [select](./select.md)
- [datalist](./datalist.md)
- optgroup


속성 | 설명
---|---
selected | 항목을 선택으로 지정 (불리언 속성)
disabled | 항목을 선택 불가능으로 지정 (불리언 속성)
value    | 서버로 전송될 값 지정
label    | 항목에 대한 짧은 레이블 정의


```html
<select>
  <option value="1" selected>1</option>
  <option value="2">2</option>
  <option value="3">3</option>
</select>
<!-- 선택 가능한 항목을 고르기 위한 목록 -->


<input  type="text" list="datalist">
<datalist id="datalist">
  <option value="1"></option>
  <option value="2"></option>
  <option value="3"></option>
</datalist>
<!-- 자동 완성 목록 및 사용자 입력 제공 -->
```