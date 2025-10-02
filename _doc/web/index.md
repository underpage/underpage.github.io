---
order: 9
title: Web
description: 웹 (인덱스)
summary: 월드 와이드 웹의 개념, 핵심 구성 요소, 동작 원리, 발전 단계 및 미래 트렌드에 대한 개요
keywords:
- world wide web
- web
- web 2.0
- web 3.0
tags:
- web
- index
created_time: 2025-10-01 03:38
modified_time: 2025-10-02 22:06
---

# Web
World Wide Web, WWW, W3  
: 인터넷으로 연결된 컴퓨터를 통해 정보 공유를 목적으로 탄생한 시스템  
: 정보는 HTML로 작성된 문서들로 구성되며 이러한 웹 문서는 브라우저를 통해 표현(시각화)됨  
: 웹의 핵심 특징은 [하이퍼텍스트](./web-hisotry.md#hypertext)로 이를 통해 비선형적 구조로 정보를 연결함  
: 초기에는 정보 공유가 목적이었으나 현재는 웹 애플리케이션으로 발전하여 상호작용 환경을 제공함  
: 웹의 발전은 실시간 데이터처리, 모바일 웹, 클라우드 컴퓨팅, 엣지 컴퓨팅 등으로 확장됨  

- [웹 역사](./web-history.md)
- [웹 동작 원리](./how-the-web-works.md)
- 웹 구성 요소
  - 구조: [HTML](./html/index.md)
  - 표현: [CSS](./css/index.md)
  - 동작:
    - [DOM](./dom/index.md)
    - [Web API](./api/index.md)
    - [ECMAScript](../language/js/index.md)
    - [WebAssembly](./wasm/index.md)
  - 그래픽
    - [SVG](./graphic/svg/index.md)
    - [Canvas](./graphic/canvas/index.md)
  - 플랫폼: [Browser](./browser/index.md)
  - 통신:
    - [HTTP](../protocol/index.md)
    - [Web Server](../infra/infra-component/web-server/index.md)
- 웹 트렌드
  - [시맨틱 웹](./semantic-web.md)
  - [탈중앙화 웹](./decentralized-web.md)
- [웹 기술](./web-technology/index.md)
  - [Progressive Web Apps](./web-technology/pwa.md)
- [웹 표준](./web-standard/index.md)
  - [WAI-ARIA](./web-standard/wai-aria.md)
  - [WCAG](./web-standard/wcag.md)
- [웹 최적화](./web-optimization/index.md)
- [웹 보안](../security/index.md)
- [웹 분석](./web-analytics/index.md)
- [웹 설계](./web-design/index.md)


**주요 용어**

용어 | 설명
---|---
웹 페이지 | URL을 통해 접근 가능한 단일 문서
웹 사이트 | 동일한 도메인 내에 존재하는 웹 페이지들의 집합
웹 애플리케이션 | 사용자와 상호작용이 가능한 웹 기반 소프트웨어
웹 서비스 | 네트워크를 통해 서로 다른 플랫폼 간 상호운용성을 제공하는 시스템
웹 포털 | 다양한 리소스와 서비스에 접근하는 단일 진입점


**웹 사이트 vs 웹 애플리케이션**  
: 현대 웹 시스템은 웹 사이트와 웹 애플리케이션 특성을 혼합하여 제공됨  

구분 | 웹 사이트 | 웹 애플리케이션
---|---|---
목적 | 정보 제공 및 탐색  | 특정 기능이나 서비스 제공
상호작용 | 주로 단방향 통신 (읽기 위주) | 양방향 통신 (입력/처리/출력)
데이터처리 | 정적 콘텐츠 제공 | 동적 데이터 처리 (실시간, 자동)


**개념적 발전 단계**  
: 기술, 사용자 참여, 데이터 처리 방식 등에 따라 구분됨  
: 공식적인 발전 단계는 아니며 기준이나 정의는 조직이나 연구자마다 다르게 정의함  

단계 | 시기 | 정의
---|---|---
Web 1.0 | 1990년~2000년 | Read-Only Web, Static Web <br> - 정보 전달 웹 (정적) <br> - 정보는 카테고리로 분류되어 제공됨 (디렉토리 검색)
Web 2.0 | 2000년~2010년 | Read-Write Web, Participating Web <br> - 플랫폼으로서 웹 (동적) <br> - 사용자들이 콘텐츠를 생성, 편집, 공유함 (집단 지성)
Web 2.5 | 2010년~ | Read-Write-Execute Web, Semantic Web <br> - 의미론적 웹 (온톨로지) <br> - 데이터 간 의미를 이해하고 연결하여 사용자 맞춤형 정보 제공 <br> - 개인화, 맞춤화, 상황 인식 웹
Web 3.0 | 2010년~| Decentralized Web <br> - 블록체인 기술을 기반으로 한 탈중앙화된 웹 <br> - 사용자가 데이터의 소유권과 제어권을 가짐
Web 3.5 | 2015년~ | Intelligent Web <br> - 자동화, 지능형 웹 <br> - AI 기술 발전으로 사용자 경험을 지능적으로 개선함
Web 4.0 | 미정 | Symbiotic Web <br> - 초연결 웹 <br> - 모든 장치와 사람을 실시간으로 연결
Web 5.0 | 미래 | Emotional Web <br> - 감정 웹 <br> - 사용자 감정과 의도를 인식하여 더 개인화된 경험 제공 <br> - 인간과 기계의 상호작용이 감정적이고 직관적인 수준으로 확장됨 

=> Web 4.0이나 5.0은 웹이 나아갈 방향을 예측하는 의미로 사용되며 구체적인 형태는 확정되지 않았음  