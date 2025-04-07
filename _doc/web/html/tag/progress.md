---
order: 1
title: html
description: HTML Progress Tag
summary:
keywords:
- web
- html
- tag
- progress
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Progress Tag
: 로딩바나 작업의 진행 상태를 표현하기 위한 태그  

속성 | 설명
---|---
value | 현재 작업 진행률  
max   | 전체 작업량 (기본값은 1.0)


```html
<style>
progress {
  /* 기본 스타일 제거 */
  appearance:none;
}

progress[value] {}
progress:not([value]) {}

/* 배경 */
::-webkit-progress-bar {}
::-moz-progress-bar {}

/* 진행률 바 */
::-webkit-progress-value {}
::-moz-progress-bar {}
</style>


<progress max="100"></progress>
<!-- value 속성이 없는 경우 미정 상태 --->


<label for="task">작업 진행률</label>
<progress id="task" max="100" value="50">
  <strong>50%</strong>
</progress>
```



## ARIA

```html
<progress max="100" value="50" 
  aria-labelledby="progress-label" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50">
  <strong>50%</strong>
</progress>
```