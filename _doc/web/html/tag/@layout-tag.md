---
order: 0.1
title: html
description: 레이아웃 태그 목록
summary:
keywords:
- web
- html
- tag
tags:
- html
created_time: 2024-10-02 19:31
modified_time: 2024-10-29 22:48
---

# HTML Layout Tag
: 웹 문서의 구조를 생성하는 태그 모음  
: 다른 요소를 포함하는 컨테이너 엘리먼트  

태그 | 설명
---|---
header  | 웹 문서의 머리나 콘텐츠의 머리를 나타내는 태그
footer  | 웹 문서의 바닥나 콘텐츠의 바닥을 나타내는 태그
main    | 웹 문서의 본문을 나타내는 태그
nav     | 내비게이션 링크 그룹을 나타내는 태그
section | 관련된 콘텐츠 그룹을 나타내는 태그
aside   | 웹 문서와 관련있는 추가 콘텐츠 영역을 나타내는 태그
article | 독립적인 콘텐츠 영역을 나타내는 태그로 콘텐츠의 재사용이 가능
div     | 의미있는 태그가 아니며 요소를 스타일링 목적으로 그룹화하기 위한 태그


```html
<body>

  <header>
    <h1>title</h1>
  </header>

  <main>
  <!--
  : 하나의 웹 문서에 하나만 존재하며 주요 콘텐츠를 포함하는 태그
  : header, footer, nav, aside, article 하위에 존재하면 안됨
  -->

    <section>
      <h2>section title</h2>

      <nav>
        <h3>nav title</h3>
        <a href="content1">1</a>
        <a href="content2">2</a>
      </nav>

      <section id="content1">
        <h3>sub title</h3>
      </section>

      <article id="content2">
        <h3>sub title</h3>
        <!-- 독립적으로 배포 가능 -->
      </article>

      <aside>
        <h3>sub title</h3>
      </aside>

    </section>

  </main>

  <footer>
    <em>&copy;</em>
  </footer>

</body>
```
