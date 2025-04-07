---
order: 0.1
title: html
description: 문서 형식 선언 (DTD)
summary:
keywords:
- web
- html
- dtd
- doctype
tags:
- html
created_time: 2024-10-02 01:47
modified_time: 2024-10-29 22:48
---

# DTD
Document Type Declaration  
: 문서 형식 선언  
: 브라우저에게 웹 문서의 버전과 형식을 알리기 위한 선언문  
: 선언한 독타입 규약에 따라 렌더링하므로 웹 문서의 첫 줄에 선언  
: 일부 브라우저는 독타입을 선언하지 않으면 쿼크 모드로 렌더링될 수 있음

**quirks mode**  
: 호환성을 위해 일부 규칙이 다르게 적용됨  
: IE 브라우저 경우 6,7,8,9 버전에서 IE5.5 버전으로 호환하기 위한 모드   


**html5 DTD**
```html
<!doctype html>
```



## Document Type Definition
: 문서 형식 정의  
: SGML 또는 XML의 문서 구조와 사용 가능한 요소를 정의한 규칙  
: 이를 통해 웹 문서의 구조를 엄격하게 정의하고 검증하게 함  
: HTML4와 XHTML은 SGML 기반으로 Document Type Definition를 참조  
: HTML5 경우 SGML 기반이 아니므로 Document Type Definition를 참조하지 않음   

```
일반적으로 DTD는 Document Type Declaration을 의미하지만 
HTML4와 XHTML에서는 실제로 Document Type Definition을 참조함
```


**html4 DTD**
```html
<!DOCTYPE ROOT_EL PUBLIC_URL SYSTEM_URL>


<!-- 표준 모드 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 엄격 모드 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
```