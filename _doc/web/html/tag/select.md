---
order: 1
title: html
description: HTML Select Tag
summary:
keywords:
- web
- html
- tag
- select
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Select Tag
: 드롭 다운 리스트 기능을 제공하는 태그  

**포함 요소**  
- [option](./option.md)
- [optgroup](./option.md#optgroup)


속성 | 설명
---|---
autocomplete | 양식 선택시 자동 완성 기능 사용 여부 지정
disabled  | 요소의 비활성화 여부 지정 (불리언 속성)
form      | 요소와 연결될 form 태그 지정  
multiple  | 여러 옵션 선택 여부 지정 (불리언 속성)
name      | 요소 이름 지정
required  | 필수 선택 여부 지정 (불리언 속성)
size      | 보여질 옵션 수 지정



```html
<style>
select {
  /* 기본 스타일 제거 */
  appearance:none;
}
</style>


<select autocomplete="on | off"></select>


<label for="options">옵션</label>
<select id="options" size="3">
  <option value="1" selected>1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>


<select>
  <optgroup label="a">
    <option value="1">1</option>
  </optgroup>
  <optgroup label="b">
    <option value="1">1</option>
  </optgroup>
</select>
```



## ARIA

```html
<select aria-label="옵션 선택">
  <option value="1">1</option>
  <option value="2">2</option>
</select>
```