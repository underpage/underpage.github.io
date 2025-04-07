---
order: 1
title: html
description: HTML Html Tag
summary:
keywords:
- web
- html
- tag
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Html Tag
: 웹 문서의 루트가 되는 태그로 DTD를 제외한 모든 요소를 포함하는 최상위 컨테이너   


속성 | 설명
---|---
lang   | 웹 문서 기본 언어 지정
xmlns  | XML 네임스페이스 지정
prefix | Open Graph Protocol 지정


```html
<html lang="ko">


<html xmlns="http://www.w3.org/1999/xhtml">
<!--
: XHTML에서는 필수 속성이나 html5에서는 선택 속성
-->


<html prefix="og: http://ogp.me/ns#">
<!--
= 오픈 그래프 메타 데이터
: 소셜 미디어에서 웹 문서가 공유될 때 어떻게 표시되는지 제어

<meta property="og:url" content="https://example.com">
<meta property="og:type" content="website">
<meta property="og:title" content="title">
<meta property="og:image" content="https://example.com/image.jpg">
<meta property="og:description" content="description">
-->
```