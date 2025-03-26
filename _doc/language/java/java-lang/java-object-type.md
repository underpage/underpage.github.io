---
order: 4.1
title: Java
description: 자바 객체 특성 분류
summary:
keywords:
- java
- java object type
- mutable
- immutable
- serializable
tags:
- java
created_time: 2025-01-19 18:42
modified_time: 2025-03-26 22:21
---

# Java Object Type
: 객체는 상태와 행위를 가지며 이러한 상태의 특성에 따라 객체의 성질이 결정됨  
: 객체의 특성은 생성, 수정, 소멸 등 객체의 생명주기와 사용 방식에 직접적인 영향을 미침  

- [값 객체](#value-object)
- [참조 객체](#reference-object)
- [임시 객체](#temporary-object)
- [가변 객체](#mutable-object)
- [불변 객체](#immutable-object)
- [직렬화 객체](#serializable-object)
- [동기화 객체](#synchronized-object)



## Value Object
: 객체의 상태를 나타내는 값 자체  
: 동일한 값이면 동일한 것으로 취급되며 보통 불변성을 가짐  
: equals()와 hashCode()를 오버라이드하여 값의 동등성을 비교를 구현해야 함  

```java
String str1 = new String("String");
String str2 = new String("String");

// 값 비교
(str1.equals(str2)) == true
```



## Reference Object
: 메모리 주소(참조)를 통해 식별되는 객체  
: 동일한 상태를 가지더라도 참조가 다르면 다른 객체로 구분됨  
: == 연산자를 통해 객체의 참조를 비교함  

```java
String str1 = new String("String");
String str2 = new String("String");

// 참조 비교
(str1 == str2) == false
```



## Mutable Object
: 객체가 생성된 후 내부 상태를 변경할 수 있는 객체  
: 상태가 동적으로 수정 가능해 객체의 참조를 공유할 경우 사이드 이펙드가 발생할 수 있음  
: ex. ArrayList, HashMap  

**부분 가변 객체**  
: 일부 상태만 변경 가능한 객체  

```java
public class Example {
    private final String finalVariable;
    private String variable;
}
```



## Immutable Object
: 객체가 생성된 후 상태가 절대로 변하지 않는 객체  
: 힙 영역에 할당된 후 객체의 모든 필드가 읽기 전용으로 유지되어 외부에서 상태를 변경할 수 없음  
: 여러 스레드에서 동시에 불변 객체에 접근해도 객체의 상태가 불변이므로 동기화가 필요하지 않음  
: 상태 변경이 필요할 경우 새로운 객체를 생성해 상태를 변경하고 기존 객체와의 참조가 끊어짐  
: 예외적으로 [리플렉션](../java-api-se/java-reflection.md)을 통해 불변 객체의 상태를 변경할 수 있음  

**생성자 구현**
```java
public final class Example {

    private final String str;
    private final List<String> list;

    public Example(String str, List<String> list) {
        this.str = str;
        this.list = list != null 
            ? Collections.unmodifiableList(new ArrayList<>(list)) 
            : Collections.emptyList();
    }

    public String getStr() {
        return this.str;
    }

    public List<String> getList() {
        return this.list;
    }
}
```


**정적 팩토리 메소드 구현**
```java
public final class Example {

    private final String str;
    private final List<String> list;

    private Example(String str, List<String> list) {
        this.str = str;
        this.list = list != null 
            ? Collections.unmodifiableList(new ArrayList<>(list)) 
            : Collections.emptyList();
    }

    public static Example of(String str, List<String> list) {
        return new Example(str, list);
    }

    public String getStr() {
        return this.str;
    }

    public List<String> getList() {
        return this.list;
    }
}
```


**빌더 패턴 구현**
```java
public final class Example {

    private final String str;
    private final List<String> list;

    private Example(Builder builder) {
        this.str = builder.str;
        this.list = builder.list;
    }

    public static class Builder {
        private String str;
        private List<String> list;

        public Builder setString(String str) {
            this.str = str;
            return this;
        }

        public Builder setList(List<String> list) {
            this.list = list != null ? Collections.unmodifiableList(list) : Collections.emptyList();
            return this;
        }

        public Example build() {
            return new Example(this);
        }
    }

    public String getStr() {
        return this.str;
    }

    public List<String> getList() {
        return this.list;
    }
}
```



## Temporary Object
: 특정 연산이나 작업을 위해 컴파일러가 일시적으로 생성하는 객체  
: 한 번 사용 후에는 바로 메모리에서 제거됨  

```java
int i = 0;

List<Integer> list = new ArrayList<>();
// new Integer(num) 형태의 임시 객체가 생성됨
list.add(num);
```



## Serializable Object
: Serializable 인터페이스를 구현하여 객체를 직렬화할 수 있는 객체  
: 객체를 직렬화하여 파일 저장, 네트워크 전송 등에 활용됨

**직렬화**  
: 힙 영역에 존재하는 객체를 바이트 스트림 형태로 변환하여 전송, 저장하는 과정  
: 바이트 데이터를 객체 형태로 복원하는 것은 역직렬화라고 함  

```java
public class Example implements Serializable {
    private static final long serialVersionUID = 1L;
    private String variable;
}
```



## Synchronized Object
: 멀티스레드 환경에서 동기화를 지원하여 스레드 간 안전한 동시 접근을 보장하는 객체  

**스레드 안전 객체**  
: 내부적으로 동기화 메커니즘이 가지고 있어 여러 스레드에서 동시에 접근해도 안전한 객체  
: ex. ConcurrentHashMap, AtomicInteger  

**스레드 로컬 객체**  
: 특정 스레드에서만 접근할 수 있는 객체  