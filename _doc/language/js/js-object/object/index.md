---
order: 1
title: javascript
description: 자바스크립트 내장 객체
summary:
keywords:
- js
- js native object
- string
- json
tags:
- language
- js
created_time: 2024-11-06 11:26
modified_time: 2025-01-23 02:29
---

# JS Native Object
: 자바스크립트 엔진에 내장된 표준 객체  
: 내장 객체는 자바스크립트 엔진이 시작될 때 자동으로 메모리에 로드되어 바로 사용 가능함  
: 대부분의 내장 객체는 인스턴스 생성을 권장하지 않으며 리터럴로 사용하는 것이 효율적임  
: Date 같은 일부 내장 객체는 인스턴스를 생성해야 사용 가능함  
: Math, JSON, Atomics은 정적 내장 객체로 인스턴스 생성이 불가능함  
: 일부 내장 객체의 메소드 경우 보안 문제로 서버 환경에서 제한될 수 있음  

**기본 객체**
- [Object](./js-obj-object.md)
- [Boolean](./js-obj-boolean.md)
- [Array](./js-obj-array.md)
- [Function](./js-obj-function.md)
- [Date](./js-obj-date.md)
- [Symbol](./js-obj-symbol.md)
- [Error](./js-obj-error.md)

**숫자**
- [Number](./js-obj-number.md)
- [Math](./js-obj-math.md)
- [BigInt](./js-obj-bigint.md)

**텍스트**
- [String](./js-obj-string.md)
- [RegExp](./js-obj-regexp.md)

**데이터**
- [JSON](./js-obj-json.md)
- [Atomics](./js-obj-atomics.md)
- [Reflect](./js-obj-reflect.md)

**국제화**
- [Intl](./js-obj-intl.md)