---
order: 0.1
title: html
description: HTML
summary:
keywords:
- web
- html
- html version
- markup Language
tags:
- html
created_time: 2024-10-01 23:29
modified_time: 2024-10-29 22:48
---

# HTML
HyperText Markup Language  
: 웹 문서, 웹 애플리케이션을 만들기 위한 마크업 언어  
: 태그를 사용해 콘텐츠의 성격과 의미를 표현하고 웹 문서의 요소를 생성  
: 요소를 통해 웹 문서의 구조와 기능을 표현  

- [HTML Version](#html-version)
  - [HTML5](#html5)
- [HTML DTD](./html-doctype.md)
- [HTML Element](./html-element.md)
  - [HTML Content Model](./html-content-model.md)
  - [HTML Attribute](./html-attribute.md)
  - [HTML Attribute Value](./html-attribute--value.md)
- [HTML Microdata](./html-microdata.md)



## HTML Version
: 웹 기술의 발전과 더불어 HTML도 발전

버전 | 특징 | 명세
---|---|---
HTML 1.0 (1991)  | 약 18개 기본 요소 공개 | 비공식 사양
HTML 2.0 (1995)  | HTML 1.0을 개선한 공식 사양 | [spec](https://www.w3.org/MarkUp/html-spec/html-spec_toc.html)
HTML 3.x (1996)  | W3C에 의해 표준화, CSS 사양 권고 | [spec](https://www.w3.org/TR/2018/SPSD-html32-20180315/)
HTML 4.x (1997)  | 국제화, CSS 도입 | [spec](https://www.w3.org/TR/1998/REC-html40-19980424/)
XHTML 1.0 (2000) | XML을 기반으로 하는 엄격 구조 도입  |
XHTML 2.0 (폐기) | XForm, XFrames, XEvents 등 도입 |
HTML 5.x (2014~) | WHATWG와 W3C의 협력으로 웹 플랫폼 표준화  | [spec](https://html.spec.whatwg.org/)


**history**
```
웹 애플리케이션이 발전하며 복잡한 데이터의 관리를 위해서 XHTML이 도입되었으며 
HTML의 느슨한 문법을 엄격하게 처리하고 웹 접근성, 모듈화 등 다양한 기술을 도입한 XHTML 2.0이 제안되었으나 
이전 버전과 호환성 문제와 엄격한 규칙 문제 및 당시 벤더사들이 HTML5를 개발하며 폐기됨

2000년대 초반 브라우저 벤더사들이 독자적인 기능을 추가하며 브라우저가 파편화되기 시작
(웹 표준화 기구가 기술 발전 속도를 따라가지 못했으며 브라우저 간 경쟁이 심화되며 파편화가 가속)

2000년대 중반에 제안된 XHTML 2.0을 벤더사들이 호환성 문제로 채택하지 않고 
대신 비표준 기능들을 표준화하고 웹 플랫폼을 위해 벤더사들이 모여 HTML5를 개발 (WHATWG)
```



### HTML5
: 특정 플랫폼에 의존하지 않는 크로스 플랫폼으로 설계  
: 데스크톱, 모바일, 태블릿, 텔레비전 등 거의 모든 장치에 적용 가능  
: 웹 애플리케이션 개발을 위한 플랫폼 표준화 기술 도입  

**도입**
- 폼 요소에 다양한 속성 추가
- 시맨틱 요소 도입
- 멀티 미디어 지원 강화
- 그래픽 지원 강화

https://html.spec.whatwg.org/    
https://www.w3.org/TR/html51/ -- 2017  
https://www.w3.org/TR/html52/ -- 2017  
https://www.w3.org/TR/html53/ -- 2018  