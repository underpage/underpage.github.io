---
order: 1
title: html
description: HTML Iframe Tag
summary:
keywords:
- web
- html
- tag
- iframe
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Iframe Tag
: 웹 문서 내에 다른 웹 문서나 콘텐츠를 포함하기 위해 사용하는 태그   
: object나 embed 태그가 비슷한 역할을 하나 iframe 태그는 보안 처리를 설정할 수 있음  


속성 | 설명
---|---
src             | 포함할 리소스 url 지정 (필수 속성)
srcdoc          | 포함할 인라인 html 지정   
name            | 아이프레임 이름 지정
width, height   | 너비와 높이 지정
loading         | 리소스 로드 방법 지정
sandbox         | 리소스 제한 설정 지정
allow           | 리소스 권한 정책 지정
allowfullscreen | 리소스 사용 허용 여부 지정
referrerpolicy  | HTTP 리퍼러 정책 지정  


```html
<iframe src="https://example.com"></iframe>

<iframe src="data:text/html,<p>text</p>"></iframe>
<iframe srcdoc="<p>text</p>"></iframe>
<!--
: srcdoc 속성을 지원할 경우 src 속성 재정의  
: srcdoc 속성을 지원하지 않을 경우 src 속성을 사용    
-->


<iframe src="" loading=""></iframe>
<!--
- auto : 브라우저 설정에 따름  
- eager : 아이프레임 즉시 로드
- lazy : 뷰포트에 도달하기 전까지 아이프레임 로드 연기

크롬 브라우저 기준 아래에 해당하는 경우 아이프레임이 숨겨진 것으로 간주하여 지연 로드하지 않음  
- 아이프레임 너비와 높이가 4px 이하
- 아이프레임 위치 -x -y
- visibility:hidden
- display:none
-->


<iframe src="" sandbox=""></iframe>
<!--
- allow-downloads : 리소스 다운로드 허용
- allow-forms : form 태그를 통해 데이터 전송 허용  
- allow-modals : alert 같은 모달 대화상자 생성 허용
- allow-orientation-lock : 디바이스 화면의 방향 고정 허용
- allow-pointer-lock : Pointer Lock API 사용해 포인터 잠금 기능 허용
- allow-popups : 새 창이나 팝업 창 허용
- allow-popups-to-escape-sandbox : 생성된 팝업 창이 sandbox 제한에서 벗어날 수 있도록 허용
- allow-presentation : 전체 화면 모드 전환 사용 허용            
- allow-same-origin : 리소스 도메인을 같은 도메인으로 간주해 로컬 스토리지 접근을 허용      
- allow-scripts : 스크립트 실행 허용       
- allow-storage-access-by-user-activation
- allow-top-navigation           
- allow-top-navigation-by-user-activation
-->


<iframe src="" allow=""></iframe>
<!--
- fullscreen : 전체 화면 모드 전환 허용
- microphone : 마이크 사용 허용
-->
```