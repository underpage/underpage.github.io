---
order: 1.3
title: Python
description: 파이썬 키워드
summary:
keywords:
- python
- python keyword
tags:
- python
created_time: 2025-04-07 04:37
modified_time: 2025-06-19 23:49
---

# Python Keyword   
: 키워드는 파이썬 문법을 위해 특별한 의미를 가지며 변수, 함수, 클래스 이름으로 사용 불가능함  
: and, or, not, is, in 경우 연산자처럼 동작하지만 연산자가 아니라 키워드로 분류됨  

키워드 | 설명
---|---
None     | 빈 값을 나타내는 내장 상수
False    | boolean의 거짓을 나타내는 내장 상수
True     | boolean의 참을 나타내는 내장 상수
and      | 논리 AND 연산자
as       | import, except, with 문에서 별칭 지정
assert   | 디버깅에서 사용
async    | 비동기 함수와 메소드를 정의
await    | 비동기 함수와 메소드에서 코루틴 대기
break    | 반복문 즉시 중단
case     | 패턴 매칭의 조건을 정의
class    | 클래스 정의
continue | 반복문 진행을 멈추고 다음 진행
def      | 함수 정의
del      | 바인딩을 제거
elif     | 조건문에서 추가 분기
else     | 조건문에서 분기
except   | 예외처리
finally  | 예외 발생 여부와 관계없이 마지막에 항상 실행
for      | 반복문 순회
from     | 모듈에서 특정 부분 임포트
global   | 함수에서 전역 변수 참조
if       | 조건문
import   | 모듈 임포트
in       | 멤버십 연산자
is       | 객체의 동일성 비교
lambda   | 익명 함수 정의
nonlocal | 중첩 함수에서 외부 변수 참조
not      | 논리 NOT 연산자
match    | 패턴 매칭
or       | 논리 OR 연산자
pass     | 아무 동작도 하지 않는 플레이스홀더
raise    | 예외 발생
return   | 함수를 종료하고 값을 반환
try      | 예외 처리 블록 시작
while    | 조건 기반 반복문
with     | 컨텍스트 관리 구문으로 자원의 획득과 해제를 자동으로 처리함
yield    | 제너레이터 함수에서 값을 생성하고 실행을 일시적으로 정지


**키워드 확인**
```python
import keyword

print(keyword.kwlist)
```