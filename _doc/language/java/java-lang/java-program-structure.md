---
order: 3
title: Java
description: 자바 프로그램 구조
summary:
keywords:
- java language
- java program structure
- package
- import
- static import
tags:
- java
created_time: 2024-10-09 08:59
modified_time: 2025-03-26 22:25
---

# Java Program Structure
: 자바 프로그램 생성을 위한 표준 구성 방식  
: 컴퓨터 프로그램은 데이터와 이를 처리하는 기능으로 구성된 실행 가능한 소스 코드  
: 자바 프로그램은 하나 이상 클래스로 구성되고 클래스는 변수(데이터)와 메소드(기능)로 구성됨   
: 클래스들은 패키지를 통해 그룹화되어 자바 프로그램은 명확한 계층 구조를 형성함  

- [패키지](#package)
- [클래스](./java-class.md)
  - [변수](./java-variable.md)
  - [메소드](./java-method.md)


**기본 구조**
```java
// 1. package declaration
package example.java;

// 2. import declaration
import java.*;

// 3. class definition 
public class Example {

	// 4. class member 
	// - variable 
	// - method 

	// vriable declaration
	String variable;

	// method declaration
	void method();

	// 자바 프로그램을 실행하면 자동으로 가장 먼저 호출되는 메소드
	// 자바 프로그램은 하나의 메인 메소드를 포함해야 실행됨
	// 프로그램 종료 = 메인 메소드 종료
	public static void main(String[] args) {}

}
```

**declaration** (선언)  
: 변수, 메소드, 클래스, 인터페이스 등 존재를 선언함  
: 구체적 구현이 없으며 타입이나 이름만 명시된 구문  

**definition** (정의)  
: 선언된 항목에 대해 구체적으로 정의함  
: 변수는 값을 할당하고 메소드는 구체적인 동작이 정의됨  



## Package
: 자바 소스 코드를 논리적/물리적으로 구조화하는 기본 단위  
: 네임스페이스, 모듈화, 접근 제어를 위해 사용되며 자바 프로그램 설계에 직접적인 영향을 미침  
: 모든 자바 파일은 하나의 패키지에 속하며 일반적으로 패키지는 이름이 있으나 특수한 경우 이름이 없음  
: 패키지는 하위 패키지를 생성해 계층을 형성하며 이는 실제 물리적인 디렉토리 구조와 일치함  

역할 | 설명
---|---
네임스페이스 | 같은 이름의 클래스를 다른 패키지에서 사용 가능하게 함
모듈화 | 관련된 클래스들을 그룹화하여 재사용성을 높임
접근 제어 | [접근 제어자](./java-modifier.md)를 통해 클래스에 대한 접근을 제어함


**종류**
- 내장 패키지
- 사용자 정의 패키지

**명명 규칙**
- 패키지 이름은 모두 소문자를 사용하고 계층은 마침표를 사용해 구분 
- 일반적으로 최상위 도메인부터 시작 (ex. org.openjdk.java)

**unnamed package**  
= default package, anonymous package  
: 패키지를 명시적으로 선언하지 않으면 자동으로 이름없는 패키지에 속함  
: 이름 없는 패키지는 하위 패키지를 생성할 수 없음  
: 이름 없는 패키지에 존재하는 클래스들은 패키지명이 없으므로 import 문 사용이 불가능함  
: 편의를 위해 제공하는 기능으로 실제 프로그램 개발시 사용되지 않음  

**package declaration**  
= named package  
: 패키지를 정의하기 위한 선언문  
: 하나의 자바 파일은 하나의 package만 선언 가능하며 자바 파일 최상단에 정의해야 함  

```java
// 단일 패키지 선언
package x;
public class Example {}

// 중첩 패키지 선언
package x.y.z;
public class Example {}
```



## import
: 다른 패키지에 있는 클래스를 참조하기 위한 구문  
: import 문을 통해 패키지명을 생략하고 클래스 이름만으로 참조가 가능함  
: 클래스의 전체 수식명(패키지명을 포함한 클래스 이름)에 대한 별칭과 같은 역할을 함  
: 기본이 되는 java.lang 패키지는 import 없이 자동으로 참조됨  

```java
// import문은 package 문과 class 선언 사이에 정의해야 함

// 하위에 속한 모든 클래스 참조 
import java.util.*;

// 단일 클래스 참조 
import java.util.Date;

public class Example {
	public static void main(String[] args) {
		System.out.println(new Date());
	}
}
```

**FQCN**  
: fully qualified class name  
: 클래스가 속한 패키지를 포함한 전체 이름  
: import문을 사용하지 않고 클래스를 참조할 경우 클래스의 전체 수식명을 작성해야 함  
: 같은 이름의 클래스가 여러 패키지에 존재할 경우 충돌을 방지하기 위해 사용됨

```java
import java.util.Date;

// 다른 패키지에 같은 이름 클래스를 참조하면 충돌이 발생함
// import java.sql.Date;

public class Example {
	public static void main(String[] args) {
		System.out.println(new java.sql.Date(new Date().getTime()));
	}
}
```



### static import
: Java 5부터 지원되는 구문  
: 정적 멤버에(정적 변수, 정적 메소드) 쉽게 접근하기 위해 사용  
: 정적 멤버는 클래스 명을 명시해야 하지만 static import 문으로 정의하면 생략이 가능함  
: static import 구문이지만 작성시에는 import static 순서로 정의해야 함  

```java
import static java.lang.System.out;
import static java.lang.Math.*;

public class Example {
	public static void main(String[] args) {
		out.println(PI);
	}
}
```