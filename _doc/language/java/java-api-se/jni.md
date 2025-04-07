---
order: 0.2
title: java
description: Java Native Interface (JNI)
summary:
keywords:
- java
- java api
- jni
- java native interface
tags:
- language
- java
created_time: 2024-10-23 00:31
modified_time: 2024-10-30 20:01
---

# JNI
Java Native Interface Specification  
: C, C++, Objective-C 같은 언어로 작성된 코드와 자바 프로그램 간 상호작용을 하기 위한 규약  
: 자바 코드는 JVM 위에서 실행되므로 플랫폼에서 독립적이나 네이티브 함수는 플랫폼에 종속적  
: 언어간 데이터 타입 크기가 달라 이를 위해 JNI에서 별도로 사용하는 데이터 타입 존재  

```
Java APP [JNI] Native Method
----------------------------
          JVM
```


구성 요소 | 설명
---|---
jni.h  | JNI 헤더 파일
JavaVM | JVM 인스턴스에 접근하기 위한 포인터
JNIEnv | JNI 인터페이스에 접근하는 포인터


**JNI Data Type**

Java | JNI | Native
---|---|---
boolean  | jboolean     | unsigned char
byte     | jbyte        | signed char
int      | jint         | int
Class    | jclass       | pointer
Object   | jobject      | pointer
Object[] | jobjectArray | pointer
byte[]   | jbyteArray   | pointer


**명명 규칙**  
> Java_패키지이름_클래스이름_메소드이름


**JNI 함수**
```c
// 클래스 참조
JNIEXPORT return_type JNICALL FunctionName(JNIEnv* env, jclass clazz)

// 객체 참조
JNIEXPORT return_type JNICALL FunctionName(JNIEnv* env, jobject obj)
```


**example**

NativeClass.java
```java
// 네이티브 라이브러리와 자바 프로그램 사이에서 브릿지 역할을 하는 클래스
public class NativeClass {
    
    // 네이티브 라이브러리 로드
    // 윈도우면 Native.dll 리눅스면 libNative.so
    static {
        System.loadLibrary("Native");
    }

    // 네이티브 메소드를 호출 선언
    native void nativeMethod();

    public static void main(String[] args) {

        // 네이티브 메소드를 호출
        new NativeClass().nativeMethod();
    }

}
```

compile
```bash
# 헤더 파일을 생성해야 함
javac -h NativeClass.java
```

Native.c
```c
#include <jni.h>
#include <stdio.h>
#include "NativeClass.h"

JNIEXPORT void JNICALL Java_NativeClass_nativeMethod(JNIEnv* env, jobject obj) {
    printf("native code!\n");
}
```

compile
```bash
# 네이티브 라이브러리는 운영체제에 맞게 컴파일
## windows
gcc -c -I"%JAVA_HOME%\include" -I"%JAVA_HOME%\include\win32" Native.c -o Native.o
gcc -shared -o Native.dll Native.o -Wl,--add-stdcall-alias

## linux
gcc -c -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux" Native.c -o Native.o
gcc -shared -o libNative.so Native.o
```