---
order: 1
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
modified_time: 2025-04-29 23:34
---

# Spring Cloud
: [마이크로서비스 아키텍처](../../../engineering/sw-architecture/architecture-style/microservices.md) 기반 분산 시스템 구현을 위한 다양한 프레임워크와 도구를 포괄하는 우산형 프로젝트  
: 분산 시스템 개발에 필요한 구성 관리, 서비스 디스커버리, 라우팅 등을 제공함  
: 스프링 클라우드는 내부적으로 [스프링 부트](./spring-boot.md)를 기반으로 동작함  


**도구**  
: AWS, GCP 등 연동을 위한 도구들은 생략됨  

도구 | 설명
---|---
Spring Cloud CLI | 스프링 클라우드 애플리케이션을 빠르게 생성하고 실행하는 도구 (Spring Boot CLI 확장)
Spring Cloud Pipelines | 배포 자동화를 위한 젠킨스 기반 스크립트 모음
Spring Cloud Vault | HashiCorp Vault를 통한 보안 정보 관리 도구
Spring Cloud Config Server | 분산 시스템의 외부 구성을 위한 서버 구성 도구
Spring Cloud Contract | 서비스 간 통합 테스트를 위해 스텁 서버를 생성하고 계약 검증을 자동화하는 도구
Spring Cloud Sleuth | 분산 트레이싱 도구로 서비스 간 요청 흐름을 추척하고 로깅함
Spring Cloud Zipkin | 시각화 도구로 Sleuth가 생성한 트레이스를 수집하고 UI를 통해 시각화함


**프레임워크**  
: 2025년 기준으로 Spring Cloud Hystrix, Zuul 경우 지원이 중단됨  

구성 관리
- Spring Cloud Config
- Spring Cloud Bus

서비스 디스커버리
- Spring Cloud Consul
- Spring Cloud Zookeeper
- Spring Cloud Kubernetes

API Gateway
- Spring Cloud Gateway

로드밸런싱
- Spring Cloud LoadBalancer
- Spring Cloud OpenFeign

회복성 패턴
- Spring Cloud Circuit Breaker

데이터 파이프라인
- Spring Cloud Stream
- Spring Cloud Data Flow
- Spring Cloud Task

보안
- Spring Cloud Security

인프라 관리
- Spring Cloud Deployer
- Spring Cloud Skipper
- Spring Cloud App Broker

기타
- Spring Cloud Commons
- Spring Cloud Function