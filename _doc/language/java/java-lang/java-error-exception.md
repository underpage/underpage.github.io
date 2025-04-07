---
order: 0.47
title: java
description: 자바 예외처리
summary:
keywords:
- java
- java exception
- 자바 예외처리
tags:
- language
- java
created_time: 2024-10-23 14:13
modified_time: 2024-10-25 01:00
---

# Java Error & Exception   
: 자바 프로그램 실행시 발생되는 오류는 Error와 Exception으로 구분됨  

**분류**    
- Error : 복구 불가능 오류
- Exception : 복구 가능 오류 (예외처리 가능)

**시점에 따라**
- 컴파일 타임 오류 : Syntax Error
- 런타임 오류 : Logic Error

**API**
- java.lang.Throwable
  - java.lang.Error
  - java.lang.Exception
    - java.lang.RuntimeException



## Error
: 비정상적이거나 치명적인 오류 발생시 생성되며 이를 처리할 수 없음  

**API**   
- VirtualMachineError
  - OutOfMemoryError
  - StackOverflowError
  - InternalError 
  - UnknownError  



## Exception
: 복구 가능한 오류로 예외 처리를 통해 프로그램 흐름을 제어함  

종류 | 예외 처리
---|---
컴파일 계열 | 컴파일 중 발생해 예측 가능하며 명시적 예외 처리 필요 (checked exception)
런타임 계열 | 실행 중 발생하며 예측이 불가능해 명시적 예외 처리 불필요 (unchecked exception)


**checked exception**  
: 컴파일러가 예외 처리 여부를 체크하므로 예외 처리 필수  
: 실행 중 오류가 발생하면 실행 흐름을 중단하고 오류를 설명하는 예외를 생성해 전달  
: 주로 파일 시스템 접근, 네트워크 통신 등에서 발생


**unchecked exception**  
: 컴파일러가 오류를 인식하지 못해 오류 발생 지점까지 실행 후 예외가 발생  
: 주로 프로그램의 논리적 오류에서 발생



### Exception Handling
: 프로그램의 정상적인 실행 흐름을 유지할 수 있도록 예외가 발생할 것 같은 코드에 예외 처리를 함  

**종류**   
- 예외 처리 try-catch
- 예외 전가 throws
- 예외 발생 throw


**스택 트레이스**  
: 예외가 발생한 경우 예외가 발생한 위치와 그 예외가 이르기까지의 메소드 호출 과정을 역순으로 나열한 것  
: 예외 종류, 메시지, 메소드 호출 순서, 파일 명, 라인 번호로 구성됨  

```java
// 현재 스레드의 호출 스택 출력
Thread.dumpStack(); 

// 예외가 발생한 시점의 스택 트레이스 출력
Throwable.printStackTrace();

// 스택 트레이스를 배열로 반환
Throwable.getStackTrace();

// java 9 이후 지원
StackWalker walker = StackWalker.getInstance();
walker.forEach(frame -> 
    System.out.println(frame.getClassName() + " : " + frame.getMethodName())
);
```



#### try-catch
: 예외 직접 처리  

**try-catch block**   
: try 블록에서 예외가 발생하면 catch 블록에서 처리  
: 예외 별로 catch 블록이 존재할 수 있으며 예외 발생시 하나의 catch 블록만 실행됨  

```java
try {
	// 감시 영역
	// 예외가 발생할 수 있는 코드 영역   

} catch(ExceptionA e) {
	// 예외 처리 영역
	// 예외가 발생하지 않았다면 실행되지 않음  

} catch(ExceptionB e) { }
```


**try-catch-finally block**  
: finally 블록은 try 블록이 종료되고 무조건 실행되는 영역   
: try 블록에서 예외가 발생하면 catch 블록 실행후 finally 블록 실행  
: try 블록에 return 문이 있을 경우 finally 블록 실행 후에 값이 반환됨  
: 만약 finally 블록에 return이 있으면 finally의 반환 값이 최종적으로 반환됨
: catch와 finally 중 하나는 생략 가능하나 둘 다 생략은 안됨  

```java
try {
	// 감시 영역
	// 예외가 발생할 수 있는 코드 영역   

} catch(Exception e) {
	// 예외 처리 영역

} finally {
    // try 블록 종료후 무조건 실행되는 코드 영역
}


try {
    // catch 블록 생략시 예외가 발생할 경우 예외를 전달해 처리
} finally {}
```


**try-with-resources**  
: Java 7 부터 지원  
: try에 자원 객체를 전달하면 자원 해제를 자동 처리함  
: 자원 객체는 AutoCloseable 인터페이스를 구현한 객체여야함  

```java
AutoCloseable resource = new MyResource(); 

try(resource) {
    // 리소스 사용
}
```


**multi-catch block**  
: Java 7 부터 지원  
: '|' (버티컬 바) 기호를 사용해 여러 예외를 한 번에 처리  
: Exception 클래스가 상속 관계에 있는 경우 중복되므로 하나만 사용 가능  

```java
try {
} catch(ExceptionA | ExceptionB | ExceptionC e) {}
```



#### throws
: 예외 책임 전가, 예외 간접 처리  
: 현재 메소드에서 예외가 발생할 경우 상위 메소드에게 예외를 전달하고 상위 메소드에서 예외를 처리  
: throws와 try-catch가 동시에 존재할 경우 try-catch가 우선 동작하고 해결이 안되면 예외를 전달  
: main()에서 예외를 전달할 경우 JVM에서 스택 트레이스를 출력하고 실행중인 스레드를 종료함

```java
public void methodA() {
    try {
        methodB();
    } catch(Exception e) {
        // 예외 처리 시도
    }
} 

public void methodB() throws Exception {} 
```



#### throw
: 강제 예외 발생  
: 현재 메소드에서 예외를 발생하고 상위 메소드에게 예외에 대한 정보를 전달  
: 상위 메소드에서 예외를 처리하거나 처리하지 않고 계속 예외를 전파할 수 있음  

```java
public void method() {
    throw new Exception("강제 예외 발생");
}
```



### User Defined Exception
: 사용자 정의 예외는 예외 발생시 클래스 이름으로 어떤 예외인지 쉽게 파악하기 위해 만듬

```java
public class MyException extends Exception {
    public MyException() {}
    public MyException(String msg) {
        super(msg);
    }
}
```
