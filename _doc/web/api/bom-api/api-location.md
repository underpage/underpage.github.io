---
order: 5
title: Web API
description: Web API - Location
summary:
keywords:
- web api
- bom api
- navigator
tags:
- web
- web api
created_time: 2024-11-06 01:00
modified_time: 2025-02-26 11:28
---

# Location API
: 현재 URL을 표현하고 조작하기 위한 인터페이스  

**스펙**  
https://html.spec.whatwg.org/multipage/history.html#the-location-interface


**속성과 메소드**

속성 | 설명
---|---
href      | URL을 반환하거나 지정  
origin    | URL 출처 반환
protocol  | URL 스키마를 반환하거나 지정
host      | URL 호스트명과 포트 번호를 반환하거나 지정  
hostname  | URL 호스트명을 반환하거나 지정  
port      | URL 포트 번호를 반환하거나 지정  
pathname  | URL 경로를 반환하거나 지정
search    | URL 쿼리를 반환하거나 지정
hash      | URL 해시를 반환하거나 지정
ancestorOrigins | 상위 문서들의 출처를 포함한 DOMStringList 객체 반환

```js
if(location.ancestorOrigins > 0) {
  // 웹 문서가 다른 사이트에서 아이프레임으로 삽입되는 것을 방지할 수 있음
}
```


**assing()**  
: 주어진 URL로 이동  
: 이동하기 전에 페이지를 방문 스택에 기록함


**replace()**  
: 주어진 URL로 이동  
: 이동하기 전에 페이지를 방문 스택에서 제거함


**reload()**  
: 현재 페이지를 다시 로드함

```js
// 캐시된 버전
location.reload();

// 캐시하지 않고 새로 로드
location.reload(true);
```


**toString()**  
: 전체 URL을 문자열로 반환