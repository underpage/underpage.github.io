---
order: 0.4
title: html
description: 텍스트 태그 목록
summary:
keywords:
- web
- html
- tag
tags:
- html
created_time: 2024-10-02 19:32
modified_time: 2024-10-29 22:48
---

# HTML Text Tag
: 웹 문서의 텍스트를 나타내는 태그 모음  
: 텍스트의 의미나 목적을 나타내고 일부 태그는 텍스트의 시각적인 변화에 영향을 미침  

**block element**

태그 | 설명
---|---
h1 ~ h6    | 제목을 나타내는 태그
dt         | 정의를 나타내는 태그
dd         | 정의에 대한 설명을 나타내는 태그
li         | 목록 항목을 나타내는 태그
p          | 문단을 나타내는 태그
address    | 부모 요소의 연락처 정보를 나타내는 태그
pre        | 특수 문자나 공백 등 입력한 내용을 그대로 나타내는 태그
figcaption | figure을 설명하는 태그
blockquote | 긴 인용을 나타내는 태그

```html
<!-- 인용에 출처가 있는 경우 cite 속성 사용 -->
<blockquote cite="https://www.w3.org/">
  The World Wide Web Consortium <cite>(W3C)</cite> is an international community
</blockquote>
```


**inline element**

태그 | 설명
---|---
[a](./a.md) | 하이퍼 링크를 나타냄  
strong | 텍스트의 중요성, 심각성, 긴급성을 나타내며 글자를 굵게 표현
mark   | 텍스트를 강조하기 위해 글자에 하이라이트 표현
em     | 주변 텍스트에서 해당 텍스트를 강조하기 위해 글자를 기울임
b      | 주변 텍스트에서 해당 텍스트를 구분하기 위해 글자를 굵게함
i      | 주변 텍스트에서 해당 텍스트를 구분하기 위해 글자를 기울임
u      | 텍스트 주석을 나타내며 글자에 밑줄을 표현
s      | 관련 없어진 텍스트를 나타내며 글자에 취소선을 표현
ins    | 문서에서 추가된 텍스트를 나타내며 글자에 밑줄을 표현
del    | 문서에서 삭제된 텍스트를 나타내며 글자에 취소선 표현
small  | 주석같은 덧붙이는 텍스트를 나타내기 위해 글자를 작게함 (작은 글자 표현을 위해 사용하지 말 것)
q      | 짧은 문장, 저작원 등 인라인 인용을 나타냄
cite   | 노래, 책, 블로그 등의 제목을 나타냄
dfn    | 정의하고 있는 용어를 나타냄  
abbr   | 약어, 약자를 나타냄
ruby   | 문자의 발음 기호를 나타냄  
sub    | 아래 첨자
sup    | 윗 첨자
bdi    | 텍스트 방향성 분리
bdo    | 텍스트 방향성 재정의
br     | 텍스트 줄바꿈 강제 (구조를 구분하기 위해 사용하지 말 것)
wbr    | 텍스트나 단어가 줄바꿈 될 위치 지정
kbd    | 키보드 등의 사용자 입력 장치를 나타냄  
samp   | 소스 코드 샘플이나 프로그램 결과물을 나타냄
time   | 컴퓨터가 판독 가능한 날짜 및 시간 데이터를 나타냄   
code   | 컴퓨터 코드를 나타냄
data   | 프로그램 결과물을 나타냄
var    | 변수를 나타냄  


```html
<p>
  The <dfn><abbr title="World Wide Web Consortium">W3C</abbr></dfn> is an international community
</p>

<p>
  The World Wide Web Consortium<wbr>(W3C) is an international community
</p>
```