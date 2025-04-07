---
order: 0.4
title: data analysis
description: 데이터 시각화
tags:
- data
- data analysis
- tool
created_time: 2024-10-10 11:46
modified_time: 2024-10-13 00:30
---

# Data Visualization
: 데이터 시각화  
: 데이터를 그래픽으로 표현하여 이해와 인사이트를 도출하는 기법  

- [시각화 유형](#visualization-type)
- [시각화 도구](#visualization-tool)


일반적인 프로세스
```
목표 설정 => 데이터 수집 및 전처리 => 데이터 탐색 => 시각화 설계 => 시각화 생성 => 결과 검토 및 개선 => 결론
```

**1. 목표 설정**  
: 시각화 목적을 명확하게 정의  
: 문제를 정의하거나 필요시 가설을 정의함  

**2. 데이터 수집 및 전처리**  
: 필요한 [데이터를 수집](../../data-collection/index.md)하고 통합  
: [데이터 전처리](../../data-preprocessing/index.md)를 통해 데이터 품질을 높임  
: 데이터 형식을 변환하거나 필요한 데이터를 추출하는 등 목표를 검증하기 적합한 데이터로 변환  

**3. 데이터 탐색**  
: 데이터의 특성을 파악하고 초기 시각화를 통해 데이터 분포나 관계 등을 파악  
: 필요에 따라 데이터 특성을 이해하기 위해 [방법론](../method/index.md)이나 [통계 기술](../statistical/index.md)을 사용  
: 이 과정에서 목표가 수정되거나 새로운 목표가 추가로 정의될 수 있음  

**4. 시각화 설계 및 생성**  
: 목표에 적합한 [시각화 유형](#visualization-type)을 결정   
: 목표에 적합한 [시각화 도구](#visualization-tool)를 선택하고 시각화 생성  

**5. 결과 검토 및 개선**  
: 생성된 시각화를 검토해 정의한 문제를 해결할 수 있는지 가설이 맞는지를 검증  
: 피드백을 받아 정확성이나 효과성을 평가하고 최종 결과를 문서화하거나 대시보드로 만듬  
: 문제를 해결할 수 없거나 가설이 틀리다면 데이터를 다시 분석하고 새로운 시각화를 생성할 수 있음  



## Visualization Type
: 데이터 시각화를 위한 표현 방식  

**기본 시각화**
- 막대 그래프 (바 차트)
- 선 그래프 (선 차트)
- 파이 차트
- 산점도 (선점도)
- 히스토그램
- 영역 차트

**고급 시각화**
- 박스 플롯 (상자 수염 그림)
- 히트맵
- 트리맵
- 버블 차트
- 방사형 차트 (레이더 차트)
- 네트워크 그래프 
- 병렬 좌표 그래프

**시간 시각화**
- 타임라인 차트
- 간트 차트
- 시계열 그래프

**분포도 시각화**
- 밀도 플롯
- 바이올린 플롯
- QQ Plot

**지리적 시각화**
- 맵 차트
- 코로플레스 맵
- 도트 맵
- 열 지도

**복합 시각화**
- 대시보드
- 인포그래픽
- 스몰 멀티플



## Visualization Tool
: 데이터 시각화를 수행하기 위한 환경이나 도구  

**언어와 라이브러리**
- Python : Matplotlib, Seaborn, Plotly
- JavaScript : D3.js, Chart.js
- R : ggplot2, Shiny
- Julia : Plots.jl, Gadfly.jl

**특수 목적 소프트웨어**
- Flourish (웹 기반 인터랙티브 시각화)
- QGIS (지리 정보 시각화)
- Gephi (네트워크 시각화)

**BI 소프트웨어**
- Google Data Studio
- Microsoft Power BI
- Tableau
- Looker
- QlikView

**통합 소프트웨어**
- KNIME
- Alteryx
- RapidMiner