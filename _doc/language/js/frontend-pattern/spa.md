---
order: 1
title: JS
description: 단일 페이지 애플리케이션 (SPA)
summary:
keywords:
- js
- single page application
- spa
tags:
- js
created_time: 2025-04-07 04:36
modified_time: 2025-06-23 23:25
---

# Single Page Application  
: 단일 페이지 애플리케이션  
: 브라우저에서 하나의 HTML 페이지만 로드하고 자바스크립트를 통해 동적으로 콘텐츠를 변경하는 웹 어플리케이션  
: 새로운 페이지를 로드하지 않고 필요한 데이터만 비동기적으로 요청해 클라이언트 사이드에서 렌더링함  

**특징**
- 최초 하나의 페이지만 로드하고 이 페이지에서 거의 모든 작업을 수행함
- 자바스크립트를 통해 실시간으로 DOM을 조작함
- AJAX, Fetch API 등을 통해 필요한 데이터만 로드함
- URL 변경없이 화면(뷰) 전환이 가능함

**장점**
- 페이지 리로드가 없어 빠른 인터랙션이 가능함
- 필요한 데이터만 요청하므로 네트워크 트래픽을 최소화할 수 있음
- 데이터와 정적 리소스를 브라우저에 캐싱할 수 있음

**단점**
- 최초 페이지 로드시 전체 리소스를 받아 속도가 느릴 수 있음
- 장기간 사용시 메모리 누수가 발생할 수 있음
- 브라우저 히스토리 관리가 복잡해질 수 있음
- 크로스 사이트 스크립팅을 수행할 수 있어 보안성이 저하됨
- 동적 콘텐츠 경우 크롤러가 인덱싱하기 어려워 검색 엔진 최적화가 어려움

**주요 기술**
- 비동기 통신
  - [XMLHttpRequest](../../../web/api/web-api/api-xmlhttprequest.md)
  - [Fetch API](../../../web/api/web-api/api-fetch.md)
- 브라우저 히스토리 관리
  - Hash-based Routing
  - History API
- DOM 조작
- 이벤트 처리
- 상태 관리

**구현 방법**
- SPA 구현 (Vanilla JS)
- SPA 프레임워크
  - React
  - Vue
