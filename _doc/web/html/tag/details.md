---
order: 1
title: html
description: HTML Details Tag
summary:
keywords:
- web
- html
- tag
- details
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Details Tag
: 아코디언이나 토글같은 기능을 지원하는 태그  

**포함 요소**
- summary


속성 | 설명
---|---
open | 콘텐츠 표시 여부 지정 (불리언 속성)


```html
<details>
  <summary></summary>
</details>


<details open>
  <summary></summary>
</details>


<style>
summary {color:red;}
details[open] summary::-webkit-details-marker {background:green;}
</style>

<details>
  <summary>click</summary>
  <p>content</p>
</details>
```