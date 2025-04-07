---
order: 1
title: html
description: HTML Anchor Tag
summary:
keywords:
- web
- html
- tag
- anchor
tags:
- html
created_time: 2024-10-02 21:48
modified_time: 2024-11-01 22:28
---

# HTML Anchor Tag
: 하이퍼링크를 나타내는 태그  
: 현재 문서의 특정 요소나 다른 웹 문서, 이메일, 파일 등에 연결

속성 | 설명
---|---
href     | 하이퍼링크 될 링크를 지정
target   | 링크될 리소스가 표시될 위치 명시
download | 링크될 리소스를 다운로드 할 경우 명시
ping     | 링크 정보를 담은 HTTP POST 요청을 보낼 url 지정
rel      | 현재 웹 문서와 링크될 문서 사이의 연관 관계 명시
hreflang | 링크될 리소스의 언어 명시
type     | 링크될 리소스의 MIME 유형 명시
referrerpolicy | HTTP 리퍼러 정책 정의


```html
<a role="button">버튼</a>
<!--
: html5 기준 href는 필수 속성이 아님  
: href 속성을 정의하지 않으면 나머지 속성 사용 불가
-->


<style>
a {display:block}
</style>

<a href="">
  <section>
  </section>
</a>
<!-- 인라인 요소지만 블록 요소를 감쌀수 있음 -->


<a href="mailto:메일@메일?cc=참조메일@메일">메일</a>
<!-- 참조 -->

<a href="mailto:메일@메일?cc=참조메일@메일&bcc=참조메일@메일">메일</a>
<!-- 숨은 참조 -->

<a href="mailto:메일@메일?&subject=메일제목">메일</a>
<!-- 메일 제목 -->

<a href="mailto:메일@메일?&body=메일%0A내용">메일</a>
<!-- 메일 내용 -->

<a href="tel:+번호">전화</a>


<a href="test.pdf" download>다운로드</a>
<a href="test.pdf" download="new.pdf">다운로드</a>
<!--
download
: 링크될 리소스를 다운로드 할 경우 명시하는 속성  
: 리소스의 제한이 없으며 데이터를 생성하고 이를 다운로드하는 방법도 존재
-->

<!-- canvas -->
<canvas width="500" height="500" id="canvas"></canvas>
<a id="button">다운로드</a>

<script>
(function() {
  var canvas = document.getElementById('canvas');
  var cxt = canvas.getContext('2d');
 
  cxt.fillStyle = 'red';
  cxt.fillRect( 50, 50, 200, 200 );

  var a = document.getElementById('buttom');
  a.href = canvas.toDataURL();
  a.download = 'red-square.png';
})();
</script>

<!-- blob -->
<a id="button">다운로드</a>
<script>
(function() {
  var data = {
    a: 1,
    b: 2,
    c: 3,
  };

  var json = JSON.stringify(data);
  var blob = new Blob([json], {type: 'octet/stream'});

  var a = document.getElementById('button');
  a.href = window.URL.createObjectURL(blob);
  a.download = 'data.json';
})();
</script>


<a href="#" ping="http://example.com">링크</a>
<a href="#" ping="http://example.com/a http://example.com/b">링크</a>
<!--
ping
: 링크 정보를 담은 HTTP POST 요청을 보낼 url을 지정하는 속성  
: 하이퍼링크에 대한 추적이나 모니터링을 위해 사용  
: 보안 문제로 일부 브라우저에서는 지원하지 않거나 비활성화되어 있음  
-->


<a href="#" referrerpolicy="no-referrer">링크</a>
<!-- 리퍼러 정보를 전송하지 않음 -->

<a href="#" referrerpolicy="origin">링크</a>
<!-- 현재 문서의 출처만 전송 -->

<a href="#" referrerpolicy="strict-origin-when-cross-origin">링크</a>
<!-- 
: 동일 출처인 경우 전체 url을 다른 출처인 경우 출처만 전송 
: HTTPS에서 HTTP로 이동할 때는 전송하지 않음
-->
```



## ARIA

```html
<a href="#" aria-label="홈으로 이동">
  <i class="home-icon"></i>
</a>
<!-- 
aria-label
: 링크의 목적을 설명
-->


<span id="linkId">link</span>
<a href="#" aria-labelledby="linkId">
  <i class="icon"></i>
</a>
<!--
aria-labelledby
: 다른 요소의 id를 참조하여 레이블 정의
-->


<a href="#" aria-current="page">페이지</a>
<!-- 
aria-current
: 현재 맥락에서 활성화된 항목 표시
-->
```