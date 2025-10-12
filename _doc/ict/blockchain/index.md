---
order: 3
title: Blockchain
description: 블록체인 (인덱스)
summary:
keywords:
- blockchain
- blockchain history
- smart contract
tags:
- blockchain
- index
created_time: 2025-10-13 00:34
modified_time: 2025-10-13 01:17
---

# Blockchain
: 분산된 네트워크에서 암호화 기술을 이용해 데이터를 안전하게 저장하고 거래하는 개념 및 기술 집합  
: 참여자들의 합의를 통해 데이터의 무결성과 투명성을 보장해 중앙기관 없이 신뢰할 수 있는 거래를 가능하게 함  

- 블록체인 아키텍처
  - [블록체인 구조](./blockchain-structure.md)
  - [블록체인 구성 요소](./blockchain-components.md)
  - [블록체인 모델](./blockchain-model.md)
  - [블록체인 프로토콜](./blockchain-protocol.md)
  - [블록체인 네트워크](./blockchain-network.md)
  - [블록체인 관계자](./blockchain-stakeholder.md)
- [블록체인 기술](./blockchain-technology.md)
  - [암호학 기초](../../security/security-technology/cryptography/index.md)
  - [블록체인 암호학](./blockchain-cryptography.md)
  - [합의 메커니즘](./consensus-mechanism.md)
  - [프라이버시 기술](./blockchain-privacy.md)
  - [디지털 지갑](./digital-wallet.md)
  - [스마트 컨트랙트](./smart-contract.md)
- [블록체인 경제 시스템](./blockchain-economy.md)
- [블록체인 확장성](./blockchain-scalability.md)
- [블록체인 상호운용성](./blockchain-interoperability.md)
- [블록체인 보안](./blockchain-security.md)
- [블록체인 패러다임](./blockchain-paradigm/index.md)
  - [탈중앙화 애플리케이션](./blockchain-paradigm/dapp.md)
- [블록체인 플랫폼](./blockchain-platform/index.md)
  - [비트코인](./blockchain-platform/bitcoin.md)
  - [이더리움](./blockchain-platform/ethereum.md)
- [블록체인 응용 프로토콜](./blockchain-protocol/index.md)
  - [스토리 프로토콜](./story-protocol.md)
  - [크리에이터 프로토콜](./creator-protocol.md)
- [블록체인 산업 응용](./blockchain-industry.md)


**블록체인 개념**  
: 블록체인은 여러 개념과 기술의 융합체로 컨텍스트에 따라 다양한 의미를 내포함  
: 자료구조, 데이터베이스, 네트워크, 프로토콜, 플랫폼, 생태계, 인프라 등의 특성을 동시에 가짐

관점 | 설명
---|--
자료구조 | 블록들이 암호화 해시로 연결된 리스트 
데이터베이스 | 분산된 불변 원장(Ledger)
암호학 시스템 | 공개키, 해시함수, 디지털 서명 등 암호학 기법 집합
프로토콜 | 합의 메커니즘과 네트워크 통신 규칙
네트워크 | P2P 기반 분산된 노드들로 구성된 시스템
개발 플랫폼 | 스마트컨트랙트 개발을 위한 인프라
경제 시스템 | 토큰 이코노미, 인센티브 메커니즘 등 경제 모델
거버넌스 모델 | 온체인, 오프체인 의사결정 체계
인프라 | 차세대 인터넷 기반 기술


**블록체인 기술 배경**
```
Merkle Tree (1979)
데이터를 트리 구조로 표현하여 각 노드를 해시화하고 루트의 해시값을 통해 데이터의 변경 여부를 검증함
>> 블록체인 데이터의 무결성 검증 핵심 기술이 됨

Byzantine Generals Problem (1982) 
분산 시스템에서 일부 노드가 결함이 있어도 전체 시스템이 합의에 도달할 수 있는지 연구
>> 블록체인 합의 알고리즘의 이론적 기초가 됨

eCash (1983)
익명성을 보장하는 디지털 화폐 개념의 시초로 암호학을 활용해 디지털 현금을 발행하는 아이디어 제시

HashCash (1997)
이메일 스팸 방지를 위해 일정한 연산을 요구하는 작업증명 개념
>> 비트코인의 채굴 방식의 기반이 됨

B-Money (1998)
신뢰할 수 없는 네트워크에서 익명성과 분산화를 바탕으로 거래와 자산 기록을 유지하는 시스템 제안
>> 블록체인의 탈중앙화와 거래 검증 방식에 대해 이론적으로 영향을 미침

Bit Gold (1998)
디지털 자산 발행 아이디어를 제안하고 채굴과 작업증명 개념을 결합해 중앙기관 없는 거래 기록 개념 제안
이중 지불 문제를 완전히 해결하지 못함

Bitcoin (2008)
앞선 개념과 기술들을 통합하고 이중 지불 문제를 해결한 디지털 화폐 시스템 구현
>> 최초로 블록체인 기술을 실현한 프로젝트
```


**블록체인 발전 단계**

단계 | 플랫폼 | 특징
---|---|---
1.0 | 비트코인 | 중앙기관 없이 개인 간 디지털 화폐를 송금함
2.0 | 이더리움 | 스마트컨트랙트와 탈중앙화 애플리케이션 구현
3.0 | 3세대 플랫폼 | 확장성, 상호운용성, 지속가능성 개선 및 실제 산업에 적용
4.0 | - | AI, IoT 통합 시도 중


**블록체인 특징**
- 중앙기관 없이 참여자 간 직접 거래가 가능한 탈중앙화 시스템
- 인터넷을 통해 계약서, 증명서 등 디지털 자산을 낮은 비용으로 안전하게 거래할 수 있음
- 거래 내역이 투명하게 공개되며 변경이 불가능해 위조, 변조를 사전에 방지할 수 있음
- 기록된 데이터는 네트워크 합의없이 수정이 불가능하며 모든 거래 이력은 추적이 가능함