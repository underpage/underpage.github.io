---
order: 5
title: java
description: 자바 컴파일 과정
summary:
keywords:
- java
- java compilation process
tags:
- language
- java
created_time: 2024-10-21 16:16
modified_time: 2025-01-19 16:48
---

# Java Compilation Process
: 소스 코드가 바이트코드로 변환하는 과정  

**단계**
1. [어휘 분석](#lexical-analysis)
2. [구문 분석](#syntax-analysis)
3. [의미 분석](#semantic-analysis)
4. [중간 코드 생성](#intermediate-code-generation)
5. [최적화](#optimization)
6. [바이트코드 생성](#code-generation)



## Lexical Analysis
: 소스 코드를 식별자, 키워드, 리터럴, 연산자 등 여러 토큰으로 분리하는 과정  

**Lexical Analyzer (Tokenizer)**  
: 어휘 분석기  
: 입력된 문자열을 스캔해 토큰을 생성하고 이를 구분 분석기에 전달  
: 토큰 생성이 가능한지 여부를 검토하고 문제가 없으면 토큰을 생성  
: 토큰들에 대한 정보를 심볼 테이블에 저장  

```
1. 컴파일러가 소스 코드 스캔
2. 공백, 탭, 개행 문자를 만나면 건너뜀
3. 알파벳 문자를 만나면 키워드나 식별자 토큰 생성
3. 숫자 또는 따옴표와 문자를 만나면 리터럴 토큰 생성
3. 주석을 시작하는 기호를 만나면 주석 토큰 빌드
3. 연산자를 만나면 연산자 토큰 빌드
```



## Syntax Analysis
: 토큰들의 문법적 구조를 분석하는 과정  

**Syntax Analyzer (Parser)**  
: 구문 분석기  
: 전달받은 토큰이 어떻게 구성되었는지 분석하고 Parse Tree를 생성  

```
1. 토큰 스트림을 문법 규칙에 따라 그룹화
2. 구문 오류가 있는지 검사
  - 괄호
  - 세미콜론 
  - 블록 구조
3. 문제가 없다면 파스 트리 생성
```



## Semantic Analysis
: 컴파일 시점에 확인 가능한 모든 의미적 오류를 검사  

**Semantic Analyzer**  
: 의미 분석기  
: 소스 코드의 의미를 검사하고 데이터 타입을 검사  
: 자동 타입 변환이 필요한 경우 수행  

```
1. 심볼 테이블 구축
  - 식별자 정보
  - 스코프 정보 
2. 데이터 타입 체크
  - 변수 타입 검사
  - 연산자 타입 호환성 검사
  - 메소드 시그니처 검사
3. 데이터 타입 변환 처리
4. 기타 규칙 검사
  - 변수 초기화 여부
  - 메소드 반환값 검증
```



## Intermediate Code Generation
: 문제가 없으면 추상 구문 트리를 생성하고 이를 기반으로 중간 코드를 생성  

**AST**  
: Abstract Syntax Tree  
: 추상 구문 트리  
: 프로그램의 구조 정보를 트리 형태로 표현  



## Optimization  
: 중간 코드의 성능을 개선  
: 불필요한 코드를 제거하고 루프를 최적화하는 등 다양한 최적화 기법이 적용  



## Code Generation
: 최적화된 중간 코드를 바이트코드 변환  
: 변환된 바이트코드의 유효성을 검사하고 클래스 파일의 포맷을 검증  