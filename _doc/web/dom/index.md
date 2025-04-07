---
order: 3
title: web
description: 문서 객체 모델 (DOM)
summary:
keywords:
- document object model
- dom
- dom version
tags:
- web
created_time: 2024-10-01 23:28
modified_time: 2025-02-04 19:18
---

# DOM
Document Object Model  
: HTML, XML, SVG, MathML 같은 [마크업 언어](../../program/language/markup-language.md)를 위한 인터페이스  
: 마크업 언어로 작성된 웹 문서를 구조화하는 방법과 접근하고 조작하는 방법 정의  

- [DOM Level](#dom-level-1)
- [DOM Infrastructure](./dom-infrastructure.md)
- [DOM Event](./dom-event.md)
- [DOM API](../api/dom-api/index.md)


**스펙**  
https://dom.spec.whatwg.org



## DOM level 1
: 브라우저 벤더사에서 각각 구현되던 DOM을 W3C에서 표준화함  
: HTML과 XML의 기본 구조를 트리 구조로 표현하기로 확립  
: Node, Element, Attr, Document 등 Core 인터페이스와 HTML 인터페이스를 정의  
: DOM에 접근하고 조작하는 기본 메소드들 정의  

https://www.w3.org/TR/REC-DOM-Level-1/



## DOM Level 2
: 다양한 환경 지원을 위해 모듈화하고 필수 모듈과 선택 사항인 14개 모듈을 제공  
: 이벤트 버블링과 캡처링같은 이벤트 개념을 도입하고 Event 인터페이스를 추가  
: CSS 제어를 위한 CSS 인터페이스를 추가  

**API**
- Core
- Xml
- Html
- View
- Style
- Event
- ...

https://www.w3.org/TR/DOM-Level-2-Core/



## DOM Level 3
: Xpath, Validation 등 새로운 인터페이스를 정의해 16개의 모듈 지원  

- Load and Save
- Validation
- Xpath
- ...

https://www.w3.org/TR/DOM-Level-3-Core/



## DOM level 4
= DOM Living Standard  
: 2015년 부터 WHATWG에서 DOM 표준을 관리  
: WHATWG은 기존 사양을 유지하면서 필요에 따라 새로운 기능을 추가하는 방식으로 관리  
: 일부 인터페이스와 인터페이스의 멤버가 제거됨   

https://dom.spec.whatwg.org/   