---
order: 1
title: Infra
description: 웹 서버
summary:
keywords:
- infra
- infra component
- web server
tags:
- infra
- web
created_time: 2025-04-15 20:14
modified_time: 2025-04-15 21:47
---

# Web Server
= HTTP Server  
: 클라이언트 요청을 받아 처리하고 결과를 응답하는 프로그램 또는 프로세스  
: HTTP 요청을 해석해 요청받은 서비스를 제공하고 문제가 있다면 오류 메시지를 제공함  
: 최신 웹 서버는 자동화된 HTTPS, API 게이트웨이 등 고급 기능을 지원함  

```
클라이언트 -- 웹 서버 -- API 게이트웨이 -- 애플리케이션 서버
```


**핵심 기능**
- HTTP/HTTPS 프로토콜 처리 및 관리
- HTTP 요청을 해석하고 적절한 리소스와 HTTP 응답을 제공함
- 동적 콘텐츠 제공을 위해 애플리케이션 서버를 연동하고 요청을 전달함
- 자주 요청되는 리소스에 대한 캐싱
- 여러 도메인 운영을 위한 가상 호스팅 기능
- 리버스 프록시 및 로드 밸런싱
- 로깅 및 모니터링
- 자동화된 HTTPS 인증서 관리
- API 게이트웨이 일부 기능


**종류**
- CERN httpd
- Apache HTTP Server
- Internet Information Services (IIS)
- Lighttpd
- LiteSpeed
- Cherokee
- Nginx
- Hiawatha 
- H2O
- Caddy
- Traefik 


**Web Server vs Application Server**  
: 웹 서버는 애플리케이션 서버의 하위 집합  
: 웹 서버는 HTTP 프로토콜을 사용하며 애플리케이션 서버는 다양한 프로토콜을 사용함  
: 웹 서버는 정적 리소스를 제공하며 애플리케이션 서버는 동적 리소스를 제공함   
: 웹 서버에 스크립트 엔진을 연동해 부분적으로 동적 리소스를 지원할 수 있음  

```
최신 웹 서버는 경로 기반 라우팅, 인증, 요청 필터링 등 API 게이트웨이의 일부 기능을 지원함
```
