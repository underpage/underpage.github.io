---
order: 1
title: Security
description: 암호학
summary:
keywords:
- security
- security technology
- cryptography
tags:
- security
created_time: 2025-04-07 04:37
modified_time: 2025-06-13 16:34
---

# Cryptography
: 암호(Cipher)란 특정한 규칙을 사용해 정보를 이해할 수 없는 형태로 변환한 결과물  
: 암호학은 암호화 기술을 구성하는 수학적 기법과 원리를 연구하는 학문으로 정보를 암호화하고 복호화하는 기술과 이를 해독하고 분석하는 암호 분석을 포괄함  

- [암호 기술](./cryptographic-technology.md)
- [암호 분석](./cryptanalysis.md)
- [암호 평가](./cryptographic-evaluation.md)


**용어**

용어 | 설명
---|---
평문 | 암호화되지 않은 원본 메시지
암호화 | 평문을 특정 규칙(알고리즘)과 키를 통해 암호문으로 변환하는 과정
암호문 | 암호화를 통해 코드화된 데이터로 원래 내용을 알 수 없음
복호화 | 암호문을 키를 사용해 원래의 평문으로 복원하는 과정
키 | 암호화와 복호화에 사용되는 값
알고리즘 | 암호화와 복호화에 사용되는 논리적 절차 또는 수학적 함수


**목표**
- 기밀성 : 허가받지 않은 개체가 데이터를 이해할 수 없도록 함
- 무결성 : 데이터가 무단으로 변조되거나 손상되지 않았음을 보장함
- 인증 : 개체의 신원과 데이터의 출처를 검증함
- 부인 방지 : 송신자가 메시지 전송 사실을 부인할 수 없도록 보장함



## Cryptography History
: 암호학은 기술이 발전함에 따라 다양한 방식으로 발전함  
: 고대에는 인간이 직접 문자를 변환했으나 현대에는 기계와 수학적 알고리즘을 활용함  


### 고대 암호
: 인간이 직접 문자를 대체하거나 순서를 바꾸는 방식으로 암호화가 이루어짐  
: 키 규칙이 단순하여 분석을 통해 비교적 쉽게 해독이 가능함  

**대치** (Substitution)  
: 문자를 다른 문자나 기호로 대체(치환)함  

암호 | 설명
---|---
시저 암호 | 알파벳을 일정 간격으로 이동하여 변환함
모노알파베틱 암호 | 한 문자를 다른 문자로 대체함


**전치** (Transposition)  
: 문자의 순서나 위치를 재배열함  

암호 | 설명
---|---
스키테일 암호 | 막대기에 종이를 감아 문자를 재배열함
열 전치 암호 | 문자의 열 순서를 변경함
행 전치 암호 | 문자의 행 순서를 변경함
레일 펜스 암호 | 지그재그 패턴으로 문자를 배열함


**암호 기법**
- 스테가노그래피
- 폴리비우스 정사각형


### 근대 암호
: 기계 장치를 이용해 암호 변환의 복잡성을 높이고 자동화함  
: 기계의 설정 값을 조합해 키를 생성해 보안이 강화되었으나 사전에 키를 공유해야 하는 문제가 존재함  

암호 | 설명
---|---
에니그마 암호 | 회전자를 이용한 복잡한 치환 방식
로터 머신 암호 | 다중 회전 메커니즘을 사용해 암호화
로렌츠 암호 | 텔레타이프용 스트림 암호 기계
제퍼슨 휠 | 회전식 암호 장치


### 현대 암호
: 컴퓨터를 기반으로 수학적 알고리즘을 적용해 복잡한 계산 과정을 거쳐 암호화가 이루어짐  
: 컴퓨터 연산을 통해 키를 생성하고 관리하여 보다 안전하고 보안성이 극대화됨  

```
1950년대  클로드 새넌이 암호학의 이론적 토대를 마련

1970년대  대칭키 암호화 체계화
          - IBM에서 DES 개발 (이후 미국 표준으로 채택)
          - 블록 암호와 스트림 암호 정립
          - 디피-헬먼 키 교환 발표하며 공개키 개념 등장

1980년대  공개키 암호화 체계화
          - RSA 알고리즘 발표
          - 타원 곡선 암호 개념 등장
          - 디지털 서명 이론 등장
          - 영지식 증명 개념 도입

1990년대  암호 인프라 발전
          - 하이브리드 암호 시스템 (대칭키 + 공개키)
          - PKI 체계 구축
          - 암호학적 해시 함수 활용

2000년대  고급 암호 기술
          - AES 채택
          - 디지털 서명 표준 체계
          - 암호학적 해시 함수 고도화

2010년대  차세대 암호 기술
          - 동형 암호 연구
          - 경량 암호 개발 (IoT)
```