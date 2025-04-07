---
order: 1
title: html
description: HTML Audio Tag
summary:
keywords:
- web
- html
- tag
- audio
tags:
- html
created_time: 2024-10-04 03:36
modified_time: 2024-11-01 22:28
---

# HTML Audio Tag
: 사운드 콘텐츠 삽입을 위한 태그    

**포함 요소**
- [source](./source.md)
- [track](./track.md)


속성 | 설명
---|---
src      | 오디오 경로 지정
controls | 오디오 제어를 위한 패널 표시 여부 지정 (불리언 속성)
controlslist | 오디오 제어 목록 지정
autoplay | 오디오 자동 재생 여부 지정 (불리언 속성)
loop     | 오디오 반복 재생 여부 지정 (불리언 속성)
muted    | 오디오 음소거 여부 지정 (불리언 속성)
preload  | 오디오 리소스 로드 방법 지정
crossorigin  | CORS 요청 처리 방식 지정
disableremoteplayback | 원격 재생 기능 비활성화 여부 지정 (불리언 속성)


```html
<audio src="경로/파일.확장자" controls>
  <p>Your browser does not support the <code>audio</code> element.</p>
</audio>


<audio src="경로/파일.확장자" controlslist="nodownload | nofullscreen | noremoteplayback">
  <p>Your browser does not support the <code>audio</code> element.</p>
</audio>
<!--
- nodownload: 다운로드 버튼을 숨김
- nofullscreen: 전체 화면 버튼을 숨김
- noremoteplayback: 원격 재생 버튼을 숨김
-->

<audio src="경로/파일.확장자" preload="none | metadata | auto">
  <p>Your browser does not support the <code>audio</code> element.</p>
</audio>
<!--
- none : 재생하기 전까지 리소스를 로드하지 않음
- metadata : 리소스의 메타데이터만 로드하고 none 값과 동일   
- auto : 재생하지 않아도 리소스를 미리 로드함
-->


<audio src="경로/파일.확장자" crossorigin="anonymous | use-credentials">
  <p>Your browser does not support the <code>audio</code> element.</p>
</audio>
<!--
- anonymous: CORS 요청시 자격 증명을 포함하지 않음
- use-credentials: CORS 요청시 자격 증명을 포함
-->


<audio controls>
  <source src="경로/파일.mp3" type="audio/mp3">
  <source src="경로/파일.ogg" type="audio/ogg">
  <source src="경로/파일.wav" type="audio/wav">
  <p>Your browser does not support the <code>audio</code> element.</p>
</audio>
<!-- 다양한 포맷을 지원하기 위해 source 태그를 사용하고 type 명시는 선택 사항 -->
```
