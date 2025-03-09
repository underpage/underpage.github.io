---
order: 3
title: Network
description: 네트워크 참조 모델
summary:
keywords:
- network
- network reference model
- osi
tags:
- network
- model
created_time: 2024-10-04 20:35
modified_time: 2025-03-09 19:13
---

# Network Reference Model
: 네트워크 통신을 계층 구조로 정의하고 각 계층이 독립적으로 동작하기 위한 추상적 모델  
: 계층을 분리하고 계층 간 인터페이스와 서비스를 명확하게 정의해 통신의 복잡성을 단순화함  

- [OSI Model](#osi-model)
- [Internet Protocol Suite](#internet-protocol-suite)


**history**
```
1960년대 컴퓨터 네트워크 기술이 발전하면서 각 벤더사들은 자체적인 프로토콜을 개발함
이로 인해 자사 제품 간 통신만 가능하고 타사 제품과 통신이 불가능해지며 확장성에 제약을 받음

이러한 문제를 극복하기 위해 ISO에서 통신 프로토콜을 체계적으로 분류하고
벤더 중립적인 인터페이스 제공을 목적으로 표준 네트워크 참조 모델을 개발함

이러한 배경에서 OSI 모델이 개발되었으나 실제 네트워크 환경에서 사용되지 않고
ARPANET 프로젝트에서 개발된 TCP/IP 모델이 실질적으로 사용됨
(인터넷 발전과 함께 TCP/IP 사용이 확산된 후에 OSI 모델이 개발되어 거의 적용되지 않음)
```

