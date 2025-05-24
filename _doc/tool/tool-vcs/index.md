---
order: 3
title: Tool
description: 버전 제어 시스템 (VCS)
summary:
keywords:
- tool
- version control system
- vcs
tags:
- tool
created_time: 2025-04-07 04:37
modified_time: 2025-05-24 22:44
---

# Version Control System
: 버전 제어/소스 제어 관리 시스템  
: 파일(이진 파일, 소스 코드, 데이터 파일 등)의 변경 사항을 추적하고 관리하는 도구 및 시스템  

**특징**
- 가역성 : 파일을 특정 버전으로 되돌려 이전 상태로 복구함
- 동시성 : 여러 사용자가 동시에 파일에 접근 및 수정이 가능함
- 무결성 : 파일의 정확성과 일관성을 보장함
- 추적성 : 모든 변경 사항을 기록하고 추적이 가능함


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
: 파일 변경시 번호를 부여하고 이를 로컬 데이터베이스에 저장해 변경 사항을 관리함  
: 로컬에서만 지원하여 네트워크 연결이 필요없으나 협업이 어려움  



## Centralized VCS
: 중앙 집중식 버전 관리 시스템  
: Client-Server 모델을 기반으로 변경 사항을 관리함  
: 중앙 서버에 파일이 존재하고 이를 클라이언트가 받아 수정하고 변경 사항을 중앙에 요청해 병합하는 시스템  
: 파일의 변경 사항을 중앙에서 관리해 클라이언트가 모든 변경 사항을 파악할 수 있음  
: 네트워크 문제 등으로 인해 중앙 서버에 문제가 생기면 버전 관리 및 협업 진행이 불가능함  

**주요 용어**

용어 | 설명
---|---
repository  | 파일 및 변경 사항들이 존재하는 중앙저장소로 네트워크를 통해 접근함
checkout    | 저장소에서 파일을 로컬로 다운로드하여 작업 가능한 상태로 만듬
commit      | 체크아웃한 파일을 수정하여 변경 사항 이력을 저장소에 반영함
update      | 다른 사용자의 변경 사항을 로컬로 가져와 최신 버전으로 동기화함
revision    | 파일 커밋시 생성되는 버전 정보로 커밋마다 1씩 증가하는 고유 식별자  
tag         | 특정 시점에 태그를 부여해 쉽게 식별하고 체크아웃 함
branch      | 메인 개발 라인에서 분기하여 독립적인 개발을 진행할 수 있는 격리된 작업 공간
merge       | 브랜치의 변경사항을 다른 브랜치에 통합하는 과정



## Distributed VCS
: 분산 버전 관리 시스템  
: Peer-to-Peer 모델을 기반으로 변경 사항을 관리함  
: 원격 저장소에 파일이 존재하고 클라이언트가 저장소를 로컬에 복제하여 관리함  
: 파일을 클라이언트가 로컬에서 관리하므로 원격 저장소에 장애가 발생해도 작업이 가능함  

**주요 용어**

용어 | 설명
---|---
clone  | 원격 저장소를 로컬에 복제함
push   | 로컬의 변경 사항을 원격 저장소에 업로드함
pull   | 원격 저장소의 변경사항을 로컬로 가져와 병합함
fetch  | 원격 저장소의 변경사항을 로컬로 가져옴
branch | 메인 개발 라인에서 분기하여 독립적인 개발을 진행할 수 있는 로컬 작업 공간
merge  | 브랜치의 변경사항을 다른 브랜치에 통합하는 과정
