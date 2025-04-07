---
order: 1
title: javascript
description: 자바스크립트 키워드
summary:
keywords:
- js
- js language
- js keyword
- reserved word
tags:
- language
- js
created_time: 2025-01-23 21:07
modified_time: 2025-01-23 22:03
---

# JS Keyword
: [문장](./js-statement.md)을 구성하기 위해 예약된 단어들로 식별자로 사용 불가능함  
: 객체의 프로퍼티 키로는 사용 가능하나 브라우저 호환성 문제가 있을 수 있음  

```js
var obj = {
  class: {},
};
```


키워드 | 설명
---|---
as             | 가져온 모듈의 이름을 변경
async (ES2017) | 비동기 함수 선언
await (ES2017) | 비동기 함수 내에서 프로미스 처리
break          | 제어문 종료, 스위치 문 종료  
case           | 스위치 문에서 조건 분기
catch          | 예외처리
class          | 클래스 선언
const          | 변수 선언
continue       | 반복문에서 다음 반복으로 건너띄기
debugger       | 코드 실행을 중단하고 디버깅 도구를 호출
default        | 스위치 문에서 조건에 해당하지 않을때 실행될 기본 분기, 하나만 내보낼 모듈 지정 
delete         | 객체의 프로퍼티 제거
do             | do while 반복문
else           | if 조건문에서 조건이 거짓일 때 실행되는 분기
export         | 내보낼 모듈 선언
extends        | 클래스 상속
finally        | 예외처리에서 무조건 실행되는 최종 블록
for            | 반복문
function       | 함수 선언문
if             | 조건문
import         | 가져올 모듈 선언
in             | 객체에 프로퍼티 존재 여부 확인
instanceof     | 객체의 인스턴스 확인
let            | 변수 선언
new            | 생성자 함수를 호출해 인스턴스 생성
of             | for... of 반복문에서 요소를 순회
return         | 함수 실행을 끝내고 함수를 호출한 곳으로 반환 값 리턴
static         | 클래스에서 정적 프로퍼티와 정적 메소드 선언
super          | 클래스 상속 상태에서 부모 객체 호출
switch         | switch 조건문
this           | 현재 실행 컨텍스트 참조
throw          | 예외처리에서 예외 발생
try            | 예외처리
typeof         | 데이터 타입을 문자열로 반환  
var            | 변수 선언
void           | 표현식 실행 후 undefined 반환
while          | while 반복문
<s>with</s>    | with 문
yield          | 제너레이터 함수를 일시적으로 중지하거나 재개


**예약어**
- abstract
- boolean
- byte
- char
- double
- enum
- final
- float
- goto
- implements
- int
- interface
- long
- native
- package
- private
- protected
- public
- short
- synchronized
- throws
- transient
- volatile