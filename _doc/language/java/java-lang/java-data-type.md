---
order: 2.1
title: Java
description: 자바 데이터 타입
summary:
keywords:
- java language
- java data type
- primitive
- reference
- wrapper class
tags:
- java
created_time: 2024-10-23 01:32
modified_time: 2025-03-26 22:23
---

# Java Data Type
: 자바는 강력한 [정적 타입](../../../program/language/concept/type-system.md) 언어로 데이터는 타입을 가짐  
: 자바의 데이터 타입은 데이터 표현 방식에 따라 기본 타입과 참조 타입으로 분류됨  
: 기본 타입은 메모리 크기가 고정되어 있고 참조 타입은 동적으로 메모리가 할당됨  
: 컴파일러가 컴파일 시점에 데이터 타입을 체크하고 이를 바탕으로 최적화된 바이트코드를 생성함  

```java
// 변수
데이터타입 변수명 = 데이터;

// 데이터를 반환하는 메소드
데이터타입 메소드명() {
    return 데이터;
}
```

- [기본 타입](#primitive-type)
- [참조 타입](#reference-type)


항목 | 기본 타입 | 참조 타입
---|---|---
저장 방식 | 값 | 객체
메모리 위치 | 스택 | 힙
메모리 크기 | 고정 | 동적 할당
데이터 전달 | 값이 복사되어 전달됨 | 객체에 대한 참조가 전달됨
연산 여부 | 가능 | 메소드를 통해 조작
null 할당 | 불가능 | 가능



## Primitive Type
: 값 자체를 메모리에 저장하는 데이터의 타입을 의미  
: 자바는 데이터의 특성에 따라 기본 타입을 8가지로 분류하여 제공함  
: JVM이 모든 플랫폼에서 동일한 동작을 보장하기 위해 기본 타입의 크기를 고정함  
: 기본 타입으로 연산을 수행할 경우 메모리를 직접 수정하며 연산 속도가 빠름  
: 연산 수행 결과가 메모리 크기를 벗어나면 오버플로 또는 언더플로가 발생함  

```
자바 언어 명세에는 기본 타입의 범위만 정의되고 크기는 정의하지 않았으나
JVM 구현시 기본 타입의 메모리 크기를 고정함 (주요 JVM 구현체에서 동일한 크기를 사용함)
```

**오버플로**  
: 데이터 타입의 최댓값을 초과하는 연산을 하는 경우 발생  
: 이 경우 최솟값으로 돌아가면서 초과한 값이 손실됨  

**언더플로**  
: 데이터 타입의 최솟값을 밑도는 연산을 하는 경우 발생  
: 이 경우 최댓값으로 돌아가면서 부족한 값이 손실됨  


**종류**

분류 | 타입 | 기본값 | 범위 | 메모리 크기
---|---|---|---|---
logic     | boolean | false    | true, false | 정확한 정의 x
character | char    | '\u0000' | 0 ~ 65,535  | 16bits (2byte)
integer   | byte    | 0        | -128 ~ 127  | 8bits (1byte)
integer   | short   | 0        | -32,768 ~ 32,767 | 16bits (2byte)
integer   | int     | 0        | ~ 2,147,483,647  | 32bits (4byte)
integer   | long    | 0L       | ~ 9,223.372,036,854,775,807 | 64bits (8byte)
floating point | float  | 0.0f | 3.4e−038 ~ 3.4e+038 | 32bits (4byte)
floating point | double | 0.0d | 1.7e−308 ~ 1.7e+038 | 64bits (8byte)

=> 기본 타입은 null을 할당할 수 없으며 기본값을 할당함  
=> 정수형과 실수형 경우 메모리 크기가 같아도 비트 조합이 다름  

```java
// 00000000 | 00000000 | 00000000 | 00000000
int i = 0;

// 0 00000000 00000000000000000000000
float f = 0.0;
```


**래퍼 클래스**  
: 기본 타입을 객체로 다루기 위해 제공되는 클래스들  
: 래퍼 클래스에 값을 다루기 위한 다양한 유틸리티 메소드들이 정의되어 있음  
: 래퍼 클래스는 [불변 객체](./java-object-type.md#immutable-object)로 내부 값을 변경할 수 없음  

```java
Integer i = 0;

// 새로운 Integer 객체가 생성되고 변수가 이를 참조함
i = 1;
```



### boolean 
: 0과 1의 값으로 1비트를 차지하나 메모리 크기는 정의되지 않고 JVM 구현에 따라 달라짐  
: 일반적으로 1바이트로 처리하나 일부 구현에서는 4바이트로 처리함  
: JVM 명세에서는 boolean 배열의 각 요소는 1바이트로 명시되어 있음  

```java
boolean isActive = true;

// 조건문에서 직접 사용이 가능함
if(isActive) {}
```



### char
: 16비트 크기의 문자 데이터 타입으로 부호가 없으며 0 ~ 65535 범위를 저장함  
: 유니코드를 지원하며 일부 유니코드는 두 개의 char로 표현됨  

```java
// 내부적으로 정수값으로 변환되어 저장됨
char charA = 'A';
char unicodeA  = '\u0041';
int codePointA = (int) charA;

// 숫자 연산이 가능함
(int) charA == 65
(int) charA + 1 == 66

// 특수 문자
char tab = '\t';
char newLine = '\n';
```

**surrogate pair**  
: 결합된 유니코드 코드 유닛  
: 16비트로 표현할 수 없는 일부 유니코드 문자를 표현하기 위한 방법  
: 두 개의 char을 사용해 유니코드를 표현하고 두 개의 char을 서로게이트 페어라고 부름  

```java
int codePoint = 0x1F600;

char high = Character.highSurrogate(codePoint); // U+D800 ~ U+DBFF 
char low = Character.lowSurrogate(codePoint);   // U+DC00 ~ U+DFFF 

String emoji = new String(new char[]{high, low});


// 순회
String str = "Hello World 😀😀😀";
str.codePoints().forEach(c -> {
    System.out.println(new String(Character.toChars(codePoint)));
})
```

**유니코드 테이블**  
https://symbl.cc/en/unicode-table



### byte 
: 8비트 크기의 정수형 데이터 타입으로 부호가 있으면 -128 ~ 127 부호가 없으면 0 ~ 255 범위를 저장함  
: 주로 바이너리 데이터 처리, 입출력 스트림, 네트워크 통신, 암호화에서 사용됨  

```java
// 정수형 리터럴이 범위 내에 있으면 byte 타입으로 변환됨
byte b = 127;

// 정수형 리터럴이 범위 내에 없으면 컴파일 오류가 발생함
byte b = 128;


byte[] byteArray = {65, 66, 67, 68};
for(byte b : byteArray) {
    System.out.print((char));
}

String str = "Hello Word";
byte[] byteArray = str.getBytes(StandardCharsets.UTF_8);
```



### int
: 32비트 크기의 정수형 데이터 타입으로 -2,147,483,648 ~ 2,147,483,647(21억) 범위의 정수를 저장함  
: long 타입에는 접미사 l/L을 붙이며 접미사 생략시 int 타입으로 간주됨  
: 2진수에는 접두사 0b, 8진수에는 접두사 0, 16진수에는 접두사 0x을 사용함  
: int 타입으로 산술 연산시 소수 값이 발생하면 손실됨  
: Java 7 부터 숫자 사이에 언더스코어 기호 사용이 가능함 (컴파일시 제거됨)  
: Java 8 부터 Integer와 Long 래퍼 클래스로 부호없는 값 지원  

2진수 | 10진수
---|---
0111_1111  | 127
0000_0010  | 2
0000_0001  | 1
0000 0000  | 0
1111_1111  | -1
1111_1110  | -2
1000_0000  | -128


**2보수**  
: 정수의 음수를 표현하는 방식으로 비트를 모두 반전하고(1의 보수) 1을 더함  

```
부호 비트 | 값 표현
0 | 00000000 00000000 00000000 00000000

+ 5 = 0 0000000 | 00000000 | 00000000 | 00000101
- 5 = 1 1111111 | 11111111 | 11111111 | 11111011
```



### float
: 32비트 크기의 부동소수점 데이터 타입으로 약 ±1.4E-45 ~ ±3.4028235E+38 범위의 실수를 저장함  
: float 타입에는 접미사 f/F, double 타입에는 접미사 d/D를 붙이며 접미사 생략시 double 타입으로 간주함  
: 부동소수점은 근사값으로 저장되기 때문에 정확한 값을 표현하지 못할 수 있음  
: 정확한 십집 계산이 필요한 경우 BigDecimal 클래스를 사용해야 함  

```java
float x = 0.1f + 0.1f + 0.1f;
float y = 0.3f;
(x == y) == true

float x = 0.11f + 0.11f + 0.11f;
float y = 0.33f;
(x == y) == false
```

구분 | float | double
---|---|---
표현 방식 | 32비트 IEEE 754 부동 소수점 | 64비트 IEEE 754 부동 소수점
정밀도 | 단정도 | 배정도
소수점 정밀도 | 7자리 정도 | 15자리 정도


**IEEE 754**  
: IEEE에서 제정한 부동소수점을 표현하는 표준  
: 부호부(Sign Bit), 지수부(Exponent), 가수부(Mantissa)로 구성됨  

```
    부호       지수       가수
|  1 bit  |  8 bit   |  23 bit  | = 32 bit (단정도)
|  1 bit  |  11 bit  |  52 bit  | = 64 bit (배정도)

부호 : 0은 양수 1은 음수
지수 : 편향 표현 방식을 사용해 양수와 음수 지수를 표현
가수 : 정규화된 소수를 저장
```



## Reference Type
= Composite Type, Object Type  
: 기본 타입을 제외한 타입으로 구조화된 데이터의 참조를 저장하는 데이터 타입  
: 참조 타입은 데이터를 구조화한 [객체](./java-class.md#object)가 메모리에 저장되면 이를 가르키는 값이 저장됨  

용어 | 설명
---|---
메모리 주소 | 객체가 저장된 실제 메모리 주소로 JVM만 접근 가능함
참조값 | JVM이 객체를 식별하기 위해 부여한 값

```java
// 1. JVM이 Object 타입의 객체를 생성해 내부 힙 메모리에 저장함
// 2. JVM은 객체를 식별하기 위한 고유한 값을 할당해 관리함 (실제 메모리 주소를 노출하지 않음)
// 3. 객체가 생성되면 객체를 식별하는 값이 반환하고 obj에 할당됨
Object obj = new Object();
```


**종류**
- 클래스
- 인터페이스
- 배열

```
배열은 자바 언어 명세에서 특수한 형태의 참조 타입으로 분류됨
https://docs.oracle.com/javase/specs/jls/se21/html/jls-10.html#jls-10.1
```