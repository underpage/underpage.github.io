---
order: 0.47
title: java
description: 자바 어노테이션
summary:
keywords:
- java
- java annotation
- 자바 어노테이션
tags:
- language
- java
created_time: 2024-10-14 05:03
modified_time: 2024-10-22 10:40
---

# Java Annotation
= 메타 데이터  
: Java 5 부터 지원  
: 소스 코드에 메타데이터를 부여해 추가 정보 제공  

**사용 범위**  
- 패키지
- 클래스
- 인터페이스
- 메소드
- 필드
- 지역 변수
- 매개 변수

**분류**
- Built-in Annotation
  - General Annotation
  - Meta Annotation
- Custom Annotation 



## General Annotation

어노테이션 | 설명
---|---
@SuppressWarnings     | 컴파일러 경고 무시 (deprecation, unchecked)
@Deprecated           | 지원 중단 명시 
@Override             | 메소드 오버라이딩 명시 
@SafeVarargs          | 가변인자 사용시 명시 (제네릭)
@FunctionalInterface  | 인터페이스를 기능적 인터페이스로 선언 (람다 표현식) 
@Native               | 네이티브 코드에서 참조될 수 있는 상수임을 명시



## Meta Annotation
: 커스텀 어노테이션을 위한 어노테이션  

어노테이션 | 설명
---|---
@Documented  | 어노테이션을 javadoc에 포함
@Inherited   | 어노테이션을 하위 클래스에 상속
@Target      | 어노테이션이 적용될 위치 명시 
@Retention   | 어노테이션 라이프사이클 명시 
@Repeatable  | 어노테이션 반복 정의 명시


**@Target**
- ElementType.TYPE 
- ElementType.FIELD
- ElementType.METHOD
- ElementType.PARAMETER
- ElementType.CONSTRUCTOR

https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/lang/annotation/ElementType.html


**@Retention**
- RetentionPolicy.SOURCE : 어노테이션 소스 코드에서만 사용되고 컴파일시 제거
- RetentionPolicy.CLASS : 어노테이션이 컴파일되지만 런타임에 접근 불가능
- RetentionPolicy.RUNTIME : 어노테이션이 런타임에 유지되어 리플렉션을 통해 접근 가능



## Custom Annotation 

```java
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface MyAnnotation {
    String key() default "";
}

public class AnnotationTest {
    @MyAnnotation(key="value")
    private String str;
}
```