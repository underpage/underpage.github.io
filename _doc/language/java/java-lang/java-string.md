---
order: 0.44
title: java
description: 자바 문자열
summary:
keywords:
- java
- java string
- 자바 문자열
tags:
- language
- java
created_time: 2024-10-23 14:03
modified_time: 2024-10-26 19:27
---

# Java String
: Java에서 문자열은 객체로 지원  
: String 객체는 불변 객체로 문자열을 조작할 경우 새로운 인스턴스가 생성됨  
: Java 15 부터 텍스트 블록을 제공해 여러 줄 문자열을 작성할 수 있음  

```java
public final class String { 

	// Java 8 이전 문자열은 char의 배열 형태로 저장됨  
	private final char value[];

	// Java 9 이후 문자열은 byte의 배열 형태로 저장됨
	// ISO-8859-1 문자만 있으면 1바이트로 UTF-16 문자가 포함된 경우 2바이트로 저장
	private final byte[] value;

	@Test
	public void test() {

		// 상수 풀에 문자 리터럴이 있으면 참조하고 없으면 생성 후 참조함
		String str1 = "string";

		// 힙 메모리에 객체가 생성됨
		String str2 = new String("string");

		// 상수 풀에 해당 문자열이 있으면 참조하고 없으면 생성 후 참조함
		String str3 = new String("string").intern();

	}
}
```


**String Interning**  
: 중복되는 문자열 리터럴은 상수 풀에서 같은 인스턴스를 참조하는 기법  
: 인스턴스를 재사용해 메모리를 절약함  
: 인터닝은 기본으로 자동으로 수행되지만 intern() 메소드를 통해 수동으로 설정 가능  

**String Constant Pool**  
: JVM의 특수한 메모리 영역으로 문자열 리터럴을 저장해 유일한 복사본 보장  
: 참조되지 않는 풀의 문자열은 GC의 대상이 됨  

**String Deduplication**  
: 힙 메모리에서 중복된 문자열 객체들을 탐지하고 이를 하나로 통합 기능


**text block**  
: Java 15에서 정식으로 도입된 기능  

```java
String html = """
	<html>
		<body></body>
	</html
""";
```



## Mutability String
: String 객체는 불변이지만 가변으로 처리되는 문자열 클래스를 지원  

- StringBuffer
- StringBuilder 

특징 | String | StringBuffer | StringBuilder
---|---|---|---
변경 | 불변 | 가변 | 가변
동기화 | - |동기화 지원 | 동기화 미지원


**String 성능 최적화**  
: String으로 결합 연산을 할 경우 컴파일러가 이를 StringBuilder로 자동 변환함  
: 일반적으로 4~5개 정도의 문자열 결합만 변환함  

```java
String str = "Hello, " + "world!";

// 컴파일러가 컴파일시 위 코드를 변환함
StringBuilder sb = new StringBuilder();
sb.append("Hello, ");
sb.append("world!");
String str = sb.toString();
```