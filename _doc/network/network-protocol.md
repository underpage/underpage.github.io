---
order: 4
title: Network
description: 네트워크 프로토콜
summary:
keywords:
- network
- network protocol
- protocol suite
- protocol stack
tags:
- network
created_time: 2025-03-01 11:41
modified_time: 2025-03-09 21:03
---

# Network Protocol
: 네트워크를 통해 장치 간 데이터 통신을 하기 위한 규칙과 표준을 정의한 규약  
: 효율적인 통신을 위해 데이터의 형식과 절차, 전송 방식, 오류 처리, 보안 등을 정의함  
: 프로토콜 자체는 규약이며 이를 구현한 하드웨어, 소프트웨어, 서비스가 존재함  


**관련 개념**  
: 네트워크 프로토콜과 관련된 주요 개념들로 추상화 수준에 따라 구분됨  

- [참조 모델](./network-reference-model.md)
- [프로토콜 계층 모델](#protocol-layer-model)
- [프로토콜 스위트](#protocol-suite)
- [프로토콜 스택](#protocol-stack)

```
다양한 네트워크 기술이 발전하면서 각 벤더와 표준화 단체가 다른 접근법을 채택하며
다양한 용어들이 발생했으나 실제 적용에서는 맥락에 따라 혼용되어 사용됨
```



## Protocol Layer Model
: 참조 모델을 기반으로 실제 네트워크 프로토콜이 계층적으로 구성되고 동작하는 방식을 정의한 모델  
: 참조 모델보다 구체적이며 실제 프로토콜 동작 방식을 설명함  

- OSI 프로토콜 계층 모델
- TCP/IP 프로토콜 계층 모델
- SNA 계층 모델
- 3GPP 모바일 네트워크 계층 모델


**TCP/IP 참조 모델**
- 응용 계층
- 전송 계층
- 인터넷 계층
- 네트워크 액세스 계층


**TCP/IP 프로토콜 계층 모델**

계층 | 설명
---|---
응용 계층 | 사용자와의 인터페이스 역할을 하며 실제 응용 프로그램 간 통신을 담당
전송 계층 | 신뢰성 있는 데이터 전송을 제공하며 세션 간의 데이터 흐름을 관리
인터넷 계층 | 데이터를 패킷화하여 다른 네트워크로 전송하고 라우팅을 담당
네트워크 액세스 계층 | 물리적 매체를 통해 데이터 전송을 담당



## Protocol Suite
: 특정 환경이나 시스템에서 통신을 위해 사용되는 관련된 프로토콜 집합을 지칭함  
: 계층적 구조보다는 기능적 그룹화와 프로토콜 간 관계에 초점을 둠
: 프로토콜 스위트 안에서 여러 프로토콜들이 협력하여 데이터를 전송하고 처리함  
: 프로토콜 스택과 유사한 개념이지만 더 포괄적인 용어로 사용됨

- TCP/IP (Internet Protocol Suite)
- SNA
- IPX/SPX
- AppleTalk
- NetBIOS
- DECnet


**TCP/IP 프로토콜 스위트**

계층 | 프로토콜
---|---
응용 계층 | HTTP, FTP, SMTP, DNS, DHCP, SSH, SNMP
전송 계층 | TCP, UDP, SCTP, DCCP
인터넷 계층 | IPv4, IPv6, ICMP, ARP, IGMP, IPsec
네트워크 액세스 계층 | Ethernet, Wi-Fi, PPP



## Protocol Stack
: 운영체제나 네트워크 장비 내에서 실제로 동작하는 프로토콜 구현체  
: 특정 시스템이나 장치에서 프로토콜이 구현된 형태로 참조 모델을 기반으로 상호작용하여 데이터를 처리하고 관리함  

- TCP/IP 프로토콜 스택
- 모바일 네트워크 프로토콜 스택
- 블루투스 프로토콜 스택


**TCP/IP 프로토콜 스택**
- 리눅스 TCP/IP 스택
  - 소켓 API
  - TCP/UDP 구현
  - IP 라우팅 구현
  - 네트워크 서브 시스템
- 윈도우 TCP/IP 스택
  - Winsock API
  - NDIS
  - TCP/IP 구성