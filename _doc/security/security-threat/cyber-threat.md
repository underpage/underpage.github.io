---
order: 0.2
title: security
description: 사이버 위협과 공격
summary:
keywords:
- security
- cyber threat
- cyber attck
- 사이버 위협
- 사이버 공격
tags:
- security
created_time: 2024-11-14 18:15
modified_time: 2024-11-15 20:37
---

# Cyber Threat
: 시스템, 네트워크, 애플리케이션 등 정보 기술 환경을 대상으로 하는 보안 위협 요소  

- [System Threat](#system-threat)
- [Network Threat](#network-threat)
- [Web Application Threat](#web-application-threat)


**공격 기법**  
: 범주와 상관없이 인증 메커니즘을 이용한 공격 기법  

종류 | 설명 | 대상
---|---|---
Brute Force | 가능한 조합을 체계적으로 대입해 인증 정보를 찾음 | 임의 관리자 계정
Credential Stuffing | 이전에 유출된 계정 정보를 활용해 로그인 시도 | 특정 사용자 계정



## System Threat
: 하드웨어, 운영체제, 서버같은 컴퓨터 시스템 구성 요소를 대상으로 하는 보안 위협  


### System Vulnerability
: 보안을 위협할 수 있는 컴퓨터 시스템 구성 요소의 결함이나 취약점  

**OS Vulnerabilities**
- 패치되지 않은 운영체제 : 보안 패치를 적용하지 않거나 지원이 종료된 운영체제 사용
- 제로데이 취약점
- 운영체제 메모리 관리 버그
- 취약한 인증 메커니즘
  - 약한 패스워드 정책
  - 부적절한 접근 통제

**Software Vulnerabilitie**
- 취약한 암호화 알고리즘 사용
- 안전하지 않은 데이터 저장
- 악성 파일 업로드 가능
- 부적절한 에러 처리
- 외부 라이브러리 취약점

**Configuration Weaknesse**
- 기본 설정
  - 기본 패스워드 미변경
  - 불필요한 서비스 활성화
  - 테스트 계정 미삭제
- 권한 설정
  - 과도한 권한 부여
  - 부적절한 파일 권한
  - 공유 폴더 접근 통제 미흡
- 보안 설정
  - 로그 설정 미흡
  - 암호화 설정 미흡
  - 방화벽 설정 부적절


### Malware Threat
: 시스템, 네트워크, 모바일 디바이스 등에서 멀웨어로 인한 잠재적 위험 요소  
: 시스템 손상, 시스템 성능 저하, 데이터 유출 등 다양한 피해를 초래  

**멀웨어**  
: Malicious Software의 줄임말로 악의적인 목적을 가진 소프트웨어를 의미  
: 사용자에게 피해를 주기 위해 의도적인 목적으로 만든 실행 가능한 프로그램이나 소프트웨어  

**악성코드**  
: 악의적인 목적으로 개발되어 배포되는 실행 가능한 모든 형태  
: 악성코드는 스크립트, 매크로, 명령어 등 더 포괄적인 개념으로 멀웨어는 악성 코드의 일종임  

**악성코드 생명주기**
```
제작 => 유포 => 감염 => 활동 => 변종
```

**악성코드 발전**  
: 1990년대 처음 바이러스가 등장한 이후 웜, 트로이 목마, 랜섬웨어 등으로 발전



### System Attack
: 시스템 구성 요소의 취약점을 이용해 자산이나 시스템에 손상을 가하거나 시도함  

**Side-Channel Attack**  
: 전력 소비, 전자기 방출 등 하드웨어의 물리적 특성을 분석해 민감한 정보를 탈취  

**Firmware Attack**  
: 펌웨어를 변조하거나 악성 코드를 삽입해 시스템 제어권 장악  

**Rootkit Attack**  
: 루트킷이란 탐지가 어렵게 설계되어 시스템 내부에 은밀하게 설치되는 악성 소프트웨어  
: 펌웨어나 커널 수준 레벨로 동작해 탐지 및 제거가 어려움  
: 루트킷을 이용해 시스템의 핵심 영역을 은밀히 제어하고 지속적인 권한을 획득  

**Privilege Escalation Attack**  
: 권한 상승 공격으로 시스템 취약점을 악용해 더 높은 권한을 획득  

**Kernel Exploit**  
: 운영체제 커널의 취약점을 악용해 루트 권한을 얻어 시스템을 제어

**Race Condition Attack**  
: 동시에 실행되는 프로세스 간의 시간차를 악용해 데이터나 시스템 제어를 탈취  

**Buffer Overflow Attack**  
: 메모리 버퍼 크기를 초과해 임의 코드를 실행  

**Memory Attack**  
: 메모리 관리 취약점을 이용해 시스템 제어권을 얻음  

**Code Injection Attack**  
: 운영체제나 소프트웨어의 취약점에 악성 코드를 삽입 (DLL Injection, Command Injection)

**Malware Injection**  
: 시스템에 악성코드 삽입하고 실행함   

**Zero-day Attack**  
: 보안 패치가 나오기 전에 해당 취약점을 악용한 공격  

**Ransomware Attack**  
: 시스템 데이터를 암호화해 시스템이나 데이터 접근을 제한  

**Password Attack**  
: 약한 패스워드를 대상으로 브루트 포스, 크리덴셜 스터핑 등의 기법을 사용해 침투  