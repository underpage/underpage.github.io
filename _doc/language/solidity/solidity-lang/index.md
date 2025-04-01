---
order: 1
title: Solidity
description: 솔리디티 언어
summary:
keywords:
- programming language
- solidity
- smart contract
tags:
- solidity
- language
created_time: 2025-01-30 07:49
modified_time: 2025-04-02 00:20
---

# Solidity
: 스마트 컨트랙트 작성을 위해 개발된 프로그래밍 언어  
: 데이터 타입이 컴파일 타임에 확정되는 강력한 정적 타입 언어  
: 객체지향 언어로 클래스 대신 컨트랙트를 사용해 객체를 정의함  
: 스마트 컨트랙트 요구사항을 충족하기 위한 다양한 기능들을 제공함  

- 변수
- 데이터 타입
- 연산자
- 제어문
- 예외처리
- 수정자
- 함수
- 객체지향
  - 컨트랙트
  - 인터페이스
  - 추상 컨트랙트
  - 라이브러리
- 이벤트



## Solidity Program
: 스마트 컨트랙트를 정의하기 위해 솔리디티 프로그래밍 언어로 작성된 코드  
: 바이트 코드로 컴파일하고 플랫폼에 배포 후 컨트랙트 함수를 호출하면 실행됨  
: 플랫폼에 배포가 되면 스마트 컨트랙트 코드는 기본적으로 변경할 수 없음  

1. 스마트 컨트랙트를 작성해 컴파일한 후 블록체인 네트워크에 배포
2. 배포가 완료되면 블록체인 네트워크에서 컨트랙트에 고유한 주소를 할당함
3. 컨트랙트 주소를 통해 컨트랙트 함수를 호출하거나 다른 컨트랙트와 상호작용할 수 있음

```solidity
// SPDX-License-Identifier: MIT

// 1. 프라그마 지시문 - 솔리디티 버전 지정
pragma solidity ^0.8.0;

// 2. import 문
import "./AnotherContract.sol";

// 3. 컨트랙트 선언
contract MyContract {

  // 4. 상태 변수 선언
  string public message;

  // 5. 생성자 함수 - 컨트랙트가 배포될 때 단 한 번 실행됨
  constructor() {
    message = "Hello, Solidity!";
  }

  // 6. 함수 선언
  function getMessage() public view returns (string memory) {
    return message;
  }

}
```