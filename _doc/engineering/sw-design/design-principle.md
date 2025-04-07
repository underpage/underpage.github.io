---
order: 1
title: software engineering
description: 소프트웨어 디자인 원칙
summary:
keywords:
- software engineering
- software design principle
- 소프트웨어 디자인 원칙
tags:
- software engineering
created_time: 2024-10-09 03:49
modified_time: 2025-01-16 06:45
---

# Design Principle
: 소프트웨어 품질, 유지보수성, 확장성을 향상시키기 위한 설계 지침  
: 컴포넌트나 모듈 수준 설계와 관련된 구체적인 원칙  

- [PIE](#program-intently-and-expressively)
- [SLAP](#single-level-of-abstraction-principle)
- [DRY](#dont-repeat-yourself)
- [KISS](#keep-it-simple-stupid)
- [YAGNI](#you-arent-gonna-need-it)



## Program Intently and Expressively
: 코드를 통해 의도를 표현하는 원칙  
: 주석 없이 코드 자체로 역할을 파악할 수 있게 명확한 이름과 구조를 사용  
: 네이밍, 구조화, 타입 시스템 등을 통해 의도를 나타냄  



## Single Level of Abstraction Principle
: 코드의 추상화 수준을 일관되게 유지해 가독성을 높이는 원칙  
: 코드를 여러 계층으로 분리하고 각 계층은 추상화 수준을 깨트리지 않도록 해야 함  
: 이를 통해 인터페이스(비즈니스 로직)와 구현 계층을 명확하게 분리함  
: 콜백 함수나 모든 계층에서 공통으로 사용하는 함수나 모듈은 예외  

```js
function 고수준() {
  중수준();
}

function 중수준() {
  저수준();
}

function 저수준() {
  // 구현
}
```



## Don’t Repeat Yourself
: 중복되는 코드는 모듈화하고 이를 재사용하여 중복을 방지하는 원칙  
: 코드만 아니라 설정이나 문서 등 중복되는 모든 영역에 해당함  
: 테스트, 빌드같이 반복되는 작업은 자동화를 통해 반복을 제거함  



## Keep It Simple Stupid
: 불필요한 복잡성 지양하고 단순성을 최우선으로 하는 원칙  
: 이를 통해 시스템을 이해하기 쉽게하고 유지보수나 확장을 용이하게 함  

**방법**  
- 명확한 책임 분리
- 불필요한 추상화를 지양
- 표준화된 패턴과 관행 사용



## You Aren’t Gonna Need It
: 현재 필요한 기능만 구현해 단순성을 유지하는 원칙  
: 예상되는 기능을 추가하면 복잡성이 발생하므로 요구 사항에만 집중함  
: 이를 통해 시스템의 단순성을 유지하고 불필요한 기능으로 인한 버그가 감소할 수 있음  