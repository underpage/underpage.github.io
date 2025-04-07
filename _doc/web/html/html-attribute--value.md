---
order: 0.24
title: html
description: HTML 엘리먼트 속성 값
summary:
keywords:
- web
- html
- element
- attribute value
tags:
- html
created_time: 2024-10-02 17:49
modified_time: 2024-10-29 22:48
---

# HTML Attribute Value
: 엘리먼트 속성에 사용되기 위해 미리 정의된 값들  

- [rel](#rel)
- [target](#target)
- [srcset](#srcset)



## rel
: link, a, area, form 태그에서 사용되는 속성  
: 웹 문서와 링크된 리소스 사이의 연관 관계 명시     
: link 태그에서 사용하면 웹 문서 전체에 적용됨      


값 | link | a | area | form | 설명
---|:---:|:---:|:---:|:---:|---
alternate    | o | o | o | - | 1. link 태그에서 stylesheet와 함께 사용될 경우 대체 스타일 시트<br> 2. 웹 문서의 대체 버전(다른 언어, 미디어 타입 등)을 정의
author       | o | o | o | - | 웹 문서 작성자에 대한 리소스나 하이퍼링크 정의
bookmark     | - | o | o | - | 가장 가까운 상위 섹션에 대한 퍼머링크
canonical    | o | - | - | - | SEO의 캐노티컬 태그로 표준 URL을 정의
dns-prefetch | o | - | - | - | 리소스의 DNS 조회를 우선시 하도록 지정  
external     | - | o | o | o | 현재 사이트 외부의 리소스를 가리킴
help         | o | o | o | o | 도움을 주는 리소스나 하이퍼링크 정의  
icon         | o | - | - | - | 모바일 아이콘 정의 (브라우저에서는 파비콘)
license      | o | o | o | o | 저작권 정보를 포함하는 리소스 링크
manifest     | o | - | - | - | 웹 앱 매니페스트 정의
modulepreload| o | - | - | - | 모듈스크립트를 미리 로드하도록 정의  
next         | o | o | o | o | 연속되는 문서에서 다음 문서를 가리킴
prev         | o | o | o | o | 연속되는 문서에서 이전 문서를 가리킴
nofollow     | - | o | o | o | 검색 엔진이 이 링크를 따라가지 않도록 지시
noopener     | - | o | o | o | 새 컨텍스트에서 링크를 열 때 원본에 대한 접근을 방지
noreferrer   | - | o | o | o | 리퍼러 정보를 전송하지 않도록 지정
opener       | - | o | o | o | 링크된 리소스가 컨텍스트에 접근할 수 있음을 명시
pingback     | o | - | - | - | 핑백 서버의 주소 정의  
preconnect   | o | - | - | - | 특정 도메인에 대한 연결을 미리 설정
prefetch     | o | - | - | - | 향우 탐색에 필요한 리소스를 미리 가져옴
preload      | o | - | - | - | 현재 탐색에 필요한 리소스를 미리 로드
prerender    | o | - | - | - | 특정 페이지를 백그라운드에서 미리 렌더링
search       | o | o | o | o | 웹 문서의 검색 기능을 가리키는 링크
shortlink    | o | - | - | - | 현재 웹 문서의 짧은 URL 정의
stylesheet   | o | - | - | - | 외부 스타일 시트 정의  
tag          | - | o | o | - | 현재 웹 문서와 링크된 리소스를 설명하는 태그나 키워드



## target
: a, area, base, form 태그에서 사용하는 속성   

값 | 설명
---|---
\_blank    | 새 윈도우나 탭에서 링크 오픈
\_self     | 현재 윈도우의 현재 프레임에서 링크 오픈
\_parent   | 부모 프레임에서 링크 오픈
\_top      | 현재 윈도우 전체에서 링크 오픈  
framename  | 이름이 정의된 프레임에서 링크 오픈



## srcset
: img, source 태그에서 사용하는 속성

값 | 설명
---|---
w | 이미지의 너비
x | 디바이스 픽셀 비율