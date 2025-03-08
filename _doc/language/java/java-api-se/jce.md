---
order: 1
title: Java
description: 자바 암호화 확장 (JCE)
summary:
keywords:
- java api
- java se
- java cryptography extension
- jce
tags:
- java
created_time: 2024-10-23 00:24
modified_time: 2025-03-08 19:30
---

# JCE
Java Cryptography Extension  
: [JCA](./jca.md) 기능을 확장한 암호화 관련 API  
: 대칭키 암호화, 공개키 암호화, 암호화 스트림과 같은 고급 암호화 기능을 제공함  

**JCA vs JCE**  
: JCA는 암호화의 기본적인 구조와 인터페이스를 제공  
: JCE는 JCA의 기능을 확장하여 암호화, 복호화, 디지털 서명, 키 생성과 관리 등을 지원  


**패키지**
- javax.crypto


**주요 클래스**

클래스 | 설명
---|---
Cipher       | 암호화 및 복호화 기능을 제공하는 클래스
KeyGenerator | 대칭키를 생성하는 클래스
SecretKey    | 대칭키를 나타내는 인터페이스
Mac          | 메시지 인증 코드를 생성하는 클래스
SecureRandom | 암호학적으로 안전한 난수 생성을 지원하는 클래스


**암호화 알고리즘**

알고리즘 | 설명 | 키 길이 | 기본값
---|---|---|---
DES        | 대칭키 암호화 (권장되지 않음) | 56 | 56
AES        | 대칭키 암호화 | 128, 192, 256 | 128
DESede     | DES를 3번 적용하여 보안성을 높인 대칭키 암호화 | 112, 168 | 168
Blowfish   | 가변 길이 키를 지원하는 대칭키 암호화 | 32 ~ 448 | 128
RC2	       | 가변 길이 키를 지원하는 대칭키 암호화 | 40 ~ 128 | 128
RC4	       | 스트림 암호 방식의 대칭키 암호화 | 40 ~ 2048 | 128
RSA        | 공개키 암호화 | 1024, 2048, 3072, 4096 | 2048
ElGamal    | 공개키 암호화 | 1024+ | 2048
ECC        | 타원 곡선 기반 공개키 암호화 | 160+ | 256


**암호화 모드**  
: 암호화 블록을 처리하는 방식을 정의  

모드 | 설명 | 특징
---|---|---
ECB | 각 블록을 독립적으로 암호화 (권장되지 않음) | 가장 단순하며 보안에 취약
CBC | 이전 블록의 암호문과 현재 블록을 XOR 연산 후 암호화 | 병렬 처리 불가
CFB | 이전 암호문을 암호화한 후 현재 평문과 XOR | 스트림 암호처럼 사용 가능
OFB | 이전 출력을 암호화한 후 현재 평문과 XOR | 전송 오류에 강함
CTR | 카운터 값을 암호화한 후 평문과 XOR | 병렬 처리 가능
GCM | CTR 모드에 인증 기능 추가 | 암호화와 인증을 동시에 제공


**패딩 방식**

패딩 방식 | 설명
---|---
NoPadding    | 패딩을 사용하지 않음 (입력 데이터 길이가 블록 크기의 배수여야 함)
PKCS5Padding | PKCS #5 표준 패딩 (8바이트 블록 크기에 사용)
PKCS7Padding | PKCS #7 표준 패딩 (가변 블록 크기에 사용)
ISO10126Padding | 마지막 바이트를 제외하고 랜덤 바이트로 채움 (권장되지 않음)
ANSI X.923      | 마지막 바이트를 제외하고 0으로 채움
SSL3Padding     | SSL 3.0 프로토콜에서 사용되는 패딩 방식


**MAC 알고리즘**

알고리즘 | 설명 | 키 길이 | 기본값
---|---|---|---
HmacMD5    | MD5 해시를 기반으로 한 메시지 인증 코드 | 128+ | 128
HmacSHA1   | SHA-1 해시를 기반으로 한 메시지 인증 코드 | 160+ | 160
HmacSHA256 | SHA-256 해시를 기반으로 한 메시지 인증 코드 | 256+ | 256
HmacSHA384 | SHA-384 해시를 기반으로 한 메시지 인증 코드 | 384+ | 384
HmacSHA512 | SHA-512 해시를 기반으로 한 메시지 인증 코드 | 512+ | 512
CMAC       | 블록 암호를 기반으로한 메시지 인증 코드 | 키 길이와 동일 | 블록 크기와 동일
GMAC       | GCM 모드의 인증 부분 | 키 길이와 동일 | 128
Poly1305   | 다항식 해시를 기반으로 한 메시지 인증 코드 | 256 | 128



## Cipher
: 암호화와 복호화 처리를 지원하는 클래스  
: 다양한 암호화 알고리즘과 모드, 패딩 방식을 지원함  

속성 | 설명
---|---
ENCRYPT_MODE | 암호화 모드
DECRYPT_MODE | 복호화 모드
WRAP_MODE    | 키 래핑 모드
UNWRAP_MODE  | 키 언래핑 모드

ex.
```java
// 1. 대칭키 생성
KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
keyGenerator.init(128);
SecretKey secretKey = keyGenerator.generateKey();

// 2. Cipher 객체 생성
Cipher cipher = Cipher.getInstance("AES");

// 암호화
cipher.init(Cipher.ENCRYPT_MODE, secretKey);
String originalText = "Hello, World";
byte[] encryptedText = cipher.doFinal(originalText.getBytes());
String encryptedString = Base64.getEncoder().encodeToString(encryptedText);

// 복호화
cipher.init(Cipher.DECRYPT_MODE, secretKey);
byte[] decryptedText = cipher.doFinal(Base64.getDecoder().decode(encryptedString));
String decryptedString = new String(decryptedText);
```