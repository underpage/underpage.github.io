---
order: 0.2
title: html
description: HTML 엘리먼트
summary:
keywords:
- web
- html
- element
tags:
- html
created_time: 2024-10-02 02:32
modified_time: 2024-10-29 22:48
---

# HTML Element
: 엘리먼트는 태그, 속성, 콘텐츠의 집합  
: HTML을 구성하는 요소로 엘리먼트가 웹 문서의 구조를 형성함  
: 엘리먼트는 중첩될 수 있으며 이 경우 부모 엘리먼트와 자식 엘리먼트가 됨  

- [Element Structure](#element-structure)
- [Element Classification](#element-classification)



## Element Structure   
: 엘리먼트는 태그, 속성, 콘텐츠로 구성되며 속성이나 콘텐츠는 생략될 수 있음  
: 엘리먼트는 속성을 가지며 이 속성은 미리 정의되어 있고 사용자 정의 속성을 추가할 수 있음  
: 엘리먼트는 정의되어 있으나 HTML5 경우 사용자 정의 요소를 만들 수 있음  

- tag
  - start tag, opening tag
  - end tag, closing tag
  - angle brackets
  - tag name
  - attributes 
- content
  - text 
  - whitespace 
  - nested elements 


```html
<singleton-tag attribute="value">

<opening-tag attribute="value">텍스트</closing-tag>

<parent-tag>
  <child-tag attribute="value">텍스트</child-tag>
</parent-tag>
```


**element vs tag**  
: 엘리먼트는 웹 문서의 구조를 형성하며 태그와 콘텐츠를 포함함  
: 태그는 엘리먼트의 시작이나 끝을 표현하는 마크업  

```html
<!-- 요소 -->
<h1>텍스트</h1>

<!-- 태그 -->
<h1>
```



## Element Classification
: 엘리먼트는 구조를 형성하는 방법이나 화면에 처리되는 방식 등에 따라 분류됨

- [Void Element](#void-element)
- [Hidden Element](#hidden-element)
- [Semantic Element](#semantic-element)
- [Block and Inline Element](#block-and-inline-element)
- [Optional Tag](#optional-tag)



## Void Element
= singleton tag, self-closing tag, empty tag  
: 종료 태그가 존재하지 않는 단일 태그  
: 단일 태그는 종료 태그가 없으므로 콘텐츠를 갖고 있지 않음  

- area
- base
- br
- col
- command
- embed
- hr
- img
- input
- keygen
- link
- meta
- param
- source
- track
- wbr



## Hidden Element
: 시각적으로 표시되지 않는 태그

- area
- base
- head
- link
- meta
- ...


```html
<style>
/* CSS를 재정의하여 표시할 수 있음 */
[hidden], head, link, meta, style, script {
  display: block;
  visibility:visible;
}
</style>
```



## Semantic Element
: 웹 문서의 정보를 의미있게 표현하는 태그  
: 태그 자체로 브라우저나 사용자에게 콘텐츠에 대한 추가 정보나 웹 문서의 구조에 대한 정보를 나타냄

**구분**    
- 구조적 태그
- 텍스트 관련 태그
- 미디어 관련 태그


### 구조적 태그
: 웹 문서의 구조나 정보를 그룹화하기 위한 태그

- header
- footer
- main
- nav
- section
- article
- aside


### 텍스트 관련 태그
: 텍스트의 의미나 목적을 나타내기 위한 태그  
: 일부 태그는 그 자체로 텍스트의 시각적인 변화에 영향줌

- h1 ~ h6
- details
- strong
- em
- mark
- cite
- q
- blockquote
- time
- code
- ...


### 미디어 관련 태그
: 미디어 유형을 위한 태그  

- audio
- video
- picture
- track



## Block and Inline Element
: HTML4에서 엘리먼트를 분류하는 방법  
: HTML5에서는 [콘텐츠 모델](./html-content-model.md)을 통해 분류  

**block element**  
: 부모 요소의 전체 너비를 차지하는 엘리먼트  
: 전체 너비를 차지하므로 새 줄에서 시작  
: 하위 요소로 블록 엘리먼트와 인라인 엘리먼트 전부 포함할 수 있음  

**inline element**  
: 콘텐츠만큼 너비를 차지하는 엘리먼트  
: 하위 요소로 인라인 엘리먼트만 포함할 수 있음  



## Optional Tag
: 파일 크기나 가독성 등을 위해 시작 태그와 종료 태그를 생략하는 태그  
: 속성을 갖고 있는 시작 태그는 생략 불가  

```html
<ul>
  <li>1
  <li>2
  <li>3
</ul>
```


시작 태그나 종료 태그를 생략할 수 있는 요소
https://html.spec.whatwg.org/multipage/syntax.html#optional-tags