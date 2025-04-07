---
order: 1.1
title: java
description: 자바 가상 머신 (JVM)
summary:
keywords:
- java
- java virtual machine
- jvm
- class loader
tags:
- language
- java
created_time: 2024-10-10 13:14
modified_time: 2025-01-19 16:40
---

# JVM
Java Virtual Machine  
: 바이트코드가 실행되기 위한 환경  
: 운영체제와 자바 프로그램 사이에 위치해 프로그램 실행을 위한 리소스를 확보하고 이를 관리함  
: 운영체제 별 JVM이 존재하며 JVM 자체는 운영체제에 종속적  

**구성 요소**
- [Class Loader](#class-loader)
- [JVM Memory](#jvm-memory)
- [Execution Engine](#execution-engine)
- [Native Method Interface](#native-method-interface) 
- [Native Method Library](#native-method-library)

```
 Class Loader <==> JVM Memoery <==> Execution Engine
바이트코드 로드   바이트코드 저장   바이트코드 변환
```

**스택 기반의 가상 머신 아키텍처**  
: JVM은 스택 기반 가상 머신 아키텍처로 설계  
: 피연산자를 저장하기 위한 레지스터가 없기 때문에 스택에 저장  



## Class Loader
: 자바 클래스 파일을 찾아 보안 검증 후 JVM 메모리에 로드하고 연결  
: 프로그램을 실행되면 최초 한 번 로딩하고 프로그램 실행 중 클래스가 필요하면 다시 로딩함  

**단계**  
```
1. load : 클래스 파일을 읽어 이를 JVM 메모리에 로딩
          (동적 로딩으로 필요한 클래스만 로딩됨)
2. link
   2-1. verify  : bytecode verifier가 바이트코드의 유효성과 보안을 검증함 (sandbox)
   2-2. prepare : 메모리를 기본값으로 초기화하는 등 실행 준비를 함
                  (로딩된 클래스의 정적 변수가 기본 값으로 초기화 됨)
   2-3. resolve : 심볼릭 레퍼런스를 실제 메모리 주소로 변환함

3. initialize : 로딩된 클래스의 정적 변수에 값을 할당하고 정적 블록 실행함

=> 문제가 없으면 실행 엔진으로 넘어감
```


**클래스 로딩 방식**
- Load-Time Dynamic Loading : 클래스 로딩 중 참조되는 클래스 로딩
- Run-Time Dynamic Loading : 프로그램 실행 중 필요한 클래스 로딩 (주로 리플렉션)


**클래스 로딩 조건**
- 정적 변수나 정적 메소드를 사용하는 클래스
- new 키워드를 통해 인스턴스를 생성
- Class.forName()을 통해 로딩되는 클래스


**클래스 로더 종류**    
- Primordial : 가상 머신에 내장된 기본 클래스 로더
  - 부트 스트랩 클래스 로더 (Java 핵심 클래스)
  - 확장 클래스 로더
  - 시스템 클래스 로더 (사용자 애플리케이션 클래스, 외부 라이브러리)
- Non-Primordial : 사용자 정의 클래스 로더

```
부트 스트랩 로더를 통해 로딩된 클래스는 JVM의 생애 주기 동안 메모리에 상주함
확장 클래스 로더나 시스템 클래스 로더에 의해 로딩된 클래스는 필요없어지면 언로드됨
```


**클래스 언로드**  
: JVM 메모리에서 특정 조건에 따라 특정 클래스를 제거하는 과정  



## JVM Memory
: JVM이 시작될 때 운영체제에 요청해 메모리를 할당받음  
: 할당받은 메모리를 다양한 영역으로 나누어 관리하고 영역별로 특정 유형의 데이터가 저장됨  

```
JVM 관리 
          (GC)
Stack  |  Heap  |  Program Counter Register  |  Native Method Stack
        - Young Generation
          - Eden
          - Survivor
        - Old Generation

운영체제가 관리
Metaspace
```


**JVM 메모리 영역과 객체 생성 과정**  

영역 | 설명 
---|---
Stack Memory | 메소드 호출 (객체 참조 변수, 지역 변수)
Heap Memory  | 객체 (인스턴스 변수), 배열
Metaspace    | 클래스 메타데이터, 메소드 메타데이터, 클래스 변수, 상수 풀

1. JVM이 필요한 클래스를 Metaspace에 로드  
  a. JVM은 지연 로딩 방식을 사용해 클래스가 필요한 시점에 로드함
  b. 클래스 메타데이터, 메소드 메타데이터, 클래스 변수가 로드됨
  c. 한 번 로드된 클래스는 Metaspace에 저장되어 재사용됨

2. JVM이 new 키워드를 만나면 Heap 메모리에 객체를 생성하기 위한 공간을 할당함  
  a. 클래스 필드의 기본 데이터 타입 크기를 합산
  b. 클래스 필드가 객체를 참조하면 32비트 JVM은 4바이트를 64비트 JVM은 8바이트를 할당
  c. 객체 헤더 정보를 위한 공간 8바이트나 16바이트를 할당 
  d. 이 과정을 합산하면 인스턴스 크기가 되며 이를 8바이트 배수로 조정함 (성능 최적화, 메모리 정렬)

3. 할당된 메모리 공간의 인스턴스 변수를 초기화함  
  a. JVM이 메모리 영역 비트를 0으로 채워 기본 값으로 초기화됨 = 객체 생성
  b. 인스턴스 변수에 값이 명시되어 있으면 이를 메모리에 할당함
  c. 인스턴스 초기화 블록이 있으면 실행함

4. 생성자를 호출하고 실행해 객체 상태를 설정함  
  a. this()나 super()가 있으면 다른 생성자를 호출함
  b. 생성자 내에 있는 코드를 실행함

5. 생성된 객체의 메모리 주소가 반환되어 이를 참조 변수에 저장함


용어 | 설명
---|---
메모리 주소 | JVM이 사용하는 가상 메모리 공간의 주소로 절대적인 위치    
오프셋 | 특정 기준점으로 메모리 주소를 나타내는 상대적인 위치 (배열 요소, 객체 필드)  
참조 버킷 | 객체 참조를 저장하는 메모리 위치 (클래스 변수, 인스턴스 변수, 지역 변수)


**메모리 크기 지정**
```bash
# 스택 크기 설정
java -Xss<스택 크기>

# 힙 메모리 크기 설정
java -Xms<초기 크기> -Xmx<최대 크기>

# 메타스페이스 크기 설정
java -XX:MetaspaceSize=<초기 크기> -XX:MaxMetaspaceSize=<최대 크기>
```



### Stack Area
: 스레드 별로 독립적인 스택 메모리를 가짐  
: 메소드가 호출되면 스택 프레임이 쌓이고 메소드가 종료되면 해당 스택 프레임이 제거됨  
: 스택 프레임에는 메소드의 호출 정보와 메소드 내부의 객체 참조 변수, 지역 변수 정보가 저장됨  
: 스레드 별로 스택 메모리 크기가 정해져 있으며 이 크기를 초과하면 StackOverflowError 가 발생함  

**기본 스레드**
- Main Thread : 실행 스레드
- Notification Thread
- Finalizer Thread : Object.finalize()를 관리하기 위한 백그라운드 스레드
- Common-Cleaner Thread
- Monitor Deflation Thread
- Reference Handler Thread
- Garbage Collector Thread
- Signal Dispatcher Thread
- JIT Compiler Thread



### Heap Area
: 모든 스레드가 접근할 수 있는 공유 메모리 영역  
: 객체와 배열이 생성되어 해당 데이터가 힙 메모리에 저장됨  
: 새로운 객체는 Young Generation에서 생성되고 오래된 객체는 Old Generation에 저장됨  
: 가비지 컬렉션이 참조되지 않는 객체와 배열을 해제해 메모리를 관리함  



### Metaspace
: 네이티브 메모리 영역으로 메모리 제한이 없음  
: 클래스 메타데이터, 메소드 메타데이터, 클래스 변수, 상수 풀 등이 저장되는 영역  



### Program Counter Register
: 스레드 별로 독립적인 PC Register 영역을 가짐  
: 스레드마다 현재 실행 중인 바이트코드의 위치를 가르키는 레지스터  
: 레지스터를 통해 현재 실행중인 명령을 추적할 수 있음  



### Native Method Stack
: 네이티브 메소드 실행을 위한 스택  
: 네이티브 메소드가 실행되었을때 네이티브 메소드의 지역 변수와 매개 변수가 저장됨



## Execution Engine
: 적재된 바이트코드를 플랫폼에 적합한 기계어로 변환하고 이를 CPU에게 전달해 실행을 요청함  
: Execution Engine을 통해 자바 프로그램은 플랫폼에 독립적인 특성을 지님  

**구성 요소**
- Interpreter
- Just-In-Time Compiler
- Garbage Collector



### Interpreter
: 바이트코드를 한 줄씩 읽어 기계어로 변환하고 CPU에 실행을 요청  
: 반복적으로 실행되는 코드 부분을 발견하면 JIT 컴파일러에게 통보 (성능 최적화)  



### Just-In-Time Compiler
: 반복되는 바이트코드 블록을 식별해 전체 블록을 한 번에 읽어 기계어로 변환  
: 컴파일된 코드는 운영체제와 CPU 아키텍처에 최적화되고 캐싱되어 재사용됨   
: 자주 사용하지 않는 바이트코드는 변환하지 않음  

**hot spot**  
: 반복되는 코드 블록  


**JVM 별 컴파일러**

JVM | Compiler 
---|---
HotSpot  | JIT Compiler(C1), Server Compiler(C2)
GraalVM  | JIT Compiler, GraalVM Compiler, GraalVM Native Image(AOT)
OpenJ9   | JIT Compiler, AOT Compiler


**AOT Compiler**  
: Ahead of Time Compiler  
: 바이트코드 단계없이 기계어로 변환하는 컴파일러  
: 중간 단계가 없어 시작 시간이 단축되나 최적화가 불가능함  
: 클라우드 네이티브 환경에서 사용하기 적합  
: HotSpotVM의 AOT 컴파일러는 Java 9에서 실험적으로 도입되고 Java 16부터는 제거됨  


**JVM Compiler Interface** (JVMCI)    
: JVMCI를 통해 JVM에 새로운 컴파일러를 연결함 (ex. HotSpot JVM + Graal)  
: Java 9부터 도입되어 JVM의 컴파일러 교체를 가능하게 함  

```java
System.getProperty("java.vm.version");
System.getProperty("jvmci.Compiler");
```



### Garbage Collector
: 힙 메모리에서 더 이상 참조되지 않는 객체를 찾아 메모리를 해제함  
: 힙 메모리 Young Generation, Old Generation 영역에 따라 GC가 다르게 수행됨  
: JVM 구현체에 따라 지원하는 GC 알고리즘이 달라질 수 있음  

유형 | 설명 | 특징
---|---|---
Minor GC | Young Generation에서 가비지 수집을 수행 | 실행 시간이 짧고 자주 발생
Major GC | Old Generation에서 가비지 수집을 수행 | Minor GC 보다 덜 빈번하고 실행 시간이 더 김
FULL GC  | Young Generation과 Old Generation 영역에서 수행 | 실행 시간이 길고 stop the world 발생

**stop the world**  
: GC가 동작하면 객체가 삭제되거나 이동하기 때문에 안전을 위해 모든 스레드를 일시적으로 중단함  
: GC가 끝나기 전까지 GC 스레드를 제외한 모든 스레드는 동작을 하지 않음  
: GC 알고리즘마다 stop the world 발생 빈도와 지속 시간은 달라짐  


**주요 알고리즘**
- Serial GC
- Parallel GC
- Concurrent Mark-Sweep GC
- Garbage First GC
- Z Garbage Collector
- Shenandoah GC



## Native Method Interface
: 자바 프로그램에서 네이티브 코드를 호출하면 이를 실행하게 해주는 구현체  
: 네이티브 라이브러리를 호출할 수 있도록 해주는 인터페이스  



## Native Method Library
: 운영체제에 의존적인 네이티브 코드가 포함한 라이브러리  
: C, C++, 어셈블리 같은 언어로 작성되어 운영체제에 특화된 기능을 제공

**단계**
1. C로 라이브러리 작성 (libExample.c)
2. 작성된 코드를 컴파일하여 운영체제에 맞는 파일을 생성 (libExample.so, libExample.ddl)
3. 자바 프로그램이 접근 가능한 시스템 라이브러리 디렉토리에 파일 저장 (/usr/lib, /usr/local/lib)
4. 자바 프로그램에서 네이티브 라이브러리를 로드 

```java
public class Example {
    static {
      System.loadLibrary("libExample");
    }

    public native void nativeMethod();
}
```