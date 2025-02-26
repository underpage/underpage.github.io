---
order: 2
title: Web API
description: Web API - 문서 객체 모델 API
summary:
keywords:
- web api
- dom api
- node
- document
- element
- event
tags:
- web
- web api
created_time: 2024-11-02 02:06
modified_time: 2025-02-26 11:38
---

# DOM API
Document Object Model  
: 웹 문서를 트리 구조로 표현하고 이를 동적으로 탐색하고 조작하기 위한 인터페이스 집합  
: 요소를 생성, 삭제, 변경할 수 있으며 상호작용을 위한 이벤트 처리를 지원함  

- [Node](./api-node.md)
  - [Document](./api-document.md)
  - [DocumentType](./api-documenttype.md)
  - [DocumentFragment](./api-documentfragment.md)
    - [ShadowRoot](./api-shadowroot.md)
  - [Element](./api-element.md)
  - [Attr](./api-attr.md)
  - [CharacterData](./api-characterdata.md)
    - [Text](./api-characterdata.md#text)
    - [Comment](./api-characterdata.md#comment)


**믹스인**
- [NonElementParentNode](./api-mixin.md#nonelementparentnode)
- [DocumentOrShadowRoot](./api-mixin.md#documentorshadowroot)
- [ParentNode](./api-mixin.md#parentnode)
- [NonDocumentTypeChildNode](./api-mixin.md#nondocumenttypechildnode)
- [ChildNode](./api-mixin.md#childnode)
- [Slottable](./api-mixin.md#slottable)


**컬렉션**
- [NodeList](./api-nodelist.md)
- [HTMLCollection](./api-htmlcollection.md)

**속성**
- [NamedNodeMap](./api-namednodemap.md)
- [DOMTokenList](./api-domtokenlist.md)

**이벤트**
- [Event](./api-event.md)
  - [CustomEvent](./api-customevent.md)
- [Abort](./api-abort.md)

**범위**
- [Range](./api-range.md)
- [Selection](./api-selection.md)

**순회**
- [NodeIterator](./api-traversal.md#nodeiterator)
- [TreeWalker](./api-traversal.md#treewalker)
- [NodeFilter](./api-traversal.md#nodefilter)