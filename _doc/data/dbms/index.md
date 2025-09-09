---
order: 4.1
title: DBMS
description: 데이터베이스 관리 시스템 (DBMS)
summary:
keywords:
- database
- database management system
- dbms
- dbms history
tags:
- database
- data
created_time: 2025-04-07 04:36
modified_time: 2025-09-10 00:47
---

# DBMS
Database Management System  
: [데이터베이스](../data-storage/database/index.md)를 생성, 관리, 조작하기 위한 소프트웨어 시스템  
: 데이터 조작, 트랜잭션 관리, 동시성 제어, 데이터 보안, 백업 및 복구 등 다양한 기능 제공  
: DBMS는 다중 사용자 환경에서 데이터 일관성을 유지하고 데이터 추상화와 독립성을 보장해야 함  

- [DBMS 역사](#dbms-history)
- [DBMS 구성요소](./dbms-component.md)
- [DBMS 개념](./dbms-concept.md)
- [DBMS 기능](./dbms-feature.md)
  - [DBMS 언어](./dbms-language.md)
- [DBMS 설계 원칙](./dbms-design-principle.md)
  - [데이터베이스 모델링](../data-storage/database/database-modeling.md)
- [DBMS 기법](./dbms-method.md)
- [DBMS 분류](./classification/index.md)
  - [RDBMS](./classification/rdbms.md)
  - [NoSQL](./classification/nosql.md)
  - [NewSQL](./classification/newsql.md)
- [DBMS 제품](./product/index.md)
  - [Oracle](./product/oracle.md)
  - [MySQL](./product/mysql.md)
- [DBMS 접근 방식](./dbms-access.md)
- [DBMS & AI](./dbms-and-ai.md)
  - [NL2SQL](./dbms-and-ai.md#nl2sql)
- [DBMS 운영](./dbms-operation.md)
- [DBMS 도구](../../tool/tool-database/index.md)



## DBMS History
: DBMS 발전 과정을 기술이나 트렌드에 따라 세대별로 구분 (공식적으로 세대가 존재하지 않음)


**제 1세대**
```
1960년대 초반  Integrated Data Store (IDS)
               최초 범용 DBMS로 네트워크 데이터 모델을 기반으로 함

1960년대 후반  Information Management System (IMS)
               최초 상용화된 제품으로 현재도 메인프레임에서 사용함
```


**제 2세대**
```
1970년대  관계형 데이터 모델이 제안됨
          SQL 언어가 개발되고 상용 RDMBS인 Oracle이 출시됨

1980년대  상용 RDBMS들이 등장하고 RDBMS가 본격적으로 발전함
          트랜잭션 처리 기능 강화, 인덱싱, 쿼리 최적화 기술이 발전함
          표준 SQL이 정의됨 (ANSI SQL)

1990년대  엔터프라이즈 시장에 RDBMS가 확산됨
          객체지향 데이터베이스 개념이 도입되고 시도됨 (OODBMS, ORDBMS)
```


**제 3세대**
```
2000년대  오픈소스 DBMS가 대중화됨 (MySQL, PostgreSQL)
          대용량, 비정형 데이터 처리를 위해 NoSQL 등장 (MongoDB)

2010년대  인메모리 데이터베이스가 발전함 (Redis)
          빅데이터 처리를 위한 분산 데이터베이스가 발전함 (HBase, Cassandra)
          클라우드 기반 데이터베이스 서비스가 확산됨

2020년대  AI를 위한 벡터 데이터베이스가 부상함 (Pinecone, Milvus, Weaviate)
          멀티 모델 데이터베이스가 확산됨 (ArangoDB, Fauna)
```