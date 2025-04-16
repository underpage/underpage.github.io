---
order: 1
title: Solidity
description: 솔리디티 언어
summary:
keywords:
- programming language
- solidity
- solidity language
- smart contract
tags:
- solidity
- language
created_time: 2025-04-04 01:19
modified_time: 2025-04-16 21:19
---

# Solidity Language
: 스마트 컨트랙트 작성을 위해 개발된 프로그래밍 언어  
: 블록체인 네트워크와 상호작용하기 위한 다양한 기능들을 제공함  
: 컴파일 타임에 데이터 타입이 확정되는 강력한 정적 타입 언어  
: 객체지향 언어로 컨트랙트를 정의해 블록체인 네트워크에 배포하면 인스턴스로 동작함  

- [변수](./solidity-variable.md)
- [데이터 타입](./solidity-data-type.md)
- [제어문](./solidity-control.md)
- [예외처리](./solidity-exception.md)
- [수정자](./solidity-modifier.md)
- [함수](./solidity-function.md)
- [컨트랙트](./solidity-contract.md)
  - [인터페이스](./solidity-interface.md)
  - [추상 컨트랙트](./solidity-abstract.md)
  - [라이브러리](./solidity-library.md)
- [이벤트](./solidity-event.md)



## Solidity Program
: 스마트 컨트랙트를 정의하기 위해 솔리디티 언어로 작성된 코드 집합  
: 바이트 코드로 컴파일하고 블록체인 플랫폼에 배포 후 컨트랙트 함수를 호출하면 실행됨  
: 플랫폼에 배포가 되면 스마트 컨트랙트 코드는 기본적으로 변경할 수 없음  

**프로세스**
1. 스마트 컨트랙트 코드를 작성하고 이를 컴파일하여 블록체인 네트워크에 배포
2. 배포가 완료되면 블록체인 네트워크에서 컨트랙트에 고유한 주소(식별자)를 할당함
3. 컨트랙트 주소를 통해 컨트랙트 함수를 호출하거나 다른 컨트랙트와 상호작용할 수 있음

```solidity
// 0. 라이센스 식별자
// SPDX-License-Identifier: MIT

// 1. 프라그마 지시문 - 솔리디티 버전 지정
pragma solidity ^0.8.0;

// 2. 컨트랙트 선언
contract MyContract {

  // 3. 상태 변수 선언
  string public message;

  // 4. 생성자 함수 - 컨트랙트가 배포될 때 단 한 번 실행됨
  constructor() {
    message = "Hello, Solidity!";
  }

  // 5. 일반 함수
  function getMessage() public view returns (string memory) {
    return message;
  }

}
```