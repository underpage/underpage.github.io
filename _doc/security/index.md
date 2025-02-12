---
order: 19
title: security
description: 보안 (인덱스)
summary:
keywords:
- security
- protection
- threat
- rist
tags:
- index
- security
- glossary
created_time: 2024-09-07 17:36
modified_time: 2025-02-07 21:29
---

# Security
: 위협으로부터 자산을 보호하기 위한 기술, 도구, 정책을 포함한 포괄적인 개념  
: 공격, 비인가 접근 등 다양한 위협을 식별하고 이에 대응하여 리스크 관리 및 예방을 목표로 함  

- [보안 원칙](./security-principle.md)
- [보안 전략](./security-strategy/index.md)
  - [보안 관리 프로세스](./security-strategy.md#security-management-process)
- [보안 기술](./security-technology/index.md)
  - [암호학](./security-technology/cryptography.md)
- [보안 위협 요소](./security-threat/index.md)
- [보안 프로토콜](./security-protocol/index.md)
- [보안 표준 및 프레임워크](./security-standard/index.md)
- [보안 도구](../tool/tool-security/index.md)


**history**
```
1988년 등장한 모리스 웜은 최초의 악성 프로그램이자 인터넷을 통해 전파된 첫 번째 웜으로
인터넷에 연결된 수천 대의 UNIX 컴퓨터를 감염시켰고 이는 최초의 대규모 보안 위협 사례로
이를 계기로 침해대응센터(CERT)가 설립되어 보안 대응 체계가 시작됨
```



## Security Glossary
: 보안 관련 주요 용어


**자산** (Asset)  
: 조직이 보호할 대상으로 물리적, 논리적, 인적 요소  
: 데이터와 이를 처리하는 시스템과 관련된 프로세스 등이 모두 보호 대상이 됨  

자산 | 대상
---|---
물리적 | 데이터 센터, 서버, 네트워크 장비 등
논리적 | 데이터, 소스 코드, 암호화 키 등


**위협** (Threat)  
: 조직의 자산에 피해를 줄 수 있는 모든 잠재적 요소  
: 허락되지 않은 접근이나 권한없는 사람이나 시스템의 리소스 수정, 훼손, 유출 등  
: 위협은 항상 존재하며 이를 완전히 제거하는 것은 불가능하므로 적절한 보안 관리와 대응이 필요  


**위협 요소** (Threat Actor/Source)  
: 위협을 발생시키는 주체나 원천  


**취약점** (vulnerability)  
: 자산의 특성에 따라 존재하는 약점이나 허점으로 위협 요소는 이를 이용해 공격을 시도함  
: 보안 취약점은 보안 위협이 실현될 가능성을 제공함  


**위협** (Risk)  
: 특정 위협이 현실화될 가능성과 그로 인한 피해 정도를 결합한 개념  
: 리스크는 관리와 감소가 가능하므로 보안 관리의 핵심 목표가 됨  

> 리스크 = 위협 x 취약점 x 영향


**공격** (Attack)  
: 위협 요소가 보안 취약점을 이용해 자산에 피해를 가하는 행위  


**보안 사고** (Security Incident)  
: 자산에 대한 기밀성, 무결성, 가용성을 위협하는 사건  


**보안** (Security)  
: 자산을 위협으로부터 보호하여 안전한 상태를 유지하기 위한 모든 활동과 상태  


**보호** (protection)  
: 보안의 하위 개념으로 자산을 위협으로부터 안전하게 지키기 위한 모든 조치  
: 리소스는 안전하게 관리하고 시스템을 정상적으로 동작하게 관리하는 것을 목표로 함  


**대응** (Response)  
: 보안 사고가 발생할 때 이를 탐지/분석/통제/복구하기 위한 기술이나 행동  
: 대응을 통해 공격을 예방하고 공격이 발생하면 피해를 최소화하고 재발 방지를 위한 개선과 조치  


**통제** (Control)  
: 리스크를 감소시키기 위한 관리적, 기술적, 물리적 보안 조치  


**대책** (Countermeasure)  
: 위협으로부터 자산을 보호하고 취약점을 방지하거나 완화하기 위한 구체적인 기술적/물리적/관리적 조치  