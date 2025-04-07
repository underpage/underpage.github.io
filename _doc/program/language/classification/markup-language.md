---
order: 3.2
title: Programming
description: 마크업 언어
summary:
keywords:
- programming language
- markup language
- html
- xml
tags:
- program
- language
created_time: 2024-10-25 22:53
modified_time: 2025-03-22 01:53
---

# Markup Language
: 마크업 명령어를 사용해 요소를 정의하고 문서의 구조와 의미를 표현하는 언어  

**markup**  
: 원고에서 지시 문구를 대신하는 범용 교정 부호(태그)를 표시하는 것  


**특징**
- 가독성 : 사람이 읽고 쓰기가 쉬움
- 구조화 : 문서의 논리적 구조를 표현함
- 확정성 : 새로운 태그 정의가 가능함


**마크업 방식별 분류**
- [표현적 마크업](#presentational-markup)
- [절차적 마크업](#procedural-markup)
- [기술적 마크업](#descriptive-markup)

```
과거에는 표현적 마크업 방식이 많이 사용되었으나
현재는 의미를 강조하는 기술적 마크업 방식이 많이 사용됨
```


**문서 마크업 언어 종류**  
: 문서의 구조와 내용을 표현하는 언어  

- GML
- SGML
  - HTML
  - XML
    - DocBook
    - MathML
- Markdown
- AsciiDoc


**TeX 계열 언어 종류**  
: 문서를 작성하고 일부 프로그래밍 가능한 언어  
: 수학식 표현이 가능하여 수학과 과학 문서에 많이 사용됨  

- TeX 
- LaTeX
- pTeX
- XeTeX 



## Presentational Markup
= 표현적 마크업  
: 문서의 시각적 표현에 중점을 둔 마크업  
: 문서의 요소를 표현하기 위해 사용되며 문서의 구조나 의미에 영향을 미치지 않음  
: 표현적 마크업은 WYSIWYG 시스템에서 사용됨  

**WYSIWYG**  
: what you see is what you get  
: 사용자가 편집 과정에서 보는 화면에 최종 출력물과 동일하게 나타나는 시스템  



## Procedural Markup
= 절차적 마크업  
: 문서의 시각적 요소와 인쇄 형식을 결정하는 명령어를 제공하는 마크업  
: 요소가 화면에 어떻게 나타나고 인쇄되는지에 대한 처리 방법을 제공  
: 주로 출판 시스템이나 인쇄물에서 사용됨  

**종류**
- Troff
- PostScript
- TeX



## Descriptive Markup
= 기술적 마크업, 설명적 마크업, 의미적 마크업  
: 문서의 의미와 구조를 표현하며 데이터 저장이나 전송을 위해 사용됨  
: 다른 마크업에 비해 문법이 엄격해 작성하기 다소 복잡함  

**종류**
- [SGML](#sgml)
- [HTML](../../web/html/index.md)
- [XML](../../data/data-conversion/format/xml.md)



### SGML
Standard Generalized Markup Language  
: 1986년에 [ISO](../../standard/index.md#iso)에서 표준으로 채택한 마크업 언어  
: 문서의 구조를 정의하고 데이터를 마크업하여 저장하고 교환할 수 있도록 설계됨  
: SGML 자체는 단독으로 사용되지 않으며 다른 마크업 언어를 정의하기 위해 사용됨  
: HTML과 XML은 SGML을 기반으로 발전한 마크업 언어  