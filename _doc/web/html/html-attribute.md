---
order: 0.22
title: html
description: HTML 엘리먼트 속성 종류
summary:
keywords:
- web
- html
- element
- element attribute
tags:
- html
created_time: 2024-10-02 15:44
modified_time: 2024-10-29 22:48
---

# HTML Element Attribute   
: 요소에 대한 추가 정보나 동작 제어를 위해 사용  
: 속성을 통해 접근성이나 SEO가 향상되며 JS와 상호작용이 가능해짐  
: 특정 요소에는 필수로 포함해야 하는 필수 속성 존재  
: 일부 속성은 미리 정의된 값들이 존재하고 일부 속성은 값 지정이 가능함

**property**  
: HTML 요소에서 속성은 attribute이나 DOM 객체에서 속성은 property


**분류**   
- [전역 속성](#global-attribute)
- [불리언 속성](#boolean-attribute)
- [필수 속성](#required-attribute)
- [이벤트 속성](./html-attribute-event.md)
- 선택적 속성 : 요소의 기능 확장을 위한 속성
- 열거형 속성 : 미리 정의된 값을 사용해야하는 속성
- 커스텀 데이터 속성 : 사용자 정의 속성
- ARIA 속성 : 웹 접근성을 향상을 위한 속성



## Global Attribute
= Standard Attribute   
: 비표준 태그를 포함한 모든 태그에서 사용 가능한 속성

전역 속성 | 설명
---|---   
accesskey        | 요소에 접근 가능한 키보드 단축키 지정
autocapitalize   | 텍스트 입력이나 편집시 대소문자 변환 여부 지정  
autofocus        | 웹 문서 로드시 포커스되어야 하는 요소에 지정 (불리언 속성)  
class            | CSS 클래스 선택자 지정 
contenteditable  | 요소의 콘텐츠 편집 여부 지정
data-*           | 사용자 정의 속성
dir              | 요소의 텍스트 방향 지정
draggable        | 요소의 드래그 여부 지정
enterkeyhint     | 가상 키보드의 엔터키에 액션에 대한 힌트나 아이콘 지정
exportparts      | Web Component 내부 요소가 외부에서 접근 가능하도록 지정
hidden           | 요소를 숨기며 렌더링 하지 않음 (불리언 속성)
id               | 요소에 고유 식별자 지정
inert            | 요소의 인터랙션을 비활성화 되도록 지정
inputmode        | 가상 키보드 선택을 위한 힌트 지정     
is               | 요소가 사용자 정의 요소처럼 동작하도록 지정
itemid           | 아이템 식별자
itemprop         | 아이템 항목에 속성 추가
itemref          | 마이크로데이터 : 특성 지정  
itemscope        | 마이크로데이터 : 범위-컨테이너 요소 지정 (불리언 속성)
itemtype         | 마이크로데이터 : 어휘 지정
lang             | 요소의 언어 명시
nonce            | 콘텐츠 보안 정책을 위해 한 번만 사용하는 임시 값 지정  
part             | Web Component 내부 요소에 스타일을 정의하도록 지정
popover          | 요소와 연결된 툴팁같은 팝업 요소를 제어
role             | 웹 접근성을 위해 요소의 역할에 대한 설명 정의
slot             | Web Component 내부의 동적 콘텐츠 위치 지정
spellcheck       | 철자-문법 검사 여부 지정
style            | 요소의 인라인 스타일 지정
tabindex         | 탭키 사용시 요소들이 포커스되는 순서 지정
title            | 요소에 대해 추가 정보 지정
translate        | 요소의 (일부) 속성과 텍스트 콘텐츠 번역 여부 지정

https://html.spec.whatwg.org/multipage/dom.html#global-attributes


```html
<tag accesskey="a b c"></tag>
<!--
: 여러 단축키 지정시 공백으로 분리   
: 지정한 순서로 우선 순위를 갖음  
-->


<tag autocapitalize="characters"></tag>
<!-- 모든 문자 대문자 -->

<tag autocapitalize="words"></tag>
<!-- 단어의 첫 글자 대문자 -->

<tag autocapitalize="on | sentences"></tag>
<!-- 문장의 첫 글자 대문자 -->

<tag autocapitalize="off | none"></tag>
<!-- 모든 문자 소문자 -->


<tag autofocus></tag>
<!-- 하나의 웹 문서에 한 번만 적용 -->


<tag contenteditable="true | false"></tag>


<tag dir="ltr | rtl | auto"></tag>
<!--
: 전역 사용을 위해서는 html 태그에 명시  

- ltr : left to right
- rtl : right to left
- auto : 브라우저 설정에 따름
-->


<tag draggable="true | false | auto"></tag>


<tag enterkeyhint="enter | done | go | next | previous | search | send"></tag>


<tag hidden></tag>


<style>
[inert] {pointer-events:none;}
</style>

<script>
HTMLElement.setAttribute('inert', '');
HTMLElement.removeAttribute('inert');
</script>

<tag inert></tag>
<!--
: 요소와 요소의 자식 요소의 인터랙션을 비활성화 상태로 지정  
: 마우스 이벤트, 키보드 입력, 포커스, 스크린 리더 접근 등이 비활성화 됨  
: 상호작용이 불가능한 영역이라는 것을 명확하게 전달할 수 있음
-->



<tag inputmode="none | text | url | email | search | tel | numeric | decimal "></tag>
<!--
- none : 가상 키보드를 표시하지 않음
- numeric : 숫자 입력이 가능한 가상 키보드 표시
- decimal : 분수 입력이 가능한 가상 키보드 표시
- decimal : 검색에 최적화 된 가상 키보드 표시
-->


<tag is="test-is"><tag>
<script>
class TestIs extends HTMLParagraphElement { .. }

customElements.define('test-is', TestIs, { extends: 'tag' });
</script>


<tag lang="ko">
<tag lang="ko-KR">
<!--
: 검색 엔진, 텍스트 리더기, 번역기 등을 위해 문서에 쓰인 대표적인 언어 명시
: 전역 사용을 위해서는 html 태그에서 명시  

ko : 언어 코드 지정
ko-KR : 언어 코드 + 국가 코드 지정

언어 코드 리스트
https://www.sitepoint.com/iso-2-letter-language-codes
-->


<tag nonce="토큰"></tag>
<!-- 
nonce = Number used ONCE
콘텐츠 보안 정책을 위해 사용하는 값

서버에서 고유한 토큰을 생성해 인라인 스크립트나 스타일 태그의 nonce 속성에 삽입하고
HTTP 응답 헤더의 Content-Security-Policy에도 포함
ex. Content-Security-Policy: script-src '토큰'; 'strict-dynamic';

브라우저는 HTTP 헤더에 명시된 값과 태그의 nonce 속성 값이 일치면 태그를 실행
<script nonce="토큰">
</script>

서버에서는 매 요청마다 새로운 토큰을 생성해야하며 토큰은 예측하기 어려운 값이어야 함
유형별로 토큰을 다르게 줄 수 있으나 관리하기 어려움
ex. Content-Security-Policy: style-src '스타일 토큰'; img-src '이미지 토큰';
-->


<tag popover="info">보기</tag>
<tag id="info" hidden>내용</tag>


<tag translate="yes | no"></tag>
<!--
번역 가능한 속성
- title 속성
- area, img, input 태그의 alt 속성
- a, area의 download 속성
- ...
-->
```



## Boolean Attribute
: true이면 속성을 표기하고 false면 속성을 생략하는 속성  
: 약 25개의 불리언 속성 존재  

속성 | 설명
---|---
allowfullscreen     | iframe 요소가 전체 화면 모드로 전환될 수 있는지 지정
allowpaymentrequest | iframe 내에서 Payment Request API 사용 허용
async          | script 태그의 리소스를 비동기적으로 로드하는지 여부 지정  
autofocus      | 웹 문서 로드시 포커스되어야 하는 요소에 지정
autoplay       | audio, video 태그의 콘텐츠 자동 재생 지정
checked        | checkbox나 radio 버튼이 선택된 상태인지 지정
controls       | audio, video 태그의 콘텐츠 제어를 위한 컨트롤 표시  
default        | \<track> 요소에서 기본 트랙임을 지정
disabled       | 요소 비활성화 지정
formnovalidate | form 제출 시 양식 유효성 검사를 건너뛰도록 지정
hidden      | 요소를 숨김
ismap       | 이미지가 서버 측 이미지 맵의 일부임을 나타냄
inert       | 요소를 사용자 상호작용에서 제외
itemscope   | 항목에 대한 메타데이터가 포함되어 있음을 지정 
loop        | audio, video 태그의 콘텐츠 반복 재생 지정  
multiple    | 일부 입력 필드에 하나 이상의 값을 입력 가능하게 함
muted       | audio, video 태그의 콘텐츠 음소거 지정  
nomodule    | ES6 모듈을 지원하지 않는 브라우저에서 별도 스크립트가 실행되도록 지정
novalidate  | 유효성 검사를 수행하지 않도록 지정
open        | details 태그의 콘텐츠 표시 지정
playsinline | 비디오를 인라인으로 재생할지 전체 화면으로 재생할지 지정
readonly    | 요소 편집을 불가능하게 해 읽기만 가능  
required    | 필드가 채워졌는지 확인 (필드에 따라 특정 값만 허용)
reversed    | ol 태그의 리스트를 내림차순으로 지정
selected    | \<option> 요소가 선택되었음을 나타냄


```html
<tag disabled></tag>
<!--
: output 태그에는 지정 불가
: disabled 속성을 지정한 경우 유효성 검사를 하지 않음
: 입력 양식을 서버로 전송시 비활성화된 요소의 데이터는 전송하지 않음
-->


<tag multiple></tag>
<!-- select 태그와 input의 email, file 타입에 적용 가능 -->


<style>
:read-only {}
</style>

<tag readonly></tag>
<!--
: readonly 속성을 지정한 경우 유효성 검사를 하지 않음
: disabled 속성과 달리 요소의 데이터를 서버로 전송함
-->


<style>
:required {}
:valid {}
:invalid {}
</style>

<tag required aria-required="true"></tag>
<!-- input의 hidden, button, range, color 타입일 경우 적용 불가 -->
```



## Required Attribute
: 특정 요소가 올바르게 작동하기 위해 반드시 사용해야하는 속성
: HTML 버전에 따라 필수 속성에 차이가 존재함

요소 | 필수 속성  
---|---  
area   | alt  
audio  | src  
form   | action (JS 사용시 생략 가능)  
iframe | src  
img    | src, alt  
input  | type  
link   | href, rel  
map    | name  
meta   | charset  
object | data  
optgroup | label  
param  | name, value  
textarea | cols, rows  
time   | datetime  
track  | src, kind  
video  | src  