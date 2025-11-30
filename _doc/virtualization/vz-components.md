---
order: 3
title: Virtualization
description: 가상화 구성 요소
summary:
keywords:
- virtualization
- virtualization components
tags:
- virtualization
created_time: 2025-11-30 13:18
modified_time: 2025-12-01 01:47
---

# Virtualization Components
: 가상 환경을 구성하는 물리적 및 논리적 구성 요소 집합  
: [가상화 유형](./vz-types.md)에 따라 사용되는 요소가 달라지며 일부 요소는 사용되지 않음  
: 가상 환경을 운영하고 관리하는 소프트웨어나 플랫폼도 구성 요소에 포함될 수 있음  

**기술에 따라**
- 하이퍼바이저 기반 가상화
- 운영체제 기반 가상화

**자원에 따라**
- [물리적 자원](#physical-resource)
- [논리적 자원](#Virtual-resource)



## Physical Resource
: 가상 환경의 기반이 되는 물리적 하드웨어 자원들  
: 하이퍼바이저 경우 호스트 하드웨어를 가상 하드웨어로 재구성해 가상 머신에 할당함  
: 운영체제 경우 커널을 통해 호스트 하드웨어에 제한적으로 접근함  

**Computing Resources**
- Processor (CPU)
- Memory

**Network Resources** 
- NIC
- Physical Network: Switch, Router

**Storage Resources**
- Local Storage: HDD, SSD
- Network Storage: SAN, NAS



## Virtual Resource
: 가상화 계층을 통해 논리적으로 생성되는 가상 자원들  

**가상화 계층**  
: 물리적 자원을 추상화하여 가상 자원을 생성하고 관리하는 소프트웨어 계층  
: 하이퍼바이저와 컨테이너 런타임 같은 소프트웨어를 통해 생성되고 관리되는 계층을 의미함  


### Virtual Instances
: 가상화 계층(하이퍼바이저 또는 컨테이너 런타임)에 의해 생성되는 논리적 실행 단위  
: 물리적 자원을 논리적으로 할당받아 독립적으로 실행되어 가상 환경을 제공함  

**가상 머신**  
: 독립적으로 실행되는 가상 컴퓨터로 하이퍼바이저에 의해 생성되고 관리됨  
: vCPU, vRAM, vGPU, vDisk, vNIC 등 가상 하드웨어를 하이퍼바이저에게 할당 받아 사용함  
: 독립적인 게스트 운영체제를 가지며 완전히 격리된 가상 환경을 제공함  

**컨테이너**  
: 호스트 운영체제 커널의 기능을 통해 생성되는 격리된 실행 환경  
: 게스트 운영체제가 없으며 호스트 운영체제의 커널을 공유함  