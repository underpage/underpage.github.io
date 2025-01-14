---
order: 2
title: math
description: 이산 수학 - 증명
summary:
keywords:
- math
- discrete mathematics
- proof
- 증명
tags:
- math
created_time: 2024-10-31 05:30
modified_time: 2025-01-14 23:53
---

# Proof
: 증명이란 공리나 정리들을 기반으로 어떤 [명제](./logic.md#proposition)가 참임을 논리적이고 체계적인 추론에 따라 입증하는 과정  
: 자연어와 수학적 기호([논리식](./logic.md#logical-operation))을 사용해 증명이 이루어짐  


주요 개념
- [공리](#axiom)
- [가설](#hypothesis)
- [정리](#theorem)

증명 방법
- [수학적 귀납법](#mathematical-induction)
- [직접 증명](#direct-proof)
- [간접 증명](#indirect-proof)
- [존재성 증명](#existence-proof)
- [반례 증명](#counterexample-proof)
- [특수 증명 기법](#special-proof-techniques)


**주요 단계**

```markdown
**문제 이해 => 증명 계획 => 증명 실행 => 검증**

1. 문제 이해
관련된 공리와 가설을 확인하고 증명하려는 추측과 정리를 분석함

2. 증명 계획
사용할 공리 및 적절한 증명 방법을 선택하고 증명 전략을 수립함
이때 필요한 보조 정리가 있다면 확인함

3. 증명 실행
선택한 공리를 적용하고 가정을 명시해 논리적 추론 단계를 걸쳐 결론을 도출함

4. 검증
공리 사용의 타당성을 확인하고 결론의 일관성을 검토함
```



## Axiom
: 공리란 증명 없이 참으로 받아들이는 기본 명제로 다른 명제를 증명하기 위해 사용되는 가정  

**공리 체계**  

조건 | 설명
---|---
무모순성 | 체계 내에서 서로 모순되는 결과가 도출되지 않음
독립성 | 공리는 다른 공리들로부터 유도될 수 없음
완전성 | 체계 내에서 모든 참인 명제를 증명할 수 있음


**공리 종류**
- 논리적 공리
- 집합론적 공리
- 기하학적 공리
- 수론적 공리 (페아노 공리)



## Hypothesis
: 가설이란 증명하고자 하는 대상이 되는 임시 진술로 특정 상황에서 조건으로 사용됨  
: 가설은 증명 과정을 통해 참인지 거짓인지 확인됨  


**가설 vs 공리**

특성 | 가설 | 공리
---|---|---
증명 | 증명을 통해 진리값이 판별됨 | 증명 없이 참으로 받아들임
역할 | 증명 과정에서 확인할 대상 | 다른 명제를 증명하기 위한 가정
위계 | 공리와 정리를 기반으로 설정된 조건 | 가장 기본이 되는 전제



## Theorem
: 정리란 공리와 다른 정리들로부터 논리적 증명을 통해 참임이 입증된 명제  

**추측**  
: 증명되지 않았지만 참이라고 여겨지는 잠정적 명제로 정리가 되지 않은 상태를 의미  
: 증명을 통해 추측이 참임이 입증되면 정리가 됨  


**정리 종류**  

종류 | 설명
---|---
보조 정리 | 정리를 증명하기 위한 중간 단계에서 활용되는 명제
따름 정리 | 정리나 보조 정리로부터 도출되는 부가적인 명제
