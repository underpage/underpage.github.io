---
order: 1
title: html
description: HTML Head Tag
summary:
keywords:
- web
- html
- tag
- head
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Head Tag
: 메타데이터, 리소스 연결, 파비콘 등을 포함하여 웹 문서에 대한 정보를 제공하는 태그  

**부모 요소**   
- [html](./html.md)

**자식 요소**  
- title
- base
- [link](./link.md)
- [meta](./meta.md)
- style
- [script](./script.md)
- [noscript](/script.md#noscript)


```html
<head>

<meta charset="utf-8">
<!--
: title 콘텐츠의 인코딩이 문제될 수 있으므로 문자 인코딩은 제일 먼저 설정
-->

<title>제목</title>
<!--
: 브라우저 탭, 타이틀 바, 검색 결과 페이지에서 제목으로 노출되는 콘텐츠
: 60자 이하로 입력해야 제목이 짤리지 않음  
: 전자 메일 형식인 경우 생략 가능  
-->

<base href="" target="">
<!--
: 웹 문서에 포함되는 모든 url의 기준이 되는 url 지정
: 웹 문서에 한 번만 정의하며 요소가 여러번 정의될 경우 첫번째 요소가 사용됨
-->

</head>
```