---
order: 5
title: math
description: 이산 수학 - 관계
summary:
keywords:
- math
- discrete mathematics
- relation
- 관계
tags:
- math
created_time: 2024-10-31 05:30
modified_time: 2025-01-13 23:51
---

# Relation
: 관계란 두 집합 사이의 특정한 연관성 또는 대응을 나타내는 개념  
: 두 집합 X와 Y의 부분집합 R을 X에서 Y로의 관계라고 정의  
: 수학적으로 (x,y) ∈ R 이면 xRy 로 표현하고 'x는 y와 R의 관계가 있다'고 읽음  

- [관계 표현](#relation-representation)
- [관계 성질](#relation-properties)
- [관계 연산](#relation-operations)
- [관계 종류](#relation-types)


**구성 요소**

요소 | 설명
---|---
정의역 (Domain) | 두 집합 중 시작 집합으로 관계의 입력값이 되는 원소들의 집합
공역 (codomain) | 두 집합 중 끝 집합으로 관계의 출력값이 포함되는 모든 값들의 집합
치역 (Range) | 관계가 정의된 결과로 공역의 부분집합

```
X={1,2,3}
Y={4,5,6}
R={(1,4),(2,5)}

정의역 {1,2,3}
공역 {4,5,6}
치역 {4,5}
```



## Relation Representation 
: 관계를 명확하게 이해하고 분석하기 위해 표현하기 위한 다양한 방법  
: 시각적으로 표현하기 위해서는 화살표나 그래프를 사용하고 계산을 위해서는 행렬을 사용함  


**화살표 도표**  
: 정의역 원소에서 공역 원소로 이어지는 화살표를 그려 관계를 표현  
: 작은 규모의 관계를 표현하기 적합  


**방향 그래프**  
: 관계의 모든 원소는 정점으로 관계는 간선으로 표현  
: 관계의 연결성, 경로, 대칭성 등을 시작적으로 파악할 수 있음  
: 다중 관계나 복잡한 관계를 표현하기 다소 어려움  


**관계 행렬**  
: 집합 X의 원소는 행으로 집합 Y의 원소는 열로 정렬하고 관계를 가중치같은 값으로 표현  
: 대규모 집합을 표현하고 계산하기에 적합  


**부울 행렬**  
: 관계 행렬의 특수한 경우로 관계의 존재 여부만을 나타냄  
: 집합 X의 원소는 행으로 집합 Y의 원소는 열로 정렬하고 관계를 0과 1로 표현  

```
X={1,2,3}, Y={4,5,6}
R={(1,4),(2,5)}

   Y4 Y5 Y6
X1  1  0  0
X2  0  1  0
X3  0  0  0
```



## Relation Properties 
: 관계가 수학적 특성을 만족하는지를 나타내는 성질  
: 이를 통해 관계의 구조를 분석하고 관계를 분류할 수 있음  


**반사성**  
: 집합 X의 모든 원소가 자기 자신과 관계가 있는 경우  
: 수학적으로 (x,x) ∈ R 로 표현함  

```
∀x[x R x]

X={1,2}
R={(1,1),(2,2)}
```


**비반사성**  
: 어떤 원소도 자기 자신과 관계를 갖지 않는 경우  
: 수학적으로 (x,x) ∉ R 로 표현함  

```
∀x[¬(x R x)]
```


**대칭성**  
: 집합의 관계가 양방향으로 성립하는 경우  
: 임의 원소 쌍이 관계를 가지면 그 역의 원소 쌍도 관계를 가져야 함  
: 수학적으로 (x,y) ∈ R → (y,x) ∈ R 로 표현함  

```
∀x,y[x R y → y R x]

X={1,2}
R={(1,2),(2,1)}

X={1,2}, Y={3,4}
R={(1,3),(3,1),(2,4),(4,2)}
```


**비대칭성**  
: 임의 원소 x가 y에 대해 관계가 있으나 y는 x와 관계가 없어야 하는 성질  
: 수학적으로 (x,y) ∈ R → (y,x) ∉ R 로 표현함  

```
∀x,y[x R y → ¬(y R x)]
```


**반대칭성**  
: 임의 원소 x,y에 대해 x에서 y로 관계와 y에서 x로의 관계가 동시에 성립하면 두 원소는 같아야 하는 성질  
: 수학적으로 (x,y) ∈ R ∧ (y,x) ∈ R → x = y 로 표현함  

```
∀x,y[(x R y ∧ y R x) → x = y]

X={1,2}
R={(1,1),(2,2),(1,2)}
```


**추이성**  
: 임의 원소 x,y,z에 대해 x가 y와 관계가 있고 y가 z와 관계가 있다면 x는 z와도 관계가 있어야 하는 성질  
: 수학적으로 (x,y) ∈ R ∧ (y,z) ∈ R → (x,z) ∈ R 로 표현함  

```
∀x,y,z[(x R y ∧ y R z) → x R z]

X={1,2,3}
R={(1,2),(2,3),(1,3)}

X={1,2}, Y={3,4}, Z={5,6}
R={(1,3),(3,5),(1,5)}
```



## Relation Operations
: 주어진 관계에 대해 어떤 조작이나 변환을 수행해 새로운 관계를 생성함  


**역관계**  
: 주어진 관계의 순서쌍을 뒤집어 정의한 관계  
: 수학적으로 R⁻¹ 로 표현함  

```
R⁻¹ = {(y,x)|(x,y) ∈ R}
```


**합성관계**  
: 두 관계 R ⊆ X × Y와 S ⊆ Y × Z를 결합해서 만든 관계  
: R을 통해 X에서 Y로, S를 통해 Y에서 Z로 대응되어 만들어지는 X에서 Z로의 새로운 관계  
: 수학적으로 S∘R 또는 SR 로 표현함  

```
S∘R = {(x,z)|∃y[(x,y) ∈ R ∧ (y,z) ∈ S]}
또는
S∘R = {(x,z)|x ∈ X, y ∈ Y, z ∈ Z, (x,y) ∈ R, (y,z) ∈ S}
```



## Relation Types
: 관계가 가지는 특성이나 성질에 따른 분류  
: 역관계와 합성관계는 연산이지만 그 결과가 관계의 종류로 간주될 수 있음  


**동치관계**  
: 반사성, 대칭성, 추이성 성질을 모두 만족하는 관계  


**순서관계**  
: 집합의 원소들 간에 특정한 순서를 정의하는 관계  
: 순서관계는 반사성, 반대칭성, 추이성 성질을 만족함  