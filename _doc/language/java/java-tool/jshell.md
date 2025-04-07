---
order: 1
title: java
description: 자바 도구 - JShell
summary:
keywords:
- java
- java tool
- jshell
tags:
- java
- tool
created_time: 2024-10-22 23:56
modified_time: 2025-01-19 21:36
---

# JShell
= Java Shell  
: Java 9 부터 공식 도입된 REPL 도구  
: 자바 소스 코드를 파일로 저장하거나 컴파일없이 바로 실행 가능  

```bash 
jshell

# 도움말
> /help

# 라이브러리 목록 
> /list -all

# import 패키지 목록
> /imports

# 생성한 클래스 목록
> /class

# 생성한 변수 목록 
> /vars

# 생성한 메소드 목록 
> /methods

# 세션 상태
> /status

# 종료
> /exit


## 사용 방법
> int num = 0
> System.out.println("hello world")
```


**command**  
https://docs.oracle.com/en/java/javase/21/docs/specs/man/jshell.html  