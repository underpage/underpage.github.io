---
order: 1
title: Java
description: 자바 빈즈
summary:
keywords:
- java api
- java se
- java beans
tags:
- java
created_time: 2024-10-08 07:29
modified_time: 2025-03-08 19:40
---

# Java Beans
: Java Beans API에 따라 만들어진 객체를 의미함  
: 초기 자바 빈즈는 GUI 프로그램을 위해 재사용 가능한 그래픽 컴포넌트를 만들기 위해 도입  
: 시간이 지나며 자바 빈즈는 재사용 가능한 컴포넌트 개념으로 확장되어 다양한 환경에서 사용됨  

**Java Beans API**  
: 재사용 가능한 컴포넌트를 만들기 위한 표준 스펙  

- [Java Beans Spec](#java-beans-spec)
- [Java Beans Type](#java-beans-type) 


**POJO** (Plain Old Java Object)  
: 특정 규약이나 프레임워크에 속하지 않는 평범한 자바 객체  
: 자바 빈즈는 POJO에 포함됨  



## Java Beans Spec

**implements**  
: Serializable 인터페이스를 구현해 객체 직렬화를 지원해야 함  
: 필수는 아니며 권장 사항임  

**property**  
: private 접근자로 선언된 필드로 구성되며 getter/setter 메소드를 통해 접근 (캡슐화)  
: transient 키워드를 통해 직렬화에서 제외될 속성을 지정할 수 있음 (보안)  

**constructor**  
: 기본 생성자는 필수로 있어야 함  
: 기본 생성자를 통해 다양한 환경에서 자동으로 인스턴스화가 가능함  

**method**
: public 접근 제어자로 정의된 메소드로 다른 컴포넌트나 환경에서 호출되는 인터페이스  
: boolean 타입이 아닌 경우 get/set으로 시작하고 boolean 타입인 경우 get/set 또는 is로 시작함   
: 필드의 이름은 메소드 이름을 통해 추론되어야 함

**event method**  
: 이벤트 메소드 경우 이벤트 리스너 패턴을 사용함  
: 이벤트 메소드는 add/remove로 시작해서 Listener로 끝나야 함  

ex.
```java
import java.io.Serializable;

public class User implements Serializable {

    private String name;
    private int age;

    public User() {}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "User [name=" + name + ", age=" + age + "]";
    }

}
```



## Java Beans Type

- 그래픽 컴포넌트 : 가시적 (AWT, Swing, JavaFX)
- 기능성 컴포넌트 : 비가시적
  - 데이터 빈즈 : 일반적으로 불변적
  - 서비스 빈즈 : 일반적으로 가변적

```
여기서 컴포넌트란 Java Bean API를 구현하면서 특정 기능을 수행하고 독립적으로 동작하는 객체를 의미함
```



### Graphic Component
: GUI를 구성하는 컴포넌트로 부품과 컨테이너로 분류됨  
: 그래픽 컴포넌트는 사용자 액션에 따라 이벤트를 발생하고 이를 처리하는 기능을 제공함  

컴포넌트 | 설명
---|---
부품 컴포넌트 | 버튼, 텍스트 필드 등 화면을 구성하는 시각적 요소
컨테이너 컴포넌트 | 패널, 프레임 등으로 부품 컴포넌트를 포함하고 배치하는 특수한 컴포넌트



### Functional Component
: GUI이 없는 자바 빈즈로 데이터 처리나 비즈니스 로직을 담당함  
: 필요에 따라 이벤트 메소드를 가질 수 있음  



#### Data Bean
: 계층간 데이터 전달을 위한 빈즈로 구조화된 데이터를 교환하거나 데이터를 은닉하는 기능을 제공함  
: read-write, read-only, write-only  

컴포넌트 | 설명
---|---
VO (Value Object) | 데이터를 담고 있는 불변 객체
DTO (Data Transfer Object) | 계층 간 데이터를 전송을 위한 객체



#### Service Bean  
: 공통 기능을 모듈화한 빈즈로 특정 기능을 수행함  

- 비즈니스 로직 빈즈
- 유틸리티 빈즈
- 보안 서비스 빈즈
- 로깅 서비스 빈즈