---
order: 1
title: html
description: HTML Form Tag
summary:
keywords:
- web
- html
- tag
- form
tags:
- html
created_time: 2024-10-31 05:31
modified_time: 2024-11-01 22:28
---

# HTML Form Tag
: 사용자로부터 데이터를 받아 서버로 전달하기 위한 입력 양식 태그  
: Constraint Validation API를 통해 폼 검증을 제어할 수 있음  

**포함 요소**
- fieldset
- [label](./label.md)
- [input](./input.md)
- [output](./output.md)
- [textarea](./textarea.md)
- [button](./buttom.md)
- [select](./select.md)
- [datalist](./datalist.md)
- [meter](./meter.md)
- [progress](./progress.md)


속성 | 설명
---|---
name           | 식별을 위한 이름 지정  
accept-charset | 문자 인코딩 지정
action         | 입력된 양식을 보낼 서버의 url 지정
autocomplete   | 양식 입력시 이전 입력 값을 자동 완성할지 사용 여부 지정
enctype        | 리소스의 MIME 유형 명시
method         | 입력된 양식을 제출하는 방법 지정
novalidate     | 입력된 데이터의 유효성 검사를 수행하지 않도록 지정 (불리언 속성)
target         | 데이터 전달 후 응답이 표시될 위치 지정


```html
<form>
  <fieldset name="이름" form="연결할 폼 명시" disabled>
    <legend>그룹 설명</legend>
  </fieldset>
</form>
<!--
양식이 많을 경우 fieldset 태그를 사용해 양식을 그룹화함  
-->


<form accept-charset="UTF-8 EUC-KR"></form>
<!--
여러 인코딩을 정의할 경우 나열된 순서대로 사용  
-->


<form autocomplete="off">
  <input type="text" name="user-name" autocomplete="on">
  <input type="text" name="credit-card">
</form>    
<!--
사용자 개인 정보에 문제되는 필드는 off 값을 사용해 캐시에 저장되지 않게 처리

- on : 기본값, 이전에 입력한 값을 기반으로 자동 완성 지원  
- off : form 전체에 자동 완성 기능을 지원하지 않음

chrome://settings/autofill
사용자가 저장한 자동 완성 데이터 관리 설정 페이지

https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#autofilling-form-controls:-the-autocomplete-attribute
-->


<form enctype="application/x-www-form-urlencoded" method="post"></form>
<form enctype="multipart/form-data" method="post"></form>
<form enctype="text/plain" method="post"></form>
<!--
- application/x-www-form-urlencoded : 기본 값으로 모든 문자가 인코딩됨
- multipart/form-data : 이미지, 파일 데이터
- text/plain : 읽을 수 있는 문자열 데이터  
-->


<form method="get | post | dialog"></form>
<!--
- get : HTTP GET 메소드 지정 (기본 값)
- post : HTTP POST 메소드 지정
- dialog : dialog 태그와 매핑할 경우 지정
-->

<dialog open>
  <form method="dialog"></form>
</dialog>
<!-- 양식이 제출되면 dialog 태그가 닫힘 -->


<form novalidate></form>
```



## ARIA

```html
<div role="group" aria-labelledby="group-title">
  <h1 id="group-title">그룹 설명</h1>

  <label for="username">사용자 이름</label>
  <input type="text" id="username" name="username">

</div>
<!-- form 태그 대신 사용하는 경우 -->
```