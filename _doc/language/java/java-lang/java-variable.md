---
order: 3.3
title: Java
description: 자바 변수
summary:
keywords:
- java language
- java variable
- scope
- varargs
tags:
- java
created_time: 2024-10-11 08:45
modified_time: 2025-03-05 01:04
---

# Java Variable
: 데이터가 저장된 메모리 위치를 참조하는 기호로 이를 통해 데이터를 저장하고 핸들링함  
: 프로그램이 실행되면 변수는 JVM이 관리하는 메모리 주소(참조값)로 변환됨  


**변수 선언 및 정의**  
: 자바의 변수는 클래스나 메소드 내부에서 선언됨

```java
// declaration = 변수 선언 
// 1. 데이터 타입 지정 : 타입에 따라 데이터가 저장될 메모리 공간 확보   
// 2. 변수명 지정 : 변수명과 메모리 위치가 연결됨 
int num;

// 3. 식별자를 통해 메모리에 접근하고 할당 연산자를 통해 데이터를 저장함 
num = 0;

// definition = 변수 선언 및 초기화 
int num = 0;
```

**변수 종류**  
: 다양한 변수들이 있으며 변수의 역할, 범위, 특성 등에 따라 분류됨  
: 변수는 [수식어](./java-modifier.md)를 통해 변수의 속성이나 동작을 변경할 수 있음 

- [클래스 변수](#static-variable)
- [인스터턴스 변수](#instance-variable)
- [지역 변수](#local-variable)
- [매개 변수](#parameter-variable)
- [익명 변수](#unnamed-variable)


변수 | 설명
---|---
final variable     | 한 번 값이 할당되면 변경이 불가능한 변수
transient variable | 직렬화에서 제외되는 변수
volatile variable  | 멀티 스레드 환경에서 항상 최신 값을 보장하는 변수


**변수 스코프**  
: 변수가 선언되는 영역으로 이에 따라 저장될 메모리 위치가 달라지고 생애 주기가 결정됨  
: 변수는 스코프에 따라 접근 가능한 범위가 한정됨  

스코프 | 변수 유형 | 설명 
---|---|---
Global | 클래스 변수 | 클래스 레벨에서 선언된 변수로 프로그램이 종료되면 제거됨
Class  | 인스턴스 변수 | 클래스 내부에 선언된 변수로 객체가 제거되면 제거됨
Method | 지역 변수 | 메소드 내에 선언된 변수로 메소드 실행이 끝나면 제거됨
Block  | 지역 변수 | 조건문이나 반복문같은 특정 블록 내에서 선언된 변수로 블록 실행이 끝나면 제거됨


**변수 저장 영역**  

영역 | 설명 
---|---
Stack Memory | 메소드의 지역 변수와 매개 변수가 저장되는 영역
Heap Memory  | 인스턴스 변수가 저장되는 영역
Metaspace    | 클래스 변수가 저장되는 영역 (HotSpot)
Thread-Local Areas | 스레드 로컬 변수가 저장되는 영역 

```java
public class Example {

    static String staticVariable = "메타스페이스에 저장";
    String instanceVariable = "힙에 저장";

    // 스레드 로컬 변수
    // ThreadLocal로 정의된 변수로 특정 스레드에서만 접근 가능함
    private static ThreadLocal<String> threadLocalValue = ThreadLocal.withInitial(() -> "스레드 로컬 영역에 저장");

    void method() {
        String localVariable = "스택에 저장";
        Example ex = new Example("참조 변수는 스택에 객체는 힙에 저장");
    }

}
```


**심볼 테이블**  
: JVM 내부에서 관리되는 변수 정보 매핑 테이블 예시로 실제 구현은 알 수 없음  
: 변수와 메모리 주소를 매핑한 정보와 그밖의 메타 데이터를 관리함

```java
public class Example {
    int num = 0;
    List<String> list = Arrays.asList("A", "B", "C");
}
```

변수명 | 데이터 타입  | 메모리 주소 | 참조값 | 값 | 스코프
---|---|---|---|---
num | int | 0x00000000 | N/A | 0 | 클래스 레벨
list | List<String> | 0x00000000 | @xxxxxx | ["A", "B", "C"] | 클래스 레벨



## static variable
클래스 변수, 정적 변수  
: 클래스 내부에서 static 키워드로 선언된 변수  
: 클래스가 메모리에 로드될 때 생성되며 클래스가 제거되면 함께 소멸됨  
: 항상 값이 있는 상태로 초기화하지 않을 경우 컴파일러에 의해 기본값이 할당됨  
: 클래스 명을 통해 참조하며 접근 제어자를 지정해 접근 수준을 명시할 수 있음    

```java
public class Example {

    // 비공개 정적 변수로 클래스 내부에서만 접근 가능
    private static int privateStaticVar;

    // 기본 정적 변수로 동일 패키지 내에서만 접근 가능
    static int defaultStaticVar;

    // 보호된 정적 변수로 동일 패키지 또는 상속 관계에서만 접근 가능
    protected static int protectedStaticVar;

    // 공개된 정적 변수로 어디서든 접근 가능
    public static int publicStaticVar;

}
```


**global variable**
: 자바에서는 전역 변수를 지원하지 않지만 static 키워드와 final 키워드를 통해 유사한 방식을 지원함  

```java
public class Example {
    public static final int NUM = 0;
}
```



## instance variable
인스턴스 변수, 멤버 변수, 비정적 변수, 필드, 속성  
: 클래스 내부에 메소드 외부에 선언된 변수  
: 객체 생성마다 생성되며 객체가 제거되면 함께 소멸됨  
: 객체의 상태를 나타내며 필드나 속성이라고 부르기도 함  
: 항상 값이 있는 상태로 초기화하지 않을 경우 컴파일러에 의해 기본값이 할당됨  
: 객체를 통해 참조하며 접근 제어자를 지정해 접근 수준을 명시할 수 있음  

```java
public class Example {

    // 비공개 변수로 클래스 내부에서만 접근 가능
    private int privateVar;

    // 기본 인스턴스 변수로 동일 패키지 내에서만 접근 가능 
    int num;

    // 보호된 변수로 동일 패키지 또는 상속 관계에서만 접근 가능
    protected int protectedVar;

    // 공개된 변수로 어디서든 접근 가능
    public int publicVal;

} 
```



## local variable
로컬 변수, 지역 변수  
: 특정 블록(블록문, 제어문, 반복문 등) 내부에 선언된 변수  
: 일반적으로 생성자나 메소드 내부에 선언되며 접근 제어자를 사용할 수 없음  
: 생성자나 메소드가 실행될 때마다 생성되며 생성자나 메소드가 종료되면 소멸됨  
: 초기화하지 않으면 컴파일 오류가 발생하므로 반드시 초기화해야 함  
: Java 10부터 var 키워드를 통해 데이터 타입을 명시하지 않는 타입 추론을 지원함  

```java
public class Example {

    // 인스턴스 변수
    int num;
    {
        // 인스턴스 변수 초기화
        num = 0;

        // 로컬 변수
        String str = "";
    }

    public void method() {
        int num = 0;

        if(true) {
            int = num = 0;
        }
    }

}
```


**로컬 변수 타입 추론**  
: Java 10 부터 로컬 변수 경우 데이터 타입 생략이 가능함  
: 컴파일러가 변수의 데이터 타입을 추론해 컴파일 타임에 변수의 타입이 결정됨  
: 컴파일 타임에 데이터 타입이 결정되므로 타입 안정성이 유지됨  
: 변수의 타입이 두 개 이상으로 추론되는 경우 오류가 발생함  
: 람다 표현식에서는 사용할 수 없음  

```java
public class Example {
    public void method() {
        var entry = Map.entry(key, value);
    }
}
```



## parameter variable
: 생성자나 메소드의 시그니처 선언부에 정의된 변수  
: 생성자나 메소드가 호출될 때 생성되며 생성자나 메소드가 종료되면 소멸됨  
: 매개 변수는 생성자나 메소드 호출시 전달되는 인자(argument)에 의해 초기화됨  

```java
public class Example {

    // parameter = 매개 변수, 형식 매개 변수
    // 기본 타입은 값이 복제되어 전달되어 원본에 영향을 미치지 않음
    // 참조 타입은 참조가 전달되어 원본에 영향을 미치므로 불변성을 보장하려면 final 키워드 사용   
    static void method(int num) {
        num = 0;
        System.out.println(num);
    }

    // 가변 매개 변수
    // 제한없이 여러 인자를 받는 변수로 내부적으로 해당 타입의 배열로 처리됨
    static void method(int num, String... str) {
        for(String s : str) {
            System.out.println(s);
        }
    }

    // 메소드 오버라이딩시 가변 매개 변수보다 일반 매개 변수의 우선 순위가 더 높음
    static void method(int... num) {
        for(int n : num) {
            System.out.println(n);
        }
    }

    // 명령행 매개변수
    // 프로그램 실행시 전달되는 값이 메인 함수에 문자열 배열로 전달됨
    public static void main(String[] args) {

        // argument = 인자, 인수, 실제 매개 변수
        method(100);
    }
}
```



## unnamed variable
= discard variable, underscore parameter  
: Java 9부터 지원하는 이름 없는 일회용 변수  
: 사용하지 않는 변수를 언더스코어 기호로 선언해 컴파일러에게 변수가 사용되지 않음을 명시함  
: 주로 for-each문, try-with-resources문, 람다 표현식에서 사용됨  

```java
Map<String, Integer> map = Map.of("one", 1, "two", 2);

for(var entry : map.entrySet()) {
    var _ = entry.getKey();
    System.out.println(entry.getValue());
}
```