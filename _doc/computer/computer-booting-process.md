---
order: 7
title: computer
description: 컴퓨터 부팅 프로세스
summary:
keywords:
- computer
- computer booting process
- computer booting type
tags:
- computer
created_time: 2024-09-06 05:57
modified_time: 2025-01-18 11:26
---

# Computer Booting Process
: 컴퓨터 전원을 키는 순간부터 컴퓨터를 사용할 준비가 완료되는 과정  

- [부팅 단계](#booting-process)
- [부팅 구성 요소](#booting-components)
- [부팅 종류](#booting-types)



## Booting Process
: 컴퓨터 부팅이 이루어지는 표준 프로세스  

```
1. 전원 켜기
2. POST
3. 부트 로더 로드
4. 운영체제 로드
5. 시스템 초기화
6. 사용자 로그인 
```


### 1. Power On

1. PSU가 메인보드, CPU, RAM 등에 전원 공급
2. 메인보드에 전원 관리 회로가 활성화됨
3. CPU에 전원이 공급되면 CPU가 BIOS/UEFI의 리셋 벡터로 이동
4. ROM에서 펌웨어를 찾아 로드하고 실행


**리셋 벡터**  
: CPU에 전원이 공급되면 가장 먼저 실행하는 명령어가 저장된 메모리 주소  
: 일반적으로 펌웨어를 초기화하는 루틴으로 점프하는 명령어  


### 2. Power-On Self-Test

1. 펌웨어가 하드웨어와 메모리를 초기화함
2. POST를 수행해 하드웨어 장치가 문제없는지 테스트를 수행
3. CPU, RAM 등 주요 구성 요소가 정상인지 확인함
4. 주변 장치의 연결 상태를 확인함
5. 문제가 없다면 부팅 장치가 존재하는지 검색하고 부팅 순서를 결정함


### 3. Boot Loader

1. 펌웨어가 부팅 장치(MBR, UEFI)에서 부트 로드를 로드
2. 부트 로더가 실행되어 파일시스템을 인식함
3. 부트 로드가 운영체제 커널 이미지 위치를 확인하고 로드 준비를 함


### 4. Operating System Loading

1. 운영체제 커널 이미지 로드
2. 메모리 관리 시스템과 프로세스 관리 시스템이 초기화됨
3. 루트 파일시스템이 마운트되어 운영체제 핵심 구성 요소가 활성화됨


### 5. System Initialization

1. 핵심 프로세스 시작
2. 하드웨어 초기화
3. 시스템 데몬이 실행되고 네트워크 서비스가 활성화됨
4. 백그라운드 프로세스 시작 (작업 스케쥴러, 모니터링, 로깅)
5. 사용자 환경이 준비 (오디오, 프린터)


### 6. User Login

1. 로그인 관리자가 초기화되고 로그인 화면이 준비됨
2. 사용자가 인증을 시도하면 계정을 확인하고 비밀번호를 검증함
3. 사용자 프로필이 로드되고 환경 변수가 설정됨
4. 데스크탑 환경이 시작되고 시작 프로그램이 실행됨



## Booting Components
: 시스템 부팅 과정에서 실행되는 주요 소프트웨어 및 하드웨어 요소  

**부팅 실행 요소**
- [부트 펌웨어](#boot-firmware)
- [부트 로더](#boot-loader)

**부팅 대상 요소**
- 하드웨어
- 운영체제 (커널, 시스템 프로세스, 사용자 환경 등)



### Boot Firmware
: 하드웨어와 소프트웨어를 연결하고 초기화 수행 및 부트 로더 실행을 준비하는 펌웨어  

종류 | 설명
---|---
BIOS | 하드웨어 초기화와 운영체제 로딩을 위한 기본 펌웨어
UEFI | BIOS를 대체하는 최신 펌웨어로 더 나은 보안과 여러 개선점을 제공
Coreboot | 오픈 소스 펌웨어


**BIOS vs UEFI**

특성 | BIOS | UEFI
---|---|---
속도 | 상대적으로 느림 | 상대적으로 빠름
부팅 방식 | MBR 기반 | GPT 기반
인터페이스 | 텍스트 기반 | 그래픽 기반
지원 디스크 크기 | 2TB 제한 | 제한 없음



### Boot Loader
: 부팅 장치에서 운영체제 커널을 찾아 로드하고 운영체제에게 제어권을 넘기는 소프트웨어  

**부팅 장치**  
: 운영체제가 설치된 물리적 저장 장치 (HDD, SSD, USB, CD/DVD)  


**부팅 구조**  
: 디스크 파티션 방식  

종류 | 특징 | 파티션
---|---|---
MBR | 전통적인 방식 | 최대 4개의 파티션으로 2TB로 용량 제한
GPT | 현대적인 방식 | 최대 128개 파티션으로 용량 제한 없음


**부트 로더 종류**  
: 레거시 부트 로더는 BIOS/MBR 환경에서만 동작하고 최신 부트로더는 BIOS/MBR과 UEFI/GPT 환경 모두 지원  

- Linux
  - LILO (레거시)
  - GRUB (레거시)
  - GRUB2
- Windows
  - NTLDR (레거시)
  - Windows Boot Manager



## Booting Types 
: 다양한 하드웨어, 소프트웨어의 환경과 목적에 따라 다른 부팅 방식 종류  

**시스템 시작**

종류 | 설명
---|---
콜드 부팅 | 전원이 완전히 꺼진 상태에서 부팅을 시작하는 방식
웜 부팅 | 전원은 유지된 상태에서 시스템만 다시 시작하는 방식
빠른 부팅 | 일부 과정을 생략하여 부팅 시간을 단축하는 방식


**운영체제 구성**

종류 | 설명
---|---
싱글 부팅 | 하나의 운영체제만 설치된 환경
듀얼 부팅 | 두 개의 운영체제가 설치된 환경
멀티 부팅 | 여러 운영체제가 설치되어 부팅 시점에 운영체제를 선택하는 방식


**부팅 매체**

종류 | 설명
---|---
하드디스크 부팅 | 컴퓨터에 내장된 저장장치에서 부팅
USB 부팅 | USB 저장장치를 통한 부팅
네트워크 부팅 | 네트워크를 통해 운영체제를 로드하는 방식


**부팅 모드**

종류 | 설명
---|---
일반 부팅 | 컴퓨터 저장장치에 저장된 운영체제를 통한 부팅
안전 모드 | 문제 해결을 위해 최소한의 드라이버와 서비스만 로드하는 부팅 방식
복구 모드 | 시스템 복구를 위한 특수 환경 부팅하는 방식
라이브 부팅 | USB에 저장된 운영체제를 설치하지 않고 임시로 실행하는 방식