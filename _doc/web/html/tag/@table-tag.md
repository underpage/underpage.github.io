---
order: 0.3
title: html
description: 테이블 태그 목록
summary:
keywords:
- web
- html
- tag
tags:
- html
created_time: 2024-10-02 20:15
modified_time: 2024-10-29 22:48
---

# HTML Table Tag
: 행과 열로 이루어진 표를 표현하기 위한 태그 모음  

태그 | 설명 | display
---|---|---
table    | 테이블 정의 | table 
caption  | 테이블 설명 | table-caption
colgroup | 열 그룹 정의 | table-column-group
col      | 열 속성 정의 | table-column
thead    | 테이블 머리 콘텐츠 그룹 정의 | table-header-group
tbody    | 테이블 본문 콘텐츠 그룹 정의 | table-row-group
tfoot    | 테이블 바닥 콘텐츠 그룹 정의 | table-footer-group
tr       | 테이블 행 정의 | table-row
th       | 테이블 헤더 셀 정의 | table-cell
td       | 테이블 데이터 셀 정의 | table-cell

```html
<table border="1">
  <caption>테이블 설명</caption>

  <colgroup>
    <col span="2">
    <col>
  </colgroup>

  <thead>
    <tr>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td rowspan="2">행 병합</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td colspan="3">열 병합</td>
    </tr>
  </tbody>

  <!-- 데이터에 따라 접근성을 위해 tbody 요소 전에 위치할 수 있음 -->
  <tfoot>
    <tr>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tfoot>
</table>


<!-- 레이아웃을 목적으로 table 태그를 사용하는 경우 -->
<table role="presentation">
</table>
```



## th
: 테이블에서 제목을 나타내는 셀 

**부모 요소**
- tr

속성 | 설명
---|---
colspan | 셀이 확장 될 열 수 지정
rowspan | 셀이 확장 될 행 수 지정
headers | 셀과 연관된 헤더 셀 명시  
scope   | 헤더 셀과 관련된 셀 명시
abbr    | 헤더 셀에 대한 짧은 설명 명시


```html
<tr>
  <th id="headerId">제목
</tr>

<tr>
  <th headers="headerId">제목
</tr>

<tr>
  <th abbr="제목">제목
</tr>

<tr>
  <th scope="col">column을 위한 셀임을 명시
  <th scope="row">row를 위한 셀임을 명시
  <th scope="colgroup">column 그룹을 위한 셀임을 명시
  <th scope="rowgroup">row 그룹을 위한 셀임을 명시
</tr>
```



## td
: 테이블에서 데이터를 나타내는 셀  

**부모 요소**
- tr

속성 | 설명
---|---
colspan | 셀이 확장 될 열 수 지정
rowspan | 셀이 확장 될 행 수 지정
headers | 셀과 연관된 헤더 셀 명시  


```html
<tr>
  <th id="headerId1">
  <th id="headerId2">
</tr>

<tr>
  <!-- 데이터 셀과 헤더 셀이 1:1이 아닌 경우 사용 -->
  <td colspan="2" headers="headerId1 headerId2">
</tr>
```