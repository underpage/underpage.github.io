---
order: 4
title: computer
description: 컴퓨터 구조 패러다임
summary:
keywords:
- computer
- computer architecture paradigm
tags:
- computer
- architecture
- paradigm
created_time: 2025-01-16 02:48
modified_time: 2025-01-17 18:45
---

# Computer Architecture Paradigm
: 컴퓨터 구조 패러다임은 컴퓨터 시스템의 연산 처리 방식과 설계 철학을 정의  
: 제어 흐름과 데이터 흐름으로 구분되며 프로그램 실행 및 연산 수행 기본 원리를 결정함  

- [제어 흐름 아키텍처](#control-flow-architecture)
- [데이터 흐름 아키텍처](#data-flow-architecture)



## Control Flow Architecture
: 명령어 순차적 실행을 기반으로 하는 설계 방식  
: 프로그램 카운터에 의해 명령어 실행 순서가 순차적으로 제어됨  
: 제어 흐름은 조건문, 반복문, 함수 호출 등으로 제어되며 프로그램을 실행함  
: 명령어가 순차적으로 실행되어 예측이 가능하며 모델이 단순해 구현하기 용이함   
: 실행 속도가 느리며 프로그램 카운터와 명령어 실행의 구조적 한계로 병목 현상이 발생할 수 있음  

**구현**
- [Von Neumann Architecture](./computer-architecture.md#von-neumann-architecture)
- [Harvard Architecture](./computer-architecture.md#harvard-architecture)



## Data Flow Architecture
: 계산이 데이터의 흐름과 의존성을 기반으로 하는 설계 방식  
: 데이터의 가용성에 따라 연산이 실행되며 명령어 실행 순서가 데이터 의존성에 의해 결정됨  
: 조건문, 반복문 등 제어 흐름을 명시적으로 따르지 않고 데이터가 준비되면 연산이 비동기적으로 실행됨  
: 비동기 연산과 병렬 실행을 극대화할 수 있으나 구현하기 복잡하며 자원 관리가 어려움  

용어 | 설명
---|---
데이터 가용성 | 데이터가 연산에 필요한 상태로 준비된 상황
데이터 의존성 | 명령어가 이전 데이터 처리 결과에 의존함


**구현 방식**
- 정적 데이터 흐름 구조
- 동적 데이터 흐름 구조


**데이터 관리 기법**
- 태깅 기법
- 토큰 매칭 방식