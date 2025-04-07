---
order: 3
title: firmware
description: 컴퓨터 펌웨어
summary:
keywords:
- computer
- firmware
- bios
- uefi
tags:
- computer
created_time: 2024-09-16 14:16
modified_time: 2025-02-01 10:06
---

# Firmware
: firm(견고한) + software 합성어로 일부 하드웨어를 제어하고 작동하는 소프트웨어  
: 하드웨어와 소프트웨어 경계에 위치해 하드웨어 성질과 소프트웨어 성질을 다 갖고 있음   
: 펌웨어는 ROM이나 플래시 메모리같은 비휘발성 메모리에 저장되어 있음  
: 1970년대 임베디드 시스템이 발전하면서 펌웨어의 개념이 중요해짐  

**종류**
- 부트로더 펌웨어
  - BIOS
  - UEFI
  - Coreboot
- 주변 장치 펌웨어
  - 저장 장치 컨트롤러
  - 입력 장치 컨트롤러
  - 출력 장치 컨트롤러
- 임베디드 시스템 펌웨어
  - 가전 제품 제어 펌웨어
  - 모바일 기기 펌웨어
  - IoT 기기 펌웨어


**주요 기능**
- 하드웨어 초기화 및 설정
- 하드웨어 기본 동작 제어
- 하드웨어와 운영체제간 인터페이스 제공
- 오류 처리 및 복수



## BIOS
Basic Input Output System  
: 주로 ROM이나 플래시 메모리에 저장되어 있는 펌웨어  
: 컴퓨터에 전원을 넣으면 제일 먼저 작동해 부팅 프로세스를 시작하고 하드웨어 초기화를 수행  
: 16비트 실행 모드로 동작하고 MBR 부팅 방식을 사용  



## UEFI
Unified Extensible Firmware Interface  
: BIOS를 대체하기 위해 개발된 펌웨어로 주로 플래시 메모리에 저장되어 있음  
: BIOS보다 빠른 부팅 속도를 제공하고 GUI 환경을 지원하며 Secure Boot 기능을 제공  
: 32비트 또는 64비트 실행 모드로 동작하고 GPT 부팅 방식을 사용  