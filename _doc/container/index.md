---
order: 17
title: Container
description: 컨테이너 (인덱스)
summary:
keywords:
- container
- container platform
tags:
- index
- container
created_time: 2025-04-04 01:19
modified_time: 2025-04-26 01:20
---

# Container
: 애플리케이션과 애플리케이션 실행에 필요한 모든 종속성을 하나로 묶고 독립된 실행 환경을 제공하는 기술  
: 컨테이너 환경을 통해 애플리케이션이 독립적으로 실행되어 인프라에 상관없이 어디에서든 동일한 실행을 보장함  

- [컨테이너 개념](./container-concept.md)
- [컨테이너 동작 방식](./container-mechanism.md)
- [컨테이너 기술](./container-technology.md)
- [컨테이너 종류](./container-type.md)
- [컨테이너 표준](./container-standard.md)
- [컨테이너 런타임](./container-runtime.md)
- 컨테이너 플랫폼
  - [Docker](./docker/index.md)
  - [Podman](./podman/index.md)
- [컨테이너 도구](./container-tool.md)
- [오케스트레이션](./orchestration.md)
  - [Kubernetes](./k8s/index.md)
  - [Docker Swarm](./docker/swarm/index.md)


**특징**
- 경량성 : 호스트 운영체제의 커널을 공유해 리소스를 적게 소모함
- 이식성 : 운영체제와 독립적이기 때문에 컨테이너 이미지로 어디에서든 실행 가능
- 격리성 : 컨테이너는 서로 독립적이며 다른 컨테이너에 영향을 미치지 않음
- 일관성 : 개발 환경과 운영 환경의 차이를 좁혀 일관된 실행 환경을 제공함