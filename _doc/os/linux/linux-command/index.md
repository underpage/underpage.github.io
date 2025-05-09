---
order: 1
title: Linux
description: 리눅스 명령어
summary:
keywords:
- linux
- linux command
tags:
- os
created_time: 2025-04-07 22:53
modified_time: 2025-05-09 22:52
---

# Linux Command
: 운영체제에서 기본으로 제공하는 명령어 집합  
: 파일 조작, 시스템 관리 등을 위해 사용되며 [쉘](../linux-shell.md) 환경에서 실행됨  
: 내부적으로 커널과 직접 상호작용하는 경우가 많으며 운영체제 자체나 하드웨어 자원을 다룸  

**명령어 유형**  
: 운영체제와의 추상화 수준에 따라 분류  

유형 | 설명
---|---
시스템 명령어 | 커널이나 하드웨어와 직접 상호작용하며 시스템을 관리 및 제어함
내장 명령어 | 쉘에 내장된 명령어로 별도 실행 파일 없이 쉘이 처리함
기본 명령어 | 운영체제에 기본으로 포함된 명령어로 독립적인 실행 파일이 존재함 (= 유틸리티)


**명렁어 기능별 분류**
- [파일 및 디렉토리 관리](./linux-cmd-file.md)  
- [텍스트 및 파일 내용 처리](./linux-cmd-text.md)  
- [사용자 및 권한 관리](./linux-cmd-user.md)  
- [프로세스 및 작업 관리](./linux-cmd-process.md)
- [시스템 정보 확인](./linux-cmd-sysinfo.md)  
- [시스템 관리 및 설정](./linux-cmd-sysadmin.md)  
- [메모리 및 디스크 관리](./linux-cmd-storage.md)  
- [네트워크 관리](./linux-cmd-network.md)  
- [로그 및 모니터링](./linux-cmd-logging.md)
- [백업 및 복구](./linux-cmd-backup.md)
- [패키지 관리](./linux-cmd-package.md)


**명령어 위치**  
: 내장 명령어는 실행 파일이 없으며 시스템 명령어와 기본 명령어 모두 여러 위치에 분산되어 있음  

유형 | 디렉토리 | 설명
---|---|---
필수 유틸리티 | /bin  | 모든 사용자가 사용하는 시스템 부팅이나 복구 등 필수 명령
필수 시스템 도구 | /sbin | 관리자용 시스템 부팅이나 복구 등 필수 명령어
일반 유틸리티 | /usr/bin  | 사용자 작업을 위한 명령어
일반 시스템 도구 | /usr/sbin | 시스템 관리 작업을 위한 명령어
추가 설치 도구 | /usr/local/bin, /opt | 패키지 관리자나 수동으로 설치된 도구

```bash
# 위치 확인
which 명령어

# 유형 확인
type 명령어

# 바이너리, 소스, 매뉴얼 위치 확인
whereis 명령어
```


**Software Command**  
: 특정 소프트웨어나 프로그램에서 제공하는 명령어  
: 이 명령어는 해당 소프트웨어의 기능이나 자원을 다루는데 사용됨  
: 운영체제와 독립적이며 해당 소프트웨어나 프로그램이 설치되어 있어야 사용 가능함  
: 특정 언어나 환경에 종속적일 수 있으며 일반적으로 /usr/bin, /usr/local/bin, /opt 에 위치함  