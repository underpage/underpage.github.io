---
order: 0.3
title: cloud
description: 클라우드 아키텍처
summary:
keywords:
- cloud
- cloud computing
- cloud architecture
- cloud architecture pattern
- 클라우드
- 클라우드 컴퓨팅
- 클라우드 아키텍처
- 클라우드 아키텍처 패턴
tags:
- cloud
- architecture
created_time: 2024-09-30 01:16
modified_time: 2024-10-19 16:03
---

# Cloud Architecture
: 클라우드 환경에서 애플리케이션 실행을 위해 인프라를 설계하고 배포하는 방법  
: 컴퓨팅 리소스, 스토리지, 네트워크, 데이터베이스 등 다양한 구성 요소를 클라우드 환경에서 구성하고 연결  
: 클라우드 아키텍처는 비용 효율성, 확장성, 가용성, 유연성, 안정성, 보안성을 고려해 설계  


**설계 프로세스**
```
요구사항 수집 및 분석 => 아키텍처 패턴 선택 => 클라우드 서비스 선택 => 클라우드 제공업체 선택 => 구현 및 배포 => 모니터링 및 최적화
```


**설계 원칙**
- 확장성 : 수평적 확장(서버 수 증가)과 수직적 확장(서버 성능 향상) 고려
- 고가용성
- 보안
- 성능 효율성
- 비용 최적화
- 탄력성 : 오토스케일링 적용
- 내구성 : 데이터 장기 보존
- 장애 격리


**구성 요소**

요소 | 설명
---|---
컴퓨팅 | 가상 머신, 컨테이너, 서버리스 등 컴퓨팅 환경
네트워크 | VPC, 로드밸런싱 등 네트워크 구성 및 트래픽 관리
스토리지 | 객체 스토리지, 블록 스토리지 등 데이저 저장
데이터베이스 | RDS, NoSQL 등 데이터베이스 서비스
보안 | 접근 제어를 통한 시스템 보안 강화
모니터링 및 로깅 | 클라우드워치 등을 활용한 시스템 모니터링
자동화 | CI/CD 파이프라인, 인프라 자동화 구현


**구현 기술 및 전략**
- 수평적 확장 : 서버 수 증가를 통해 처리 능력 향상
- 로드밸런서 : 트래픽 분산
- 성능 최적화
- 데이터베이스 확장
- 멀티 리젼 : 지리적 분산을 통해 가용성 및 성능 개선
- 수직적 확장
- 캐싱 전략
- 백업 전략
- 자동 복구
- 데이터 복제
- 재해 복구 계획


**보안**
- 접근제어
- 네트워크 보안
- 데이터 암호화
- 데이터 보안
- 모니터링
- 규정 준수



## Cloud Architecture Types

**구현 모델**
- Host Virtualization
- Bare Metal
- Containers
- Microservices
- Serverless Computing

**배포 모델**
- Public Cloud Architecture
- Private Cloud Architecture
- Hybrid Cloud Architecture
- Multi-Cloud Architecture
- Microservices Architecture
- Container-based Architecture
- Serverless Architecture
- Distributed Computing Architecture
- Edge Computing Architecture



## Cloud Architecture Patterns
- Strangler Pattern
- Sidecar Pattern
- Circuit Breaker Pattern
- CQRS Pattern