---
order: 1
title: hardware
description: 마더보드
summary:
keywords:
- hardware
- motherboard
- mainboard
tags:
- computer
created_time: 2024-09-25 00:54
modified_time: 2025-02-01 10:08
---

# Motherboard
= Mainboard, System board, Base board  
: 하드웨어 구성 요소들을 연결하고 데이터 교환을 조율하는 회로 기판  
: 외부 전원 공급 장치에게 전력을 받아 내부 하드웨어 구성 요소들에게 배분함  
: 구성 요소간 통신이 가능하도록 인터페이스를 제공하며 온도 모니터링, 하드웨어 상태 모니터링 등 기능을 제공함  

- [Motherboard Interface](#motherboard-interface)
- [Motherboard Component](#motherboard-component)


**기능**
- 하드웨어 구성 요소 간 물리적 연결을 제공함
- 전원 공급 장치를 통해 마더보드에 전력이 공급되면 이를 분배함
- 시스템 버스를 통해 데이터 전송을 관리하고 칩셋을 통해 데이터 흐름을 제어함


**마더보드 다이어그램**  
https://commons.wikimedia.org/wiki/File:Motherboard_diagram.jpg



## Motherboard Interface
: 하드웨어 구성 요소 간 통신을 위해 규격과 프로토콜을 정의한 표준  

- 프로세서 인터페이스
  - Socket
  - LGA
  - AM5
- 메모리 인터페이스
  - DIMM
  - DDR
- 버스 인터페이스
  - AGP
  - PCIe
- 저장 장치 인터페이스
  - SATA
  - NVMe
- 주변 장치 인터페이스
  - USB
  - HDMI
  - DisplayPort



## Motherboard Component
: 마더보드를 구성하는 물리적 요소들  
: 슬롯, 소켓, 포트 등은 마더보드 인터페이스를 물리적으로 구현한 구성 요소  


**칩**  
: 집적 회로가 내장된 반도체 부품으로 특정 기능을 수행

- Main Chipset
- BIOS Chip
- UEFI Chip
- Storage Controller
- Network Controller
- Audio Controller
- Sensor Controller


**모듈**  
: 특정 기능을 수행하는 관련 부품들의 집합체  

- VRM
- TPM
- Clock Module
- RGB Module


**소켓**  
: 주요 부품을 장착하기 위한 연결부

- CPU Socket
- Memory Socket


**슬롯**  
: 확장 카드나 메모리 모듈을 물리적으로 연결하는 소켓

- AGP Slot
- RAM Slot
- PCIe Slot
- M.2 Slot


**커넥터**  
: 내부 구성 요소를 연결하기 위한 연결부

- ATX Power Connector
- CPU Power Connector
- Storage Power Connector
- Front Panel Connector
- SATA Connector
- USB Header Connector
- Fan Connector
- RGB Header


**포트**  
: 외부 장치를 연결하기 위한 연결부  

- Serial Port
- Parallel Port
- PS/2 Port 
- USB Port
- Audio Port
- Network Port
- DisplayPort (HDMI, VGA, DVI)



### Main Chipset
: 마더보드 구성 요소들을 제어하고 관리하는 집적 회로  
: 최근 CPU에는 칩셋 기능이 일부 내장되어 칩셋의 역할이 축소됨  

**Northbridge**  
: CPU와 장치 간의 데이터 전송을 관리  
: CPU가 빠르게 메모리에 접근하도록 메모리 컨트롤러를 보유  
: 최신 CPU에는 노스브릿지의 기능이 내장되어 거의 모든 칩셋은 사우스브리지로 분류됨  

**Southbridge**   
: 입출력 장치와 주변 장치 제어  