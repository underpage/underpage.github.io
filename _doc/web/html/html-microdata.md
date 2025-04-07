---
order: 0.3
title: html
description: HTML 마이크로데이터
summary:
keywords:
- web
- html
- microdata
- microformats
- 마이크로데이터
tags:
- html
created_time: 2024-10-02 18:29
modified_time: 2024-10-29 22:48
---

# HTML Microdata
≒ Microformats, RDFa, JSON-LD  
: 웹 문서의 특정 요소에 추가적인 의미를 부여하기 위해 만들어짐  
: 마이크로데이터를 통해 콘텐츠의 의미가 명확해짐  
: 마이크로데이터의 주 목적은 검색 엔진 최적화  

속성 | 설명
---|---
itemscope | 컨테이너 요소 정의 (불리언 속성)
itemtype  | 요소에 대한 유형 지정 (사용자 정의 가능)
itemprop  | 속성 정의
itemref   | 특성 정의  


```html
<section itemscope itemtype="http://schema.org/Person">
  <h1>User Information</h1>
  <dl>
    <dt>name
    <dd itemprop="name">이름

    <dt>age
    <dd itemprop="age">나이
  </dl>
</section>
```


마이크로 데이터 생성기   
https://seoscout.com/tools/schema-generator


마이크로 데이터 시각화   
https://www.webmoves.net/tools/microdata



## Microformats 
: 요소의 클래스 속성을 활용해 데이터를 구조화하는 방식  
: 마이크로포맷에 사용되는 클래스명은 정의되어 있음 (https://microformats.org)  

클래스명 | 설명
---|---
vcard  | 조직이나 사람에 대한 요소 컨테이너
fn     | 이름
n      | 세분화된 이름
bday   | 생년월일
label  | 일반적인 설명 텍스트


```html
<section>
  <h1>User Information</h1>
  <dl class="vcard">
    <dt class="fn">name
    <dd class="fn">이름
  </dl>
</section>
```



## RDFa
Resource Description Framework in Attributes  
: 요소의 속성을 기반으로 데이터를 구조화하는 방식  

```html
<section>
  <h1>User Information</h1>
  <dl vocab="http://schema.org/" typeof="Person">
    <dt>name
    <dd property="name">이름
  </dl>
</section>
```



## JSON-LD
JavaScript Object Notation for Linked Data  
: 구조화된 데이터를 json 형식으로 삽입해 문서와 데이터를 분리하는 방식  

```html
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Person",
  "name": "이름",
  "age": "나이"
}
</script>
```