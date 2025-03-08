---
order: 3.1
title: Java
description: 자바 클래스와 객체
summary:
keywords:
- java language
- java class
- object
tags:
- java
created_time: 2024-10-09 09:31
modified_time: 2025-03-08 20:09
---

# Java Class
: 클래스란 자바 프로그램을 구성하는 기본 단위  
: 자바 프로그램은 하나 이상 클래스로 구성되고 클래스는 변수와 메소드로 정의됨  
: 정의된 클래스로부터 객체를 생성하고 객체들의 상호작용을 통해 프로그램이 동작함  

- [Class](#class)
- [Object](#object)


구분 | 클래스 | 객체
---|---|---
정의 | 객체를 만들기 위한 설계도 | 클래스의 인스턴스로 메모리에 할당된 실체
생성 시점 | 컴파일 시 | 런타임 시 
메모리 할당 | 클래스 영역에 로드됨 | 힙 메모리에 할당됨
상태 | 변수와 메소드를 정의하고 값을 가지지 않음 | 객체마다 고유한 값을 가짐
존재 | 하나의 클래스 정의만 존재함 | 하나의 클래스를 통해 여러 객체가 생성될 수 있음



## Class
: 클래스는 데이터를 담는 변수와 데이터를 처리하는 메소드로 구성됨  
: 변수와 메소드는 클래스를 구성하는 특별한 요소로 해당 클래스의 특성(상태)을 나타냄  

**구성 요소**
- member
  - [variable](./java-variable.md) = 특성, 상태
  - [method](./java-method.md) = 행동, 행위
  - [member class](./java-class-type.md#inner-class)
- [block statement](#block-statement)
- [constructor](#constructor)

```java
public class Example {

    // member variable
    private String variable;

    // block statement;
    {
        this.variable = "";
    }

    // constructor
    public Example() {}

    // member method
    public String getVariable() {
        return this.variable;
    }

    // member class 
    private class InnerClass {}

}
```



### class declaration 
: class 키워드를 사용해 클래스를 선언하고 클래스 이름은 명명 규칙을 기준으로 작명함  
: [접근 제어자](./java-modifier.md)를 통해 다른 클래스나 패키지에서 접근 여부와 범위를 지정함  
: 접근 제어자 지정은 필수가 아니며 지정하지 않을 경우 자동으로 default로 지정됨  

**명명 규칙**
- 클래스 이름은 대문자로 시작하고 여러 단어일 경우 각 단어의 첫 글자를 대문자로 작성
- 일반적으로 명사를 사용하며 숫자, 언더스코어, 달러 기호는 사용 가능하나 지양
- 키워드와 예약어는 클래스 이름으로 사용 불가능함

```java
// 하나의 파일에는 하나의 public 클래스만 존재하며 파일 명과 public 클래스 명은 일치해야 함
// 파일 내에 public 클래스가 없다면 파일 명은 임의 지정이 가능함
// 자바 컴파일러는 클래스 단위로 바이트 코드를 생성함

// 최상위 클래스의 접근 제어자는 public과 (default)만 가능함
public class Example {

    // protected와 private는 내부 클래스만 적용 가능함
    public class PublicExample {}
    protected class ProtectedExample {}
    private class PrivateExample {}

}

// default class
class DefaultExample {}
```



### block statement
= initializer block  
: 객체 생성시 실행되는 코드 영역으로 초기화를 목적으로 사용됨  
: 초기화 블록문에 static 키워드가 붙으면 클래스가 로드될 때 한 번만 실행됨  
: 블록은 특정 코드 영역을 의미하며 다양한 블록 문이 존재하나 여기에서는 초기화에 한정함  

```java
public class Example {

    // 정적 초기화 블록, 클래스 초기화 블록
    // 클래스가 로드되는 시점에 한 번만 실행되는 영역으로 정적 변수 초기화나 초기 설정을 위해 사용
    static int VARIABLE;
    static {
        Example.VARIABLE = 0;
    }

    // 인스턴스 초기화 블록
    // 객체가 생성되는 과정에서 생성자가 실행되기 전에 실행되는 영역
    // 멤버 변수 초기화나 생성자 호출 전 실행되어야 할 기능을 정의하기 위해 사용
    int variable;
    {
        this.variable = 0;
    }

}
```



### constructor 
: 클래스의 인스턴스 생성시 단 한 번만 호출되는 특수한 메소드  
: 생성자를 통해 객체의 필드를 초기화하여 객체의 초기 상태를 설정할 수 있음  
: 생성자 이름은 클래스 이름과 동일해야 하며 반환 타입을 명시하지 않음  
: 접근 제어자를 통해 생성자 호출 범위를 지정할 수 있으나 변경자는 지정 불가능함  

**종류**
- 기본 생성자
- 사용자 정의 생성자 (명시적 생성자)

```java
public class Example {

    private int num;
    private String str;

    // 기본 생성자
    // 매개 변수가 없으며 구현부가 비어있는 생성자
    // 하나 이상 생성자가 필수로 존재해야하므로 생성자를 정의하지 않으면 컴파일러에 의해 자동으로 추가됨
    // 사용자가 생성자를 정의하면 기본 생성자는 생성되지 않음
    public Example() {}

    // 사용자 정의 생성자 (명시적 생성자)
    // 매개 변수가 있으며 구현부를 통해 특정 로직을 실행하거나 메소드를 호출함
    // 객체 생성시 필수 데이터를 주입하도록 제약을 걸 수 있음
    public Example(int num) {
        // this는 현재 객체를 가르키는 키워드
        // 생성자에서 다른 생성자를 호출하는 방식을 생성자 체이닝이라고 함
        this(num, "default");
    }

    // 생성자 오버로딩 
    // 오버로딩을 통해 여러 생성자를 정의해 다양한 방법으로 객체를 초기화할 수 있음
    public Example(int num, String str) {
        // 매개 변수와 인스턴스 변수 명이 같은 경우 구별을 위해 this 키워드 사용
        this.num = num;
        this.str = str;
    }

    public static void main(String[] args) {
        
        // JVM이 new 키워드를 만나면 힙 영역에 메모리를 할당하고
        // 적합한 생성자를 호출해 객체를 초기화하고 객체의 참조값을 반환해 변수에 저장함
        Example ex = new Example(0);

    }

}
```



## Object
: 객체는 클래스를 기반으로 생성된 실체(instance)로 객체는 해당 클래스에 속함  
: 하나의 클래스로부터 여러 객체가 생성될 수 있으며 각 객체는 독립적인 상태(데이터)를 갖음  
: 객체는 메모리에 고유한 주소를 가지며 더 이상 참조되지 않으면 [GC](../jvm-gc.md)에 의해 자동으로 제거됨  


```
(구조)                  (실체)
클래스 ==> 인스턴스화 ==> 객체 
```

**인스턴스화**  
: 클래스로부터 실제 객체를 생성하는 과정  
: 특정 클래스로부터 만들어진 객체를 인스턴스라고 함  
: 메모리 차원에서 인스턴스는 인스턴스 변수들만 저장하고 클래스 변수나 메소드는 클래스를 참조해 사용함  


```java
public class Example {

    private String variable;

    public Example(String variable) {
        this.variable = variable;
    }

    public static void main(String[] args) {

        Example ex1 = new Example("ex1");
        Example ex2 = new Example("ex2");

        // 객체의 참조 동일성 비교
        System.out.println(ex1 == ex2);

        // 객체의 동증성 비교
        System.out.println(ex1.equals(ex2));

    }

}
```

**new 연산자**  
1. 힙 메모리에 객체를 생성하기 위해 JVM이 필요한 크기의 메모리를 할당
2. 할당된 메모리 영역의 비트를 0으로 설정해 클래스 필드가 기본값으로 초기화됨
3. 필드에 초기값이 명시되어있으면 이를 할당하고 초기화 블록이 있으면 실행함
3. 클래스의 생성자를 호출하고 초기화 구문이 있으면 필드를 다시 초기화함
4. 생성자 실행이 종료되면 객체의 메모리 주소가 반환되고 참조 변수에 저장됨


**JVM 메모리 영역**  

영역 | 설명 
---|---
Stack Memory | 메소드 호출 정보 (객체 참조 변수, 지역 변수, 매개 변수)
Heap Memory  | 객체 (객체의 데이터)
Metaspace    | 클래스 메타데이터, 메소드 메타데이터, 클래스 변수


**객체 생성 패턴과 기법들**
- 정적 팩토리 메소드
- 빌더 패턴
- 객체 클론
- 리플렉션