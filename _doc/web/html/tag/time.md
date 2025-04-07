---
order: 1
title: html
description: HTML Time Tag
summary:
keywords:
- web
- html
- tag
- time
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Time Tag
: 시간, 날짜, 기간을 나타내기 위한 태그  


속성 | 설명
---|---
datetime | 컴퓨터가 읽을 수 있는 표준 형식으로 시간과 날짜를 지정  


```html
<time datetime="yyyy"></time>
<time datetime="yyyy-mm"></time>
<time datetime="yyyy-mm-dd"></time>
<time datetime="mm-dd"></time>

<time datetime="hh:mm"></time>
<time datetime="hh:mm:ss"></time>


<time datetime="2025-01-01 12:00"></time>
<time datetime="2025-01-01T12:00"></time>
<!-- 날짜와 시간 사이 공백이나 접두사를 사용해 구분 -->


<time datetime="P3D">3일</time>
<time datetime="PT30">30분</time>
<time datetime="PT3H30M">3시 30분</time>
<time datetime="PT23H 3M 1.234S">23시간 3분 1초 234밀리초</time>
<!--
접두사
- P (period) : 기간
- D (days) : 날짜
- H (hours) : 시간
- M (minutes) : 분
- S (seconds) : 초
-->


<time datetime="2025-01-01 12:00Z">UTC 기준 시간</time>
<time datetime="2025-01-01 12:00+09:00">한국 표준시</time>


<script>
const timeElement = document.querySelector('time');
const date = new Date(timeElement.dateTime);
</script>
```