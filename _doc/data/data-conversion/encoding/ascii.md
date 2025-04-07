---
order: 0.1
title: data encoding
description: 데이터 인코딩 - ASCII
summary:
keywords:
- data conversion
- data encoding
- ascii
- 아스키
tags:
- data
- encoding
created_time: 2024-10-14 12:40
modified_time: 2024-11-21 11:21
---

# ASCII
American Standard Code for Information Interchange  
: 미국 정보 교환 표준 코드   
: 이기종 컴퓨터끼리 문자 데이터를 교환하기 위해 [ANSI](../../../standard/index.md#ansi)에서 제정한 문자 인코딩 코드  
: 아스키는 7비트로 구성되어 있으며 128개 영어권 문자를 표현  


**구성**   
- 제어 문자 33개
  - 포맷 제어 문자 6개
  - 장치 제어 문자 4개
  - 정보 분리 제어 문자
  - 전송 제어 문자
- 문자 95개
  - 1개 - 공백
  - 10개 - 숫자
  - 32개 - 특수 문자
  - 52개 - 영문 대소문자


코드 | 이진수 | 문자
---|---|---
0   | 0000000 | NUL 제어문자
65  | 1000001 | A
127 | 1111111 | DEL 제어문자


**확장된 아스키 코드**  
: 7비트 아스키에 패리티 비트를 추가한 8비트 코드  
: 패리티 비트는 데이터 전송 도중에 발생하는 오류를 검출하는데 사용함  


**ISO/IEC 646**  
: [국제표준화기구](../../../standard/index.md#iso)와 [국제전기기술위원회](../../../standard/index.md#iec)가 제정한 국제 문자 인코딩 표준  
: ASCII를 기반으로 확장성과 지역화를 더한 표준 문자 코드  
: ISO/IEC 646이 사용되더라도 대중적 명칭인 아스키라고 부르며 두 표준을 구별하지 않음  