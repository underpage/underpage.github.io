---
order: 5
title: computer
description: 컴퓨터 아키텍처 (폰 노이만 모델)
summary:
keywords:
- computer
- computer architecture
- vonn neumann model
tags:
- computer
- architecture
created_time: 2024-09-28 11:43
modified_time: 2025-01-18 06:13
---

# Computer Architecture
: 컴퓨터 구성 요소들의 상호작용과 구조 대한 구체적 설계  

- [Von Neumann Architecture](#von-neumann-architecture)
- [Harvard Architecture](#harvard-architecture)



## Von Neumann Architecture
: 1945년 폰 노이만이 제안한 컴퓨터 아키텍처  
: 서브 시스템을 결합해 컴퓨터를 구성하고 메모리에 데이터와 명령어를 동일한 형식으로 저장하는 방식 제시  
&nbsp;(폰 노이만은 개념만 제시했고 데이터를 비트로 표현하는 방식은 1948년 클로드 섀넌이 정립)

**history**
```
초기 컴퓨터는 프로그램을 하드웨어에 내장해 사용
프로그램이 고정되어 있어 작업 처리를 고속으로 수행하는 장점이 있으나
프로그램이 수정되면 하드웨어를 교체해야 하는 문제가 있었음  

폰 노이만 아키텍처는 프로그램이 메모리에 저장되므로 프로그램을 변경하기 용이하고 
프로그램을 수정해 사용하므로 재사용이 가능해짐
```


**서브 시스템**

요소 | 설명
---|---
Processor | 데이터와 명령어를 처리하는 장치
Memory | 프로세서와 직접 통신하며 데이터와 명령어를 임시로 저장하는 장치
Secondary Memory | 데이터와 명령어를 영구적으로 저장하는 장치
Input/Output Devices |


**동작 방식**
1. 프로그램은 영구 저장 장치에 보관
2. 프로그램 실행시 제어 장치가 명령어를 메인 메모리로 복사
3. 연산 장치가 메인 메모리에 적재된 명령어와 데이터를 연산하고 최종 결과를 출력 장치로 보냄

> Fetch => Decode => Execute

```
- Fetch : 메모리에서 한 번에 하나의 데이터나 명령어를 가져옴 
- Decode : 가져온 명령어를 해석
- Execute : 연산 장치를 통해 명령어 실행
```


**문제점**  
: 데이터와 명령어는 데이터 버스를 통해 이동하는데 폰 노이만 구조는 데이터 버스가 하나여서 순차적 처리만 가능 (명령어와 데이터를 동시에 실행하지 못함)  
: 데이터와 명령어가 동일한 메모리 공간에 저장되어 데이터와 명령어가 충돌될 수 있음 



## Harvard Architecture
: 폰 노이만 아키텍처 문제점을 보완한 아키텍처  
: 데이터와 명령어가 저장되는 메모리 영역을 분리하고 각 영역마다 독립된 시스템 버스가 존재  
: 메모리 영역이 물리적으로 분리되어 데이터와 명령어를 동시에 처리할 수 있음  
: 메모리와 버스가 분리되어 하드웨어 설계가 복잡하고 자원이 많이 필요해 특수 목적 컴퓨터에 주로 사용됨  

> Fetch => Decode => Execute

```
- Fetch : 데이터 버스나 명령어 버스를 통해 데이터나 명령어를 동시에 가져옴 
- Decode : 가져온 명령어를 해석하고 연산에 필요한 데이터를 준비 함
- Execute : 연산 장치를 통해 명령어를 실행함
```


**Modified Harvard Architecture**  
: CPU 내부에서 데이터 캐시와 명령어 캐시를 분리하여 데이터와 명령어를 동시에 처리할 수 있게 함  
: 개인용 컴퓨터는 즈로 수정된 하버드 아키텍처가 사용됨   