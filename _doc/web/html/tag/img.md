---
order: 1
title: html
description: HTML Img Tag
summary:
keywords:
- web
- html
- tag
- img
tags:
- html
created_time: 2024-10-04 04:33
modified_time: 2024-11-01 22:28
---

# HTML Img Tag
: 이미지 리소스를 삽입하기 위한 태그  

속성 | 설명
---|---
src            | 이미지 경로 지정 (필수 속성)
width, height  | 이미지 크기 지정  
alt            | 이미지가 로드되지 않을 경우 보여질 대체 텍스트 지정  
srcset         | 디스플레이 별 사용할 이미지 지정
sizes          | 레이아웃 별 이미지 크기 지정
ismap          | 서버측 이미지맵 사용 여부 지정 (불리언 속성)
usemap         | 이미지맵을 사용하기 위한 이름 지정
loading        | 이미지 로드 방법 명시
decoding       | 이미지 디코딩 프로세스 명시
crossorigin    | CORS 요청 처리 방식 지정
referrerpolicy | HTTP 리퍼러 정책 설정
fetchpriority  | 리소스 로드의 우선 순위를 명시
elementtiming  | 웹 성능 측정을 위해 타이밍 정보를 기록할 요소 정의


```html
<style>
img {
  /* 
  : img 태그는 인라인 요소이나 일반 인라인 요소와 다르게 너비와 높이를 가지며 조정 가능
  : width나 hegiht 중 하나의 값만 설정하면 비율을 유지하며 크기가 자동으로 조절됨
  */
  width:100px;height:100px;margin:100px;
}

img {
  /* 컨테이너에 맞춰 이미지가 크롭되며 채워짐 */
  bject-fit:cover;
}

img {
  /* 
  이미지 렌더링 방식 지정
  crisp-edges : 고화질 이미지를 보존함
  pixelated : 저해상도 이미지를 확대할 때 픽셀화함
  */
  image-rendering:auto;
  image-rendering:crisp-edges;
  image-rendering:pixelated;
}
</style>


<img src="example.jpg" alt="이미지 설명">
<!--
: 이미지가 누락되는 경우 이미지 대신 보여질 텍스트
: 검색 엔진, 텍스트 리더기는 alt 속성에 의존하여 이미지 정보를 파악  
-->

<img src="" alt="">
<!--
: 이미지에 의미가 없다면 alt 속성 값을 빈 값으로 지정  
-->


<img src="example.jpg" alt="이미지 설명" title="이미지 추가 설명">
<!--
: 이미지 위에 툴팁으로 표현되는 문구
: 이미지가 표현하는 정보가 복잡한 경우 title 속성을 사용하여 추가 정보 제공
: title 속성은 SEO에 영향을 미치지 않음
-->


<img src="example.jpg" alt="이미지 설명"
     srcset="img-900.png 900w, img-600.png 600w"
     sizes="(max-width:660px) 600px, 900px">

<img 
  srcset="image-400.jpg 400w, image-800.jpg 800w, image-1200.jpg 1200w"
  sizes="(max-width: 600px) 100vw, (min-width: 601px) 50vw"
  src="image-400.jpg"
  alt="이미지 설명">



<img src="" alt="" loading="auto | lazy | eager">
<!--
- auto : 브라우저가 이미지 로드 시점 결정
- lazy : 이미지가 화면에 보이기 전까지 이미지 로드를 지연  
- eager : 이미지 즉시 로드 

적절한 lazy 설정을 통해 페이지 로딩 속도와 초기 렌더링 성능을 향상
-->


<img src="" alt="" decoding="auto | sync | async">
<!--
- auto : 브라우저가 디코딩 방식 결정
- sync : 이미지를 동기적으로 디코딩 => 이미지가 로드될 때까지 다른 작업이 멈춤
- async : 이미지를 비동기적으로 디코딩

이미지를 즉시 화면에 표시할 경우 sync 값을 설정하고
중요하지 않거나 이미지 큰 경우 async 값을 설정
-->
```


**img tag history**  
: 1993년 Marc Andreessen 제안  

http://1997.webhistory.org/www.lists/www-talk.1993q1/0182.html