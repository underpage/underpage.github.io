---
order: 0.2
title: html
description: 리스트 태그 목록
summary:
keywords:
- web
- html
- tag
tags:
- html
created_time: 2024-10-02 19:41
modified_time: 2024-10-29 22:48
---

# HTML List Tag
: 목록 형태의 콘텐츠를 나타내기 위한 태그 모음

- [ol](#ol)
- [ul](#ul)
- [menu](#menu)
- [dl](#dl)



## ol
Ordered List  
: 순서있는 리스트를 그룹화하는 태그  

**포함 요소**   
- li
- script
- template


속성 | 설명
---|---
type     | 마커 유형 지정
start    | 리스트 시작 값 지정
reversed | 리스트를 내림차순으로 지정 (불리언 속성)


```html
<ol type="1 | a | A | i | I">
  <li>a
  <li>b
  <li>c
</ol>

<ol start="3">
  <li>a
  <li>b
  <li>c
</ol>

<ol reversed>
  <li>a
  <li>b
  <li>c
</ol>

<ol>
  <template>
    <li>
  <template>
</ol>
```



## ul
Unordered List  
: 순서없는 리스트를 그룹화하는 태그  
: html5 기준으로 전역 속성만 지원  

**포함 요소**   
- li
- script
- template


```html
<ul>
  <li>a
  <li>b
  <li>c
</ul>
```



## menu
: 순서없는 메뉴 리스트를 그룹화하는 태그  

**포함 요소**   
- li
- script
- template


```html
<menu>
  <li>a
  <li>b
  <li>c
<menu>
```



## li
List Item  
: 리스트의 항목을 나타내는 태그  
: 종료 태그 생략 가능

**부모 요소**   
- ol
- ul
- menu


속성 | 설명
---|---
value | 부모 요소가 ol인 경우만 사용 가능


```html
<ol>
  <li value="3">a
  <li>b
  <li>c
</ol>
```



## dl
Description List  
: 정의 리스트  
: 용어와 용어에 대한 설명이 있는 리스트를 그룹화하는 태그  
: HTML5에서는 키/값으로 표현되는 콘텐츠를 그룹화하는 태그  

**포함 요소**
- dt
- dd
- div
- script
- template


```html
<dl>
  <div>
    <dt>key
    <dd>vlaue
  </div>
</dl>
```