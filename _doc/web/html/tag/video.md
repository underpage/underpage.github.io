---
order: 1
title: html
description: HTML Video Tag
summary:
keywords:
- web
- html
- tag
- video
tags:
- html
created_time: 2024-10-04 03:54
modified_time: 2024-11-01 22:28
---

# HTML Video Tag
: 동영상 콘텐츠 삽입을 위한 태그  

**포함 요소**
- [source](./source.md)
- [track](./track.md)


속성 | 설명
---|---
src      | 비디오 경로 지정  
controls | 비디오 제어를 위한 패널 표시 여부 지정 (불리언 속성)
controlslist  | 비디오 제어 목록 지정
autoplay | 비디오 자동 재생 여부 지정 (불리언 속성)
loop     | 비디오 반복 재생 여부 지정 (불리언 속성)
muted    | 비디오 음소거 여부 지정 (불리언 속성)
width, height | 비디오 너비와 높이 지정
poster   | 비디오를 재생하기 전에 표시할 이미지 지정  
preload  | 비디오 리소스 로드 방법 지정
playsinline | 비디오를 인라인으로 재생할지 여부 지정 (불리언 속성)
crossorigin | CORS 요청 처리 방식 지정
disablepictureinpicture | 그림 속 그림 기능 비활성화 여부 지정 (불리언 속성)
disableremoteplayback   | 원격 재생 기능 비활성화 여부 지정 (불리언 속성)

```html
<video src="경로/파일.확장자" controls>
  <p>Your browser does not support the <code>video</code> element.</p>
</video>


<video src="경로/파일.확장자" preload="none | metadata | auto">
  <p>Your browser does not support the <code>video</code> element.</p>
</video>
<!--
- none : 재생하기 전까지 리소스를 로드하지 않음
- metadata : 리소스의 메타데이터만 로드하고 none 값과 동일
- auto : 재생하지 않아도 리소스를 미리 로드함
-->


<video controls>
    <source src="경로/파일.mp4" type="audio/mp4">
    <source src="경로/파일.webm" type="audio/webm">
    <source src="경로/파일.ogg" type="audio/ogg">
    <p>Your browser does not support the <code>video</code> element.</p>
</video>
<!-- 다양한 포맷을 지원하기 위해 source 태그를 사용하고 type 명시는 선택 사항 -->
```


**비디오 코덱**  

컨테이너 | 코덱 | 확장자 | MIME 타입
---|---|---|---
MPEG-4(MP4)   | H.264(MPEG-4 Part 10), HEVC(H.265) | .mp4 | video/mp4
WebM          | AV1, VP8, VP9 | .webm | video/webm
Matroska(MKV) | H.264, VP8, VP9 | .mkv | video/x-matroska
AVI           | DivX, Xvid, H.264 | .avi | video/x-msvideo
MOV(Quicktime)| H.264 | .mov | video/quicktime
Ogg           | Theora | .ogv, .ogg | video/ogg


**container format**   
= wrapper format  
: 멀티미디어 데이터와 메타데이터를 하나의 파일로 담는 컨테이너     

**codec**  
: 멀티미디어 데이터를 압축하거나 압축을 해제하는데 사용되는 소프트웨어  
: 멀티미디어 데이터 스트림을 인코딩(저장, 암호화, 전송)하고 디코딩하는 알고리즘  
: 코덱에 따라 파일의 크기, 품질 등이 달라짐