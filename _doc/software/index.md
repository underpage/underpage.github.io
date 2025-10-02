---
order: 18
title: Software Engineering
description: 소프트웨어 공학 (인덱스)
summary: 소프트웨어 공학의 정의, 표준, 생명주기별 핵심 영역, 최신 개발/운영 방식 등에 대한 개요
keywords:
- software engineering
- software engineering history
- software crisis
tags:
- software engineering
- index
created_time: 2025-10-01 19:10
modified_time: 2025-10-02 22:07
---

# Software Engineering
: 소프트웨어 시스템 설계, 개발, 유지보수를 위한 체계적인 프로세스와 방법론  
: 체계적인 접근 방식을 통해 생산성, 효율성, 신뢰성 높은 소프트웨어 개발을 가능하게 함  
: 소프트웨어 품질, 일정, 비용 등을 관리하면서 사용자의 요구사항을 충족시키는 것을 목표로 함  

**software**  
: 넓은 의미의 소프트웨어란 프로그램과 관련된 데이터와 문서들 집합  
: 문서란 요구사항 명세서, 설계서, 매뉴얼, 가이드 문서 등 프로그램 관련 정보를 제공하는 모든 것을 의미함  

**engineering**  
: 수학적 원리와 과학적 지식을 활용해 실용적인 문제를 해결하는 학문  
: 공학은 기계, 전기, 화학 등 분야에서 사용되어 효율적이고 안전성있는 설계와 구현을 목표로 함  


**소프트웨어 표준 및 프레임워크**  
: 소프트웨어 엔지니어링를 체계적으로 지원하는 표준과 가이드라인  

- [Software Engineering Framework](./se-framework/index.md)
  - [SWEBOK](./se-framework/swebok.md)
  - [ISO/IEC/IEEE 12207](./se-framework/iso12207.md)


**소프트웨어 생명주기별 영역**  
: 소프트웨어를 계획, 설계, 구현, 배포, 운영하기 위한 핵심 영역들  
: 기획, 개발 등 역할에 따라 구분되지 않으며 제품 개발을 위한 생명주기 흐름에 따른 영역임  

- [소프트웨어 제품 관리](./sw-product-management.md) (WHAT, WHY)
- [소프트웨어 프로세스](./sw-process.md) (HOW)
  - [소프트웨어 프로세스 모델](./sw-process-model.md)
  - [소프트웨어 개발 방법론](./sw-development-method.md)
  - [소프트웨어 설계 방법론](./sw-design-method.md)
  - [소프트웨어 모델링](./sw-modeling.md)
- [소프트웨어 프로젝트 관리](./sw-project-management.md)
  - [소프트웨어 요구사항 관리](./sw-requirements.md)
  - [소프트웨어 품질 관리](./sw-quality.md)
- [소프트웨어 아키텍처](./sw-architecture/index.md)
  - [아키텍처 스타일](./sw-architecture/architecture-style/index.md)
  - [아키텍처 패턴](./sw-architecture/architecture-pattern/index.md)
  - [아키텍처 모델링](./sw-architecture/architecture-modeling.md)
- [소프트웨어 설계](./sw-design/index.md)
  - [디자인 패턴](./sw-design/design-pattern.md)
- [소프트웨어 인터페이스](./sw-interface/index.md)
- [소프트웨어 구현](./sw-implementation/index.md)
- [소프트웨어 개발 및 배포](./sw-delivery/index.md)
- [소프트웨어 운영](./sw-operation/index.md)

```
보안은 설계, 개발, 운영 등 전체 영역에 걸쳐 통합적으로 고려되어야 함
```


**최신 방식**  
: 소프트웨어의 개발, 배포, 운영을 효율적으로 수행하기 위한 최신 기술과 방법론  

- [DevOps](./sw-practice/devops.md)
- [DevSecOps](./sw-practice/devops.md)
- [Site Reliability Engineering](./sw-practice/sre/index.md)
- [Platform Engineering](./sw-practice/platform-eng.md)
- [MLOps](./sw-practice/mlops.md)



## Software Engineering History

```
1960년대  소프트웨어 시스템 복잡성이 급격히 증가하며 소프트웨어 개발의 실패율도 증가함
          소프트웨어의 체계적인 개발 방식이 필요해지며 소프트웨어 엔지니어링이라는 개념이 등장
          이는 당시 하드웨어 시스템 방법론인 시스템 엔지니어링의 개념과 원칙을 차용

1970년대  구조적 프로그래밍이 등장하고 확산되면서 체계적인 개발 방법이 필요해짐
          이를 위해 워터폴 모델이 도입되어 소프트웨어 개발의 단계적 접근 방식이 확립됨
          이 과정에서 요구사항 분석과 설계의 중요성이 대두되고 소프트웨어 메트릭(측정) 개념이 등장함

1980년대  객체지향 프로그래밍이 등장하면서 모듈화, 캡슐화, 상속 등 개념이 설계 방식에 영향을 미치며
          구조적 설계, 모듈화, 재사용성이 개발 방법론과 도구로 발전하며 소프트웨어 공학이 함께 발전함

1990년대  객체지향 분석 및 설계 방법론이 보편화되면서 이를 표현하기 위한 UML 도구가 등장함
          인터넷과 웹의 발전으로 분산 시스템과 클라이언트-서버 아키텍처에 대한 공학적 접근이 중요해짐
```

**소프트웨어 위기** (software crisis)  
: 1960년대 소프트웨어 공학 컨퍼런스에서 등장한 용어  
: 개발 비용 초과, 일정 지연, 품질 저하 등 대규모 소프트웨어 프로젝트가 실패하는 현상을 의미  