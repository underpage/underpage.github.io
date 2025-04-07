---
order: 1
title: html
description: HTML Source Tag
summary:
keywords:
- web
- html
- tag
- source
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Source Tag
: 미디어 리소스의 다양한 포맷을 지원하기 위한 태그  
: 포맷 별로 리소스를 지정하면 브라우저는 지원 가능한 첫 번째 포맷을 사용  

**부모 요소**  
- [audio](./audio.md)
- [video](./video.md)
- [picture](./picture.md)


속성 | 설명
---|---
src    | 미디어 리소스의 경로 지정
type   | 미디어 리소스의 MIME 유형 지정  
srcset | 해상도 별 사용할 이미지 목록 지정
sizes  | 레이아웃 별 사용할 이미지의 크기 목록 지정  
media  | 미디어 타입 지정


```html
<video controls>
  <source src="audio.mp4" type="audio/mp4">
  <source src="audio.webm" type="audio/webm">
  <source src="audio.ogg" type="audio/ogg">
  <p>Your browser does not support the <code>video</code> element.</p>
</video>


<picture>
  <source media="(min-width: 800px)" srcset="large.jpg 1x, large-2x.jpg 2x">
  <source media="(min-width: 400px)" srcset="medium.jpg 1x, medium-2x.jpg 2x">
  <img src="small.jpg" alt="img">
</picture>


<picture>
  <source type="image/webp" srcset="image.webp">
  <source type="image/jpeg" srcset="image.jpeg">
</picture>
```