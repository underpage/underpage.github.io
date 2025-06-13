---
order: 1.1
title: Security
description: 암호 시스템
summary:
keywords:
- cryptography
- cryptographic System
- cryptosystem
tags:
- security
created_time: 2025-06-13 14:14
modified_time: 2025-06-13 15:43
---

# Cryptographic System
= Cryptosystem, Encryption System  
: 평문을 암호문으로 변환하고 암호문을 다시 평문으로 복호화하는 암호화 체계  
: 양방향 암호화와 단방향 암호화로 구분되며 각각은 고유한 기술과 알고리즘을 포함함  

- [양방향 암호화](#two-way-encryption)
  - [대칭키](#symmetric-key-encryption)
  - [공개키](#asymmetric-key-encryption)
- [단방향 암호화](#one-way-encryption)
- [하이브리드 암호화](#hybrid-encryption)
- [차세대 암호화](#next-generation-encryption)
  - [동형 암호](#homomorphic-encryption)
  - [양자 암호](#quantum-cryptography)


**수식 표현**
- 암호화  C = E(K,P)
- 복호화  P = D(K,C)


**구성 요소**
- 키 : 암호화와 복호화에 사용되는 비밀 값
- 알고리즘 : 암호화와 복호화 절차를 정의하는 수학적 함수


**주요 용어**  
: 암호 시스템에서 사용되는 주요 용어들   

용어 | 설명
---|---
키  | 암호화와 복호화에 사용되는 값
암호화 알고리즘 | 평문을 암호문으로 변환하는 수학적 절차
복호화 알고리즘 | 암호문을 평문으로 되돌리는 수학적 절차
메시지 | 송신자가 수신자에게 전달하려는 평문 또는 암호문
송신자 | 메시지를 전송하는 개체
수신자 | 메시지를 전달받는 개체
공격자 | 암호 시스템을 공격하려는 개체
