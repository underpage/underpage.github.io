---
order: 2
title: JS
description: 자바스크립트 내장 객체 목록
summary:
keywords:
- js
- js built-in object
tags:
- js
created_time: 2025-12-04 20:25
modified_time: 2025-12-04 22:09
---

# JS Built-in Object
: ECMAScript 스펙이 정의하는 표준 내장 객체  
: 자바스크립트 엔진에 내장되어 다양한 [환경](../js-runtime-environment.md)에서 지원됨  
: 내장 객체는 자바스크립트 환경 별 전역 객체 프로퍼티를 통해 제공됨  
: Array, String 등 리터럴 표기법이 있는 타입은 가독성을 위해 리터럴 사용이 권장됨  


**기본 객체**
- [Object](./js-obj-object.md)
- [Function](./js-obj-function.md)

**래퍼 객체**
- [String](./js-obj-string.md)
- [Number](./js-obj-number.md)
- [Boolean](./js-obj-boolean.md)
- [BigInt](./js-obj-bigint.md)
- [Symbol](./js-obj-symbol.md)

**오류**
- [Error](./js-obj-error.md)

**유틸리티**
- [Date](./js-obj-date.md)
- [RegExp](./js-obj-regexp.md)

**컬렉션**
- [Array](./js-obj-array.md)
- [Set](./js-obj-set.md)
- [Map](./js-obj-map.md)
- [WeakSet](./js-obj-weakset.md)
- [WeakMap](./js-obj-weakmap.md)
- [Typed Array](./js-obj-typedarray.md)

**이진 데이터**
- [ArrayBuffer](./js-obj-arraybuffer.md)
- [SharedArrayBuffer](./js-obj-arraybuffer.md#sharedarraybuffer)
- [DataView](./js-obj-dataview.md)

**제어 흐름**
- [RegExp](./js-obj-regexp.md)
- [Promise](./js-obj-promise.md)
- [Iterator](./js-obj-iterator.md)

**메타 프로그래밍**
- [Proxy](./js-obj-proxy.md)
- [Reflect](./js-obj-reflect.md)

**자원 관리**
- [WeakRef](./js-obj-weakref.md)
- [FinalizationRegistry](./js-obj-fnalizationregistry.md)

**네임스페이스 객체**  
: 인스턴스 생성이 불가능하며 정적 메소드만 제공하는 유틸리티 객체  

- [Math](./js-obj-math.md)
- [JSON](./js-obj-json.md)
- [Atomics](./js-obj-atomics.md)
- [Reflect](./js-obj-reflect.md)
- [Intl](./js-obj-intl.md)