---
order: 1
title: ide
description: IDE - 이클립스
summary:
keywords:
- tool
- ide
- eclipse
tags:
- tool
created_time: 2024-10-05 02:57
modified_time: 2025-01-19 15:06
---

# Eclipse
: 자바 개발을 위한 오픈소스 통합 개발 환경  
: 다양한 플러그인과 프로젝트를 통해 기능을 확장하는 플랫폼으로 확장  
: 기본은 자바 환경을 제공하지만 플러그인을 설치해 다른 언어의 개발 환경도 지원함  


**Eclipse Project**  
: 이클립스 재단에서 공식으로 관리하는 독집적인 프로젝트

- Eclipse Platform
- Eclipse Tools Platform
- Eclipse Web Tools Platform
- Eclipse Data Tools Platform
- Eclipse Java Development Tools (https://eclipse.dev/jdt/)
- Eclipse Memory Analyzer (https://eclipse.dev/mat/)
- Eclipse PDE : 플러그인 개발 환경
- Eclipse CDT : C/C++ 개발 환경


**Eclipse Plugin**  
: 이클립스의 기능을 확장하기 위한 컴포넌트로 Eclipse Marketplace을 통해 설치하고 관리  
: 이클립스 IDE 자체도 여러 플러그인 조합으로 만들어짐  

플러그인 검색  
https://marketplace.eclipse.org/search

플러그인 목록  
https://marketplace.eclipse.org/free-tagging/plugins-list



## Eclipse Platform
: 이클립스 IDE를 구성하는 핵심 프레임워크로 기본 개발 환경을 제공  
: 워크 스페이스, 사용자 인터페이스 등 다양한 컴포넌트로 구성  


**플랫폼 런타임**  
: 이클립스가 구동될 때 설치되어 있는 플러그인을 검사하고 이에 대한 정보 레지스트리를 생성  
: 지연 로딩 방식을 사용해 필요할 때만 플러그인을 로드하고 플러그인의 사용주기를 관리함 

**워크스페이스**  
: 사용자 리소스를 관리하는 플러그인
: 프로젝트, 폴더, 파일 등 리소스를 관리하고 변경 이력을 추적함  
: 프로젝트의 메타데이터를 저장해 파일 시스템과 연동을 관리함  

**워크벤치**  
: 사용자 인터페이스를 제공하는 플러그인  
: 뷰(View), 에디터(Editor), 퍼스펙티브(Perspective) 등  