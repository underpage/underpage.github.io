---
order: 2
title: Programming
description: 고수준 언어
summary:
keywords:
- programming language
- high level language
- compiled language
tags:
- program
- language
created_time: 2024-09-18 03:13
modified_time: 2025-03-22 03:36
---

# High Level Language
: 컴퓨터 하드웨어에 독립적이며 자연어와 유사해 사람에게 친숙한 프로그래밍 언어  
: 고수준 언어는 변환기를 통해 하드웨어 아키텍처에 맞는 기계어로 변환되어 실행됨  
: 변환 과정에서 구문 검사를 통해 문법적 오류나 실수를 사전에 방지함  
: 고수준 언어는 실행 방식, 타입 시스템, 패러다임 등에 따라 다양하게 분류됨  

**분류**
- [실행 방식](#execution-based-language)
- [타입 시스템](#type-system-based-language)
- [패러다임](#paradigm-based-language)
- [플랫폼 의존성](#platform-dependent-language)


**시대별 주요 언어**

시대 | 언어
---|---
1950년대 | FORTRAN, LISP, COBOL
1960년대 | BASIC, PL/1, Algol60, Snobol, Simula67
1970년대 | Pascal, C, ML, Smalltalk
1980년대 | Ada, Prolog, Scheme, C++, Perl
1990년대 | Haskell, Python, Lua, Java, Ruby, JavaScript
2000년대 | C#, Scala, Clojure, Dart, Swift
2010년대 | Rust, Go, Kotlin


**시대별 언어 특징**
```
1950년대  기계적 특성을 제거하고 수학적 기호를 사용하는 언어 방식 연구
1957년에  최초로 수학적 기호를 사용한 포트란 언어 등장
1958년에  인공지능 연구를 위한 함수형 언어 LISP 등장
1959년에  영어와 유사한 구문을 도입한 고수준 언어 코볼 등장

1964년에  초보자를 위한 베이직 언어 등장
          베이직은 컴퓨팅 자원이 적게 필요해 최초로 개인용 컴퓨터에서 사용한 언어
1967년에  최초 객체지향 개념을 도입한 시뮬라 언어 등장

1970년대  시스템 프로그래밍(편집기, 컴파일러, 운영체제 등)을 목적으로 하는 언어들이 개발됨
1973년에  운영체제를 작성할 목적으로 C 언어 등장 

1980년대  규모가 큰 프로그램의 복잡성을 관리하기 위한 언어들이 개발됨
          객체지향 프로그래밍 언어 개념이 발전하고 확산됨
          
1990년대  인터넷과 웹의 발전으로 이에 맞는 언어들이 개발됨
          프로그래밍의 편의성과 속도가 보다 중요해짐
```



## Execution-based Language
: 프로그래밍 언어를 실행하는 방식에 따라 분류  

종류 | 설명 | 언어
---|---|---
컴파일 언어 | 소스 코드를 기계어나 중간 코드로 변환하고 실행하는 언어 | C, C++
인터프리터 언어 | 소스 코드를 즉석에서 해석하고 실행하는 언어 | Python, Ruby 
스크립트 언어 | 별도의 환경에서 인터프리터 언어와 유사하게 실행하는 언어 | Shell Script, JavaScript
하이브리드 언어 | 컴파일과 인터프리팅 방식을 혼합해 실행하는 언어 | Java, Kotlin, C#
임베디드 언어 | 임베디드 시스템 환경에서 실행되도록 설계된 언어 | Ada, Lua, VHDL



### Compiled Language
: 소스 코드가 미리 컴파일되어 실행 가능한 파일로 변환되어 실행되는 언어  
: 한 번 컴파일되면 여러번 실행 가능하나 소스 코드가 변경되면 재컴파일이 필요함  
: 컴파일 언어는 컴파일 방식, 실행 환경 등에 따라 다양하게 세분화됨  

- 네이티브 컴파일 언어
- 바이트코드 컴파일 언어
- 트랜스파일 언어
- JIT 컴파일 언어
- AOT 컴파일 언어


**트랜스파일 언어**  
: 고수준 언어에서 다른 고수준 언어로 변환하는 언어  



### Scripting Language
: 컴파일 과정없이 소스 코드가 즉석에서 해석되어 실행되는 언어  
: 일반적으로 인터프리터 방식으로 실행되며 실행 환경에 따라 용도가 특화됨  
: 프로그램 제어, 자동화 또는 프로그램에 내장되어 다른 프로그램과 상호 작용을 하기 위해 사용됨  
: 대부분의 스크립트 언어는 REPL 환경을 제공함  

**시스템 스크립트 언어**    
- Unix/Linux : Shell Script
- Microsoft Windows : Batch, VBScript, PowerShell
- Mac OS : AppleScript


**웹 스크립트 언어**

분류 | 설명 | 언어   
---|---|---   
서버 사이드 스크립트 | 서버에서 실행되어 동적 콘텐츠 생성하는 언어 | PHP, ASP, JSP
클라이언트 사이드 스크립트 | 브라우저에서 실행되어 UI를 제어하는 언어 | JavaScript


**REPL**  
: Read-Eval-Print Loop  
: 표현식을 읽고 평가해 결과를 반환하고 이 작업을 반복하는 환경  

1. Read : 입력 값을 읽어 메모리에 저장
2. Eval : 입력 값을 평가하고 실행
3. Print : Eval로 인해 반환된 값을 출력
4. Loop : 1~3을 반복



## Type System-based Language
: 프로그래밍 언어의 [타입 시스템](./concept/type-system.md) 특징에 따른 분류  
: 최신 프로그래밍 언어는 다양한 타입 시스템 특성을 혼합하여 사용함  

- **타입 검사**
  - 정적 타입 언어
  - 동적 타입 언어 
- **타입 안전**
  - 강타입 언어
  - 약타입 언어
- **타입 시스템 특성**
  - 타입 선언 언어
  - 타입 추론 언어

종류 | 설명 | 언어
---|---|---
정적 타입 언어 | 컴파일 시점에 타입을 검사하는 언어 | Java, C++, Rust, Go
동적 타입 언어 | 런타임에 타입을 검사하는 언어 | Lisp, Python, JavaScript
강타입 언어 | 엄격한 타입 규칙을 적용하는 언어 (암시적 타입 변환 제한) | Java, Haskell, Rust
약타입 언어 | 유연한 타입 규칙을 적용하는 언어 (암시적 타입 변환 허용) | JavaScript
타입 선언 언어 | 명시적으로 타입을 지정해야 하는 언어 | C, C++, Java
타입 추론 언어 | 컴파일러가 자동으로 타입을 추론하는 언어 | Haskell, Scala, Kotlin, Rust


**언어 별 분류**

타입 | 정적 타입 | 동적 타입
---|---|---
**강타입** | Java, Scala, Kotlin, Rust | Ruby, Python, Elixir
**약타입** | C, C++ | JavaScript, Perl, Lua

```
Java는 강타입으로 분류되지만 기본 타입 경우 암시적 변환을 허용하여 완전한 강타입은 아님
```



## Paradigm-based Languages
: [프로그래밍 패러다임](../paradigm/index.md)에 따른 분류로 패러다임이 모델이라면 언어는 이를 구현하는 도구  
: 현대 프로그래밍 언어는 대부분 다중 패러다임을 지원함  

- [명령형 언어](#imperative-languages)
- [선언형 언어](#declarative-languages)



### Imperative Languages
: 코드의 순차적 흐름과 상태 변화를 중심으로 작동하는 언어  

종류 | 설명 | 언어
---|---|---
절차적 언어 | 절차적인 구조를 통해 순차적으로 실행하는 언어 | C, Pascal
객체 지향 언어 | 데이터와 기능을 객체 단위로 제어하는 언어 | Smalltalk, Java, C++, Python



### Declarative Languages
: 무엇을 해야하는가에 대한 결과를 명시하고 어떻게 하는가에 대한 절차는 명시하지 않는 언어  

종류 | 설명 | 언어
---|---|---
논리형 언어 | 논리적 규칙과 사실관계를 기반으로 문제를 해결하는 언어 | Prolog
함수형 언어 | 수학적 함수 개념을 바탕으로 상태 변경없이 문제를 해결하는 언어 | Lisp, Haskell, Erlang



## Platform Dependent Language
: 프로그래밍 언어가 특정 플랫폼에 의존적인지에 따라 분류  
: 플랫폼에 독립적이면 이식성이 높으며 의존적이면 이식성이 떨어짐  
: 플랫폼에 독립적이면 하드웨어 직접 접근이 불가능하며 의존적이면 직접 접근이 가능함  

**platform**  
: 하드웨어, 시스템, 애플리케이션 등이 실행되는 환경  


종류 | 설명 | 언어
---|---|---
플랫폼 독립 언어 | 다양한 플랫폼에서 동일한 소스 코드로 실행 가능한 언어 | Java, Python, JavaScript, WebAssembly
플랫폼 의존 언어 | 특정 플랫폼에 최적화되어 있는 언어 | Assembly, C, Objective-C
하이브리드 플랫폼 언어 | 기본적으로 플랫폼에 독립적이지만 확장을 지원하는 언어 | Rust, Go