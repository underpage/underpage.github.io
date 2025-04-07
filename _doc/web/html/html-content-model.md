---
order: 0.21
title: html
description: HTML 엘리먼트 분류 (컨텐츠 모델)
summary:
keywords:
- web
- html
- element
- content model
tags:
- html
created_time: 2024-10-02 03:29
modified_time: 2024-10-29 22:48
---

# HTML Element Content Model
: HTML5에서 엘리먼트를 분류하기 위해 도입  
: 하나의 엘리먼트가 여러 분류에 속할 수 있으며 분류에 속하지 않는 엘리먼트도 존재  
: 이를 통해 올바른 웹 문서 구조를 형성하고 콘텐츠를 의미있게 표현함  

- [Metadata Content](#metadata-content)
- [Flow content](#flow-content)
- [Sectioning Content](#sectioning-content)
- [Heading Content](#heading-content)
- [Phrasing Content](#phrasing-content)
- [Embedded Content](#embedded-content)
- [Interactive Content](#interactive-content)



## Metadata Content  
: 웹 문서에 대한 정보나 웹 문서와 리소스 간 관계를 정의하는 요소  
: 해당 요소들은 대체적으로 \<head> 내에 존재  

- base
- link
- meta
- noscript
- script
- style
- title



## Flow content  
: 웹 문서의 \<body> 내에 위치해 콘텐츠를 구성하는 요소  
: 대부분의 요소는 플로우 콘텐츠에 속함  

- a
- abbr
- address
- area
- article
- aside
- audio
- ...



## Sectioning Content
: 웹 문서를 좀 더 명확하게 구조화하는 아웃 라인을 정의하는 요소  
: 요소 자체로 구조에 대한 의미를 갖음  

- article
- aside
- nav
- section


**아웃 라인**  
: 섹션 계층 구조  
: 섹션닝 콘텐츠 내부에 존재하는 헤딩 요소가 암묵적 섹션을 형성  
: HTML5 명세에서 아웃 라인 알고리즘 제공  

https://h5o.github.io/  
http://gsnedders.html5.org/outliner/  


```html
<body>
  <h1>title</h1>

  <nav>
    <h2>title</h2>
  </nav>

  <section>
    <h2>title</h2>

    <article>
      <h3>title</h3>
    </article>
  </section>
</body>
```


**sectioning root**  
: 섹셔닝 루트 요소는 자체적인 아웃 라인을 형성  
: 해당 요소 내부에 존재하는 섹셔닝 콘텐츠는 아웃 라인에 영향을 미치지 않음  
: 다만 <body> 태그는 제외로 \<body> 내부에 존재하는 세셔닝 콘텐츠는 아웃 라인에 영향을 미침

- blockquote
- body
- details
- fieldset
- figure
- td

```html
<body>

  <h1>타이틀</h1> <!-- 아웃 라인 -->

  <section>
    <h2>타이틀</h2> <!-- 아웃 라인 -->

    <blockquote>
      <h3>인용 타이틀</h3> <!-- 아웃 라인에 영향을 미치지 않음 -->
    </blockquote>
  </section>

</body>
```



## Heading Content  
: 각 세션의 머리말를 정의하는 요소  
: \<h1>~<h6> 태그 경우 레벨을 순차적으로 사용  

- h1 ~ h6
- hgroup (deprecated)



## Phrasing Content  
: 텍스트를 포함하는 요소  
: 텍스트를 구조화 할 수 있으며 태그 자체로 의미를 갖기도 함  
: 예를 들어 중요한 콘텐츠는 \<strong> 태그를 사용

- a
- abbr
- area
- audio
- b
- ...



## Embedded Content  
: 이미지, 미디어, 그래픽 등 외부 리소스 삽입을 위한 요소  

- audio
- canvas
- embed
- iframe
- img
- math
- object
- picture
- svg
- video



## Interactive Content  
: 사용자와 상호 작용을 위한 요소  
: 사용자가 액션을 취하는 인터페이스를 제공  

- a (href 속성이 존재하는 경우)
- audio (controls 속성이 존재하는 경우)
- button
- details
- embed
- iframe
- img (usemap 속성이 존재하는 경우)
- input (type 속성의 값이 hidden이 아닌 경우)
- label
- object (usemap 속성이 존재하는 경우)
- select
- textarea
- video (controls 속성이 존재하는 경우)