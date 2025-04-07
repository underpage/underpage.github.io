---
order: 2
title: foundation
description: 오픈소스 보안 재단 (openSSF)
summary:
keywords:
- foundation
- linux foundation
- open source security foundation
- openssf
tags:
- foundation
- security
created_time: 2024-09-28 14:48
modified_time: 2025-02-11 22:25
---

# OpenSSF
Open Source Security Foundation  
: 오픈소스 생태계의 보안을 향상하기 위해 설립한 재단  
: 소프트웨어 공급망 공격이 증가하며 오픈 소스 보안을 위해 Linux Foundation 주도하에 설립  

**목표**
- 오픈소스 프로젝트 보안 수준 향상
- 안전한 소프트웨어 개발과 배포 문화 조성
- 보안 도구와 베스트 프랙티스 제공
- 취약점 발견 및 대응 체계 구축


**워킹 그룹**  

워킹 그룹 | 결과물
---|---
Best Practices WG | Security Scorecards, SKF, CII Best Practices Badge Program
Supply Chain Security WG | S2C2F, SLSA, SBOM 표준화, 취약점 가이드라인
Securing Critical Projects WG | 보안 개선 로드맵, 취약점 관리 프레임워크
Security Tooling WG | OSS-Fuzz, CI/CD 보안 통합 가이드, 취약점 스캐닝 도구
Vulnerability Disclosures WG | CVD 가이드라인, 대응 프로세스 프레임워크
Digital Identity Attestation WG | Sigstore, 신원 검증 프레임워크, 키 관리 베스트 프랙티스
 

**프레임워크**
- SLSA (Supply Chain Levels for Software Artifacts)
- S2C2F (Software Supply Chain Consumption Framework)
- SKF (Security Knowledge Framework)
- FRSCA (Framework for Response to Security Compromises in Artifacts)


**도구**

영역 | 도구명 | 설명
---|---|---
보안 평가 | Security Scorecards | 오픈소스 프로젝트의 보안 위험을 자동으로 평가하고 점수화
보안 평가 | Allstar | GitHub 보안 정책을 자동으로 강제하고 모니터링
취약점 관리 | OSS-Fuzz | 지속적 퍼징 테스팅을 통한 취약점 탐지
취약점 관리 | Package Analysis | 악성 패키지 및 의심스러운 행위 탐지
취약점 관리 | OpenVEX | 취약점 예외 사항 관리 및 문서화
인증/서명 | Sigstore | 소프트웨어 아티팩트 서명 및 검증을 위한 도구 모음
코드 분석 | Security Reviews | 보안 코드 리뷰 및 취약점 분석
코드 분석 | Package Dependencies | 의존성 취약점 분석 및 관리


**가이드라인**
- Secure Software Development Lifecycle Guide
- Supply Chain Security Guide
- CII Best Practices Badge Program Guidelines
- Vulnerability Disclosure Guide
- Memory Safety Guidelines
- Digital Identity Attestation Guide
- Threat Model for Open Source Projects
- Secure Development Fundamentals


**표준 및 명세**
- SBOM (Software Bill of Materials)
- OSV (Open Source Vulnerabilities)
- Package Repository Security Requirements
- Security Insights Specification
- Vulnerability Format Specification