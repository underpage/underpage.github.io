---
order: 5.1
title: JS
description: 자바스크립트 버전 관리 도구
summary:
keywords:
- js
- js version manager
- nvm
- corepack
- dvm
tags:
- js
- tool
created_time: 2025-02-24 13:33
modified_time: 2025-02-26 01:58
---

# JS Version Manager
: 자바스크립트 런타임 및 패키지 매니저 버전을 관리하는 도구  
: 런타임이나 패키지 매니저의 여러 버전을 쉽게 설치하고 버전 전환을 도와주는 도구  

**Node**
- [NVM](#nvm)
- [Volta](#volta)
- [FNM](#fnm)
- [Corepack](#corepack)

**Deno**
- [DVM](#dvm)



## NVM
Node Version Manager  
: Node 버전 관리 도구  
: 전역 노드 버전과 프로젝트별 노드 버전을 분리할 수 있음  
: .nvmrc 파일을 통해 프로젝트별 노드 버전을 지정함  

```bash
# 설치
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc

# 최신 안정화 버전 설치
nvm install node

# 최신 LTS 버전 설치
nvm install --lts

# 특정 버전 설치
nvm install 20.0.0

# 특정 버전 제거
nvm uninstall 20.0.0

# 설치 가능한 노드 버전 확인
nvm ls-remote
nvm ls-remote --lts

# 설치된 노드 목록 확인
nvm ls

# 기본 버전 지정
nvm alias default 20

# 현재 세션에 특정 버전 사용
nvm use 20

# 현재 사용 버전 확인
nvm current

# 특정 버전으로 스크립트 실행
nvm exec 20 node script.js
```



## Volta
: Rust로 개발된 버전 관리 도구  
: Node, NPM, Yarn, PNPM 등 다양한 도구 설치와 버전 전환을 지원함  
: 설치 속도가 빠르며 설치된 도구를 캐시하여 즉각적으로 버전이 전환됨  
: 프로젝트 package.json에 도구 버전을 정의하면 이를 인식해 자동으로 적용함  
: 전역 설치와 프로젝트별 버전 관리를 동시에 지원함  

```bash
# 설치
curl https://get.volta.sh | bash

## windows
iwr https://get.volta.sh -UseBasicParsing | iex

# bash에서 자동 완성 활성화
volta completions bash

# 최신 노드 설치
volta install node

# 특정 버전 설치
volta install node@20

# 설치 제거
volta uninstall node

# 프로젝트에 특정 버전 고정
volta pin node@20

# 고정 해제
volta pin --unset node

# 설치된 도구와 버전 확인
volta list

# 특정 버전으로 한 번만 실행
volta run node@20 script.js
```


**package.json**  
: 도구와 버전을 명시하면 volta pin 명령어 없이 자동으로 버전을 인식하고 적용함

```json
{
  "volta": {
    "node": "20.0.0",
    "npm": "10.0.0"
  }
}
```



## FNM
Fast Node Manager  
: Rust로 개발된 Node 버전 관리 도구  
: NVM의 속도 문제를 해결하기 위해 Rust로 재구현되어 빠른 설치와 전환 속도를 제공함  
: NVM과 명령어가 호환되며 더 빠른 성능을 제공함  
: .nvmrc나 .node-version 파일을 통해 프로젝트별 노드 버전을 강제할 수 있음 

```bash
# 설치
curl -fsSL https://fnm.vercel.app/install | bash

## windows
choco install fnm or scoop install fnm

# 쉘 통합 설정 -- 디렉토리 이동시 자동으로 버전 적용됨
fnm env --use-on-cd | source

## 영구 적용
echo 'eval "$(fnm env --use-on-cd)"' >> ~/.bashrc
source ~/.bashrc


# 최신 안정화 버전 설치
fnm install latest

# 특정 버전 설치
fnm install 20

# 설치 가능한 버전 확인
fnm list-remote

# 설치된 목록 확인
fnm list

# 기본 버전 지정
fnm default 20

# 특정 버전 사용
fnm use 20

# 현재 버전 확인
fnm current
```



## Corepack
: 최신 노드를 설치하면 기본으로 제공되는 패키지 매니저 관리 도구  
: Yarn, PNPM 같은 패키지 매니저를 전역으로 설치하지 않고 프로젝트별로 관리함  
: 프로젝트별 패키지 매니저 버전을 고정해 일관된 개발 환경을 유지함  

```bash
# node@16 이전은 설치 필요 
npm install corepack -g
corepack --version

# node@16 이후는 활성화 필요
corepack enable

# 비활성화 
corepack disable 

# 특정 패키지 매니저 준비
corepack prepare yarn@3.2.0 --activate

# 현재 프로젝트에 지정된 패키지 매니저 준비
corepack prepare

# 지정한 패키지 매니저 실행
corepack yarn install

# 사용 가능한 패키지 매니저 확인
corepack list
```


**package.json**
```json
{
  "engines": {
    "node": ">=20.0.0"
  },
  "packageManager": "yarn@3.2.0"
}
```



## DVM
Deno Version Manager  
: Go로 개발된 Deno 버전 관리 도구  
: 다양한 디노 버전을 설치하고 버전 전환을 도와줌  
: .dvmrc 파일을 통해 프로젝트별 디노 버전을 지정할 수 있음  

```bash
# 설치
curl -fsSL https://dvm.deno.dev | sh

## windows
irm https://dvm.deno.dev | iex

# 최신 버전 설치
dvm install

# 설치 목록 확인
dvm list

# 현재 사용중인 버전 확인
dvm current

# 특정 버전 전환
dvm use 1.0.0

# 프로젝트에 .dvmrc 파일 생성하고 버전 고정
dvm use 1.0.0 --save
```