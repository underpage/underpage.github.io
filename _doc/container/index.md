---
order: 13
category: Container
title: 컨테이너 (인덱스)
summary: 컨테이너 아키텍처, 동작 방식, 플랫폼, 오케스트레이션 등에 대한 개요
keywords:
- container
- docker
- podman
- k8s
tags:
- container
- index
created_time: 2025-09-30 22:14
modified_time: 2026-04-23 23:39
---

{::comment}
ttl_tags: [container-overview, container-architecture, container-mechanism, container-image, container-registry,
container-runtime, container-isolation, container-standard, container-networking, container-storage, docker, podman,
orchestration, k8s, docker-swarm, container-tool]
related:
- id: virtualization
  type: aspect_of
- id: os
  type: requires
- id: network
  type: references
- id: cloud
  type: references
- id: infra
  type: references
- id: program
  type: references
- id: security
  type: references
- id: web
  type: references
{:/comment}

# Container
: 애플리케이션 실행에 필요한 코드, 종속성, 설정 등을 하나의 패키지로 묶어 격리된 환경에서 실행하는 기술  
: 컨테이너를 통해 애플리케이션이 격리된 환경에서 실행되어 인프라에 상관없이 어디에서든 일관된 실행을 보장함  

**기초**
- [컨테이너 개요](./container-overview.md)
- [컨테이너 아키텍처](./container-architecture.md)
- [컨테이너 동작 방식](./container-mechanism.md)

**구성요소**
- [컨테이너 이미지](./container-image.md)
- [컨테이너 레지스트리](./container-registry.md)
- [컨테이너 런타임](./container-runtime.md)

**핵심 기술**
- [컨테이너 격리 기술](./container-isolation.md)
- [컨테이너 표준](./container-standard.md)
- [네트워킹](./container-networking.md)
- [스토리지](./container-storage.md)

**플랫폼**
- [Docker](./docker/index.md)
- [Podman](./podman/index.md)

**도구**
- [컨테이너 오케스트레이션](./orchestration.md)
  - [Kubernetes](./k8s/index.md)
  - [Docker Swarm](./docker/docker-swarm.md)
- [컨테이너 생태계 도구](./container-tool.md)