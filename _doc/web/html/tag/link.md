---
order: 1
title: html
description: HTML Link Tag
summary:
keywords:
- web
- html
- tag
- link
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Link Tag
: 웹 문서와 외부 리소스 연결하고 관계를 명시      

**부모 요소**  
- [head](./head.md)
- [noscript](/script.md#noscript)


속성 | 설명
---|---
href  | 하이퍼 링크나 링크될 리소스의 url 명시
type  | 링크될 리소스 MIME 타입 명시
hreflang | 링크될 리소스의 언어 명시
rel   | 웹 문서와 링크될 리소스 간의 관계 명시
media | 링크된 리소스가 적용될 미디어 타입 명시
as    | rel 값이 preload나 modulepreload인 경우 리소스 타입 명시  
color | 마스크 아이콘의 색상을 명시
sizes | 마스크 아이콘의 사이즈 명시
imagesrcset | rel 값이 preload인 경우 사용할 이미지 url 명시   
imagesizes  | rel 값이 preload인 경우 사용할 이미지 크기 명시   
integrity   | 하위 리소스 무결성 확인을 위한 해시 값 지정  
crossorigin | CORS 처리 방식 지정
referrerpolicy | HTTP 리퍼러 정책 설정


```html
<link itemprop="url" href="">
<link itemprop="embedURL" href="">
<!-- 마이크로 데이터를 위한 속성 -->


<link rel="stylesheet" href="default.css">
<link rel="alternate stylesheet" href="dark-mode.css" title="Dark Mode">
<!--
: 대체 스타일 시트 정의
: 기본 스타일, 어두운 모드, 대비 모드 등 다양한 스타일을 정의하고 사용자가 선택
-->


<link rel="alternate" media="only screen and (width:640px)" href="http://m.example.com/">
<link rel="alternate" hreflang="en" href="https://www.example.com/">
<!-- 미디어 타입이나 언어 타입에 따라 대체 링크 제공 -->


<link rel="author" href="humans.txt">
<!-- http://humanstxt.org/humans.txt -->

<link rel="author license" href="/about">


<link rel="canonical" href="https://www.example.com/">
<!--
: 검색 엔진 최적화를 위한 캐노니컬 태그
: 웹 문서에 여러 url이 존재하는 경우 기준이 되는 url 지정 
-->


<link rel="manifest" href="manifest.webmanifest">
<!--
: 웹 앱의 정보를 json으로 제공해 오프라인에서도 동작하도록 지원

{
  "lang": "",
  "name": "",
  "description": "",
  "icons": [{
    "src": "icon.png",
    "sizes": "192x192"
  }]
}
-->


<link rel="icon" type="image/png" href="avicon.png">
<link rel="shortcut icon" href="favicon.ico">
<link rel="apple-touch-icon-precomposed" href="favicon.ico" sizes="152x152">
<!-- 아이콘 정의 -->


<link rel="preconnect" href="//example.com">
<!-- 
: 웹 문서를 로드하기 전에 다른 도메인에 대한 연결을 미리 설정함
: DNS 조회, TCP 핸드셰이크, TLS 협상 단계를 미리 수행함
ex. 외부 폰트, CDN 호스팅 등
-->

<link rel="dns-prefetch" href="//example.com">
<!-- preconnect 중 DNS lookup만 수행함 -->


<link rel="preload" href="example.css" as="style">
<link rel="preload" href="font.woff" as="font">
<!-- 
: 웹 문서를 로드하기 전에 특정 리소스를 먼저 로드함
-->


<link rel="prefetch" href="" as="">
<!--
: 나중에 필요할 수 있는 리소스를 미리 로드하고 이를 캐시에 저장
: meta 태그와 HTTP 헤더를 통해서도 설정 가능

<meta http-equiv="link" content="리소스; rel=prefetch">
Link: <리소스>; rel=prefetch
-->


<link rel="prerender" href="">
<!-- 현재 웹 문서의 다음으로 열릴 웹 문서를 미리 렌더링 함 -->


<link rel="modulepreload" href="app.js">
<!-- 자바스크립트 모듈을 미리 로드함 -->
```