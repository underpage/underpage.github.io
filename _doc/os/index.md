---
order: 3
title: OS
description: 운영체제 (인덱스)
summary: 운영체제의 정의, 하드웨어-소프트웨어 통신 관리 역할, 역사적 발전 배경, 핵심 구성 요소 등에 대한 개요
keywords:
- operating system
- os
- os classification
tags:
- os
- index
created_time: 2025-10-01 22:33
modified_time: 2025-10-02 22:07
---

# Operating System 
: 다수의 프로그램과 구성 요소들로 이루어진 복합적인 시스템 소프트웨어  
: 하드웨어와 소프트웨어 간 통신을 관리하고 사용자와 하드웨어 간 인터페이스를 제공  
: 하드웨어 자원을 효율적으로 관리하며 소프트웨어 및 프로그램 실행을 위한 환경을 제공  
: 실행 환경이란 CPU 할당, 명령어 적재 등을 의미하며 운영체제는 실행 중인 프로그램을 관리함  

- [운영체제 개념](./os-concept.md)
- [운영체제 구성요소](./os-component.md)
- [운영체제 처리 모델](./os-processing-model.md)
- 커널 모듈
  - [인터럽트](./interrupt.md)
  - [시스템 콜](./system-call.md)
  - [프로세스 관리](./process-management.md)
  - [메모리 관리](./memory-management.md)
  - [파일 시스템 관리](./file-system-management.md)
  - [장치 관리](./device-management.md)
  - [네트워크 관리](./network-management.md)
  - [보안 관리](./security-management.md)
- [운영체제 성능 최적화](./os-optimization.md)


**히스토리**
```
초기 컴퓨터는 프로그램이 하드웨어에 내장되어 하나의 작업만 수행한는 기계로 사람이 수동으로 관리하고 조작함

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