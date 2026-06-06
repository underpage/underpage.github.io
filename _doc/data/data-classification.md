---
order: 1.2
category: Data
title: 데이터 분류
summary: 데이터를 구조·속성·처리 방식·용도 등 다양한 기준으로 분류
keywords:
- data
- data classification
tags:
- data
created_time: 2025-10-18 22:56
modified_time: 2026-06-07 01:55
---

{::comment}
ttl_tags: [data-classification, structured-data, unstructured-data, semi-structured-data, quantitative-data, qualitative-data, numeric-data, categorical-data, continuous-data, discrete-data, ordinal-data, nominal-data, raw-data, clean-data, static-data, dynamic-data, batch-data, real-time-data, streaming-data, cold-data, warm-data, hot-data, data-tiering, primary-data, secondary-data, generated-data, collected-data, internal-data, external-data, synthetic-data, simulation-data, big-data, small-data, operational-data, analytical-data, oltp, olap, time-series-data, geospatial-data, confidential-data, data-ownership, data-access-control]

related:
- id: data
  type: aspect_of
- id: computer-data
  type: references
- id: data-quality
  type: references
- id: data-governance
  type: references
- id: data-preprocessing
  type: references
- id: data-processing
  type: references
- id: data-storage
  type: references
- id: data-analytics
  type: references
{:/comment}

# Data Classification
: 데이터를 특성, 형태, 용도, 처리 방식 등 다양한 기준에 따라 분류함  
: 동일한 데이터라도 처리하는 기준과 목적에 따라 분류 결과가 달라질 수 있음  
: 이를 통해 데이터를 효율적으로 관리하고 활용하며 데이터에 적절한 보안을 적용할 수 있음  


**데이터 구조 (형태)**  
: 데이터가 얼마나 체계적으로 조직되어 있는지에 따른 분류

- 정형 데이터 (Structured Data): 고정된 구조가 있고 연산이 가능함
- 비정형 데이터 (Unstructured Data): 구조가 없으며 연산이 불가능함
- 반정형 데이터 (Semi-Structured Data): 구조가 고정되어 있지 않고 연산이 어려움

```
정형 데이터는 컴퓨터 시스템을 통해 수집과 가공이 용이하고 분석이 가능함
비정형 데이터는 수집, 가공, 정제 등에 많은 비용이 필요함(전용 처리 파이프라인 필요)
반정형 데이터는 완전한 구조를 가지지는 않지만 메타데이터나 태그를 사용해 구조적 특징을 가짐
```


**데이터 속성**  
: 데이터가 수치로 표현 가능한지에 따른 분류

- 수치형 데이터 (Numeric Data, Quantitative 양적, 정량적): 수치로 측정 가능  
  - 연속형 데이터 (Continuous Data): 측정의 기준이 연속적 
  - 이산형 데이터 (Discrete Data): 측정의 기준이 불연속적 
- 범주형 데이터 (Categorical Data, Qualitative 질적, 정성적): 숫자 이외로 수치로 측정 불가능
  - 순서형 데이터 (Ordinal Data): 순서 존재
  - 명목형 데이터 (Nominal Data): 단순 범주

```
일부 수치형 데이터와 범주형 데이터는 정형 데이터에 속할 수 있음  
```


**데이터 처리 단계**   
- 원시 데이터: 수집된 그대로의 가공되지 않은 데이터
- 변환 데이터: 원시 데이터에서 처리되었지만 최종 가공 상태는 아닌 데이터 
- 가공 데이터: 목적에 맞게 변환이 완료된 데이터


**데이터 품질**
- 비정제 데이터 (Raw Data): 오류·결측·중복이 포함된 상태
- 정제 데이터 (Clean Data, Validated Data)


**데이터 상태**    
- 정적 데이터: 수집된 과거 데이터
- 동적 데이터: 데이터를 수집하고 관찰하면서 즉각적으로 변경되는 데이터

```
정적: 배치 처리·아카이브 저장에 적합하며 처리 비용이 낮음
동적: 실시간 처리·인메모리 저장에 적합하며 인프라 비용이 높음
```


**데이터 온도**  
: 데이터 접근 빈도에 따른 분류

- 콜드 데이터: 거의 접근되지 않는 데이터 (백업, 아카이브)
- 웜 데이터: 가끔 접근되는 데이터
- 핫 데이터: 자주 접근되는 데이터

```
접근 빈도에 따라 데이터 저장 매체가 달라지며 궁극적으로 비용에 영향을 미침
```


**데이터 처리 방식**    
- 배치 데이터: 특정 주기로 수집되고 처리되는 데이터
- 실시간 데이터: 특정 이벤트 발생시 이벤트에 반응하는 데이터
- 스트리밍 데이터: 실시간으로 수집되고 처리되는 데이터


**데이터 출처**
- 1차 데이터: 직접 생성하거나 수집한 데이터
- 2차 데이터: 기존 데이터를 재가공한 데이터
- 생성 데이터 (Generated Data): 조직의 내부 시스템을 통해 생성된 데이터
- 수집 데이터 (Collected Data): 외부에서 수집해 취합한 데이터


**데이터 처리 환경**
- 오프라인 처리 데이터: 데이터를 저장하고 이를 검색해 처리 (배치 처리)
- 온라인 처리 데이터: 실시간으로 데이터가 입력되고 이를 처리 (실시간, 스트리밍 처리)


**데이터 규모**
- 소규모 데이터 (Small Data)
- 빅데이터 (Big Data)


**인공 데이터**  
: 생성된 데이터로 테스트·개발 환경에서 실 데이터 대체 목적으로 사용함

- 재현 데이터 (Synthetic Data): 실제 데이터를 기반으로 유사한 패턴을 갖게 생성된 가상 데이터
- 무작위 데이터 (Random Data): 특정 패턴없이 무작위로 생성된 데이터
- 시뮬레이션 데이터 (Simulation Data): 컴퓨터 시뮬레이션을 통해 생성된 데이터


**데이터 사용 목적**
- 운영 데이터 (Operational Data): OLTP 시스템
- 분석 데이터 (Analytical Data): OLAP 시스템

```
OLTP: 쓰기 중심, 소량 트랜잭션, 정규화된 스키마, 빠른 응답
OLAP: 읽기 중심, 대용량 집계, 비정규화·컬럼형 스토리지, 복잡한 쿼리
```


**시계열 데이터**  
: 시간 순서에 따라 수집된 데이터로 시간 축이 데이터의 핵심 속성으로 존재함

- 정기 시계열: 일정한 간격으로 수집
- 비정기 시계열: 이벤트 발생 시점에 수집


**공간 데이터**  
: 지리적 위치 정보를 포함한 데이터

- 벡터 데이터: 점, 선, 면으로 표현
- 래스터 데이터: 격자(Grid) 형태의 연속 공간 데이터


**데이터 위치**     
- 내부 데이터 (Internal Data)
- 외부 데이터 (External Data)


**데이터 소유 (정책)**
- 제한 데이터: 일시적으로 공개한 데이터 또는 권한이 있는 사람이나 기기만 접근 가능한 데이터
- 비공개 데이터
- 공개 데이터


**데이터 접근 (보안)**
- 기밀 데이터: 접근 허가가 필요한 데이터
- 비기밀 데이터