---
order: 3.5
title: Java
description: 자바 접근 제어자
summary:
keywords:
- java language
- java modifier
- public
- private
- static
- final
- abstract
tags:
- java
created_time: 2024-10-14 18:52
modified_time: 2025-03-08 20:10
---

# Java Modifier
: 클래스, 메소드, 변수의 선언부에 사용해 부가적인 의미를 부여함  
: 접근 수준을 제어하는 접근 제어자와 동작이나 특성을 제어하는 변경자로 분류됨  

- [Access Modifier](#access-modifier) (access level)
- [Non-access Modifier](#non-access-modifier) (behavior)



## Access Modifier
= 접근 제어자, 접근 제한자, 수식자  
: 클래스와 클래스의 멤버에 접근 수준을 지정해 사용 범위를 제어하고 정보 은닉을 제공함  
: 변수, 메소드, 클래스에는 하나의 접근 제어자만 지정하며 생략할 경우 default로 취급됨  
: 기본으로 접근 수준을 높이고 필요한 경우 메소드를 통해 접근을 제공함  

키워드 | 설명
---|---
private   | 해당 클래스 내에서만 접근 가능
protected | 같은 패키지 또는 상속 관계인 하위 클래스만 접근 가능
(default) | 같은 패키지 내에서만 접근 가능
public    | 프로젝트 기준으로 모든 클래스에서 접근 가능


```java
// 최상위 클래스는 public과 (default)만 사용 가능
// 클래스의 멤버는 접근을 제어하지만 클래스 자체는 가시성을 제공해야함
public class Example {
    public class PublicClass {}
    protected class ProtectedClass {}
    private class PrivateClass {}
}

// (default) 경우 키워드를 명시하지 않음
class DefaultClass {
    String variable;
    void method() {}
}
```



## Non-access Modifier
= 비접근 제어자, 변경자, 수정자  
: 변수, 메소드, 클래스의 동작 방식이나 특성을 제어함  
: 일부 키워드는 조합해 사용이 가능하며 일부 키워드는 함께 사용이 불가능함  

키워드 | 사용 범위
---|---
static       | 초기화 블록, 변수, 메소드, 내부 클래스
final        | 변수, 메소드, 클래스, 인터페이스
abstract     | 메소드, 클래스, 인터페이스
strictfp     | 메소드, 클래스
synchronized | 블록, 메소드
native       | 메소드
transient    | 변수
volatile     | 변수

=> strictfp 경우 Java 17부터 기본 동작으로 제공되어 명시할 필요가 없음  



### static
: static 키워드가 붙으면 **클래스 레벨**에서 관리되어 인스턴스 생성과 관계없이 하나만 존재함  
: 프로그램 실행시 클래스가 처음 로드될 때 static이 붙은 멤버가 로드되고 이후에 인스턴스가 생성됨    
: 생성 시점이 다르므로 정적 메소드에서 인스턴스 변수를 직접 참조할 수 없음  
: 모든 인스턴스가 공유하는 멤버를 정의하기 위해 사용함  

```java
// 최상위 클래스는 static 키워드 사용 불가
public class Example {
    
    static String VARIABLE;
    static {
        VARIABLE = "";
    }

    // 인스턴스 생성없이 호출 가능한 클래스 메소드
    // 객체의 상태를 관리하지 않으며 동일한 기능을 제공하기 위해 사용
    static void method() {
        System.out.println(Example.VARIABLE);
    }

    // 외부 클래스의 인스턴스와 독립적으로 동작하는 정적 내부 클래스
    // 일반적으로 내부 클래스는 외부 클래스와 강한 연결성을 가지는데 
    // 정적 내부 클래스는 외부 클래스의 멤버에 직접 접근하지 못함
    static class InnerClass {}
}
```



### final
: 요소가 변경될 수 없음을 나타내며 불변성을 유지하기 위해 사용됨  
: final 변수나 메소드는 JVM이 더 효율적으로 처리하여 성능 최적화에 도움을 줄 수 있음  
: final 변수는 고정된 값이므로 JVM은 이를 캐싱하거나 레지스터에 할당해 메모리 접근을 최적화함  

```java
// final 클래스는 상속이 불가능해 하위 클래스를 만들 수 없으나 확장을 막아 안정성이 향상됨  
public final class Example {
    
    // final 변수는 메모리 주소를 고정해 재할당이 불가능하므로 데이터를 불변으로 만듦  
    // final 변수는 선언과 동시에 초기화하거나 생성자에 의해 한 번만 초기화가 가능함
    final String variable = "";
    
    // final 메소드는 오버라이딩이 불가능하나 안정성이 향상됨 (객체의 동작을 보장함)
    final void getVariable () {
        System.out.println(this.variable);
    }

    // final 매개 변수도 메소드 내에서 재할당이 불가능함
    void setVariable(final String vriable) {}

    public static void main([] args) {
        // final 참조 변수는 참조를 고정하여 다른 객체 참조가 불가능함
        final Example ex = new Example();
        
        // 불가능
        // ex = new Example();
    }

}
```


**effectively final variable**  
: final 키워드를 사용하지 않았지만 한 번 초기화된 후 변경이 불가능 한 변수  
: 익명 클래스나 람다식에서 사용하는 지역 변수에 적용됨  



### abstract
: 미완성된 구현를 표현하며 완전한 구현을 제공하지 않음  
: abstract로 정의된 클래스를 추상 클래스라 하며 추상 클래스는 상속을 통해 구체적인 구현을 강제함  
: 하위 클래스가 같은 추상 클래스를 상속한다는 것은 같은 타입에 속한다는 것을 의미함  
: 추상 클래스는 하위 클래스들의 공통 특성과 기능을 제공하기 위해 사용됨  

```java
// abstract 클래스는 미완성 상태로 직접 객체 생성이 불가능함
// 객체를 생성할 수 없으므로 static이나 final 키워드와 동시에 선언할 수 없음
abstract class AbstractExample {

    String variable;

    // 추상 클래스도 생성자를 가질 수 있으나 호출은 하위 클래스에서 함
    AbstractExample(String variable) {
        this.variable = variable;
    }

    // abstract 메소드는 메소드의 시그니처만 정의하고 구현부가 없는 메소드 
    // abstract 메소드가 존재하는 클래스는 무조건 추상 클래스로 정의되어야 함
    // abstract 메소드는 하위 클래스에서 반드시 구현되어야 함 (private, static 선언 불가)
    abstract void setVariable(String variable);

    // 일반 메소드
    void getVariable() {
        System.out.println(this.variable);
    }
    
}

public class Example extends AbstractExample {
    @Override
    void setVariable(String variable) {
        this.variable = variable;
    }
}
```



### synchronized
: 멀티 스레드 환경에서 데이터 일관성을 보장함  
: 한 번에 하나의 스레드만 synchronized 블록이나 메소드에 접근해 데이터의 일관성을 보장함  
: synchronized 키워드는 모니터락을 기반으로 동작함  

**모니터락**  
: 자바 객체가 가지고 있는 잠금 메커니즘  
: 모니터 락을 획득한 스레드만 접근 가능하고 실행이 끝나면 모니터 락을 해제함  

```java
public class Example {

    // 동기화할 객체
    Object lock = new Object(); 

    void bock() {
        // 특정 객체에 대해 동기화 
        // 블록 단위로 세밀한 제어 가능
        synchronized(lock) {}

        // 메소드를 호출한 인스턴스에 대해 동기화
        synchronized(this) {}
    }

    // 메소드 전체에 동기화
    // 메소드를 호출하는 인스턴스에 대해 동기화
    synchronized void synchronizedMethod() {}

}
```



### native
: 메소드가 자바가 아닌 다른 언어로 구현되었음을 명시함  
: native 메소드는 구현부는 없고 선언만 하며 호출시 [JNI](../java-api-se/jni.md)를 통해 네이티브 코드와 연결됨  
: 주로 하드웨어 접근이나 성능 향상 등이 필요한 경우 사용됨  

```java
public class Example {
    
    // 네이티브 라이브러리 로드
    static {
        System.loadLibrary("Native");
    }

    // 네이티브 메소드 선언
    native void nativeMethod();

}
```



### volatile
: 멀티 스레드 환경에서 변수의 가시성을 보장함  
: volatile 변수는 변수를 메인 메모리에 저장해 여러 스레드가 동일한 변수를 참조하게 함  
: 멀티 스레드 환경에서 메인 메모리를 통해 동일한 변수를 참조해 데이터 불일치 문제를 해결함  
: 복잡한 연산의 원자성을 보장하지 않으므로 java.util.concurrent.atomic 패키지를 사용해야 함

```
멀티 스레드 환경에서 스레드는 자신만의 CPU 캐시에 변수의 값을 복사해 사용하는데
다른 스레드가 해당 변수를 수정하는 경우 스레드에서 그 변경을 즉시 알 수 없어 문제가 생길 수 있음
```



### transient
: 객체 직렬화 과정에서 특정 필드를 직렬화 대상에서 제외함  
: 역직렬화시 transient 변수는 기본값으로 초기화됨  

```java
public class Example implements Serializable {
    // 직렬화에서 제외됨
    private transient String secret;
}
```