---
order: 6
title: Program
description: 프로그램 (인덱스)
summary: 특정 문제 해결을 위한 명령어 집합인 프로그램의 정의, 구성 요소, 실행 원리, 역사
keywords:
- program
- program classification
- programming language
- paradigm
- algorithm
tags:
- program
- index
created_time: 2025-10-01 22:05
modified_time: 2025-10-01 22:23
---

# Program
: 특정 문제를 해결하거나 작업을 수행하기 위해 정의한 명령어 집합  
: 프로그램은 [프로그래밍 언어](./language/index.md)를 통해 작성되며 [자료구조](../data/data-structure/index.md)와 알고리즘을 활용해 데이터를 처리함  
: 프로그램 실행이란 컴퓨터가 명령어를 읽고 해석하고 실행하는 단계를 반복하는 과정을 의미함  

**프로그램**
- [프로그램 구조](./program-structure.md)
- [프로그램 실행](./program-execution.md)
  - [실행 환경](./execution-environment.md)
  - [실행 모델](./execution-model.md)
  - [프로그램 코드 상태](./program-code-state.md)
- [프로그램 의미론](./program-semantics.md)
- [프로그램 분석 및 검증](./program-analysis.md)
- [프로그램 최적화](./optimization/index.md)

**프로그래밍**
- [프로그래밍 언어](./language/index.md)
- [프로그래밍 패러다임](./paradigm/index.md)
- [알고리즘](./algorithm/index.md)
- [자료 구조](../data/data-structure/index.md)


**program**  
: 프로그램은 그리스어 programma에서 유래  
: pro(앞으로)와 grapho(쓰다)의 결합으로 일정이나 계획을 나타내는 의미로 사용됨  
: 1920년대 라디오가 등장하고 라디오의 진행표를 지칭하기 위해 프로그램이라는 단어를 사용함  

**programming**  
: 프로그램을 작성하는 과정 또는 행위를 의미하며 프로그램은 프로그래밍의 결과물  
: 초기 명령어는 숫자 코드로 이루어져 있어 프로그래밍을 코딩이라고 표현하기도 함  

**program vs library**  
: 프로그램은 독립적으로 실행 가능한 명령어 집합  
: 라이브러리는 독립적으로 실행하지 못하며 프로그램이 호출하여 실행되는 함수나 클래스 집합  



## Program Classification

**용도**
- 시스템 프로그램: OS, 드라이버, 컴파일러 등
- 응용 프로그램: 사용자 대상 소프트웨어
- 미들웨어: 시스템과 응용 사이의 중간 계층 소프트웨어

**실행 방식**
- 컴파일형 프로그램: 실행 전 소스 코드를 기계어로 변환
- 인터프리터형 프로그램: 실행 시 소스 코드를 한 줄씩 해석
- 하이브리드형 프로그램: 실행 전 소스 코드를 중간 코드로 변환

**실행 형태**
- 배치 프로그램: 사용자 개입 없이 작업을 일괄 처리
- 대화형 프로그램: 사용자 입력에 즉각적으로 반응 (CMD, GUI)
- 서비스/데몬 프로그램: 백그라운드에서 지속적으로 실행

**실행 환경**
- 네이티브 프로그램: 하드웨어에서 직접 실행
- 가상머신 기반 프로그램
- 웹 기반 프로그램