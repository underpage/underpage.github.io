---
order: 0.3
title: data analysis
description: 데이터 마이닝
tags:
- data
- data analysis
- tool
created_time: 2024-10-10 11:59
modified_time: 2024-10-13 00:28
---

# Data Mining
: 대규모 데이터에서 규칙이나 패턴을 발견하고 유용한 정보를 추출하는 프로세스  
: 단순히 패턴을 파악하는 것을 넘어 비즈니스 관점에서 데이터 인텔리전스와 의사 결정 지원에 중점을 둠  
: 데이터베이스, 데이터 전처리, 통계 등 다양하고 넓은 범위의 기술을 활용  
: 머신러닝은 예측 모델 구축과 패턴 인식에 중점를 두며 데이터 마이닝을 위한 도구나 방법론에 속함  

- [특성 공학](#feature-engineering)
- [데이터 마이닝 기법](#data-mining-method)
- [데이터 마이닝 도구](#data-mining-tool)


일반적인 프로세스
```
문제 정의 => 데이터 수집 및 전처리 => 모델링 => 평가 => 배포
```

**1. 문제 정의**  
: 데이터 마이닝의 목표를 명확하게 설정  
: 비즈니스 문제를 데이터 마이닝 관점에서 구체화  

**2. 데이터 수집 및 전처리**  
: 필요한 [데이터를 수집](../../data-collection/index.md)하고 [전처리 과정](../../data-preprocessing/index.md)을 통해 필요한 데이터를 추출함
: [특성 공학](#feature-engineering)을 통해 모델링에 적합한 특성 생성 및 선택  

**3. 모델링**  
: 목표에 적합한 [데이터 마이닝 기법](#data-mining-method) 선택  
: 선택된 기법에 따른 알고리즘 적용 및 모델 구축  
: 모델 학습 및 초기 결과 도출  

**4. 평가**  
: 모델의 성능을 평가하고 결과의 유효성을 검증  
: 도출된 패턴이나 정보가 비즈니스 관점에서 적합한지 확인  



## Data Mining Process Model 
: 데이터 관점이나 산업별 특성에 따라 다양한 프로세스 모델 제공  

- CRISP-DM
- KDD Process
- SEMMA
- Domain-Driven Data Mining


**CRISP-DM**  
: Cross Industry Standard Process for Data Mining  
: 데이터 마이닝 프로세스 표준 절차  
: 산업 전반에 걸쳐 적용 가능한 표준 프로세스 제공  



## Feature Engineering
: 데이터 마이닝과 머신 러닝에 특화된 데이터 전처리 과정의 일부  
: 데이터에서 유용한 특성을 추출, 생성, 변형하는 과정  

- 특성 선택
- 특성 추출
- 특성 생성
- 차원 축소
  - PCA
  - t-SNE
  - UMAP
- 특성 스케일링
- 특성 인코딩
- 특성 변환
- 특성 상호작용



## Data Mining Method
: 데이터에서 유용한 패턴이나 정보를 추출하는 구체적인 알고리즘이나 접근 방식  

- 패턴 인식
- 특징 추출
- 군집화
- 분류
- 연관 규칙 학습
- 이상치 탐지
- 텍스트 마이닝



## Data Mining Tool
: 데이터 마이닝을 수행하기 위한 환경이나 도구  

**언어 및 라이브러리**
- Python (Scikit-learn, Pandas, NumPy)
- R (caret, dplyr, ggplot2)
- Apache Spark (MLlib)

**개발 환경 및 플랫폼**
- RapidMiner
- KNIME
- Weka

**빅데이터 플랫폼**
- Hadoop Ecosystem
- Apache Spark
- Apache Flink