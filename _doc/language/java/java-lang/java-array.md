---
order: 0.45
title: java
description: 자바 배열
summary:
keywords:
- java
- java array
- 자바 배열
tags:
- language
- java
created_time: 2024-10-14 05:03
modified_time: 2024-10-24 10:40
---

# Java Array   
: 자바에서 배열은 객체로 취급되어 Object를 상속함  
: 배열의 타입과 크기를 지정하면 그만큼 메모리 할당이 연속적으로 일어남  
: 따라서 배열이 생성될 때 크기가 확정되어야 하며 생성 후에는 크기를 변경할 수 없음  
: 자바의 배열은 인덱스를 통해 요소에 접근하며 인덱스는 0부터 시작함  
: 유효하지 않은 인덱스 사용시 컴파일 타임에는 알 수 없으며 런타임에 오류 발생  


**배열 선언**
```java
// 배열로 선언한 변수는 객체에 대한 참조 보유 
// 배열 선언시 객체가 생성되거나 메모리 공간이 할당된 것은 아님
int[] arr;
int arr[];
```


**배열 생성** 
```java
// new 키워드를 사용해 배열의 타입과 길이를 지정하면 메모리를 공간을 확보함
arr = new int[3];
arr = new int[] {1,2,3};
```


**배열 선언과 생성** 
```java  
// 명시적 배열 크기 지정
// 비어있는 배열
// 배열의 크기만 지정할 경우 선언된 타입의 초기값으로 초기화됨
int[] arr = new int[3];

// 묵시적 배열 크기 지정 = 배열 리터럴
// 컴파일러가 배열의 길이를 계산
int[] arr = {1,2,3};
int[] arr = new int[]{1,2,3};
```


**무명 배열**
```java
// 배열의 이름없이 초기값으로 배열 생성 
// 일회성으로 사용할 경우 사용
System.out.println(Arrays.toString(new int[]{1,2,3}));
```


**배열 순회**
```java
// 인덱스를 통한 배열 순회
for(int i=0 ; i<arr.length; i++)
    System.out.println(arr[i]);

// 향상된 for문
// 요소에 접근하기 쉬우나 인덱스를 직접적으로 알 수 없음
for(int num : arr)
    System.out.println(num);
```


**배열 복사**
```java
// 배열이 생성되면 크기 변경이 불가능하나 배열을 복제하는 방법으로 배열의 크기를 늘릴 수 있음

// 1. 배열 부분 복사
// System.arraycopy(원본배열, 시작, 복사될배열, 시작, 개수)
int[] arr = {1,2,3,4,5};
int[] target = {0,0,0,0,0};
System.arraycopy(arr, 1, target, 1,2); 
System.out.println(Arrays.toString(target));

// 2. 배열 전체 복사 
int[] arr = {1,2,3,4,5};
int[] target = arr.clone();
```


**java.lang.reflect.Array**  
: 배열 동적 생성과 배열에 접근하기 위한 클래스   


**java.util.Arrays**  
: 배열을 다루기 위한 기능이 존재하는 클래스  
: 배열 조작, 배열 복사, 항목 정렬, 항목 검색 등  



## Multidimensional Array
: 자바의 다차원 배열은 기술적으로 테이블 형태의 배열이 아니라 배열의 배열 형태로 구현  
: 자바의 다차원 배열은 연속된 메모리 블록이 아님  


**2차원 배열**
```java
// 1. 크기가 3 인 배열을 생성하고 => 메모리가 연속됨
// 2. 각 요소에 크기가 4인 배열을 참조를 저장 => 참조이므로 메모리가 연속되지 않음
int[][] matrix = new int[3][4];

or

int[][] matrix = new int[3][];
matrix[0] = new int[4];
matrix[1] = new int[5];
matrix[2] = new int[6];
```

&nbsp; | 컬럼1 | 컬럼2 | 컬럼3 | 컬럼4
---|---|---|---|---
<b>로우1</b> | [0][0] | [0][1] | [0][2] | [0][3]
<b>로우2</b> | [1][0] | [1][1] | [1][2] | [1][3]
<b>로우3</b> | [2][0] | [2][1] | [2][2] | [2][3]


```java
int[][] matrix = {
    {1},
    {3, 4, 5, 6},
    {7, 8},
};

for(int[] inner : matrix) {
    for(int i : inner) {
        System.out.println(i);
    }
}
```

&nbsp; | 컬럼1 | 컬럼2 | 컬럼3 | 컬럼4
---|---|---|---|---
<b>열1</b> | 1 | | | |
<b>열2</b> | 3 | 4 | 5 | 6
<b>열3</b> | 7 | 8 | | |



## Array Internals in JVM
: 자바에서 배열은 객체이지만 다른 객체와 달리 생성자가 없음  
: 배열 기호를 발견하면 JVM이 배열을 생성하는 바이트 코드를 호출함  
: 배열의 length 속성은 컴파일러에 의해 호출되는 특수 바이트 코드  


**Opcode**
- newarray : 기본 유형 배열 생성
- anewarray : 객체 참조 배열 생성
- multinewarray : 다차원 배열 생성
- arraylength : 배열 길이 반환


**배열 클래스**
```java
int[] arr = {1,2,3};
System.out.println(arr.getClass());
System.out.println(arr.getClass().getName());
```

Element Type | Encoding | Class
---|---|---
boolean   | Z | [Z
byte      | B | [B
char      | C | [C
short     | S | [S
int       | I | [I
long      | J | [J
float     | F | [F
double    | D | [D
Object    | Lclassname | [L

https://blogs.oracle.com/javamagazine/post/java-array-objects


**jol**  
: 자바 객체 메모리 검사 도구  

```java
int[] arr = new int[10];
System.out.println(ClassLayout.parseInstance(arr).toPrintable());
```