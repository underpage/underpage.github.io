---
order: 1
title: html
description: HTML Meter Tag
summary:
keywords:
- web
- html
- tag
- meter
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Meter Tag
: 특정 범위의 백분률을 나타내기 위한 태그  
: progress 태그는 진행중인 작업을 나타내며 meter은 정적인 값을 나타냄  


속성 | 설명
---|---
value     | 현재 값 지정
min, max  | 범위 지정  
low, high | 범위 중 최댓값과 최솟값 지정  
optimum   | 최적 값 지정
form      | 요소와 연결될 form 태그 지정


```html
<style>
meter {
  /* 기본 스타일 제거 */
  appearance:none;
}

/* 배경 */
::-webkit-meter-bar {}
::-moz-meter-bar {}

/* 최적 범위 */
::-webkit-meter-optimum-value {}
:-moz-meter-optimum::-moz-meter-bar {}

/* 차선 범위 */
::-webkit-meter-suboptimum-value {}
:-moz-meter-sub-optimum::-moz-meter-bar {}

/* 최저 범위 */
::-webkit-meter-even-less-good-value {}
:-moz-meter-sub-sub-optimum::-moz-meter-bar {}
</style>


<meter min="0" max="100" value="50">50%</meter>
<!--
: value 값은 min과 max 사이
: 기본 값은 0이며 잘못된 값을 지정하는 경우 기본 값이 적용됨 
-->


<meter min="0" max="1" low="10" high="90"></meter>


<meter min="0" max="100" low="10" high="90" optimum="50" value="50"></meter>
```