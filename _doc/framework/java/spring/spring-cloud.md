---
order: 7
title: Framework
description: 스프링 클라우드
summary:
keywords:
- java framework
- spring projects
- spring cloud
tags:
- framework
- java
created_time: 2025-04-07 04:36
modified_time: 2025-05-04 02:50
---

# Spring Cloud
: [마이크로서비스 아키텍처](../../../engineering/sw-architecture/architecture-style/microservices.md) 기반 분산 시스템 구현을 위한 다양한 프레임워크와 도구를 포괄하는 우산형 프로젝트  
: [분산 시스템](../../../computing/system-architecture/index.md) 개발을 위한 구성 관리, 서비스 디스커버리, 라우팅, 분산처리 등 다양한 기능을 제공함  
: 스프링 클라우드는 내부적으로 [스프링 부트](./spring-boot.md)를 기반으로 동작함  


**핵심 기능**
- 구성/설정 관리
- 서비스 디스커버리
- 느슨한 결합
- 클라이언트 측 부하 분산
- 지능형 라우팅
- 회로 차단기
- 메시징
- 분산 트레이싱


**도구**  

도구 | 설명
---|---
Spring Cloud CLI | 스프링 클라우드 애플리케이션을 빠르게 생성하고 실행하는 도구
Spring Cloud Config Server | 분산 시스템의 외부 구성을 위한 서버 구성 도구
Spring Cloud Vault | HashiCorp Vault를 통한 보안 정보 관리 라이브러리
Spring Cloud Pipelines | 배포 자동화를 위한 젠킨스 기반 스크립트 모음
Spring Cloud Contract | 서비스 간 통합 테스트를 위해 스텁 서버를 생성하고 계약 검증을 자동화하는 도구
Spring Cloud Sleuth | 분산 트레이싱 도구로 서비스 간 요청 흐름을 추척하고 로깅함
Spring Cloud Zipkin | 시각화 도구로 Sleuth가 생성한 트레이스를 수집하고 UI를 통해 시각화함


**프레임워크**  
: Spring Cloud Netflix 모듈 경우 2024년을 기준으로 공식적으로 지원이 중단됨  

구성 및 설정
- Spring Cloud Config
- Spring Cloud Bus

서비스 디스커버리
- Spring Cloud Consul Discovery
- Spring Cloud Zookeeper Discovery
- Spring Cloud Kubernetes Discovery

서비스 통신 및 라우팅
- Spring Cloud OpenFeign
- Spring Cloud LoadBalancer
- Spring Cloud Gateway

회복성/탄력성
- Spring Cloud Circuit Breaker

데이터 파이프라인 및 이벤트 처리
- Spring Cloud Stream
- Spring Cloud Task
- Spring Cloud Data Flow

배포 및 인프라
- Spring Cloud Deployer
- Spring Cloud Skipper
- Spring Cloud App Broker

기타
- Spring Cloud Commons
- Spring Cloud Function
