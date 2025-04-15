---
order: 1
title: Infra
description: CERN httpd
summary:
keywords:
- infra
- infra component
- web server
- cern httpd
tags:
- infra
created_time: 2025-04-15 22:30
modified_time: 2025-04-16 01:11
---

# CERN httpd
: 1990년에 팀 버너스리가 구현한 최초 웹 서버로 HTML 파일과 간단한 텍스트 파일을 제공함  
: 웹 서버의 기본 기능들을 제공했으며 현대 웹 서버는 이를 기반으로 발전함  
: 3.0 버전을 마지막으로 더 이상 업데이트되지 않음  

https://www.w3.org/Daemon


**동작 방식**
1. 클라이언트 요청 수신
2. HTTP 요청을 파싱해 요청 메소드를 확인하고 URL을 추출
3. URL을 파일 시스템 경로로 변환하고 파일이 존재하는지 확인
4. 파일이 존재하면 이를 로드하고 HTTP 응답 헤더를 생성
5. HTTP 응답과 파일을 클라이언트에 전송하고 연결을 종료


**주요 기능**
- HTTP/0.9 및 HTTP/1.0 지원
- 웹 사이트의 디렉토리 구조 표현
- 초기 형태의 가상 호스트
- 기본 리디렉션 기능
- 간단한 프록시 서버 기능
- 단순한 캐싱
- 로그

```
기본적인 기능들을 지원했으며 이 기능들은 현대 웹 서버에서 더 복잡하고 다양하게 발전함
```