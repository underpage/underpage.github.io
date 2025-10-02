---
order: 13
title: Container
description: 컨테이너 (인덱스)
summary: 애플리케이션을 격리하여 실행하는 컨테이너 기술의 개념, 아키텍처, 동작 방식, 도구에 대한 개요
keywords:
- container
- docker
- podman
- k8s
tags:
- container
- index
created_time: 2025-09-30 22:14
modified_time: 2025-10-02 22:06
---

# Container
: 애플리케이션 실행에 필요한 코드, 종속성, 설정 등을 하나의 패키지로 묶어 격리된 환경에서 실행하는 기술  
: 컨테이너를 통해 애플리케이션이 격리된 환경에서 실행되어 인프라에 상관없이 어디에서든 일관된 실행을 보장함  

- [컨테이너 개념](./container-concept.md)
- [컨테이너 아키텍처](./container-architecture.md)
- [컨테이너 동작 방식](./container-mechanism.md)
- 컨테이너 구성 요소
  - [컨테이너 핵심 기술](./container-tech.md)
  - [컨테이너 런타임](./container-runtime.md)
- [컨테이너 표준](./container-standard.md)
- 컨테이너 엔진
  - [Docker](./docker/index.md)
  - [Podman](./podman/index.md)
- [컨테이너 오케스트레이션](./orchestration.md)
  - [Kubernetes](./k8s/index.md)
  - [Docker Swarm](./docker/docker-swarm.md)
- [컨테이너 도구](./container-tool.md)


**특징**
- 경량성: 가상머신 보다 리소스를 적게 소모함
- 이식성: 컨테이너는 어디에서든 동일하게 실행됨
- 격리성: 컨테이너는 분리되어 있어 다른 컨테이너에 영향을 미치지 않음
- 일관성: 개발 환경과 운영 환경의 차이를 줄여 어디에서나 일관된 실행 결과를 보장함
- 확장설: 필요에 따라 쉽게 확장하고 복제할 수 있음