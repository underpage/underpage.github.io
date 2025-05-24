---
order: 1
title: Tool
description: Nix
summary:
keywords:
- tool
- development support
- nix
tags:
- tool
created_time: 2025-04-07 04:37
modified_time: 2025-05-25 00:22
---

# Nix
: 순수 함수 방식으로 동작하는 패키지 관리 및 시스템 구성 관리 도구  
: C, Python, Java, Go, Rust 등 다양한 프로그래밍 언어와 도구를 지원함  

- [Nix CLI](#nix-cli)
- [Nix Language](#nix-language)
- [Nix Configuration Files](#nix-configuration-files)
- Nix Package
- NixOS


**특징**
- 동일한 설정으로 어떤 환경에서든 같은 결과를 보장함 
- 원하는 설정을 선언 파일로 기술하면 Nix이 자동으로 구성함
- 각 패키지는 독립적인 경로에 설치되어 의존성 충돌을 방지함
- 시스템 상태나 패키지 구성을 이전 상태로 되돌릴 수 있음


**핵심 구성**

구성 요소 | 설명
---|---
Nix Language | 패키지 및 시스템 구성을 기술하기 위한 도메인 특화 언어
Nixpkgs   | Nix 공식 패키지 저장소
Nix CLI   | Nix 커맨드 라인 명령어 도구 모음
Nix Store | 모든 패키지들이 저장되는 저장소


**확장 도구**

구성 요소 | 설명
---|---
NixOS     | Nix를 기반으로 하는 리눅스 배포판
NixOps    | NixOS를 배포 및 관리하기 위한 도구
Hydra     | Nix 기반 CI/CD 시스템
Nix GUI Tools |  Nix 설정을 시각화하고 Nixpkgs를 탐색하는 GUI 도구



## Nix CLI

도구 | 설명
---|---
nix-env   | 패키지 관리 도구
nix-shell | 임시 환경을 생성하는 도구
nix-build | Nix 빌드 도구
nix | nix build, nix develop, nix profile 등을 포함하는 최신 도구


**install**
```bash
# Nix 설치
sh <(curl -L https://nixos.org/nix/install) --daemon

. /etc/profile.d/nix.sh
nix --version


# NixOS 설치
nix-env -iA nixpkgs.nixops

# Hydra 설치
nix-env -iA nixpkgs.hydra
```


**command**
```bash
# 패키지 검색
nix-env -qaP 패키지명
or
nix search nixpkgs 패키지명

# 설치된 패키지 목록 확인
nix-env -q

# 패키지 설치
nix-env -iA nixpkgs.패키지명
or
nix profile install nixpkgs#패키지명

# 패키지 제거
nix-env -e 패키지명
or
nix profile remove nixpkgs#패키지명

# 모든 패키지 업데이트
nix-channel --update
nix-env -u '*'

# 패키지 정보 확인
nix-env --describe 패키지명

# 설치 기록 확인
nix-env --list-generations

# 이전 상태로 롤백
nix-env --rollback
```



## Nix Language
: 패키지 의존성, 빌드 과정, 환경 구성을 정의하기 위해 사용하는 언어  
: 원하는 결과를 선언 파일로 정의하면 Nix이 달성 방법을 결정함  



## Nix Configuration Files
: Nix 환경에서 패키지, 개발 환경, 시스템 구성 등을 선언적으로 정의하는 파일들  


**nix.conf**  
: Nix 데몬이나 Nix CLI 전역 설정 파일  
: /etc/nix/nix.conf, ~/.config/nix/nix.conf 위치함  


**nixpkgs.config**  
: Nixpkgs 패키지 빌드 설정 및 전역 옵션 조정 파일  
: ~/.config/nixpkgs/config.nix 위치함  


**default.nix**  
: 패키지 의존성, 빌드 방법 등을 정의하는 기본 파일  
: 패키지 설치, 의존성, 빌드 과정 등을 명시하면 nix-build, nix-shell 도구를 통해 실행됨  


**shell.nix**  
: 프로젝트 개발 환경 구성 파일  
: 개발에 필요한 도구와 라이브러리 등을 정의하면 nix-shell 도구로 환경이 활성화됨  

```nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.openjdk21
    pkgs.gradle
    pkgs.git
  ];

  JAVA_HOME = "${pkgs.openjdk21}";
}
```


**flake.nix**  
: 프로젝트 의존성과 출력물 관리 파일  
: 프로젝트의 입력(의존성)과 출력(패키지, 개발 환경 등)을 명시할 수 있음  


**configuration.nix**  
: NixOS 시스템 설정 정의 파일  
: NixOS에서 사용되는 시스템 패키지, 사용자 계정 등을 구성하는 파일  
: /etc/nixos/configuration.nix 위치함  