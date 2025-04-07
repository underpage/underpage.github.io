---
order: 3.1
title: Programming
description: 도메인 특화 언어 (DSL)
summary:
keywords:
- programming language
- domain specific language
- dsl
tags:
- program
- language
created_time: 2024-10-05 07:13
modified_time: 2025-03-22 01:39
---

# Domain Specific Language
<> General Purpose Language (범용 언어)  
: 도메인 특화 언어란 특정 작업이나 도메인에 최적화된 언어  
: 해당 도메인의 개념과 규칙을 사용하거나 지켜야함 (범위가 제한됨)  
: 특정 도메인에 최적화되어 효율적이지만 다른 도메인에는 사용하기 어려움  
: 도메인 언어는 범용 언어보다 표현력이 제한되고 유연성이 떨어짐  
: 주로 소프트웨어 설정, 데이터 조작 등을 위해 사용됨  

구분 | 설명
---|---
Internal DSL | 기존 범용 언어를 활용해 만든 도메인 특화 언어 또는 API
External DSL | 완전히 새로운 문법으로 설계된 독립적인 언어


**종류**
- [Hardware Description Language](#hardware-description-language)
- [Data Configuration Language](#data-configuration-language)
- [Configuration Language](#configuration-language)
- [Build Language](#build-language)
- Style Sheet Language
- Query Language
- Modeling Language
  - UML
  - ERD
  - SDL

  

## Hardware Description Language
: 하드웨어의 디지털 회로와 시스템을 설계하고 기술하기 언어  

**종류**
- VHDL
- Verilog
- SystemVerilog



## Data Configuration Language
: 데이터 구성 언어  
: 데이터 구조화, 설정, 구성 관리를 위한 언어로 데이터 변형 및 조작이 가능함  
: 데이터 구성 언어는 넓은 의미에서 구성 언어를 포함함  

**종류**
- Jsonnet
- Nickel
- Dhall
- CUE



## Configuration Language
: 시스템이나 애플리케이션 설정을 정의하고 관리하기 위해 언어  

**종류**
- HCL



## Build Language
: 소스 코드를 컴파일/패키지/배포 자동화를 돕기 위해 사용되는 언어

**종류**
- Make DSL
- CMake
- Groovy
- Kotlin DSL
- Starlark