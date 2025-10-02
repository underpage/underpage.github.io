---
order: 20
title: System Engineering
description: 시스템 엔지니어링 (인덱스)
summary: 시스템 엔지니어링의 정의, 생명주기, 프로세스, 방법론 등에 대한 개요
keywords:
- system engineering
- system engineering history
tags:
- system engineering
- index
created_time: 2025-10-01 04:28
modified_time: 2025-10-02 22:07
---

# System Engineering
: 구성요소들과 이해관계자들을 시스템 전체 생명주기에 걸쳐 통합적으로 관리하고 조정하는 접근 방식  
: 구성요소란 하드웨어, 소프트웨어, 데이터, 프로세스, 사람, 정책, 환경 등 모든 요소를 의미함  

- [시스템 엔지니어링 개념](./se-concept.md)
- [시스템 엔지니어링 생명주기](./se-lifecycle.md)
- [시스템 엔지니어링 프로세스](./se-process.md)
- [시스템 아키텍처](./se-architecture.md)
- [시스템 요구사항 엔지니어링](./se-requirements.md)
- [시스템 엔지니어링 유형](./se-type.md)
- [시스템 엔지니어링 방법론](./se-methodology.md)
  - [모델 기반 시스템 엔지니어링](./mbse.md)
- [시스템 엔지니어링 관리](./se-management.md)
- [시스템 엔지니어링 도구](./se-tool.md)


**System**  
: 특정 목적을 달성하기 위해 상호 연결된 구성요소들의 조직화된 전체  
: 맥락에 따라 입력을 받아 정의된 기능을 수행하고 출력을 생성하는 기능적 단위  
: 여러 시스템이 협력하여 더 큰 목적을 달성하는 시스템 구조를 System of Systems(SoS)라고 함  



## System Engineering History

```
1940년대  벨 연구소에서 전화 시스템을 설계하기 위해 처음으로 시스템 엔지니어링이라는 용어 사용
1950년대  미 국방부와 NASA에서 체계적인 프로젝트 관리를 위해 시스템 엔지니어링 방법론을 공식화함
1960년대  소프트웨어 위기가 발생하며 시스템 엔지니어링의 체계적 접근법을 소프트웨어에 적용하려 시도함
1960년대  컴퓨터가 시스템의 구성요소가 되면서 하드웨어 중심의 시스템 엔지니어링이 소프트웨어를 포함하게 됨
1980년대  통신 시스템이 발전하고 정보 시스템이 복잡해지면서 시스템 엔지니어링의 적용 범위가 확대됨
1990년대  시스템 엔지니어링 협회(INCOSE)가 창립되어 방법론이 국제적으로 표준화되기 시작
2010년대  사이버-물리 시스템(CPS) 같은 새로운 시스템 유형이 등장
```

**NASA Systems Engineering Handbook**  
https://www.nasa.gov/wp-content/uploads/2018/09/nasa_systems_engineering_handbook_0.pdf


**INCOSE** (International Council on Systems Engineering)  
: 시스템 엔지니어링 분야의 발전을 위해 설립된 비영리 조직  
: 시스템 엔지니어링 방법론을 체계화한 시스템 엔지니어링 핸드북을 발행함  

SEBoK  
https://sebokwiki.org/


**Software Engineering vs System Engineering**  
: 소프트웨어 엔지니어링은 소프트웨어의 설계, 구현, 테스트 등 소프트웨어 제품에 초점  
: 시스템 엔지니어링은 하드웨어, 소프트웨어, 프로세스, 사람, 정책, 환경 등 전체 시스템에 초점  

```
소프트웨어 엔지니어링은 시스템 엔지니어링의 생명주기 모델, 요구사항, 검증, 형상 관리 등의 영향을 받았지만
소프트웨어의 고유한 특성으로 디자인 패턴, 리팩토링 등 별도의 방법론이 발전함 
```