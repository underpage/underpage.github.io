---
order: 1
title: JS
description: 프레임워크 - Fresh
summary:
keywords:
- framework
- js framework
- deno framework
- fresh
tags:
- js
- framework
created_time: 2025-02-17 19:19
modified_time: 2025-02-17 23:07
---

# Fresh
: [Deno](../../language/js/ssjs-deno/index.md)에서 실행되는 웹 프레임워크  
: Deno에서 JIT 방식으로 동작해 번들링이나 빌드 과정 없이 즉시 실행 가능  
: 기본으로 서버에서 렌더링(SSR)되며 정적 사이트 생성(SSG)을 지원함  
: 아일랜드 아키텍처를 사용하여 필요한 부분만 동적으로 업데이트함  

https://fresh.deno.dev


**특징**
- 타입스크립트와 JSX를 기본으로 지원해 별도의 설정이 필요하지 않음
- 파일 시스템 기반 라우팅 지원해 라우팅 설정을 따로 하지 않아도 됨
- Hot Module Replacement을 지원해 변경된 부분만 즉시 반영됨
- 클라이언트로 전송되는 자바스크립트를 최소화하여 성능을 최적화함


**프로젝트 생성**
```bash
# 프로젝트 생성 
deno run -A -r https://fresh.deno.dev 프로젝트

-A 모든 권한 허용 
-r 원격 스크립트 실행
--tls HTTPS 개발 서버 사용


# 프로젝트 실행
deno task start

> http://localhost:8000


# 린트
deno lint

# 테스트
deno test

# 빌드
deno task build
```


**프로젝트 구조**
```bash
프로젝트/
├── components/    # 재사용 가능한 컴포넌트
├── islands/       # 클라이언트 사이드 인터랙티브 컴포넌트
├── routes/        # 페이지 및 API 라우트
├── static/        # 정적 파일
├── fresh.gen.ts   # 자동 생성되는 매니페스트
├── deno.json      # 프로젝트 설정
└── dev.ts         # 개발 서버
```