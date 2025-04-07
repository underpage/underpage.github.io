---
order: 0.22
title: network
description: 규모에 따른 네트워크 종류
summary:
keywords:
- network
- network scale
- 네트워크 규모
tags:
- network
created_time: 2024-09-14 11:01
modified_time: 2024-11-28 04:46
---

# Network Scale Type
: 물리적 규모에 따라 네트워크를 구분하며 이에 따라 네트워크 적용 대상이 달라짐  
: BAN, PAN, HAN, LAN, MAN 수준에 Wireless가 붙으면 무선 네트워크를 의미  

- [BAN](#ban)
- [PAN](#pan)
- [HAN](#han)
- [LAN](#lan)
- [MAN](#man)
- [WAN](#wan)



## BAN
Body Area Network  
: 인체 중심 네트워크  
: 인체 내/외부 거리의 통신을 위한 네트워크로 헬스케어나 웨어러블 기기에서 사용  
: 일반적으로 인체 내부는 BAN을 인체 주변은 WBAN을 사용  

**기술**
- NFC
- Zigbee



## PAN
Personal Area Network  
: 개인 네트워크, 소규모 네트워크  
: 몇 미터 이내 범위의 통신을 위한 네트워크로 노트북이나 프린터 등에 사용  

**기술**
- Infrared 

**구현체**
- Bluetooth
- Wi-Fi Direct



## HAM
Home Area Network  
: 방 크기의 네트워크  
: PAN보다 좀 더 큰 범위의 통신을 위한 네트워크로 IoT 등에 사용  

**기술**
- Z-Wave

**구현체** 
- Home Ethernet
- Home Wi-Fi



## LAN
Local Area Network  
: 근거리 네트워크, 내부 네트워크  
: 특정 영역의 통신을 위한 네트워크로 사무실, 빌딩, 학교같은 영역에 사용  

**기술**
- FDDI

**구현체** 
- Token Ring
- Ethernet
- Wi-Fi



## MAN
Metropolitan Area Network  
: 도시 영역 네트워크  
: 도시 규모의 통신을 위한 네트워크로 여러 LAN의 집합  
: MAN부터는 직접 구축이 불가능한 범위로 통신 사업자(ISP)로부터 회선을 임대함  

**기술**
- WiMAX
- FTTH

**구현체** 
- Metro Ethernet



## WAN
Wide Ares Network  
: 장거리 네트워크, 외부 네트워크, 광대역 네트워크  
: 대륙 간 통신을 위한 광범위한 네트워크로 LAN과 MAN의 집합  

**구현체**
- Metro Ethernet (Ethernet WAN)
- MPLS
- Internet



## GAN
Global Area Network  
: 전 세계적인 네트워크  
: 지구 전체를 아우르는 네트워크로 글로벌 ISP를 통해 해저 테이블, 위성 등의 기술을 사용해 연결  

**구현체**
- Internet
- Starlink 