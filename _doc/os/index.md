---
order: 3
category: OS
title: 운영체제 (인덱스)
summary: 운영체제의 정의, 역할, 역사적 발전 배경, 핵심 구성 요소 등에 대한 개요
keywords:
- operating system
- os
- os classification
tags:
- os
- index
created_time: 2026-06-07 08:29
modified_time: 2026-06-12 19:49
---
{::comment}
ttl_tags: [os-concept, os-processing-model, os-component, os-architecture, os-execution-mode, kernel-entry-path, interrupt, exception, system-call, os-subsystem, process-management, thread-management, cpu-scheduling, memory-management, virtual-memory, file-system-management, device-management, io-management, network-management, security-management, distributed-os, os-optimization, operating-system-classification]

related:
- id: computing
  type: requires
- id: computer
  type: requires
- id: program
  type: requires
- id: container
  type: influences
- id: infra
  type: influences
- id: network
  type: references
- id: security
  type: cross_cuts
{:/comment}

# Operating System 
: 다수의 프로그램과 서비스로 구성된 시스템 소프트웨어  
: 하드웨어와 소프트웨어 간 통신을 관리하고 사용자와 하드웨어 간 인터페이스를 제공함  
: 하드웨어 자원을 효율적으로 관리하며 소프트웨어 실행을 위한 환경을 제공  
: 실행 환경이란 CPU 할당, 메모리 공간 제공 등을 의미하며 운영체제는 실행중인 프로그램을 관리함  

- [운영체제 개념](./os-concept.md)
- [운영체제 처리 모델](./os-processing-model.md)
- [운영체제 구성요소](./os-component.md)
  - [커널](./os-component.md#kernel)
- [운영체제 아키텍처](./os-architecture.md)
- [실행 모드 및 권한](./os-execution-mode.md)
- 커널 인터페이스
  - [인터럽트](./interrupt.md)
  - [예외](./exception.md)
  - [시스템 콜](./system-call.md)
- 서브시스템
  - [프로세스 관리](./process-management.md)
  - [메모리 관리](./memory-management.md)
  - [파일 시스템 관리](./file-system-management.md)
  - [장치 관리](./device-management.md)
  - [네트워크 관리](./network-management.md)
  - [보안 관리](./security-management.md)
- [분산 운영체제](./distributed-os.md)
- [운영체제 성능 최적화](./os-optimization.md)

**관리자**  
: 운영체제에서 관리자란 하나의 책임 영역을 가지는 서브시스템을 의미함  
: 운영체제는 프로세스 관리자, 메모리 관리자 등 서로 다른 책임을 가진 관리자들의 집합으로 구성됨  

서브시스템 | 리눅스 | 윈도우
---|---|---
프로세스 관리 | Process Management | Process Manager
스레드 관리 | Task, Thread | Thread Scheduler
CPU 스케줄링 | Scheduler, CFS | Scheduler, Dispatcher
메모리 관리 | Memory Management Subsystem | Memory Manager 
파일 시스템 관리 | VFS, File System Drivers | File System Drivers, I/O Manager
장치 관리 | Device Driver Framework | Plug and Play Manager, I/O Manager
네트워크 관리 | Network Stack | Network Stack, Winsock


**운영체제 등장 배경**
```
초기 컴퓨터는 프로그램이 하드웨어에 내장되어 하나의 작업만 수행한는 기계로 
사람이 직접 관리하고 조작했으며 이러한 사람을 오퍼레이터라고 함 

폰 노이만 아키텍처를 도입해 하드웨어와 소프트웨어가 분리되어 프로그램이 소프트웨어에 내장되면서 
컴퓨터가 여러 작업을 처리할 수 있게 되고 이를 효율적으로 관리하는 시스템의 필요성이 커짐

또한 하드웨어를 직접 조작하기 어려워 이를 추상화하는 계층의 필요성이 대두되고
비싼 컴퓨터 자원을 효율있게 사용하기 위해 여러 사용자가 동시에 접근 가능한 시스템이 요구됨

이러한 배경에서 여러 작업을 순차적으로 실행하고 관리할 수 있는 일괄 처리 시스템이 등장하였고
이를 넓은 의미로 운영체제의 초기 형태로 볼 수 있음
```



## OS Classification

**Server OS**
- UNIX
- Server Linux
- Windows Server

**Desktop OS**
- Desktop Linux
- Windows
- Mac

**Mobile OS**
- Android
- iOS

**Network OS**
- Cisco IOS
- Juniper JUNOS

**Embedded OS**
- Embedded Linux
- Windows Embedded
- Android Things