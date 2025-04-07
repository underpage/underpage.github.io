---
order: 1
title: html
description: HTML Track Tag
summary:
keywords:
- web
- html
- tag
- track
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# track
: 외국어, 스크린리더 등을 위해 동영상에 자막, 설명, 캡션, 메타데이터를 추가하는 태그  

**부모 요소**   
- [audio](./audio.md)
- [video](./video.md)


속성 | 설명
---|---
default | 트랙 활성화
kind    | 트랙 사용 방법
label   | 트랙 제목  
src     | 트랙 파일 경로  
srclang | 트랙 텍스트 언어 명시


```html
<video controls>
  <source src="video.mp4" type="video/mp4">
  <source src="video.webm" type="video/webm">

  <track kind="captions" label="English captions" src="captions-en.vtt" srclang="en" default></track>
  <track kind="subtitles" label="English subtitles" src="en.vtt" srclang="en"></track>
  <track kind="subtitles" label="한글 자막" src="ko.vtt" srclang="ko"></track>
</video>
<!--
kind
- subtitles : 기본값으로 화면에 표시되는 일반 자막
- captions : 음향 효과나 배경 소리 등을 텍스트로 설명
- descriptions : 스크린 리더용으로 시각적 요소를 텍스트로 설명
- chapters : 영상에 대한 챕터를 제공해 영상을 이동할 수 있음
- metadata : 영상에 대한 추가 정보로 사용자에게 직접적으로 표시되지 않음
-->
```



## WebVTT
: 자막을 위한 파일  
: 모든 브라우저에서 지원하는 형식  

1. 한 아이템을 큐라고 지칭
2. 큐는 시작 시간과 끝 시간을 갖으며 화살표로 구분
3. 공백으로 큐 구분

```vtt
WEBVTT

NOTE 주석

큐 옵션 railroad | manuscript
큐 시작 시간 --> 큐 끝 시간
큐 자막


00:00:01.000 --> 00:00:02.000
자막
<p>html 태그 적용</p>

00:00:02.000 --> 00:00:03.000
자막
<c.some-class>스타일 적용</c>


<style type="text/css">
::cue .some-class {color: red;}
</style>
```


**검사기**   
https://quuz.org/webvtt/