---
order: 1
title: Tool
description: 빌드 도구 - 그래들
summary:
keywords:
- tool
- build tool
- gradle
tags:
- tool
- java
created_time: 2024-10-26 15:01
modified_time: 2025-02-26 12:02
---

# Gradle
: 다양한 프로그래밍 언어와 플랫폼을 지원하는 빌드 자동화 도구  
: [Groovy](../../language/etc/groovy.md) 또는 Kotlin DSL을 사용해 빌드 스크립트를 작성  

- 명령어
- 프로젝트 구조
- 라이프 사이클
- 빌드 스크립트
- 멀티 프로젝트

용어 | 설명
---|---
프로젝트 | 빌드할 대상으로 하나의 build.gradle 파일을 가짐
태스크 | 빌드 프로세스 중 실행되는 작업 단위
빌드 | 소스 코드를 컴파일하여 실행 가능한 상태로 변환하는 전체 프로세스
데몬 | 그래들 빌드를 향상시키는 백그라운드 프로세스


**특징**
- 로컬 및 원격 캐시를 활용해 불필요한 빌드를 방지함 (빌드 캐시)
- 변경된 부분만 빌드함 (증분 빌드)
- 파일이 변경될 때마다 자동으로 빌드를 실행함 (연속 빌드)
- 독립적인 태스크는 동시 실행이 가능함 (병렬 실행)
- 플러그인 시스템으로 플러그인을 통해 확장 가능함
- 플러그인을 통해 Spring, Android, Kotlin 등과의 통합 가능함


**설치**
```bash
wget https://services.gradle.org/distributions/gradle-8.7-bin.zip
sudo mkdir -p /opt/gradle
sudo unzip -d /opt/gradle/gradle-8.7 gradle-8.7-bin.zip

# 환경변수 설정
echo "export PATH=/opt/gradle/gradle-8.7/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc

gradle -v
```

