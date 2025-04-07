---
order: 2.2
title: Java
description: 자바 타입 변환
summary:
keywords:
- java
- java data type
- type conversion
- casting
tags:
- java
created_time: 2025-01-19 20:07
modified_time: 2025-03-26 22:18
---

# Java Type Conversion
: 변수나 데이터의 타입을 다른 타입으로 변환하는 메커니즘  
: 타입 변환은 자동(묵시적) 타입 변환과 강제(명시적) 타입 변환으로 분류됨  
: 기본 타입과 래퍼 클래스간 변환을 지원하는 오토박싱 기능을 제공함  

**분류**
- [묵시적 타입 변환](#implicit-conversion)
- [명시적 타입 변환](#explicit-conversion)

**기능**
- [박싱 변환](#boxing-conversion)
- [레퍼런스 타입 캐스팅](#reference-type-casting)



## Implicit Conversion
= Promotion  
: 하위 타입에서 상위 타입으로 타입이 변환됨  
: 데이터 손실이 없으며 타입 변환이 컴파일러에 의해 자동으로 수행됨  

> byte > short > char > int > long > float > double

boolean 경우 값이 숫자로 취급되지 않으므로 타입 변환이 불가능함


```java
// 묵시적 형변환
byte b = 0;
short s = b;
int i = b;
```



## Explicit Conversion
= Demotion  
: 상위 타입에서 하위 타입으로 타입을 강제 변환함  
: 캐스터 연산자를 통해 강제로 타입을 변환하므로 데이터 손실을 주의해야 함  

```java
// 데이터가 손실됨
float f = 3.14f;
int i = (int) f;
(i == 3) == true

// char 경우 범위가 달라 주의해야 함
short s = -1;
char c = (char) s;
(c == 65535) == true
```



## Boxing Conversion
: Java 5부터 기본 타입과 래퍼 클래스 간 변환을 위해 도입된 기능  
: 오토박싱과 오토 언박싱으로 분류되며 컴파일러에 의해 자동으로 수행됨  

**Autoboxing**  
: 기본 타입을 래퍼 클래스 객체로 변환함  

```java
int i = 10;
Integer box = i; // Integer.valueOf(i)로 변환됨
```


**Unboxing**  
: 래퍼 클래스의 객체를 기본 타입으로 변환함  
: 객체가 null인 경우 NullPointerException이 발생함  

```java
Integer box = 10;
int i = box; // box.intValue()로 변환됨
```



### AutoBoxCache
: -128 ~ 127 범위에 있는 Integer 객체는 캐시됨  
: JVM 매개변수를 통해 캐시 범위를 조정할 수 있음 (-XX:AutoBoxCacheMax)  

```java
Integer x = 127;
Integer y = 127;

(x == y) == true
```



## Reference Type Casting
: 상속 관계에 있는 클래스 간 타입을 변환하는 과정으로 업캐스팅과 다운캐스팅으로 분류됨  
: 타입 변환이 불가능한데 변환을 시도하면 예외가 발생하므로 instanceof 연산자를 통해 확인이 필요함  

**Upcasting**   
: 하위 클래스 타입을 상위 클래스 타입으로 변환함  
: 컴파일러에 의해 자동으로 수행되어 명시적 캐스팅이 필요하지 않음  

```java
Parent parent = new Child();
```

**Downcasting**  
: 상위 클래스 타입을 하위 클래스 타입으로 변환함  
: 캐스터 연산자를 통해 명시적 변환이 필요함  

```java
Parent parent = new Child();
Child child = null;

if(parent instanceof Child) {
    child = (Child) parent;
}
```