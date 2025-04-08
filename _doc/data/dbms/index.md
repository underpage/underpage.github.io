---
order: 4.1
title: DBMS
description: 데이터베이스 관리 시스템
summary:
keywords:
- database
- database management system
- dbms
- dbms classification
tags:
- data
created_time: 2024-10-03 16:18
modified_time: 2025-04-09 00:12
---

# DBMS
Database Management System  
: [데이터베이스](../data-storage/database/index.md)를 효율적으로 관리하고 조작하기 위한 프로그램  
: 삽입, 수정, 삭제, 검색 등 데이터 조작 기능과 트랜잭션 관리, 동시성 제어 등 다양한 기능 제공  
: 다중 사용자 환경에서 데이터 일관성을 유지하고 데이터 추상화와 독립성을 보장함  

- [DBMS History](#dbms-history)
- [DBMS Classification](#dbms-classification)
  - [RDBMS](./rdbms.md)
  - [NoSQL](./nosql.md)
  - [NewSQL](./newsql.md)
- [DBMS Feature](./dbms-feature.md)
- [DBMS Language](./dbms-language.md)
- [DBMS Technique](./dbms-technique.md)
- [DBMS Product](./product/index.md)
  - [Oracle](./product/oracle.md)
  - [MySQL](./product/mysql.md)
- [DBMS Tool](../../tool/tool-database/index.md)


**데이터 추상화**  
: 실제 데이터의 물리적 저장 구조는 감추고 사용자에게는 논리적 표현만 제공  
: 사용자는 데이터에 직접 접근이 불가능하며 DBMS를 통해서만 접근 가능함  
: 이러한 데이터 추상화를 통해 데이터의 물리적/논리적 독립성을 보장함  

- 논리적 데이터 독립성 : 논리적 구조가 변경되어도 사용자나 프로그램은 영향받지 않음
- 물리적 데이터 독립성 : 저장 방식이나 저장 매체가 변경되어도 사용자나 프로그램은 영향받지 않음



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



## DBMS Classification
: [데이터베이스 모델](../data-storage/database/database-model.md)을 기반으로 설계된 다양한 DBMS 종류  
: 일부 DBMS 제품은 하나의 카테고리에 속하지 않고 여러 특성을 가지며 최근 DBMS 제품은 범용적인 특성을 가짐  

**데이터 저장 방식**
- HDBMS (계층형)
- NDBMS (네트워크형)
- RDBMS (관계형)
- OODBMS (객체지향)
- ORDBMS (객체관계)

**비정형 데이터 처리**
- NoSQL
- NewSQL

**특수 목적**
- CDBMS (컬럼)
- DDBMS (분산)
- MMDBMS (메모리)
- VDBMS (벡터)