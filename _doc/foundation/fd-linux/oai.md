---
order: 1
title: Foundation
description: OpenAPI 재단 (OAI)
summary:
keywords:
- foundation
- linux foundation
- openapi initiative
- oai
- oas
tags:
- foundation
created_time: 2025-02-11 13:41
modified_time: 2025-03-01 16:00
---

# OAI
OpenAPI Initiative  
: OpenAPI 사양을 정의하고 발전시키는 재단  
: API 표준화를 통해 개발자들이 API를 더 쉽게 설계하고 사용할 수 있도록 지원  

**history**
```
2010년  Swagger API 문서화 도구 개발
2015년  Swagger 사양을 Linux Foundation에 기부
2015년  OpenAPI Initiative을 설립하고 Swagger를 기반으로 OpenAPI Specification 정의

Swagger 2.0은 OpenAPI Specification 2.0의 초기 버전이나
OpenAPI Specification 3.0부터는 Swagger 사양과 독립적으로 발전
```



## OAS
OpenAPI Specification  
: RESTful API를 표준화하기 위해 API 설계 및 문서화 표준을 제공  

버전 | 특징
---|---
OpenAPI 2.0 | Swagger 2.0에서 발전한 첫 번째 공식 표준화 버전으로 기본적인 REST API 명세를 정의
OpenAPI 3.0 | 컴포넌트 개념 도입, 요청/응답 구조 개선
OpenAPI 3.1 | 웹훅 지원, OAuth 2.0 확장


**문서 형식**
- JSON
- YAML


**주요 기능**
- API 엔드포인트 정의
- 데이터 모델 정의
  - 데이터 구조와 타입 정의
  - 참조 관계 설정
  - 유효성 검증 규칙 관리
- 인증 및 권한 관리
- API 테스트와 문서화 지원


```yaml
openapi: 3.0.0

# 메타데이터
info:
  title:
  version:
  description:
  contact:
    name:
    email:
    url:
  license:
    name:
    url:

# 서버 정보
servers:
  - url:
    description:

# API 엔드포인트   
paths:
  /example:
    get:
      summary:
      description:
      tags:
        - Example
      parameters:
        - name:
          in:
          description:
          required:
          schema:
            type:
      responses:
        '200':
          description:
          content:
    post:
      summary:
      requestBody:
        required:
        content:
      responses:
        '201':
          description:
          content:

# 컴포넌트
components:
  # 데이터 모델
  schemas:
    Example:
      type:
      properties:
  # 보안 스키마
  securitySchemes:
    bearerAuth:
      type: http
      scheme:
      bearerFormat:

# API 그룹
tags:
  - name: Example
    description:

# 보안
security:
  - bearerAuth: []

# 외부 문서 참조
externalDocs:
  description:
  url:
```



# OpenAPI Tools
: OpenAPI 사양을 구현하는 도구들을 개발하는 오픈소스 커뮤니티 조직  

https://openapi.tools


**openapi-generator**  
: OpenAPI 사양을 기반으로 클라이언트 및 서버 코드를 자동으로 생성해주는 도구  

**openapi-generator-cli**  
: openapi-generator를 커맨드 라인에서 실행할 수 있게 해주는 인터페이스  

**openapi-style-validator**  
: OpenAPI 문서의 스타일과 규칙을 검증하는 도구  