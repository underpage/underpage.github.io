---
order: 0.33
title: network
description: 서비스 제공 방식에 따른 네트워크 종류
summary:
keywords:
- network
- network service
- 네트워크 서비스
tags:
- network
created_time: 2024-09-14 11:00
modified_time: 2024-11-10 15:42
---

# Network Service Type
: 서비스 제공 방식에 따라 네트워크를 구분  

- [공중망](#public-network)
- [사설망](#private-network)
- [폐쇄망](#closed-network)



## Public Network
: 접근 제한이 없는 네트워크  
: 아무나 접근 가능해 보안이 상대적으로 낮음  
: 공인 IP 주소 사용  



## Private Network
: 특정 사용나자 조직만 접근 가능한 네트워크  
: 사설 IP 주소 사용  
: 외부와 통신할 경우 NAT를 통해 사설 IP가 공인 IP로 변환

**DMZ**  
: DeMilitarized Zone  
: Public DMZ는 외부에서 접근 가능한 외부 네트워크와 내부 네트워크 중간 영역  
: Private DMZ는 외부 네트워크와 내부 네트워크 중간 영역이지만 내부 사용자만 접근 가능  



## Closed Network
: 외부와의 연결이 제한된 네트워크  
: 조직에서 보안을 위해 내부에서만 사용하는 네트워크로 내부 사용자만 접근 가능  
: 사설 IP 주소 사용  