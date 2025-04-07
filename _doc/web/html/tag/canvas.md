---
order: 1
title: html
description: HTML Canvas Tag
summary:
keywords:
- web
- html
- tag
- canvas
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Canvas Tag
: 텍스트, 도형, 그래프 등 시각적 이미지를 즉시 렌더링하는 비트맵 영역을 지원하는 태그  
: 단순한 이미지만 표현하는 것이 아니라 애니메이션이나 상호작용도 가능  

속성 | 설명
---|---
width, height | 캔버스 너비와 높이 지정


```html
<canvas width="300" height="150" id="canvasId" role="img" aria-label="사각형 이미지">
  <p>캔버스를 지원하지 않을 경우를 대비해 대체 콘텐츠 삽입</p>
  <img src="" alt="">
</canvas>


<script>
window.onload = function() {
  const canvas = document.getElementById('canvasId');
  const ctx = canvas.getContext('2d');
  draw(ctx);
}

function draw(ctx){
  ctx.save();
  ctx.fillStyle = 'red';
  ctx.fillRect(0, 0, 100, 100);
  ctx.restore();
}
</script>
```