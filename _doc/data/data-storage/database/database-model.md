---
order: 3
title: DB
description: 데이터베이스 모델
summary:
keywords:
- database
- database model
tags:
- database
- model
created_time: 2025-04-07 04:36
modified_time: 2025-05-22 00:10
---

# Database Model
: 데이터베이스의 논리적 구조를 결정하는 추상적 개념  
: 데이터를 어떻게 구조화하고 저장하고 접근하는지 등을 이론적으로 정의함  
: 데이터베이스 모델은 데이터가 효율적이고 확장 가능하게 저장되고 빠르게 처리될 수 있게 도와줌  

- 1960년대 [계층형 모델](#hierarchical-database-model)
- 1970년대 [네트워크 모델](#network-database-model) 
- 1970년대 [관계형 모델](#relational-database-model)
- 1980년대 [객체지향 모델](#object-oriented-database-model)
- 1990년대 [객체관계형 모델](#object-relational-database-model)
- 1990년대 [분산형 모델](#distributed-database-model)
- 2000년대 [비관계형 모델](#non-relational-database-model)
- 2000년대 [그래프 모델](#graph-database-model)
- 2010년대 [스트리밍 모델](#streaming-database-model)


**주요 용어**

용어 | 설명
---|---
데이터 구조 | 데이터를 구조화하는 방식으로 모델은 각각 다른 방식으로 데이터를 표현
데이터 관계 | 데이터 간 연관성을 표현하는 방식


**데이터 저장 모델**  
: 데이터가 실제로 물리적 저장소에 저장되는 구조에 따라 다음과 같이 분류됨  
: 행 기반 저장은 데이터를 행 단위로 연속적으로 스토리지에 저장하며 입력/수정/삭제 작업에 효율적  
: 열 기반 저장은 데이터를 열 단위로 물리적으로 독립된 공간에 저장하며 대규모 데이터 분석 작업에 효율적  

- 행 기반 저장 (Row-oriented)
- 열 기반 저장 (Column-oriented)

```
대부분의 RDBMS 제품은 행 기반 저장이나 일부 RDBMS는 열 기반 저장 방식을 채택함
```



## Hierarchical Database Model
: 계층형 데이터베이스 모델  
: 데이터를 트리 형태로 구성하는 데이터베이스  
: 상위 레코드는 여러 개의 하위 레코드를 가지며 하위 레코드는 하나의 상위 레코드만 갖음  
: 1:N 관계를 표현하기에 적합하며 N:N 관계는 표현하기 어려움  
: 구조가 단순하여 빠른 데이터 접근이 장점이나 중복된 데이터 관리가 어려움  



## Network Database Model
: 네트워크 데이터베이스 모델  
: 데이터의 개체와 개체 관계를 그래프 구조(네트워크 상 노드 형태)로 연결  
: 계층형 데이터베이스의 문제점인 상하 종속적인 관계를 보완  
: N:N 관계를 표현할 수 있고 데이터 중복을 최소화할 수 있으나 구조 변경이 어려움  



## Relational Database Model
: 관계형 데이터베이스 모델  
: 데이터를 테이블로 표현하고 테이블 간 관계를 맺는 데이터베이스  
: SQL를 통해 데이터를 조작하고 관리하는 방법 지원  
: 유연하고 데이터가 독립적이나 대용량 데이터 처리시 성능 저하 문제가 있을 수 있음  

E.F. Codd가 1970년
수학적 관계 개념을 데이터베이스에 적용하여 제안

**Codd's 12 rules**  
: 커드의 12가지 규칙  
: 관계형 데이터베이스 시스템 정의 및 특성을 규정한 12가지 규칙  

```
1. 정보 규칙
=> 데이터베이스의 모든 데이터는 테이블 형태로 표현되며 테이블의 값은 원자값이어야 함

2. 보장된 접근 규칙
=> 데이터베이스에 저장된 모든 데이터는 고유한 이름을 가진 항목으로 식별되어야 함

3. 널 값 처리 규칙
=> 널 값은 특정 규칙(미지의 값, 존재하지 않는 값)에 따라 처리되어야 함

4. 동적 온라인 카탈로그 규칙
=> 데이터베이스 시스템은 메타데이터나 스키마 정보를 테이블로 관리해야 함

5. 포괄적인 데이터 서브언어 규칙
=> 데이터베이스 시스템은 하나 이상의 독립적인 데이터 언어를 지원해야 함

6. 뷰 업데이트 규칙
=> 뷰는 물리적 데이터 구조에 독립적이여야 함

7. 고수준 삽입, 업데이트, 삭제 규칙
=> 데이터를 삽입, 수정, 삭제하는 연산은 고수준 언어로 정의되어야 함

8. 물리적 데이터 독립성 규칙
=> 데이터베이스의 물리적 구조는 논리적 구조에서 독립적이어야 함
=> 물리적 저장 방식의 변화가 논리적 구조나 애플리케이션에 영향을 미치지 않아야 함

9. 논리적 데이터 독립성 규칙
=> 논리적 데이터 구조의 변화가 애플리케이션에 영향을 미치지 않아야 함

10. 무결성 독립성 규칙
=> 데이터베이스 시스템은 무결성 제약 조건을 독립적으로 관리하고 자동적으로 적용되어야 함

11. 분산 독립성 규칙
=> 데이터베이스는 물리적 위치와 상관없이 분산되어야 함

12. 비하위 규칙
=> 관계형 언어를 사용해 모든 데이터를 처리할 수 있어야 함
=> 이외 접근 방식을 통해 관계형 모델 특성을 우회하면 안됨
```



## Object Oriented Database Model
: 객체 지향 데이터베이스 모델  
: 데이터가 객체 형태로 표현되는 데이터베이스  
: 데이터베이스 기능 + 객체 지향 프로그래밍언어 기능 (상속, 오버로딩 등)  
: 복잡한 데이터의 구조화가 용이하나 관계형 데이터베이스와 비교하면 성능이 낮음  



## Object Relational Database Model
: 객체 관계형 데이터베이스 모델  
: 관계형 테이터베이스 + 객체 지향 데이터베이스  
: 객체 지향적 특성과 관계형 모델의 장점을 결합  
: 객체 지향 특성을 지원하나 복잡성이 증가하고 성능 최적화가 어려움  



## Distributed Database Model
: 분산 데이터베이스 모델  
: 네트워크를 통해 다양한 위치에 데이터를 저장하고 실행하는 데이터베이스  
: 데이터베이스는 위치에 따라 분산하고 데이터는 논리적으로 연결해 중앙 집중적으로 관리  
: 확장성과 가용성이 높으나 구현이 복잡하며 데이터 일관성 유지가 어려움  



## Non Relational Database Model
: 비관계형 데이터베이스 모델  
: 데이터를 구조화하지 않고 유연한 스키마로 저장하는 데이터베이스  
: 다양한 데이터 모델을 사용함 (Key-Value, Document, Wide-Column, Graph 등)  
: 스키마가 유연하며 확장성이 높아 대용량 데이터 처리에 적합하나 데이터 일관성 보장이 어려움  



## Graph Database Model
: 그래프 데이터베이스 모델  
: 데이터를 그래프 구조로 표현하고 저장하는 데이터베이스  
: 복잡한 관계를 가진 데이터를 처리하기에 적합한 모델  
: 스키마가 유연하며 복잡한 관계 처리가 빠르나 대규모 데이터 처리시 확장이 어려움  



## Streaming Database Model
: 스트리밍 데이터베이스 모델  
: 대량의 실시간 스트리밍 데이터를 처리하기 위한 데이터베이스  
: 데이터가 생성되는 순간 즉시 처리해 ACID 준수를 보장하지 않음  
: 실시간 데이터 처리가 가능하나 복잡한 쿼리 사용은 어려움  