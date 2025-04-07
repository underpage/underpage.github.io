---
order: 3.1
title: java
description: 자바 모듈 시스템 (JPMS)
summary:
keywords:
- java
- java platform module system
- jpms
tags:
- language
- java
created_time: 2024-10-22 23:26
modified_time: 2025-01-19 16:47
---

# Java Platform Module System
: 프로젝트 [Jigsaw](./java-project.md#jigsaw)인 자바 모듈 시스템을 Java 9 부터 공식적으로 도입  
: Java Core API를 약 100개의 모듈로 분리하여 제공하고 의존성을 명시적으로 관리함  
: 명시적인 의존성 선언으로 더 안전하고 견고한 애플리케이션 구조 제공이 가능해짐  
: [jdeps](./java-tool/jdeps.md)를 통해 모듈 간 의존성을 분석하고 [jmod](./java-tool/jmod.md)를 통해 모듈 파일을 생성하고 관리함

- [무명 모듈](#unnamed-module)
- [명명된 모듈](#named-module)


**기본 모듈**  
https://cr.openjdk.org/~mr/jigsaw/ea/module-summary.html



## Unnamed Module
: 모듈 시스템을 사용하지 않는 상태로 모든 패키지가 공개되어 있고 접근에 제약이 없음  
: Java 9 이전 패키지들은 이름없는 모듈로 분류됨  



## Named Module
: 모듈 설명자를 통해 모듈의 의존성, 모듈 간 접근 제어, 패키지 공개 등을 정의하고 관리함  


**구조**
```bash
project/
├── module-info.java   # 모듈 설명자
├── com/
│   └── example/
│       ├── api/
│       ├── internal/
│       └── Main.java
└── resources/         # 모듈 리소스
```


**모듈 설명자**
```java
module com.example {

    // 의존 모듈 선언
    // java.base 모듈 경우 생략 가능
    requires java.base;

    // 공개 할 패키지 선언
    exports com.example.api;

    // 특정 모듈에만 패키지 공개
    exports com.example.internal to module.test; 

    // 리플렉션을 위해 런타임에 접근 허용
    opens com.example.api;

    // 서비스 제공
    provides com.example.api.Interface with com.example.internal.Implementation;
    
    // 서비스 사용
    uses com.example.api.Interface;

}
```


**command**
```bash
# 모듈 목록 확인
java --list-modules

# 특정 모듈 상세 정보 확인
java --describe-module java.base

# 모듈 의존성 분석
jdeps --module-path mods --module com.example
jdeps --module-path mods --print-module-deps com.example
```


**ex. 사용자 정의 런타임 이미지 생성**

```bash
project/
├── src/
│   ├── com.example/
│   │   ├── module-info.java
│   │   └── com/example/Main.java
│   │       
│   └── module.test/
│       ├── module-info.java
│       └── module/test/Test.java
│         
├── mods/               # 컴파일된 모듈 디렉토리
└── minimal-example/    # 런타임 이미지 디렉토리
```

```java
module com.example {
    requires java.sql;
    exports com.example.api;
    exports com.example.internal to module.test; 

}

module module.test {
    requires com.example;
}
```

```bash
# 1. 모듈 컴파일
javac -d mods/com.example $(find com.example -name "*.java")
javac --module-path mods -d mods/module.test $(find module.test -name "*.java")

# 2. JAR 생성
jar --create --file mods/com.example.jar -C mods/com.example .
jar --create --file mods/module.test.jar -C mods/module.test .

# 3. 런타임 이미지 생성
## $JAVA_HOME/jmods 는 JDK 기본 모듈이 존재하는 디렉토리
jlink --module-path mods:$JAVA_HOME/jmods --add-modules com.example,java.sql,module.test \
--output minimal-example
```