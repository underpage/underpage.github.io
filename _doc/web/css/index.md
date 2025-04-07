---
order: 0.2
title: css
description: CSS (인덱스)
summary:
keywords:
- web
- css
- cascading style sheets
tags:
- web
- css
created_time: 2024-08-28 12:56
modified_time: 2024-11-04 21:50
---

# CSS
Cascading Style Sheets  
: 웹 문서에 색, 레이아웃, 애니메이션 등 시각적 표현을 적용하기 위한 명령어 집합  
: 스타일 시트는 웹 문서의 시각적 표현만 변경하고 문서의 의미를 변경하지 않음  
: 초기 웹 문서는 텍스트 기반 구조만 제공해 table 태그로 문서의 레이아웃을 제어했는데 이를 보완하기 위해 발전  
: 텍스트와 스타일을 분리하는 방향으로 설계되었으며 현재는 약 60개 모듈을 제공  

- [CSSWG](#csswg)
- [CSS Level](#css-level)
- [CSS Module](./css-module/index.md)
- [CSS Context](./css-context.md)
- [CSS Load](./css-load.md)
  - [CSS Caching](./css-caching.md)
  - [Load CSS Async](./css-load-async.md)
- CSS Solutions
  - CSS Modules
  - CSS in JS
  - Constructable Stylesheets
  - CSS Module Scripts
- CSS Tools
  - [CSS Methodologies](./css-methodologies.md)
  - [CSS Preprocessor](./css-preprocessor.md)
  - [CSS Framework](./css-framework.md)
- [CSS Performance Optimization](./css-optimization.md)
  - [CSS GPU Accelerated](./css-gpu.md)


**CSS 발전 단계**  
```html
<!-- HTML1 -->
<h1><font size="5">제목</font></h1>


<!--
Håkon Wium Lie 초기 제안 (1994)
: 텍스트와 스타일 분리  
: Cascading 도입
-->
h1.font.size = 24pt 100%
h2.font.size = 20pt 40%


<!-- IE3에서 CSS1 최초 구현 (1996) -->
h1 {font-size:24px;}
```


**CSS 영향**  
: RRP, PWP, FOSI, DSSSL, PSL, CHSS, JSSS 등에 영향을 받음  
https://eager.io/blog/the-languages-which-almost-were-css/



## CSSWG
CSS Working Group  
: W3C 내에서 CSS 표준을 개발하고 유지하는 작업 그룹  

**CSS Spec**  
https://drafts.csswg.org/  

**CSS Book**  
https://books.idea.whatwg.org/



## CSS Level
: CSS는 버전이 존재하지 않고 레벨이 존재  
: 초기에는 CSS1 문서 하나에 모든 CSS 스펙 정의  
: CSS2 이후 빠른 표준화 진행과 브라우저 지원을 위해 CSS 사양을 모듈화하여 개별 정의  
: CSS3은 모듈화된 CSS를 지칭하고 모듈은 개별적으로 업데이트되므로 CSS4는 존재하지 않음   
: 현재는 레벨이 없으며 CSS2와 구분을 위해 CSS3이라는 용어 사용  

레벨 | 특징 | 스펙
---|---|---
css1   | 초기 사양으로 현재 폐기 | https://www.w3.org/TR/CSS1/
css2.x | monolithic | https://www.w3.org/TR/CSS2/
css3   | component, module | https://www.w3.org/TR/CSS/