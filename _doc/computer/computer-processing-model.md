---
order: 6
title: computer
description: 컴퓨터 작업 처리 방식
summary:
keywords:
- computer
- computer processing model
tags:
- computer
- model
created_time: 2024-11-13 12:47
modified_time: 2025-01-18 06:21
---

# Computer Processing Model
: 컴퓨터가 데이터를 처리하고 명령어를 실행하는 방식과 구조를 정의한 모델  

- [연속 처리](#sequential-processing)
- [병렬 처리](#parallel-processing)
- [다중 처리](#multiprocessing)
- [병행 처리](#concurrency-processing)



## Sequential Processing
: 하나의 프로세스가 한 번에 하나의 작업을 순차적으로 처리하는 방식  
: 수행 중인 작업이 끝나야 다음 작업을 처리할 수 있음  
: 작업이 하나씩 실행되어 구현이 단순하나 속도가 느리고 효율성이 낮음  

 

## Parallel Processing
: 여러 프로세서가 하나의 작업을 분할하여 동시에 처리하는 방식  
: 작업을 여러 부분으로 나누고 각 부분을 병렬로 실행함  
: 대규모 데이터 처리와 복잡한 연산 작업을 위해 사용되며 CPU, GPU, HPC, 멀티코어 등에 활용됨



## Multiprocessing
: 여러 프로세서가 각각 다른 작업을 동시에 처리하는 방식  
: 작업이 많을 수록 효율성이 증가하나 자원 경쟁으로 인해 동기화 문제가 발생할 수 있음  
: 듀얼 프로세서, 쿼드코어 시스템 등에 활용됨  



## Concurrency Processing 
: 하나의 프로세서가 여러 작업을 동시에 처리하는 것처럼 빠르게 전환하는 방식  
: 시스템 자원을 효과적으로 활용할 수 있으나 작업 간 간섭이나 교착 상태가 발생할 수 있음  
: 현대 운영체제에서 다양한 프로그램을 동시에 실행하는 방식으로 활용됨  