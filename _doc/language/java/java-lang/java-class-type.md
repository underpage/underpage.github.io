---
order: 3.2
title: Java
description: 자바 클래스 종류
summary:
keywords:
- java language
- java class
- final
- enum
- sealed
- record
tags:
- java
created_time: 2024-10-11 11:41
modified_time: 2025-03-13 23:38
---

# Java Class Types  
: 자바에서 문법적으로 지원하는 클래스 정의 방식과 클래스를 사용하는 목적에 따른 정의 방식으로 분류됨

**문법**
- [중첩 클래스](#nested-class)
- [추상 클래스](#abstract-class)
- [최종 클래스](#final-class)
- [봉인된 클래스](#sealed-class)
- [레코드 클래스](#record-class)
- [제네릭 클래스](#generic-class)
- [열거형 클래스](#enum-class)

**용도**
- [유틸리티 클래스](#utility-class)
- 싱글톤 클래스
- 팩토리 클래스
- 빌더 클래스
- ...



## Nested Class
: 일반 클래스 내부에 정의된 클래스로 위치에 따라 외부 클래스와 중첩 클래스로 구분됨  
: 중첩 클래스는 static 키워드 여부에 따라 정적 중첩 클래스와 내부 클래스로 나뉨  
: 정적 중첩 클래스를 제외한 모든 내부 클래스들은 외부 클래스의 인스턴스와 관계를 맺음  
: 특정 클래스에서만 사용되는 클래스 경우 중첩 클래스로 정의함

- 정적 중첩 클래스
- 내부 클래스 (비정적 중첩 클래스)
  - 인스턴스 내부 클래스
  - 지역 내부 클래스
  - 익명 내부 클래스

```java
public class OuterClass {

	// 정적 중첩 클래스
	static class StaticNestedClass {}

	// 인스턴스 내부 클래스
	// 상위 클래스의 인스턴스 멤버에 속함
	class InnerClass {}

	void method() {

		// 지역 내부 클래스
		// 메소드 내부에서만 클래스가 사용되는 경우 지역 내부 클래스로 정의함
		class LocalInnerClass{}

		// 익명 내부 클래스
		// 한 번만 사용되는 일회용 객체로 클래스 정의와 인스턴스 생성이 동시에 이루어짐
		// 특정 클래스나 인터페이스를 상속/구현하면서 기능을 확장할 때 사용
		// 익명 내부 클래스는 람다 표현식으로 대체될 수 있음
		Runnable runnable = new Runnable() {
			@Override
			public void run() {}
		}

	}

}
```


**정적 중첩 클래스**  
: 클래스 내부에 [static](./java-modifier.md#static) 키워드를 통해 정의된 클래스  
: 외부 클래스를 통해 사용하며 외부 클래스의 정적 변수와 정적 메소드에 접근 가능  
: 외부 클래스의 인스턴스와 독립적이며 외부 클래스 멤버에 접근 불가  


**비정적 중첩 클래스**  
: = 내부 클래스, 멤버 클래스, 인스턴스 클래스  
: 클래스의 멤버가 될 수 있는 중첩 클래스  
: 내부 클래스는 외부 클래스에 종속되며 외부 클래스 멤버에 접근할 수 있음  
: 외부 클래스가 인스턴스가 되어야 내부 클래스도 사용 가능  

```java
public class Example {
    
    private int num = 10;
    private String str = "outer";

    class InnerClass {
        private String str = "inner";

        public void innerMethod() {
            // 외부 클래스에 바로 접근 가능
            System.out.println("외부 클래스 : " + num); 

            // 변수 명이 중복될 경우 내부 선언을 우선시 함
            System.out.println("내부 클래스 : " + this.str);
            System.out.println("외부 클래스 : " + Example.this.str); 
        }
    }

}
```


**지역 내부 클래스**  
: 외부 클래스의 메소드 내부에 정의된 클래스로 접근 제어자 지정 불가  
: 메소드가 종료되면 지역 클래스의 객체도 종료됨  
: 비동기적 처리나 이벤트 핸들링을 위해 사용됨  


**익명 내부 클래스**  
: = 무명 클래스   
: 클래스 선언과 생성을 동시에 하고 한 번만 사용 가능한 객체  
: 추상 클래스나 인터페이스를 즉석에서 구현할 때 사용됨  



## Abstract Class
: [abstract](./java-modifier.md#abstract) 키워드를 사용해 정의한 클래스  
: 인스턴스를 생성할 수 없으며 추상 클래스를 상속한 하위 클래스를 통해 인스턴스를 생성함  
: 추상 클래스에 추상 메소드를 정의하면 이를 상속한 하위 클래스에서 추상 메소드를 반드시 구현해야 함  

```java
public abstract class Example {
	// 하위 클래스에서 필수로 구현하는 추상 메소드
	public abstract void abstractMethod();

	// 하위 클래스에서 공통으로 사용될 기능을 정의하는 일반 메소드
	public void method() {};
}

public class Ex1 extends Example {
	@Override
	public void abstractMethod() {
		System.out.println("ex1");
	}
}

public class Ex2 extends Example {
	@Override
	public void abstractMethod() {
		System.out.println("ex2");
	}
}

public class Main {
	public static void main(String[] args) {

		// Example 클래스 정보는 메모리 영역에 한 번만 로드되고 (method()는 한 번만 로드됨)
		// Ex1와 Ex2 클래스 정보는 메모리 영역에 각각 로드됨 (abstractMethod()는 구현 클래스 별로 로드됨)
		Example ex1 = new Ex1();
		Example ex2 = new Ex2();
	}
}
```



## Final Class
: [final](./java-modifier.md#final) 키워드로 정의한 클래스는 하위 클래스에서 상속이 불가능함  
: 클래스의 설계를 강제하고 불필요한 변경을 막아 안정성을 보장함  

```java
public final class Example {}
```



## Sealed Class
: Java 17에서 공식 도입된 클래스로 클래스의 상속을 제어하기 위해 사용함  
: 클래스의 상속 여부를 제한해 클래스 계층 구조를 제어함  

```java
public sealed class Alphabet permits A, B {}

public final class A extends Alphabet {}

public final class B extends Alphabet {}

public non-sealed class C extends Alphabet {}
```



## Record Class
: Java 16에서 공식 도입된 클래스로 불변 데이터 객체를 생성하기 위해 사용됨  
: 모든 필드에 final 키워드가 붙어 초기화되면 데이터 재할당이 불가능함  
: 컴파일러에 의해 생성자, getter(), equals(), hashCode(), toString() 메소드가 생성됨  

```java
// 기본 사용 방법
// 레코드 필드는 private final로 선언됨
public record Example(String variable) {}

// 메소드 추가
public record Example(String variable) {
	void method() {
		System.out.println(variable);
	}
}

// 컴팩트 생성자
// 매개변수 선언이 없는 생성자로 필드 초기화, 유효성 검사, 값 정규화 등을 수행함
public record Example(String variable) {
	public Example {
		if(variable == null) {
			throw new IllegalArgumentException();
		}
	}
}
```



## Generic Class
: 타입을 매개변수로 받을 수 있는 [제네릭](./java-generic.md) 기능을 지원하는 클래스

```java
public class Example<T> {
	public T variable;
}
```



## Enum Class
: 관련된 상수 집합을 정의하는 특별한 종류의 클래스  
: enum 키워드를 통해 클래스를 정의하면 java.lang.Enum 클래스를 암시적으로 상속받음  
: 열거형 클래스는 final 클래스이며 상수는 해당 열거형의 유일한 인스턴스(싱글톤)으로 관리됨  
: 정의한 상수들은 public static final 필드이며 선언된 순서로 순서를 가짐  
: 열거형 생성자는 private로 외부에서 new 연산자를 통해 인스턴스를 생성할 수 없음  

```java
public enum Day {

	// 상수 선언
	SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, 
	
	// 상수 클래스 몸체
	SATURDAY {
		public String method() {
			return "";
		}
	};

	// 필드와 메소드 정의 가능
	// 생성자 정의가 가능하나 default나 private로 정의되어야 함

}

// 대략적으로 아래와 같이 구현됨
public class Day {

	public static final Day SUNDAY = new Day("SUNDAY", 0);
	public static final Day MONDAY = new Day("MONDAY", 1);

	private static final Day[] VALUES = { 
		SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
	};

	private Day(String name, int index) {
		super(name, index);
	}

}
```



## Utility Class
: 정적 메소드로 구성되어 공통 기능을 제공하는 클래스  
: 일반적으로 인스턴스화 하지 않으며 클래스 레벨에서 독립적으로 존재  
: 객체가 필요하지 않기 때문에 생성자를 private로 지정해 인스턴스화를 방지함  

**헬퍼 클래스**  
: 유틸리티 클래스처럼 기능을 제공하는 클래스이나 필요에 따라 인스턴스화가 가능함  
: 기능을 제공하면서 상태를 유지할 필요하 있는 경우 인스턴스를 통해 관리함  