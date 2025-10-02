---
order: 1
title: Cloud
description: 클라우드 서비스 모델
summary: 클라우드 서비스 모델은 제공 범위, 책임 수준, 추상화 수준에 따라 IaaS, PaaS, SaaS 등 다양한 서비스 형태를 가짐
keywords:
- cloud
- cloud service model
- iaas
- paas
- saas
tags:
- cloud
- model
created_time: 2025-10-02 22:12
modified_time: 2025-10-02 22:39
---

# Cloud Service Model
: 클라우드 제공 업체가 제공하는 서비스 형태와 범위에 따라 분류되는 체계  
: 모델에 따라 서비스 범위, 책임 수준, 추상화 수준 등이 달리짐  

**핵심 모델**
- [IaaS](#iaas) -- 인프라
- [PaaS](#paas) -- 플랫폼
- [SaaS](#saas) -- 애플리케이션

**확장 모델**
- [FaaS](#faas)
- [CaaS](#caas)
- [DaaS](#daas)
- [DBaaS](#dbaas)
- [AIaaS](#aiaas)
- [SECaaS](#secaas)



## IaaS
Infrastructure as a Service  
: 가상화된 컴퓨팅 자원(하드웨어, 스토리지, 네트워크 등)을 제공하는 서비스  
: 사용자는 가상 인프라를 제공받아 운영체제, 소프트웨어, 보안 등을 직접 설치하고 설정함  
: 유연하고 확장성이 높으며 초기 물리적 하드웨어 구입 비용을 절감할 수 있음  
: 인프라 운영, 백업, 보안, 모니터링 등 모든 관리는 사용자 책임  

- AWS EC2
- Azure Virtual Machines
- Google Compute Engine



## PaaS
Platform as a Service  
: 애플리케이션 개발, 실행, 배포를 위한 관리형 플랫폼을 제공하는 서비스  
: 사용자가 인프라를 직접 구축하지 않고 클라우드를 통해 제공받는 형태  
: IaaS보다 유연성이 떨어지지만 인프라 관리 부담없이 개발에만 집중 가능함  

- AWS Elastic Beanstalk
- Azure App Service
- Google App Engine



## SaaS
Software as a Service  
: 완성된 소프트웨어를 클라우드 환경을 통해 제공하는 서비스  
: 사용자는 소프트웨어 설치, 유지보수, 업그레이드에 대해 신경 쓸 필요가 없음  
: 제공되는 기능과 설정만 사용 가능하며 인터넷이 연결되지 않으면 사용이 불가능함  

- AWS WorkDocs
- Microsoft 365
- Google Workspace



## FaaS
Function as a Service  
: 이벤트 기반 함수 단위 코드를 실행하는 서버리스 컴퓨팅 환경을 제공하는 서비스  
: 사용자는 서버 관리 없이 함수 단위 코드만 작성하면 되므로 비즈니스 로직에만 집중 가능함  

- AWS Lambda
- Azure Functions
- Google Cloud Functions



## CaaS
Container as a Service  
: 컨테이너 기반 애플리케이션 배포, 실행, 확장, 오케스트레이션을 지원하는 서비스
: Docker나 Kubernetes 같은 기술을 기반으로 하며 컨테이너 인프라를 추상화하여 제공함  
: 사용자는 컨테이너 이미지만 제공하고 클러스터 관리 및 스케일링은 클라우드 플랫폼에서 수행함  

- AWS EKS
- Azure Kubernetes Service
- Google Kubernetes Engine



## DaaS
Desktop as a Service  
: 데스크탑 가상화 서비스(VDI) 제공하는 서비스  
: 클라우드 플랫폼 위에서 작동하는 서비스형 데스크톱  

- AWS WorkSpaces
- Azure Virtual Desktop



## DBaaS
Database as a Service  
: 데이터베이스 시스템과 관리 기능을 제공하는 서비스  
: 데이터베이스의 설정, 운영, 확장, 백업, 복제 등을 자동화  
: 사용자는 스키마 설계와 쿼리 최적화 등 데이터베이스 활용에만 집중 가능  

- AWS RDS
- Azure SQL Database
- Google Cloud SQL



## AIaaS
AI as a Service, Machine Learning as a Service  
: 기계 학습, 화상 인식, 음성 인식 등 인공지능 서비스와 인프라를 제공하는 서비스  
: AI 인프라 구축 없이 머신러닝, 컴퓨터 비전, 자연어 처리 등 활용 가능  

- AWS SageMaker
- Azure Machine Learning
- Google Vertex AI



## SECaaS
Security as a Service  
: 클라우드 기반 보안 솔루션를 제공하는 서비스  
: 안티멀웨어, 침입 탐지 및 방지, 방화벽, 무결성 모니터링, 데이터 암호화 등

- AWS WAF
- Azure Defender for Cloud
- Google Cloud Armor