---
order: 0
title: java
description: 자바 표준 트랜잭션 관리 (JTA)
summary:
keywords:
- java api
- java enterprise
- jta
- 자바 트랜잭션
tags:
- java
- enterprise
created_time: 2024-11-10 18:21
modified_time: 2024-11-10 19:16
---

# JTA
Java Transaction API  
: 자바 표준 트랜잭션 API  
: 자바 애플리케이션에서 트랜잭션 관리를 위한 표준 스펙 제공  
: 데이터베이스, 메시징 시스템 등 여러 자원에서 분산 트랜잭션을 처리하는 방식 지원  
: 트랜잭션을 컨테이너에서 자동으로 제어하거나 프로그래밍 방식으로 제어하는 관리 방식 지원  


**종류**

트랜잭션 | 설명 
---|---
로컬 트랜잭션 | 단일 자원에서 이루어지는 트랜잭션
분산 트랜잭션 | 여러 자원에서 이루어지는 트랜잭션으로 2단계 커밋, 3단계 커밋 프로토콜 지원
XA 트랜잭션 | 분산 트랜잭션의 유형으로 2단계 커밋 프로토콜 기반으로 트랜잭션 관리 

**2단계 커밋**
1. 준비 단계 : 트랜잭션을 커밋할 준비가 되었는지 확인
2. 커밋 단계 : 커밋을 실행하고 변경 사항을 확정하고 실패시 롤백함


**관리 종류**

종류 | 설명 
---|---
Container Managed Transactions | 엔터프라이즈 애플리케이션 컨테이너가 트랜잭션을 자동으로 관리  
Bean Managed Transactions | 개발자가 트랜잭션의 시작, 커밋, 롤백 등을 명시적으로 제어하는 방식  


**구현체**   
- Atomikos
- JBoss Transactions
- Bitronix 
- WebLogic JTA
- Spring JtaTransactionManager



## API

- jakarta.transaction
- jakarta.transaction.xa


API | 설명
---|---
UserTransaction    | 트랜잭션을 제어하기 위한 인터페이스
TransactionManager | 트랜잭션 관리자로서 트랜잭션의 생명주기를 관리하는 인터페이스
Transaction  | 진행 중인 트랜잭션을 나타내는 인터페이스
XATerminator | 2단계 커밋 프로토콜을 관리하는 인터페이스

```java
UserTransaction utx = context.getUserTransaction();
try {
    utx.begin();
    utx.commit();
} catch (Exception e) {
    utx.rollback();
    throw e;
}
```


**트랜잭션 상태**

상태 | 설명
---|---
STATUS_ACTIVE       | 진행 중인 상태
STATUS_COMMITTED    | 커밋된 상태
STATUS_ROLLEDBACK   | 롤백된 상태
STATUS_MARKED_ROLLBACK | 트랜잭션이 롤백될 것으로 마크된 상태
STATUS_NO_TRANSACTION  | 트랜잭션이 존재하지 않는 상태
STATUS_PREPARING    | 커밋을 준비 중인 상태 (2단계 커밋)
STATUS_PREPARED     | 커밋이 준비 완료된 상태 (2단계 커밋)
STATUS_COMMITTING   | 커밋이 진행 중인 상태
STATUS_ROLLING_BACK | 롤백이 진행 중인 상태


**트랜잭션 전파 속성**

속성 | 설명
---|---
REQUIRED      | 트랜잭션이 없으면 새로 생성하고 있으면 기존 트랜잭션 사용
REQUIRES_NEW  | 항상 새로운 트랜잭션을 생성하고 이전 진행 중인 트랜잭션은 중지함
MANDATORY     | 트랜잭션이 반드시 있어야 하며 없으면 예외를 발생
SUPPORTS      | 트랜잭션이 있으면 사용하고 없으면 트랜잭션 없이 실행
NOT_SUPPORTED | 트랜잭션 없이 실행어야 하며 트랜잭션이 있다면 이를 일시적으로 중지
NEVER         | 트랜잭션이 있으면 예외를 발생하고 트랜잭션 없이 실행


**트랜잭션 격리 수준**

수준 | 설명 | 발생 가능한 문제
---|---|---
READ_UNCOMMITTED | 다른 트랜잭션의 미확정 데이터 읽기 가능 | Dirty Read, Non-Repeatable Read, Phantom Read
READ_COMMITTED   | 커밋된 데이터만 읽기 가능 | Non-Repeatable Read, Phantom Read
REPEATABLE_READ  | 동일 데이터를 여러번 읽을 경우 일관성 보장 | Phantom Read
SERIALIZABLE     | 완벽한 격리 | 없음

더티 리드  
: 한 트랜잭션이 아직 커밋되지 않은 다른 트랜잭션의 데이터를 읽는 현상  

부정확한 읽기  
: 한 트랜잭션에서 같은 데이터를 여러 번 읽을 때 다른 트랜잭션이 데이터를 수정해 읽은 값이 다른 현상  

팬텀 리드  
: 한 트랜잭션이 쿼리를 실행할 때 다른 트랜잭션이 데이터를 삽입하거나 삭제해 쿼리 결과가 달라지는 현상  
