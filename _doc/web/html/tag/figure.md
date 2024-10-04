---
order: 0.9
title: html
description: HTML Figure Tag
tags:
- html
- tag
created_time: 2024-10-02 21:49
modified_time: 2024-10-02 22:42
---

# HTML Figure Tag
: 사진, 다이어그램, 그래프같은 콘텐츠를 나타내기 위한 태그  
: 콘텐츠가 문서에 종속되지 않고 독립적으로 의미를 갖는 경우 사용  

**포함 요소**   
- figcaption


```html
<figure>
  <img src="" alt="">
  <figcaption>콘텐츠 설명</figcaption>
</figure>


<figure>
  <blockquote>
    인용문
  </blockquote>
  <figcaption>콘텐츠 설명</figcaption>
</figure>


<figure>
  <video src="" >
    <p>Your browser does not support the <code>video</code> element.</p>
  </video>
  <figcaption>콘텐츠 설명</figcaption>
</figure>
```



## figcaption
: 부모 요소의 콘텐츠에 대한 설명을 제공하기 위한 태그  
: 콘텐츠가 이미지일 경우 구체적인 설명을 제공할 수 있음  

**부모 요소**
- figure


```html
<figure>
  <img src="" alt="">
  <figcaption>
    <p>콘텐츠 설명</p>
  </figcaption>
</figure>
```