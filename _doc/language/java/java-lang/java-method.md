---
order: 0.24
title: java
description: 자바 메소드
summary:
keywords:
- java
- java method
- 자바 메소드
tags:
- language
- java
created_time: 2024-10-11 13:58
modified_time: 2024-10-23 11:40
---

# Java Method
: 특정 작업을 수행하기 위한 코드 블럭 모음  
: 메소드는 클래스의 멤버로 클래스에 속하며 객체의 상태를 조작하거나 객체와 관련된 작업을 수행함  

**정의 방식**
- [클래스 메소드](#static-method)
- [인스턴스 메소드](#instance-method)
- [제너릭 메소드](#generic-method)
- [추상 메소드](#abstract-method)
- [디폴트 메소드](#default-method)
- [비공개 메소드](#private-method)

**특성**
- final 메소드
- strictfp 메소드
- synchronized 메소드
- native 메소드

**용도**
- [정적 팩토리 메소드](#static-factory-method)
- [팩토리 메소드](#factory-method)


```java
// 메소드 선언 = 메소드 생성
// 접근 제어자를 통해 메소드가 호출되는 범위 지정
// 메소드가 반환하는 데이터 타입 지정
// 메소드 매개 변수 정의
// 메소그가 예외를 던질 경우 예외 지정
public void methodName(parameterList, ...varargs) throws exceptionList {
    // 메소드 구현
    methodBody
}

// 메소드 호출 = 메소드 사용 
methodName(); 
methodName(argument); 
```


**메소드 시그니처**  
: 메소드 이름과 매개 변수 목록 (데이터 타입, 개수, 순서)  


**varargs**  
: Variable Arguments  
: 메소드에 인수 개수를 가변으로 전달하는 가변 인수  
: 가변 인수는 하나만 정의 가능하고 매개 변수 중 마지막에 존재함  
: 컴파일러가 컴파일 타임에 가변 인수를 배열로 변환하여 처리  

```java
void method(String... str) {}
```


**void method**  
: 메소드가 데이터를 반환하지 않을 경우 사용  
: void 메소드는 주로 동작을 수행하는데 사용되며 결과를 반환하지 않음  

```java
void method() {}
```


**value method**  
: 데이터를 반환하는 메소드로 반환하는 데이터 타입을 선언부에 명시  
: 데이터를 반환하므로 이를 변수에 할당 할 수 있음  

```java
int method() { return 0; }

int num = method();
```


**method reference**  

```java
public class Example {

    public static void print(String msg) {
        System.out.println(msg);
    }

    public static void main(String[] args) {
        String[] messages = {"Hello, ", "World!"};
        Arrays.stream(messages).forEach(Example::print);
    }
}
```


**method overloading**  
: 메소드를 시그니처를 다르게 정의해 같은 기능을 하는 메소드들을 정의   
: 컴파일러가 메소드 시그니처를 통해 메소드를 구별함  

```java
public class Example {

    // 생성자 오버로딩
    public Example() {}
    public Example(int x) {}

    // 메소드 오버로딩
    public int add(int x, int y) {}
    public int add(int x, int y, int z) {}

}
```       


**method overriding**  
: 상위 클래스로부터 상속받은 메소드를 하위 클래스에서 재정의  
: 반환 타입, 메소드 명, 매개 변수 목록이 일치해야 함  
: private, final 키워드를 사용한 메소드는 오버라이딩 불가  

```java 
public class Parent {
    public void method() {}
}

public class Children extends Parent {
    @Overrid
    public void method() {}
}
```



## Static Method
= 클래스 메소드, 정적 메소드  
: static 키워드로 선언된 메소드  
: 클래스가 메모리에 로드될 때 생성되며 클래스가 제거되면 함께 제거됨  
: 클래스에 속하는 메소드로 클래스의 인스턴스들이 공유하는 메소드  
: 클래스 명을 통해 참조하며 접근 제어자를 지정해 접근 수준을 명시할 수 있음   

```java
public class Example {
    public static void method () {
        // 클래스 변수만 접근 가능
        // 오버라이딩은 불가능하며 오버로딩은 가능
        // 주로 유틸리티 메소드 구현을 위해 사용
    }
}
```



## Instance Method
= 인스턴스 메소드, 멤버 메소드, 비정적 메소드   
: 클래스의 객체를 통해 참조하며 접근 제어자를 지정해 접근 수준을 명시할 수 있음  
: 메소드 호출마다 스택 메모리에 생성되며 호출이 끝나면 스택 메모리에서 제거됨  

```java
public class Example {
    public void method () {
        // 클래스 변수나 인스턴스 변수에 접근 가능
        // 주로 객체의 상태를 조작하기 위해 사용
    }
}
```



## Generic Method
: 메소드의 매개변수에 제네릭을 사용해 여러 타입에 대해 동작하는 메소드  
: 다양한 타입에 대해 재사용 가능한 메소드 구현을 가능하게 함

```java
public class Example {
    public <T> void method (T variable) {
        System.out.println(variable);
    }
}
```



## Abstract Method
= 추상 메소드  
: abstract 키워드로 정의한 메소드로 선언부만 있고 구현부가 없는 메소드  
: 추상 클래스나 인터페이스에서만 추상 메소드 선언이 가능  
: 클래스를 상속하는 경우 하위 클래스에서 추상 메소드를 반드시 구현해야 함  
: 하위 클래스마다 동일한 메소드 이름을 가지지만 다른 동작 수행이 가능함  

```java
public abstract class Example {
    // 하위 클래스에서 구현을 강제함
    abstract void method(); 
}
```



## Default Method
= 디폴트 메소드  
: 인터페이스 내에서 구현부가 정의된 메소드  
: 인터페이스를 구현하는 클래스에서 공통적인 기능을 갖게하기 위해 사용  
: 클래스에서 디폴트 메소드를 오버라이드해 기능을 확장할 수 있음  

```java
public interface Example {
    // 기능이 구현된 디폴트 메소드
    // 하위 클래스에서 선택적으로 구현함
    // 접근 제어자는 무조건 public만 가능하며 생략시 public이 적용됨
    default void method(String variable) {
        System.out.println(variable);
    }
}
```



## Private Method
= 비공개 메소드  
: private 키워드가 선언된 비공개 메소드  
: 클래스에서 정의시 해당 클래스에서만 사용되는 메소드  
: 인터페이스에서 정의시 해당 인터페이스에서만 사용되는 메소드  

```java
public class Example {
    // 클래스 내부에서만 사용되는 메소드
    private void method() {}
}

public interface Example {
    // 구현 클래스에서 접근과 상속이 불가능
    // 인터페이스의 클래스 메소드나 디폴트 메소드에서 호출 가능
    private void method() {}
}
```



## Static Factory Method
: 객체 생성을 담당하는 정적 메소드  
: 생성자는 이름을 가질 수 없지만 정적 팩토리 메소드는 이름을 가질 수 있음  
: 객체 생성을 제한하기 위해 사용하며 캐싱을 구현할 수 있음  

**객체 생성**
```java
public class Example {

    // 접근 제어자가 private라 상속 불가능
    private Example() {}

    public static Example createExample() {
        return new Example();
    }

    @Test
    public void test() {
        Example ex = Example.createExample();
    }

}
```


**캐싱 구현**
```java
public class Code {

    private String key;
    private static final Map<String, Code> codeCache = new ConcurrentHashMap<>();

    private Code(String key) {
        this.key = key;
    }

    public static Code createCode(String key) {
        return codeCache.computeIfAbsent(key, newKey -> {
            return new Code(newKey);
        });
    }

    @Test
    public void test() {
        Code code = Code.createCode("0000");
    }

}
```



## Factory Method
: 객체 생성을 서브 클래스에 위임  
: 객체 생성 시점을 서브 클래스에서 결정하는 경우 사용  

```java
public interface Animal {
    void sound();
}

public abstract class AnimalFactory {
   
    // 팩토리 메소드
    abstract Animal createAnimal();
    
    public Animal getAnimal() {
        return createAnimal();
    }

}

public class Dog implements Animal {
    @Override
    public void sound() {}
}

public class DogFactory extends AnimalFactory {
    @Override
    Animal createAnimal() {
        return new Dog();
    }
}

public class Example {

    @Test
    public void test() {
        AnimalFactory dogFactory = new DogFactory();
        Animal dog = dogFactory.getAnimal();
    }

}
```