---
order: 1
title: Cloud
description: 클라우드 서비스 모델
summary:
keywords:
- cloud
- cloud service model
tags:
- cloud
- model
created_time: 2025-04-07 04:36
modified_time: 2025-06-16 18:37
---

# Cloud Service Model
: 클라우드 제공 업체가 지원하는 서비스 형태에 따른 분류되는 체계  
: 모델에 따라 서비스 범위, 책임 수준, 추상화 수준 등이 달리짐  

- [IaaS](#iaas) -- 인프라
- [PaaS](#paas) -- 플랫폼
- [SaaS](#saas) -- 애플리케이션
- [FaaS](#faas)
- [CaaS](#caas)
- [DaaS](#daas)
- [DBaaS](#dbaas)
- [AIaaS](#aiaas)
- [DSaaS](#dsaas)
- [SECaaS](#secaas)



## IaaS
Infrastructure as a Service  
: 가상화된 컴퓨팅 자원(하드웨어, 스토리지, 네트워크 등)을 제공하는 서비스  
: 사용자는 가상 서버를 받아 직접 운영체제, 소프트웨어, 보안 등을 설치하고 설정함  
: 유연하고 확장성이 높으며 초기 하드웨어 구입 비용을 절감할 수 있음  
: 인프라 운영, 백업, 보안, 모니터링 등 모든 관리는 사용자 책임  



## PaaS
Platform as a Service  
: 애플리케이션 개발, 실행, 배포 환경(플랫폼)을 제공하는 서비스  
: 사용자가 인프라를 직접 구축하지 않고 클라우드를 통해 제공받는 형태  
: IaaS보다 유연성이 떨어지지만 인프라 관리 부담없이 개발에만 집중 가능함  



## SaaS
Software as a Service  
: 완성된 소프트웨어를 클라우드 환경을 통해 제공하는 서비스  
: 사용자는 소프트웨어 설치, 유지보수, 업그레이드에 대해 신경 쓸 필요가 없음  
: 제공되는 기능과 설정만 사용 가능하며 인터넷이 연결되지 않으면 사용 불가능함  



## FaaS
Fuction as a Service  
: 서버리스 아키텍처 기반 클라우드 서비스로 함수 단위 코드를 실행하는 환경 제공  
: 사용자는 서버 관리 없이 함수 단위 코드만 작성하면 되므로 비즈니스 로직에만 집중 가능함  



## CaaS
Container as a Service  
: 컨테이너 기반 애플리케이션 배포, 실행, 확장, 오케스트레이션을 지원하는 서비스
: Docker나 Kubernetes 같은 기술을 기반으로 하며 컨테이너 인프라를 추상화하여 제공함  
: 사용자는 컨테이너 이미지만 제공하고 클러스터 관리 및 스케일링은 클라우드 플랫폼에서 수행함  



## DaaS
Desktop as a Service  
: 데스크탑 가상화 서비스(VDI) 제공  
: 클라우드 플랫폼 위에서 작동하는 서비스형 데스크톱  



## DBaaS
Database as a Service  
: 데이터베이스 시스템과 관리 기능 제공  
: 데이터베이스의 설정, 운영, 확장, 백업 등을 자동화



## AIaaS
AI as a Service  
: 기계 학습, 화상 인식, 음성 인식 등 인공지능 서비스 제공  
: AI 인프라 구축 없이 AI 기능 활용 가능  



## DSaaS
Data Science as a Service  
: 데이터 과학 도구와 플랫폼 제공  
: 전문 데이터 과학자 없이도 고급 분석 기능을 활용할 수 있음  



## SECaaS
Security as a Service  
: 클라우드 환경을 위한 보안 솔루션 서비스 제공  
: 안티멀웨어, 침입 탐지 및 방지, 방화벽, 무결성 모니터링 등