---
order: 1
title: html
description: HTML Output Tag
summary:
keywords:
- web
- html
- tag
- output
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Output Tag
: 계산 결과나 사용자 행동 결과 등을 나타내기 위한 태그  
: 클라이언트에서 계산 된 결과를 실시간으로 표시하기 위해 사용  
: 서버로부터 값을 수신하는 경우 스크립트를 통해 값을 업데이트하거나 태그를 동적으로 생성함  


속성 | 설명
---|---
for  | 계산을 위한 값을 갖고 있는 요소와 연결  
form | 요소가 포함될 form 명시  
name | 요소의 이름 지정


```html
<form oninput="result.value = a.valueAsNumber + b.valueAsNumber">
  <input type="number" name="a" value="50"> +
  <input type="number" name="b" value="50"> =
  <output name="result" for="a b">0</output>
</form>
```