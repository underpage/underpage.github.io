---
order: 2.8
title: Java
description: 자바 제네릭
summary:
keywords:
- java language
- java generic
- type erasure
tags:
- java
created_time: 2024-10-23 14:13
modified_time: 2025-03-17 23:21
---

# Java Generic
: 클래스, 인터페이스, 메소드 정의시 데이터 타입 대신 매개변수를 지정하고 나중에 타입을 결정하는 기법  
: 클래스나 메소드 정의시 데이터 타입을 지정하지 않고 실제 사용시 외부에서 타입을 지정함  
: 하나의 제네릭 클래스로 다양한 타입의 객체를 생성할 수 있어 코드의 재사용성이 높아짐  
: 컴파일 타임에 타입 체크를 보다 엄격하게 수행하여 타입 안정성을 강화함  
: 제네릭은 컴파일러의 타입 소거 메커니즘을 통해 구현되어 런타임에 타입 정보를 보존하지 않음  

**종류**
- [제네릭 클래스](#generic-class)
- [제네릭 인터페이스](#generic-interface)
- [제네릭 메서드](#generic-method)

**타입 제한 방식**
- [다중 타입 매개변수](#multiple-type-parameter)
- [경계 타입 매개변수](#bounded-type-parameter)
- [제한 없는 와일드카드](#unbounded-wildcard)
- [상위 제한 와일드카드](#upper-bounded-wildcard)
- [하위 제한 와일드카드](#lower-bounded-wildcard)
- [재귀적 타입 바인딩](#recursive-type-bound)

**기법**
- [슈퍼 타입 토큰](#super-type-token)


**구성 요소**

요소 | 설명
---|---
타입 매개변수 | 제네릭 정의시 데이터 타입을 대신 사용하는 기호
타입 인자 | 제네릭 사용시 지정하는 구체적 데이터 타입
와일드카드 | 불특정 타입을 나타내는 특수한 타입 매개변수

```java
// 타입 매개변수 = T
// 형식 타입 매개변수 = <T>
class Box<T> {}

// 타입 인자 = String
// 실제 타입 매개변수 = String
Box<String> box = new Box<>();

// 와일드 카드
Box<?> box = new Box<String>();
Box<? extends Number> box = new Box<Integer>();
```


**타입 매개변수 명명 규칙**

변수명 | 의미
---|---
E  | 컬렉션 요소를 나타냄
K  | 맵에서 키를 나타냄
V  | 맵에서 값을 나타냄
N  | 숫자 값을 나타냄
T  | 첫번째 타입 매개변수로 사용
S  | 두번째 타입 매개변수로 사용
U  | 세번째 타입 매개변수로 사용
V  | 네번째 타입 매개변수로 사용


**주요 용어**

용어 | 설명
---|---
제네릭 타입 | 타입 매개변수를 사용하는 클래스와 인터페이스
공변성 | 상속 관계가 제네릭 타입에도 동일하게 적용되는 특성
반공병성 | 상속 관계가 제네릭 타입에 반대로 적용되는 특성
무공병성 | 상속 관계가 제네릭 타입에 적용되지 않는 특성 

```java
// 공변성
List<? extends Animal> animals = new ArrayList<Dog>(); 

// 반공변성
List<? super Dog> dogs = new ArrayList<Animal>(); 
```



## Generic Class
: 타입 매개변수를 사용하여 정의된 클래스  

```java
// 이전 방식
class Box {
	private Object value;
	public Object get() { return this.value; }
}

Box box = new Box();
String value = (String) box.value();


// 제네릭 클래스
class Box<T> {
	private T value;
	public T get() { return this.value; }
}

Box<String> box = new Box<>();
String value = box.value();
```


**제네릭 상속**
```java
class Box<K> {
	private K key;
}

// 부모의 타입 매개변수를 기술해야하며 추가 타입 매개변수를 정의할 수 있음
class BoxImpl<K, V> extends Box<K> {
	private K key;
	private V value;
}

// 또는 타입을 지정할 수 있음
class BoxImpl extends Box<String> {
	private String key;
}
```



## Generic Interface
: 타입 매개변수를 사용하여 정의된 인터페이스  

```java
interface Box<T> {
	T get();
}

class BoxImpl implements Box<T> {
	private T value;

	@Override
	public T get() { return this.value; }
}
```



## Generic Method
: 타입 매개변수를 사용해 정의된 메소드

```java
public <T> T get() {
	return value;
}
```



## Multiple Type Parameter
: 하나 이상 타입 매개변수 사용  

```java
class Box<K, V> {
	private K key;
	private V value;

	public Box(K key, V value) {
		this.key = key;
		this.value = value;
	}
}

Box<String, String> box = new Box<>("key", "value");
```



## Bounded Type Parameter
경계 타입 매개변수  
: 타입 매개변수에 상한 또는 하한을 설정하여 데이터 타입을 제한    

```java
// Number 혹은 Number 하위 타입만 가능
class Box<T extends Number> {
	private T value;
}

// 다중 경계 타입 매개변수
class Box<T extends Number & Comparable<T>> {
	private T value;
}
```



## Unbounded Wildcard
제한 없는 와일드카드  
: 와일드 카드를 사용하여 데이터 타입을 느슨하게 정의    

```java
public void print(Collection<?> element) {
	for(Object e : element) {
		System.out.println(e);
	}
}
```



## Upper Bounded Wildcard
상위 경계 와일드카드  
: 특정 타입이나 그 타입의 하위 타입만 허용  

> <? extends 타입>

```java
public void print(Collection<? extends Number> element) {
	for(Object e : element) {
		System.out.println(e);
	}
}
```



## Lower Bounded Wildcard
하위 경계 와일드카드  
: 특정 타입이나 그 타입의 상위 타입만 허용  

> <? super 타입>

```java
public void print(Collection<? super Integer> element) {
	for(Object e : element) {
		System.out.println(e);
	}
}
```



## Recursive Type Bound
타입 매개변수가 자신을 포함하는 경계를 갖는 경우
타입이 자기 자신을 참조하는 형태로 제한하는 방식

> <T extends Comparable<T>>

```java

// Comparable<T>를 구현하는 T 타입
public static <T extends Comparable<T>> T max(List<T> list) {
    if (list.isEmpty()) {
        throw new IllegalArgumentException("List is empty");
    }
    
    T max = list.get(0);
    for (T item : list) {
        if (item.compareTo(max) > 0) {
            max = item;
        }
    }
    return max;
}
```



## Super Type Token
: 제네릭 타입 소거를 우회하기 위한 패턴으로 런타임에 타입 정보를 보존함

```java
public class TypeReference<T> {
    private final Type type;
    
    protected TypeReference() {
        Type superclass = getClass().getGenericSuperclass();
        this.type = ((ParameterizedType) superclass).getActualTypeArguments()[0];
    }
    
    public Type getType() {
        return type;
    }
}

TypeReference<List<String>> typeRef = new TypeReference<List<String>>() {};
Type type = typeRef.getType();
```