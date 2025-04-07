---
order: 3.3
title: Programming
description: 계약 지향 프로그래밍 언어
summary:
keywords:
- programming language
- contract oriented programming language
- smart contract
tags:
- program
- language
created_time: 2024-10-25 22:51
modified_time: 2025-03-22 01:39
---

# Contract-Oriented Programming Language
= Smart Contract Programming Language  
: 계약 지향 프로그래밍 언어  
: [스마트 컨트랙트](../../tech/blockchain/smart-contract.md)를 구현하기 위한 프로그래밍 언어  
: 대부분의 스마트 컨트랙트 언어는 결정론적 실행을 보장하여 모든 노드에서 동일한 결과가 도출됨  
: 주로 디지털 자산 관리, 디지털 신원 관리, 금융 서비스 등에 사용됨  

**결정론적 실행**  
: 동일한 입력을 주었을때 항상 동일한 출력과 상태 변화를 생성하는 특성  


**언어 제약**  
: 결정론적 실행을 보장하기 위해 스마트 컨트랙트 언어들은 제약사항이 존재함  

- 부동 소수점 연산 제한
- 현재 시간, 난수 생성 같은 비결정론적 함수 사용 제한
- 무한 루프 방지 메커니즘
- 외부 API 호출 제한


**언어 종류**

언어 | 플랫폼
---|---
Solidity | 이더리움
Vyper    | 이더리움
Plutus   | Cardano
Move     | Aptos, Sui
Rust     | Solana, Near, Polkadot


**언어 특징**
- 상태 관리 기능이 내장되어 있음
- 토큰 및 디지털 자산 관련 연산을 지원함
- 트랜잭션 실행 모델을 지원함
- 가스 최적화를 위한 기능을 제공함
