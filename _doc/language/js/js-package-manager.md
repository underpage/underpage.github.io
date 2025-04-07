---
order: 5.2
title: JS
description: 자바스크립트 패키지 매니저
summary:
keywords:
- js
- package manager
- npm
- yarn
- pnpm
tags:
- js
- tool
created_time: 2025-01-20 14:22
modified_time: 2025-02-26 00:23
---

# JS Package Manager
: 레지스트리를 통해 서드 파티 패키지를 설치, 업데이트, 삭제하고 의존성을 관리하는 도구  

- [NPM](#npm)
- [Yarn](#yarn)
- [PNPM](#pnpm)


**패키지**  
: 하나 이상 모듈과 메타데이터로 구성된 집합  
: 자바스크립트 패키지 매니저는 모두 package.json 파일로 메타데이터를 관리함  

**락파일**  
: 설치된 정확한 패키지 버전과 의존 관계를 기록한 파일  
: 모든 환경에서 동일한 패키지가 설치되도록 보장하며 패키지 매니저마다 파일명이 다름  

**패키지 버전 표기법**  
: 패키지 의존성 버전을 지정하는 표기법 (https://semver.org/lang/ko)  

> 주버전.마이너버전.패치버전

버전 | 설명
---|---
\*        | 모든 버전
latest    | 최신 버전
1.0.0     | 명시된 버전과 정확하게 일치하는 버전
1.0.x     | 1.0.0 ~ 1.0.99 범위 버전
\> 1.0.0  | 명시된 버전보다 높은 버전
\>= 1.0.0 | 명시된 버전과 같거나 높은 버전
< 1.0.0   | 명시된 버전보다 낮은 버전
<= 1.0.0  | 명시된 버전과 같거나 낮은 버전
~ 1.0     | 1.0.0 ~ 1.0.99 범위 버전  
~ 0.1.0   | 0.1.0 ~ 0.1.99 범위 버전
^ 1.0     | 1.0.0 ~ 1.99.99 범위 버전
^ 0.1.0   | 0.1.0 ~ 0.1.99 범위 버전


**패키지 레지스트리**  
: 패키지를 저장하고 배포하는 중앙 저장소  
: 누구나 접근 가능한 공개 저장소와 특정 조직만 접근 가능한 비공개 저장소로 나뉨  

- Npm Registry (https://registry.npmjs.org)
- GitHub Package Registry (https://npm.pkg.github.com)



## NPM
Node Package Manager  
: Node 설치시 기본으로 제공되는 패키지 매니저  
: 전역과 로컬에 패키지를 설치할 수 있으며 옵션을 지정하지 않으면 로컬 모드로 설치됨  
: 빌드 도구의 역할도 가능하여 스크립트를 설정해 태스크 자동화가 가능함  
: v7부터 모노레포를 지원해 워크스페이스 기능을 사용할 수 있음  

```bash
# 최신 버전 설치
npm install -g npm@latest

# 특정 버전으로 업데이트
npm install -g npm@10

# 설정 확인
npm config list

# 전역 경로 확인
npm root -g

# 전역 패키지 목록 확인
npm list -g --depth=0

# 캐시 확인
npm cache verify

# 캐시 삭제
npm cache clean --force

# 패키지 보안 취약점 확인
npm audit

# 문제가 해결 가능하면 해결
npm audit fix

# 설정 파일 생성 (package.json)
npm init -y

# 설정 파일에 명시된 패키지 설치
npm install

# 설정 파일에 명시되지 않은 패키지 제거
npm prune

# 락파일로 패키지 설치
npm ci

# 스크립트 실행
npm run 스크립트명

# 워크스페이스 추가
npm init -w 패키지명

# 워크스페이스에 패키지 설치
npm install -w 패키지
```


**.npmrc**  
: npm의 설정을 관리하는 구성 파일  
: 전역과 로컬 각각 설정 가능하며 패키지 설치 경로, 인증 토큰, 캐시 설정 등 관리  

```ini
# 레지스트리 설정
registry=https://registry.npmjs.org/

# 패키지 캐시 위치 설정
cache=/path/to/cache

# 로그 레벨 설정
loglevel=warn

# 정확한 버전 사용
save-exact=true

# 스크립트에서 NODE_ENV 사용
script-shell=/bin/bash

# ssl 검증 설정
strict-ssl=false

# 워크스페이스 설정
workspaces=true
```


**package.json**  
: 패키지 의존성 및 프로젝트 정보를 관리하는 매니페스트 파일  
: 프로젝트의 메타데이터, 패키지 의존성, 스크립트(빌드, 테스트) 등을 정의함  
: 레지스트리에서 패키지를 식별할때 package.json에 정의된 name과 version을 통해 고유성을 식별함  

```json
{
  "name": "첫 글자로 . 과 _ 기호 사용 불가, 대문자 사용 불가, 214자 미만",
  "version": "1.0.0",
  "main": "index.js",
  "scripts": {
    "install" : "",
    "lint": "",
    "test": "",
    "build": "",
    "prestart": "",
    "start": "",
    "poststart": ""
  },
  "dependencies": {},
  "devDependencies": {},
  "engines": {
    "node": "^10.0.0",
    "npm": "^6.0.0"
  },
  "keywords": [],
  "bugs": {
    "url" : "",
    "email": ""
  },
  "author": "name <example@email.com> (https://example.com)",
  "author": {
    "name": "",
    "email": "",
    "url": ""
  },
  "contributors" : [],
  "license": ""
}
```

속성 | 설명
---|---
name         | 프로젝트나 패키지 이름
version      | 현재 패키지 버전  
description  | 패키지 간략 설명
private      | 패키지 공개 여부  
main         | CommonJS 진입점
module       | ESM 진입점
exports      | 패키지의 노출 경로 및 조건부 진입점
types/typings| 타입스크립트 타입 정의 진입점
files        | npm에 포함할 파일 목록
bin          | 커맨드라인 실행 파일 위치
man          | 매뉴얼 페이지 위치
scripts      | 실행할 스크립트 정의  
config       | 패키지 스크립트에서 사용할 설정 값
sideEffects  | 트리 쉐이킹 최적화 관련 설정 
dependencies | 배포시 필요한 패키지 목록
devDependencies  | 개발 환경에만 필요한 패키지 목록 (--save-dev)
peerDependencies | 패키지간 호환성 표시 (호스트 패키지에 필요한 의존성)
bundledDependencies  | npm pack 시 번들링할 의존성 패키지 이름 목록
optionalDependencies | 설치 실패해도 계속 진행되는 선택적 의존성
overrides    | 중첩된 의존성 버전을 재정의
workspaces   | 모노레포 워크스페이스 구성
os           | 실행될 운영체제 명시
cpu          | 지원하는 CPU 아키텍처 명시
engines      | 노드 및 npm 버전 명시
browserslist | 지원 브라우저 명시, 도구에서 참조하여 폴리필 추가  
keywords     | 패키지 검색을 위해 관련 키워드 명시
homepage     | 프로젝트 홈페이지 주소
repository   | 소스코드 저장소 정보
bugs         | 프로젝트 이슈가 보고될 홈페이지나 이메일 주소 명시  
author       | 패키지 작성자
contributors | 패키지 기여자 목록
funding      | 프로젝트 후원 정보
license      | 패키지 라이센스 명시


**npm-shrinkwrap.json**  
: 의존성 트리를 고정하기 위한 파일  
: package-lock.json을 기반으로 생성되며 패키지 배포시 사용됨  

```bash
npm shrinkwrap
```



### npx
: npm@5.2.0부터 추가된 패키지 러너  
: npm@7부터는 npm 패키지에 기본으로 포함됨  
: 패키지를 전역 설치 없이 일회성으로 실행할 수 있도록 도와주는 도구  

```bash
# 레지스트리에서 바이너리 패키지 실행
npx create-react-app example

# 깃허브 저장소에서 실행
npx github:github-user/repo-name
```



## Yarn
: NPM v3 이전 단점을 보완하기 위해 만들어진 패키지 매니저  
: Yarn v2(Berry)부터 모듈형 아키텍처로 변경되어 플러그인 기반으로 확장됨  

```bash
# 전역 설치
npm install yarn -g
yarn -v

# 업데이트
yarn self-update

# 버전 변경 
yarn set version 버전 

# 최신 안정 버전으로 업데이트
yarn set version stable

# 레지스트리 확인
yarn config get registry

# 레지스트리 설정
yarn config set registry 레지스트리

# 오프라인 설정
yarn config set yarn-offline-mirror

# 캐시 확인
yarn cache list

# 캐시 정리
yarn cache clean
```



### Yarn Berry
: Yarn v2 이상 버전으로 사용하려면 명시적 업그레이드가 필요함  
: PnP를 통해 의존성을 관리하며 Zero-installs을 지원함  

**PnP**  
: node_modules 폴더 없이 .pnp.cjs 파일에 의존성 경로를 매핑하여 의존성을 해결  
: 이를 통해 설치 속도 향상, 디스크 공간 절약, 의존성 문제 등을 해결함  

**Zero-installs**  
: .yarn/cache에 의존성 캐시 파일을 저장하고 이를 Git같은 레포지토리에 커밋  
: 레포지토리에서 프로젝트를 클론하면 바로 실행 가능함  


```bash
# Berry로 업그레이드
yarn set version berry

# PnP 모드 활성화
yarn config set nodeLinker pnp

# Zero-installs 활성화
yarn config set enableGlobalCache false

# 의존성 검증
yarn constraints

# 의존성 문제 자동 해결
yarn constraints --fix

# 플러그인 설치
yarn plugin import workspace-tools

# 패키지 즉시 실행
yarn plugin import plugin-dlx
yarn dlx typescript --init
```

플러그인 | 설명
---|---
plugin-workspace-tools   | 워크스페이스 간 작업 및 스크립트 실행 도구 제공
plugin-interactive-tools | 인터랙티브 설치 및 패키지 관리 기능 제공
plugin-dlx      | 글로벌 설치 없이 패키지 임시 실행 도구 제공
plugin-exec     | 네이티브 종속성 빌드 제어
plugin-version  | 버전 관리 자동화
plugin-licenses | 라이센스 검사 및 보고


**.yarnrc.yml**  
: Yarn v2 설정 파일

```yaml
# 레지스트리 설정
npmRegistryServer: "https://registry.npmjs.org"

# node_modules 사용
nodeLinker: "node-modules"

# PnP 사용
nodeLinker: "pnp"

# zero-install 설정
enableGlobalCache: false

# 캐시 설정
cacheFolder: "./.yarn/cache"

# 병렬 다운로드 제한
networkConcurrency: 8
```



### Yarn Workspaces
: 모노레포를 관리하기 위한 기능  
: 패키지 간 심링크를 자동으로 생성하여 중복 의존성 제거 및 빠른 패키지 간 참조가 가능함  

```bash
# 워크스페이스 정보 출력
yarn workspaces info

# 모든 워크스페이스에 패키지 설치
yarn workspaces foreach add 패키지명

# 특정 워크스페이스에 패키지 설치
yarn workspace 워크스페이스명 add 패키지명
```



## PNPM
Performance NPM  
: 성능과 디스크 공간 효율성에 중점을 둔 패키지 매니저  
: 패키지를 효율적으로 관리하기 위해 하드 링크와 심볼릭 링크를 활용하여 디스크 공간을 절약함  
: 하나의 패키지만 전역에 설치하고 필요시 패키지의 하드 링크를 공유해 중복 설치를 방지함  

```bash
# 전역 설치
npm install pnpm -g
pnpm --version

# 전역 경로 확인
pnpm config get store-dir

# 캐시 경로 확인
pnpm config get cache-dir

# package.json 생성
pnpm init -y
```



### pnpx  
: [npx](#npx)처럼 전역 설치 없이 패키지 실행을 도와주는 도구  

```bash
pnpx create-react-app example
```