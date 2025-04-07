---
order: 1
title: web
description: DOM 생성 과정
summary:
keywords:
- dom
- html parser
- dom tree
tags:
- web
created_time: 2024-11-01 22:30
modified_time: 2025-02-04 19:20
---

# DOM Infrastructure
: 브라우저가 웹 문서를 로드하고 화면에 표시하는 전체 과정  
: 웹 문서가 화면에 표시되려면 DOM으로 변환되어 처리되어야 함  

**단계**
```
웹 문서 로드 => 토큰화 및 파싱 => DOM 생성 => DOM 조작 => 렌더링 트리 생성 => 렌더링
```

1. 브라우저가 웹 문서를 로드
2. HTML 파서를 통해 로드된 웹 문서를 토큰화하고 파싱
3. 이때 문서의 구조나 구문이 잘못되었으면 이를 수정함
4. 토큰을 객체로 만들고(DOM) 요소의 계층 관계를 트리 구조로 표현(DOM Tree)
5. 이때 요소나 요소의 계층 관계가 유효하지 않을 경우 수정함
6. JS나 CSS 로딩 순서에 따라 DOM 생성이 지연될 수 있음
7. JS를 통한 DOM 조작이나 CSS 스타일 변경에 따라 DOM 구조가 동적으로 변경됨
8. DOM Tree와 CSSOM을 결합해 렌더링 트리를 생성하고 이를 기반으로 화면에 렌더링함


**최적화**  
: DOM 생성 후 DOM이 수정되면 렌더링 성능을 최적화하기 위해 브라우저는 DOM Tree에서 변경된 요소만 렌더링함  
: 노드에 변경 사항이 발생하면 플래그를 설정하고 렌더링 큐에 저장됨  
: 브라우저는 특정 시점에 렌더링 큐를 검사해 변경 사항을 한 번에 처리함  
: appendChild, insertBefore, removeChild 메소드가 사용되면 DOM Tree가 변경됨  



## HTML Parser
: 웹 문서를 파싱해 DOM을 생성하는 브라우저 컴포넌트  

1. 웹 문서의 문자열을 의미있는 토큰으로 분할
2. 이때 누락된 닫는 태그, 잘못된 속성 사용, 태그 중첩 등을 구문 오류를 수정함
3. 토큰을 기반으로 노드 객체를 생성하고 구성 요소 간 계층 관계를 트리 구조로 표현함


**파서 성능 최적화**  
: 웹 문서를 지연 로드하여 필요한 요소만 로드하면 초기 로딩 시간을 단축할 수 있음  
: 웹 문서를 비동기적으로 파싱하면 성능을 향상시킬 수 있음  
: DOM 조작이 빈번한 경우 DocumentFragment를 사용하면 성능을 개선할 수 있음  

```js
var fragment = document.createDocumentFragment();

for(let i = 0; i < 100 ; i++) {
  var el = document.createElement('div');
  el.textContent = i;
  fragment.appendChild(el);
}

document.body.appendChild(fragment);
```



## DOM Tree
: 웹 문서가 로드되면 구성 요소들을 객체화하고 계층 관계를 트리 구조로 표현함  
: 요소, 속성, 주석, 텍스트 등 모든 구성 요소가 노드 객체로 생성되어 트리를 형성함  
 
용어 | 설명
---|---
Node         | 트리 구성 요소
Root Node    | 트리 구조에서 최상위에 존재하는 노드   
Parent Node  | 트리 구조에서 다른 노드를 포함하는 상위 노드  
Child Node   | 부모 노드에 포함되는 모든 노드  
Sibling Node | 같은 부모 노드를 갖는 노드   


HTML
```html
<!doctype html>
<html>
<head lang="en">
  <title>title text</title>
</head>

<body>
<!-- comment text -->
</body>

</html>
```

DOM
```
Document
  DocumentType: html
    Element: html
      Element: head
        Attr: lang="en"
        Element: title
          Text: title text
      Element: body
        Comment: comment text
```


**DOM 구성 요소**  

인터페이스 | 설명
---|--
Document | DOM 트리의 루트 노드로 HTML 문서를 표현하는 인터페이스
Element  | HTML 태그를 나타내는 인터페이스
Attr     | HTML 요소의 속성을 표현하는 인터페이스
Text     | HTML 요소 내부의 콘텐츠를 표현하는 인터페이스
Comment  | HTML 주석을 표한하는 인터페이스로 렌더링되지 않음