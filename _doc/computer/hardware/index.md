---
order: 1
title: hardware
description: 컴퓨터 하드웨어
summary:
keywords:
- computer
- hardware
- hardware component
tags:
- computer
created_time: 2024-09-06 05:28
modified_time: 2025-02-01 10:07
---

# Hardware
: [컴퓨터](../computer.md)를 구성하는 물리적 요소들  
: 하드웨어 구성 요소들은 프로토콜을 통해 상호작용하며 동작함  
: 컴퓨터 부팅과 기본 연산 수행을 위해 최소한의 명령어와 제어 로직이 하드웨어에 내장되어 있음  

**구성 요소**
- [마더보드](./motherboard.md)
- [전자 회로](./electronic-circuits.md)
- [시스템 버스](./system-bus.md)
- [중앙처리장치](./cpu.md)
  - [제어 장치](./control-unit.md)
  - [연산 장치](./arithmetic-logic-unit.md)
  - [레지스터](./register.md)
  - [캐시 메모리](./cache-memory.md)
- [기억 장치](./memory.md)
- [저장 장치](./storage.md)
- [입출력 시스템](./io-system.md)


```
데이터 => 입력 장치  => 시스템 버스 => 출력 장치
                          ↑↓
                     중앙 처리 장치 (제어 창지 + 연산 장치)
                       기억 장치
                       저장 장치
```


**위치에 따라**
- 외부 장치 (키보드, 마우스 등)
- 내부 장치 (CPU, Memory 등)

**기능에 따라**
- 입력 장치 
- 제어 장치 : 명령어 해석 및 실행 순서 제어
- 연산 장치 : 데이터 처리 
- 기억 장치 : 데이터와 명령어 임시 저장
- 저장 장치 : 데이터와 프로그램 영구 저장
- 출력 장치 