---
order: 1
title: html
description: HTML Button Tag
summary:
keywords:
- web
- html
- tag
- button
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Button Tag
: 사용자가 클릭할 수 있는 버튼을 생성하는 태그  
: 마우스, 키보드, 터치 스크린, 기타 보조 기술 등을 통해 버튼을 활성화  

속성 | 설명
---|---
autofocus    | 웹 문서가 로드될 때 버튼에 포커스 지정 (불리언 속성)
disabled     | 요소 비활성화 여부 지정 (불리언 속성)
form         | 요소와 연결될 form 태그 지정  
formaction   | form의 action 값 재정의
formenctype  | form의 인코딩 방식 재정의
formmethod   | form의 HTTP 메소드 재정의
formnovalidate | form의 novalidate 값 재정의
formtarget   | form의 target 값 재정의
name         | 요소 이름 지정  
type         | 요소 타입 지정  
value        | 요소의 초기값 지정   


```html
<button type="submit | reset | button">btn</button>
<!--
: 브라우저 별 type의 기본 값이 다르므로 명시하는 편이 좋음  
: submit, reset은 input tpye의 submit, reset과 동일한 기능

- submit : 양식 제출
- reset : 양식 리셋
- button : 특별한 기능 없음
-->
```


**button vs input**  
: input은 텍스트만 가능하며 button은 텍스트 뿐만 아니라 이미지를 포함할 수 있음  
: input은 가상 요소 사용이 불가능하며 button은 가상 요소를 사용할 수 있음  

```html
<style>
/* 가상 요소는 요소의 내부에 생성되며 input 단일 엘리먼트로 콘텐츠를 가질 수 없음 */
button::after {content:"after";}
input::after {content:"not work";}
</style>

<button type="submit">
  <img src="button.png" alt="button">
  <i>버튼</i>
</button>

<input type="submit" value="버튼">
```



## ARIA

```html
<label for="btn">
    <button type="button" id="btn">btn</button>
</label>


<button type="button" aria-label="button">btn</button>
<!-- 
aria-label 
: 요소의 레이블 정의
-->


<span id="btnId">btn</span>
<button type="button" aria-labelledby="btnId">btn</button>
<!-- 
aria-labelledby
: 다른 요소의 id를 참조하여 레이블 정의
-->


<button type="button" aria-hidden>btn</button>
<!-- 
aria-hidden
: 요소가 보조 기술에 무시되어야 함을 지정
: 버튼이 의미가 없거나 사용되지 않는 경우 지정
-->


<button type="button" aria-pressed="true">btn</button>
<!-- 
aria-pressed
: 토글 버튼의 현재 상태를 표시
-->
```