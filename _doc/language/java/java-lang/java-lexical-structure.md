---
order: 1
title: Java
description: 자바 어휘 구조
summary:
keywords:
- java language
- java lexical structure
- identifier
- naming convention
- keyword
- separator
- operator
tags:
- java
created_time: 2024-10-14 03:10
modified_time: 2025-03-02 23:36
---

# Java Lexical Structure
: 자바 어휘 구조  
: 자바 프로그래밍 언어를 구성하는 가장 기본적인 규칙과 문법 요소들  

**구성 요소**   
- [주석](#comment)
- [공백](#white-space)
- [토큰](#token)
  - [식별자](#identifier)
  - [키워드](#keyword)
  - [리터럴](#literal)
  - [구분 기호](#separator)
  - [연산자](#operator)


**실행문**  
: 자바의 어휘 구조로 이루어진 코드 조각으로 실행 가능한 최소 단위  

```java
int num = 0;
```

키워드 | 식별자 | 연산자 | 리터럴 | 구분 기호
---|---|---|---|---
int | num | = | 0 | ;



## comment
: 자바 프로그램에서 사용되는 주석  
: 컴파일러에 의해 무시되는 영역으로 실행 파일에 포함되지 않음  

```java
// 한 줄 주석

/* 여러 줄 주석 */
```



## white space
: 자바 프로그램에서 사용되는 다양한 형태의 공백  
: 공백은 토큰을 구분하기 위해 사용되며 식별자에 사용하면 안됨  
: 컴파일러에 의해 무시되며 실행 파일에 포함되지 않음  

**종류**
- 유니코드 공백 문자들 (space, non-breaking space, thin space 등)
- ASCII 코드 공백
  - 공백 문자 (space)   
  - 가로 탭 (horizontal tab)
  - 수직 탭 (vertical  tab)
  - 폼 피드 (form feed)
  - 줄 바꿈 (line feed)
  - 줄 종결 (carriage return)

```java
@Test
public void test() {

    Scanner scanner = new Scanner(System.in);
    String input = scanner.nextLine();

    if(input.length() > 0) {
      char ch = input.charAt(0);
      if(Character.isWhitespace(ch)) {
        int codePoint = (int) ch;
        System.out.println(codePoint);
      }
    }

}
```



## token   
: 프로그램을 구성하는 최소 의미 단위  
: 컴파일러가 어휘 분석을 할 때 식별되는 기본 단위  
: 주석과 공백을 제외한 입력 요소로 공백, 세미콜론, 구분 기호로 토큰을 구분함  

**종류**
- [식별자](#identifier)
- [키워드](#keyword)
- [리터럴](#literal)
- [구분 기호](#separator)
- [연산자](#operator)



### identifier
: 변수, 레이블, 메소드, 클래스 등의 식별을 위해 부여하는 이름  
: 공백, null, true, false, 키워드를 제외한 대소문자와 숫자를 사용해 작명함  
: 유니코드 문자 집합에 속하는 문자는 식별자로 사용 가능하며 첫 글자로 숫자 사용은 불가능함
: 달러와 언더스코어는 사용 가능하나 컴파일러에서 사용하므로 사용을 지양   

**java naming convention**

종류 | 설명 | 사용
---|---|---
camelCase  | 첫 글자는 소문자로 시작하고 새 단어의 첫 글자를 대문자로 시작해 구분 | - variable <br>- method
PascalCase | 첫 글자는 대문자로 시작하고 새 단어의 첫 글자를 대문자로 시작해 구분 | - class <br>- interface
SNAKE_CASE | 모든 글자는 대문자를 사용하고 단어는 언더스코어 기호로 구분 | static variable



### keyword
: 특별한 의미가 지정된 예약 단어들  
: 타입 키워드, 정의 키워드, 제어 키워드, 연산자 키워드 등 다양한 용도가 있음  
: 일부 키워드는 문맥에 따라 의미가 달라지기도 함  

**reserved keyword**  
: 문법에서 특별한 의미를 가지는 키워드  
: 키워드 자체가 특별한 의미를 가지므로 식별자로 사용 불가능  

키워드 | 설명 
--- |---
_            | (java9) 람다, 이름없는 변수
abstract     | 추상 메소드와 추상 클래스를 정의하는 키워드
assert       | boolean expression, 코드 검증을 위한 키워드
boolean      | 데이터 타입 
break        | if문에서 흐름을 중단하고 switch문과 반복문에서 종료하기 위한 키워드  
byte         | 데이터 타입 
case         | switch문에서 조건 블록을 정의하는 키워드
catch        | try문에서 생성된 예외를 처리하기 위한 키워드
char         | 데이터 타입   
class        | 클래스를 정의하는 키워드  
continue     | 반복문에서 현재 흐름을 중단하고 다음으로 넘어가는 키워드
default      | switch문에서 기본 코드 블록 정의, 인터페이스에서 메소드 구현을 위한 키워드 
do           | do-while문에서 반복문을 선언하는 키워드 
double       | 데이터 타입
else         | if문에서 대안 분기를 정의하는 키워드
enum         | 열거형을 정의하는 키워드
extends      | 클래스에서 상속, 인터페이스에서 확장을 선언하는 키워드
final        | 변경 불가능한 변수, 메소드, 클래스를 선언하는 키워드
finally      | try문에서 예외 발생 여부와 상관없이 항상 실행되는 코드 블럭을 정의하는 키워드 
float        | 데이터 타입
for          | 반복문을 정의하는 키워드
if           | 조건문을 정의하는 키워드
implements   | 인터페이스 구현을 선언하는 키워드
import       | 클래스와 인터페이스를 가져오기 위한 키워드
instanceof   | boolean expression, 객체의 타입을 확인하기 위한 키워드  
int          | 데이터 타입
interface    | 인터페이스를 정의하는 키워드
long         | 데이터 타입
native       | 메소드가 네이티브 코드로 구현 되도록 지정하는 키워드
new          | 새로운 객체 생성을 위한 키워드
package      | 패키지를 선언하는 키워드
private      | 접근 제어자
protected    | 접근 제어자
public       | 접근 제어자 
return       | 메소드 실행을 종료하고 값을 반환하는 키워드
short        | 데이터 타입
static       | 클래스 변수, 클래스 메소드를 지정하기 위한 키워드
strictfp     | 부동 소수점 표준을 엄격히 따르도록 지정하는 키워드
super        | 상위 클래스 객체를 참조하기 위한 키워드
switch       | 다중 조건문을 정의하는 키워드
synchronized | 다중 스레드에서 동기화가 필요한 메소드나 코드 블럭을 지정하기 위한 키워드 
this         | 현재 객체를 참조하는 키워드
throw        | 예외를 명시적으로 발생시키는 키워드
throws       | 메소드가 발생시킬 수 있는 예외를 선언하는 키워드
transient    | 직렬화 과정에서 제외할 필드를 지정하는 키워드
try          | 예외 처리 블록을 정의하는 키워드
void         | 메소드에서 리턴 타입이 없음을 지정하는 키워드
volatile     | 필드를 메인 메모리에 저장하기 위한 키워드
while        | 반복문을 정의하는 키워드 


**contextual keyword**  
: 특정 맥락에서 키워드로 사용되며 다른 상황에서는 식별자로 사용 가능함  

키워드 | 설명 
---|---
exports      | (java9) 특정 패키지를 외부로 공개하기 위한 키워드   
module       | (java9) 모듈을 선언하는 키워드 
non-sealed   | (java17) Sealed 클래스의 하위 클래스가 더 이상 봉인되지 않음을 선언하는 키워드
open         | (java9) 런타임에 모듈 내 모든 패키지에 대한 리플렉션을 허용하는 키워드
opens        | (java9) 특정 패키지에 대한 리플렉션을 허용하는 키워드
permits      | (java17) Sealed 클래스가 상속을 허용할 클래스 목록을 지정하는 키워드
provides     | (java9) 모듈이 특정 서비스의 구현을 제공함을 선언하는 키워드
record       | (java14) Record 클래스 선언을 위한 키워드
requires     | (java9) 모듈이 다른 모듈에 의존함을 선언하는 키워드
sealed       | (java17) Sealed 클래스 선언을 위한 키워드
to           | (java9) provides문에서 서비스 구현을 지정하는 키워드
transitive   | (java9) 모듈이 의존하는 다른 모듈을 내보내기 위한 키워드
uses         | (java9) 모듈이 특정 서비스를 사용함을 선언하는 키워드
var          | (java10) 지역 변수의 타입이 자동으로 추론되도록 하는 키워드
with         | (java15) Record 클래스의 복사 메소드를 생성하기 위한 키워드
yield        | (java14) switch 표현식에서 결과 값을 반환하는 키워드


**restricted keyword**  
: 예약어로 지정되었지만 사용되지 않는 키워드  

키워드 | 설명 
---|---
const        | 예약어로 지정했으나 실제 구현하지 않음
goto         | 예약어로 지정했으나 실제 구현하지 않음
when         | 예약어로 미래에 사용될 수 있음



### literal
: 코드에서 직접적으로 표현된 데이터 값  
: null, true, false는 리터럴이면서 식별자로 사용 불가능함  

**종류**
- Null
- Boolean
- Integer
- Floating Point
- Character
- String


**null**  
: 이름없는 타입으로 그 자체로 null 이라는 값 (null을 나타내는 비트 패턴이 할당됨)  



### separator
: 코드에서 요소(토큰)를 구분하기 위해 사용되는 특수한 문자  

구분 기호 | 설명
---|---
( )  | 메소드 정의 및 호출, 매개 변수 목록, 표현식에서는 우선 순위 정의, 제어문에서는 표현식 정의
[ ]  | 배열 유형 선언, 배열 값 참조
{ }  | 배열의 초기 값, enum 목록, 클래스와 메소드 및 명령문을 묶는 블록 정의, 초기화 블록   
;    | 문장 분리나 문장 끝, 일부 상황에서 생략 가능
,    | 변수 연속 선언시 식별자 구분, 배열의 요소 구분
.    | 패키지 구분, 객체의 필드와 메소드 참조
@    | 어노테이션
...  | 가변 인자
:    | 디폴트 메소드 구현, 삼항 연산자, for-each 문, switch 문, label문, assertion에 사용
::   | 생성자 참조나 메소드 참조 	
->   | 람다 표현식에서 파라미터와 바디를 구분
"    | 문자열 리터럴의 시작과 끝
'    | 문자 리터럴의 시작과 끝



### operator
: 연산을 수행하는 기호로 약 38개 연산자 기호가 존재함  
: [연산자](./java-operator.md)는 기능이나 용도에 따라 다양한 분류로 나뉨  

```
=   >   <   !   ~   ?   :   ->
==  >=  <=  !=  &&  ||  ++  --
+   -   *   /   &   |   ^   %   <<   >>   >>>
+=  -=  *=  /=  &=  |=  ^=  %=  <<=  >>=  >>>=
```