---
order: 1
title: html
description: HTML Script Tag
summary:
keywords:
- web
- html
- tag
- script
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Script Tag
: 웹 문서에 자바스크립트 구문을 넣거나 참조하기 위한 태그  

속성 | 설명
---|---
src      | 스크립트 위치 지정
type     | 스크립트 타입 지정
nomodule | 모듈 시스템을 지원하지 않는 브라우저를 위한 대체 스크립트 지정  
async    | 웹 문서 파싱 중 스크립트를 로드한 뒤 파싱을 멈추고 스크립트를 실행
defer    | 웹 문서 파싱 중 스크립트를 로드하고 파싱이 끝나면 스크립트 실행
crossorigin | CORS 요청 방식 지정
integrity   | 하위 리소스 무결성 확인을 위한 해시 값 지정  
referrerpolicy | HTTP 리퍼러 정책 지정


**async & defer**  
스크립트 엘리먼트는 HTML 파서의 동작을 중단하고 스크립트를 로드하는데 (blocking mode) <br> 스크립트를 로드하는 동안 파싱이 중단되므로 이를 보완하기 위해 async와 defer 속성 지원   

**SRI**  
Subresource Integrity  
외부 스크립트 무결성을 검증하는 보안 메커니즘  
서버에서 integrity 속성의 해시 값을 지정하고 브라우저에서 이 값이 일치하는지 확인해 리소스가 변조되었는지 확인


```html
<script src="example.js">
// src 속성을 사용하는 경우 콘텐츠는 전부 무시됨  
</script>


<!-- classic script -->
<script type="text/javascript">
// this == globalThis
</script>

<!-- module script -->
<script type="module">
// ES 모듈 시스템 지원
// 기본으로 defer 속성을 적용한 것처럼 작동
// 기본으로 use strict 모드로 실행
// this == undefined
</script>


<script type="module" src="example.js" async></script>
<!-- 모듈 스크립트에는 async 속성만 사용 가능 -->

<script nomodule src="example.fallback.js" defer></script>
<!-- 모듈 스크립트를 지원하는 브라우저는 nomodule 속성을 무시함 -->


<script type="text/vbscript"></script>
<!--
: IE 10 버전 이하인 경우 type 속성을 이용해 VBScript 사용 가능
: meta 태그 설정을 통해 브라우저 버전 변경 낮춰 사용 가능

<meta http-equiv="x-ua-compatible" content="IE=10">
-->
```