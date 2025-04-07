---
order: 3
title: Tool
description: 버전 제어 시스템 (VCS)
summary:
keywords:
- tool
- version control system
- vcs
- scm
- svn
tags:
- tool
created_time: 2024-09-24 00:09
modified_time: 2025-03-13 20:59
---

# Version Control System
= Source Code Management ≒ SCM  
: 버전 제어/소스 제어 관리 시스템  
: 파일(이진 파일, 소스 코드, 데이터 파일 등)의 변경 사항을 추적하고 관리하는 시스템  
: 파일을 특정 시점으로 되돌리거나 삭제된 파일을 복구하는 기능을 지원함  

**SCM** (Software Configuration Management)  
: 소프트웨어 구성 관리  
: 설정, 개발, 배포, 버그 추적 등 소프트웨어의 모든 변경 사항을 관리함  
: 버전 관리 시스템은 소프트웨어 구성 관리의 구성 요소 (SCM > VCS)


**특징**
- 가역성 : 파일을 특정 버전으로 되돌려 이전 상태로 복구
- 동시성
- 무결성
- 추적성


**분류**
- 1세대 : [로컬 버전 관리](#local-vcs)
  - SCCS (Source Code Control System)
  - RCS (Revision Control System)
  - DSEE (Domain Software Engineering Environment)
- 2세대 : [중앙집중식 버전 관리](#centralized-vcs)
  - CVS (Concurrent Versions System)
  - SVN (Apache Subversion)
  - Perforce
- 3세대 : [분산 버전 관리](#distributed-vcs)
  - Monotone  
  - Git
  - Mercurial
  - Bazaar
  - Darcs



## Local VCS 
: 로컬 버전 관리 시스템  
: 1960년대 메인 프레임에 사용된 변경 관리 시스템에서 파생  
: 파일 변경시 번호를 부여하고 이를 로컬 데이터베이스에 저장해 변경 사항 관리  
: 로컬에서만 지원하여 협업이 어려움  



## Centralized VCS
: 중앙 집중식 버전 관리 시스템  
: Client-Server 모델을 기반으로 변경 사항 관리  
: 중앙 서버에 파일이 존재하고 이를 클라이언트가 받아 사용하고 변경 사항을 중앙에 요청해 병합  
: 파일의 변경 사항을 중앙에서 관리해 클라이언트가 모든 변경 사항을 파악할 수 있음  
: 네트워크 문제 등으로 인해 중앙 서버에 문제가 생기면 버전 관리 및 협업 진행이 불가능함  

**기본 용어**

용어 | 설명
---|---
repository  | 파일 및 변경 사항들이 존재하는 공간으로 네트워크를 통해 접근  
checkout    | 저장소에 접근해 파일을 받아 저장소와 클라이언트의 파일을 동기화 시킴  
commit      | 체크아웃한 파일을 사용해 변경 사항 발생시 이를 저장소 반영  
update      | 최신 버전 파일로 업데이트
revision    | 파일 커밋시 새로 생성되는 상태로 커밋마다 1씩 증가해 고유 숫자를 갖음   
tag         | 특정 시점에 태그를 부여해 쉽게 체크아웃 함



## Distributed VCS
: 분산 버전 관리 시스템  
: Peer-to-Peer 모델을 기반으로 변경 사항 관리  
: 중앙 서버에 파일이 존재하고 이 파일을 클라이언트가 로컬에 복제해 관리  
: 변경 사항을 통합할 준비가 되면 중앙에 요청해 병합  
: 파일을 클라이언트가 로컬에서 관리하므로 중앙 서버 장애에도 작업 가능  