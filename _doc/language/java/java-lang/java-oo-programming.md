---
order: 4
title: Java
description: 자바 객체 지향 프로그래밍
summary:
keywords:
- java language
- java oop
- inheritance
- polymorphism
- interface
- abstract class
tags:
- java
created_time: 2024-10-11 08:39
modified_time: 2025-03-26 22:20
---

# Java OOP Programming
: 객체 지향 프로그래밍에서 객체는 독립적으로 존재하고 특정 상태를 유지하는 실체  
: 자바 프로그램은 객체 간 메소드 호출을 통한 의사 소통이며 모든 객체는 특정 타입에 속함  
: 타입은 클래스나 인터페이스로 정의되며 클래스는 상태와 행동으로 구성됨  

```
시스템 구성 = 객체들의 연결

객체 = 클래스의 인스턴스 (실체)
- 외부적 관점 : 객체를 인식하는 방법 (타입)
- 내부적 관점 : 객체의 동작 구현

클래스 = 객체 설계도
- 상태 (속성)
- 행동 (기능)
```

**클래스 설계**
- 높은 응집도 : 관련된 기능들은 클래스로 구성
- 낮은 결합도 : 클래스 간 의존성을 최소화하여 유지보수를 쉽게 함
- 단일 책임 원칙 준수 : 클래스는 단일 책임만 가지도록 설계
- 불변 객체 설계 : 생성된 객체의 상태가 변경되지 않도록 설계해 안정성 보장


**개념**
- [캡슐화](#encapsulation)
- [은닉화](#hiding)
- [상속](#inheritance)
- [다형성](#polymorphism)
- [추상화](#abstraction)
  - [추상 클래스](#abstract-class)
  - [인터페이스](#interface)



## Encapsulation
: 상태와 행동을 하나의 단위로 묶어 관리하는 것  
: 하나의 클래스에 데이터와 데이터를 처리하는 메소드를 포함하여 모듈화함  
: 캡슐화를 통해 코드를 독립적인 단위로 구조화하여 재사용, 확장성, 유지보수성이 높아짐  

```java
public class Example {

    // 상태
    String variable;

    // 메소드를 통해 상태에 접근
    String getVariable() {
        return this.variable;
    }

    // 메소드를 통해 상태를 변경
    void setVariable(String variable) {
        this.variable = variable;
    }

}
```



## Hiding
: [접근 제어자](./java-modifier.md)를 통해 객체의 상태를 숨기고 모든 상호작용은 메소드를 통해 수행하는 것  
: 객체는 자신의 데이터를 자신이 관리하고 외부에서 직접 접근하지 못하게 제한함  
: 데이터를 은폐해 객체의 상태가 예기치 않은 방식으로 변경되는 것을 방지함  

**데이터 할당**  
- 데이터 직접 할당 = 변수에 할당
- 데이터 간접 할당 = 메소드를 통해 변수에 할당

```java
public class Example {

    // 상태를 보호해 외부의 접근을 막음
    private String variable;

    // 공개된 메소드를 통해 상태에 간접적으로 접근함
    public String getVariable() {
        return this.variable;
    }

    // 공개된 메소드를 통해 상태를 간접적으로 수정함
    public void setVariable(String variable) {
        this.variable = variable;
    }

}
```



## Inheritance
: 다른 클래스를 상속하여 그 클래스의 속성과 기능을 물려받아 중복을 줄이는 설계 방법  
: 상속을 통해 기존 클래스를 재사용하고 객체가 분류 체계가 생기며 계층 구조가 만들어짐  
: 상속 관계인 클래스는 부모-자식 관계를 형성하고 자식 클래스는 상속받은 기능을 확장할 수 있음  
: 상속은 클래스 간 강한 결합도를 만들어 상위 클래스를 변경하면 하위 클래스에 영향을 미칠 수 있음   
: 자바의 모든 클래스는 자동으로 Object 클래스를 상속하며 이외에는 단일 상속만 지원함  

**용어**
```
슈퍼 클래스 = 부모 클래스 = 상위 클래스 = 기반 클래스
서브 클래스 = 자식 클래스 = 하위 클래스 = 파생/확장 클래스

- 부모 클래스 <= 직접 상속 : 바로 위의 상위 클래스 상속
- 자식 클래스 <= 간접 상속 : 상위 클래스를 통해 상속 계층에서 더 상위 클래스를 상속
```


**상속 관계** 
: 상속 관계는 is-a 관계로 클래스 간 상-하위 관계를 이룸  

```java
public class Example {

    // 상속될 데이터
    protected String variable;

    // 생성자는 상속되지 않음
    public Example() {}
    public Example(String variable) {
        this.variable = variable;
    }

    // private 메소드는 상속 불가능
    // 하위 클래스에서 동일한 이름의 메소드 정의가 가능하나 별개의 메소드로 오버라이딩이 아님
    // private void method() {}

    // 상속할 메소드
    // 하위 클래스에서 메소드를 오버라이딩(재정의) 할 수 있음
    public void method() {}

}

public class Ex extends Example {

    public Ex() {
        // 부모 클래스의 생성자를 호출해야 함 
        // 부모 클래스에 기본 생성자만 있다면 명시하지 않아도 컴파일러에 의해 자동으로 호출됨
        // 만약 부모 클래스에 매개변수만 있는 생성자만 존재하면 호출을 명시해야 함
        super();
    }

    public Ex(String variable) {
        super(variable);
    }

    @Override
    public void method() {}

}
```


**포함 관계**  
: 객체 간의 관계를 정의하는 설계 방법  
: 포함 관계는 has-a 관계로 객체가 다른 객체를 부품처럼 소유한 관계  
: 상속을 통한 수직적 계층 구조가 아닌 객체 간의 수평적 관계를 형성함

- 구성 관계 : 강한 포함 관계를 형성하며 생명주기가 종속됨 -- 하나의 객체가 다른 객체의 부품
- 집합 관계 : 약한 포함 관계를 형성하며 생명주기가 독립적임 -- 하나의 객체가 다른 객체를 소유

```java
// 수직적 관계 (상속 관계)
public class Ex extends Example {

    // 수평적 관계 (포함 관계)
    private Object obj1;
    private final Object obj2;

    public Ex() {}
    public Ex(String variable) {
        super(variable);
    }

    public Ex(String variable, Object obj) {
        super(variable);
        
        // 약한 포함 관계 : 객체가 외부에서 생성되어 주입됨
        this.obj1 = obj;

        // 강한 포함 관계 : 객체가 내부에서 직접 생성됨
        this.obj2 = new Object("Composition");
    }

    @Override
    public void method() {}

    public static void main(String[] args) {
        Example ex = new Ex("value", new Object("Aggregation"));
    }

}
```


**Delegation**  
: 상속 대신 델리게이션 패턴을 사용할 수 있음  
: 한 객체가 다른 객체에게 특정 작업이나 책임을 위임하는 패턴으로 상속보다 유연하며 결합도가 낮음  

```java
public class Delegate {
    public void print(String message) {
        System.out.println(message);
    }
}

public class Example {

    private Delegate delegate;

    public Example() {
        this.delegate = new Delegate();
    }

    public void print(String message) {
        this.delegate.print(message);
    }

}
```



## Polymorphism
: 하나의 변수나 메소드가 여러 형태로 동작할 수 있는 개념  
: 참조 변수가 다른 타입의 객체를 참조하고 메소드가 상황에 따라 다르게 동작함  
: 클래스 상속, 추상 클래스, 인터페이스를 통해 다형성을 구현을 지원함  

**참조 다형성**  
: 하나의 참조 변수가 여러 타입의 객체를 참조함

타입 | 설명
---|---
참조 타입 | 변수가 선언된 타입으로 컴파일 시점에 결정됨
실제 타입 | 변수가 실제 참조하는 객체의 타입으로 런타임에 결정됨


**메소드 다형성**  

종류 | 설명
---|---
오버로딩 | 같은 이름의 메소드를 시그니처를 다르게하여 여러 메소드를 정의함 (컴파일 시점 다형성)
오버라이딩 | 하위 클래스가 상위 클래스의 메소드를 재정의함 (런타임 시점 다형성)


```java
public class Example {

    protected String variable;

    public Example() {}
    public Example(String variable) {
        this.variable = variable;
    }

    protected void method () {}

}

public class Ex extends Example {

    // 오버로딩
    // 메소드 이름은 같지만 매개변수를 다르게 정의한 메소드
    // 기능은 같지만 매개변수가 다르므로 처리되는 데이터가 다름
    public Ex() {
        // 부모 클래스의 기본 생성자를 호출
        super();
    }

    public Ex(String variable) {
        if(variable == null) {
            // 현재 클래스의 기본 생성자를 호출
            this();
        } else {
            super(variable);
        }
    }

    // 오버라이딩
    // 부모 클래스의 메소드를 재정의하여 다른 기능을 수행함
    // 메소드 시그니처가 동일해야하며 만약 달라지면 오버로딩으로 동작함
    // 오버라이딩 메소드의 접근 제어자는 부모 클래스 메소드와 같거나 넓은 범위여야 함
    @Override
    public void method() {}

    // 부모 클래스의 메소드를 호출하려면 super 키워드를 사용함
    public void superMethod() {
        super.method();
    }


    public static void main(String[] args) {
        
        // 참조 다형성
        // 상위 클래스 타입의 참조 변수가 하위 클래스 객체를 참조함
        Example ex = new Ex();
        
        // 컴파일시에는 Example 클래스의 메소드를 참조하지만
        // 런타임에는 실제 객체인 Ex 클래스의 메소드가 호출됨
        ex.method();

    }

}
```


**타입 변환**  
: 참조 변수의 타입을 다른 타입으로 변환하는 과정  

종류 | 설명
---|---
업캐스팅 | 하위 타입에서 상위 타입으로 변환하며 자동으로 수행됨
다운캐스팅 | 상위 타입에서 하위 타입으로 변환하며 캐스팅 명시가 필요함

```java
// 업캐스팅
Example upcasting = new Ex();

// 다운캐스팅
Example ex = new Ex();
Ex downcasting = (Ex) ex;
```



## Abstraction
: 추상화란 핵심적인 정보만을 드러내고 불필요한 세부사항은 숨기는 프로세스  
: OOP에서 추상화란 객체가 나타내려는 특성과 행위를 추상 클래스나 인터페이스로 모델링하는 것  
: 추상 클래스는 하위 클래스의 공통 특성을 나타내며 인터페이스는 클래스의 행동을 규정함  
: 추상 클래스와 인터페이스는 직접 구현되지 않으며 하위 클래스를 통해 구현됨  

**설계 개념**
- 추상적 설계 = 추상 클래스, 인터페이스
- 구체적 설계 = 일반 클래스, 실체 클래스


**상속 및 구현**  

종류 | 키워드 | 설명
---|---|---
class     | extends class | 클래스가 다른 클래스를 상속함
class     | extends abstract  | 클래스가 다른 추상 클래스를 상속함
class     | implements interface | 클래스가 다른 인터페이스를 구현함
interface | extends interface | 인터페이스가 다른 인터페이스를 상속함



### abstract class
: [abstract](./java-modifier.md#abstract) 키워드를 통해 정의된 추상 클래스  
: 추상 클래스는 객체를 생성할 수 없으며 다형성의 기반이 되는 타입 역할을 함  

```java
public abstract class AbstractExample {

    protected String variable;

    public AbstractExample() {}
    public AbstractExample(String variable) {
        this.variable = variable;
    }

    // 반드시 구현해야 하는 추상 메소드
    public abstract void abstractMethod();
    
    // 기능이 구현된 일반 메소드
    public void method() {}

}

public class Example extends AbstractExample {

    public Example() {}
    public Example(String variable) {
        super(variable);
    }

    @Override
    public void abstractMethod() {
        System.out.println(super.variable);
    }

    public static void main(String[] args) {

        // 다형성
        AbstractExample ex1 = new Example("ex1");
        AbstractExample ex2 = new Example("ex2");
        
    }

}
```



### interface
: 서로 다른 클래스들이 공통으로 사용할 명세를 정의하는 설계도  
: 인터페이스는 특정 동작을 수행하기 위한 메소드의 시그니처를 제공하며 클래스를 통해 구현됨  
: 인터페이스를 통해 설계와 구현을 분리하고 관련없는 클래스들이 관계를 맺게 됨  
: 이전에는 메소드 정의만 제공했으나 Java 8 이후 부터는 구현 메소드를 제공함  

**종류**
- Marker Interface : 구현할 메소드가 없는 인터페이스 (ex. java.Serializable)
- Functional Interface : 추상 메소드가 하나만 존재하는 인터페이스 (ex. java.Runnable)


```java
public interface InterfaceExample {

    // 인터페이스에는 상수만 정의 가능하며 명시하지 않아도 public static final 상태
    String VARIABLE = "";

    // static 메소드
    public static void staticMethod() {
        System.out.println("인터페이스에서 직접 호출 가능함");
    }

    // private 메소드
    private void privateMethod() {
        System.out.println("인터페이스 내부에서만 사용 가능함");
    }

    // abstract 메소드
    public abstract void abstractMethod();

    // default 메소드
    public default void defaultMethod() {
        System.out.println("클래스에서 선택적으로 오버라이드함");
    }

}

// 인터페이스는 다중 구현이 가능함 = 객체는 여러 타입에 속할 수 있음
public class Example implements Serializable, InterfaceExample {

    @Override
    public void abstractMethod() {
        System.out.println("추상 메소드 구현");
    }

}

// 인터페이스 구현과 클래스 상속이 가능함
public class Ex extends Example implements Serializable {

}
```


**interface based programming**  
: 인터페이스를 통해 객체를 생성하고 필요에 따라 구현체를 변경하거나 교체하는 설계 원칙  
: 구현과 인터페이스를 분리해 코드의 재사용성과 확장성을 높이고 다형성을 극대화함  

```java
public interface InterfaceExample {
    public abstract void abstractMethod();
}

public class Ex extends InterfaceExample {

    @Override
    public void abstractMethod() {
        System.out.println("추상 메소드 구현");
    }

}

Example ex = new Ex();
```