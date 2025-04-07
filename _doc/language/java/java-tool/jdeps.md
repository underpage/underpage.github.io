---
order: 1
title: java
description: 자바 툴 - jdeps
summary:
keywords:
- java
- java tool
- jdeps
tags:
- java
- tool
created_time: 2024-10-22 23:58
modified_time: 2025-01-19 21:36
---

# jdeps
: [모듈 시스템](../java-module-system.md)을 지원하는 도구  
: 모듈, 패키지, 클래스의 의존성을 분석하고 모듈 설명자를 생성함  
: 의존성 분석 결과를 바탕으로 불필요한 종속성을 제거해 프로젝트 구조를 최적화 함  


```bash
# 의존성 분석 -- 모듈화가 적용되지 않았어도 패키지 간 의존성 분석 가능
jdeps example.jar

## 요약 모드로 출력
jdeps -s example.jar

## 상세 모드로 출력
jdeps -v example.jar


# 모듈 의존성 분석
jdeps --module-path mods --module com.example


# 특정 패키지나 클래스 분석
jdeps --filter com.example example.jar

# 모듈의 특정 패키지나 클래스 분석
jdeps --module-path mods --module com.example --filter com.example.api


# 모듈 설명자 생성
jdeps --generate-module-info out example.jar
jdeps --module-path mods --generate-module-info out --module com.example
```