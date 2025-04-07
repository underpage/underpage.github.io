---
order: 0
title: tool
description: 시스템 정보 수집 도구 (Facter)
summary:
keywords:
- tool
- infrastructure tool
- facter
- 시스템 정보 수집 도구
tags:
- tool
created_time: 2024-09-30 21:45
modified_time: 2024-10-26 22:16
---

# Facter
: 시스템 정보 수집 도구  
: 인프라에서 시스템의 다양한 속성(fact)을 자동으로 검색해 수집하고 보고하는 도구  
: 다양한 운영체제를 지원하며 온프레미스 환경과 클라우드 환경 모두 사용 가능  
: Puppet에서 사용하는 도구지만 별개로 사용 가능  

**fact**  
: CPU, 메모리, 디스크, 네트워크 인터페이스, 소프트웨어 등의 상태 정보  
: 기본 팩트가 제공되며 커스텀 팩트를 만들어 추가할 수 있음  


**install**
```bash
gem install facter
```