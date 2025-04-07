---
order: 1
title: java
description: 자바 개발 툴킷 (JDK)
summary:
keywords:
- java
- java development kit
- jdk
- jre
tags:
- language
- java
created_time: 2024-10-07 06:22
modified_time: 2025-01-19 16:39
---

# JDK
Java Development Kit  
: 자바 프로그램 개발하기 위한 도구와 라이브러리 모음  
: 자바 프로그램을 개발, 실행, 테스트, 배포하기 위한 라이브러리와 도구들로 구성  

**구성 요소**
- [JRE](#jre)
  - [Java Virtual Machine](./jvm.md)
  - [Java Class Library](#java-class-library)
- [Java Tools](#java-tools) 


**OpenJDK**  
: 자바 표준 사양을 바탕으로 구현된 공식 구현체  
: 다른 JDK는 OpenJDK를 기반으로 커스텀하여 배포판을 제공함   


**무료 구현체**
- Temurin (Eclipse)
- Zulu (Azul)
- Corretto (Amazon)
- Microsoft Build of OpenJDK
- Liberica JDK (BellSoft)

**유료 구현체**
- Oracle JDK
- Zing (Azul)



## JRE
Java Runtime Environment  
: 자바 런타임 환경  
: 자바 프로그램 실행을 위한 추상화된 실행 환경  
: Java 8 까지는 2개의 JRE를 지원했으나 Java 9 부터는 별도로 지원하지 않음  
: Java 11 부터는 jlink 도구를 사용해 사용자 정의 JRE를 생성할 수 있음  


**런타임 환경**  
: 프로그램을 실행할 수 있는 환경  
: 예전에는 운영체제를 런타임 환경으로 사용해 파일 시스템, 네트워크 등에 접근시 운영 체제에 의존하게 됨  


```
Java Program
------------
JVM
------------
OS
```


**구성 요소**  
- [Java Virtual Machine](./jvm.md)
- [Java Class Library](#java-class-library)



### Java Class Library
: JVM이 런타임에 호출할 수 있는 동적으로 로드 가능한 클래스와 API 집합  
: Java8 에서는 rt.jar에 포함되었으나 Java 9 이후에는 모듈 단위로 지원  


#### rt.jar 
: 자바 런타임 환경을 위한 클래스 파일  
: 부트스트랩 클래스 로더에 의해 가장 먼저 로드되며 JVM이 검사하지 않음  
: Java 9 부터 모듈 시스템이 도입되며 제거되고 jrt-fs.jar로 대체  

**java8**
- Public JRE : 독립 구성 요소 ($JAVA_HOME/jre/lib/rt.jar)
- Private JRE : JDK 일부 ($JAVA_HOME/jdk/jre/lib/rt.jar)

**jrt-fs.jar**  
: 자바 런타임 파일 시스템  



## Java Tools

**java8 directory structure**  
```bash
jdk/
├── bin        # 컴파일러, 런처, 디버거 등 개발 도구
├── include    # 네이티브 코드 프로그래밍을 지원하는 헤더 파일들
├── jre        # 개발 도구에서 사용하는 자바 실행 환경, JVM, 클래스 라이브러리들
└── lib        # tools.jar, dt.jar, 추가 클래스 라이브러리  
```


**java8 tools**

도구 | 설명
---|---
javac    | 자바 컴파일러로 자바 파일을 클래스 파일로 컴파일
java     | 자바 인터프리터로 바이트코드를 해석하고 실행
javap    | 자바 역어셈블러로 클래스 파일을 자바 파일로 변환
jdeps    | 자바 패키지와 클래스의 종속성 분석  
javadoc  | 자바 문서 생성기
javah    | 헤더 파일(.h) 과 소스 파일(.c) 생성기
jdb      | 자바 명령줄 디버거
jar      | 자바 압축 파일 생성 및 관리
extcheck | 이전 JAR 파일과 현재 설치될 JAR 파일간의 버전 충돌 감지  
jmc      | (오라클) JVM 모니터링 도구
jfr      | (오라클) jmc를 통해 수집된 정보를 저장하고 문제 분석하는 도구


**java21 directory structure**  
```bash
jdk/
├── bin        # 컴파일러, 런처, 디버거 등 개발 도구
├── conf       # 자바 설정 파일들
├── include    # 네이티브 코드 프로그래밍을 지원하는 헤더 파일들
├── lib        # 모듈 시스템에 필요한 라이브러리 및 기타 리소스
├── legal      # 각 모듈에 대한 라이선스 정보
└── jmods      # 표준 모듈들이 포함된 디렉토리
```


**oracle java21 tools**  
https://docs.oracle.com/en/java/javase/21/docs/specs/man/index.html


**openJDK tools**  
https://openjdk.org/tools/ 
