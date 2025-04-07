---
order: 0.1
title: css
description: CSS 컨텍스트
summary:
keywords:
- web
- css
- cascading style sheets
- css context
tags:
- web
- css
created_time: 2024-08-30 01:51
modified_time: 2024-11-04 23:24
---

# CSS Context
: 요소의 레이아웃과 렌더링 방식에 영향을 주는 환경  
: 컨텍스트를 통해 CSS 엔진이 요소를 배치하는 방법을 결정함  

**종류**
- Layout Context
  - Inline Formatting Context
  - Block Formatting Context
  - Flex Formatting Context
  - Grid Formatting Context
- Independent Formatting Context  
- Fragmentation Context
- Stacking Context
- Ruby Formatting Context



## Layout Context
: 레이아웃 컨텍스트는 요소들이 화면에 배치되는 방식을 결정함  
: 다양한 컨텍스트가 포함되며 각 컨텍스트는 요소를 관리하는 방법이 다름  

컨텍스트 | 설명
---|---
Inline | 인라인 레벨 요소들의 크기와 배치를 결정 (텍스트 줄 바꿈, 정렬 등)
Block  | 블록 레벨 요소들의 크기와 배치를 결정 (마진 병합 등)
Flex   | Flex 컨테이너 내부의 요소들의 정렬과 배치를 결정
Grid   | Grid 레이아웃 내의 요소들의 정렬과 배치를 결정

**Inline Formatting Context**  
- `display:inline/inline-block/inline-table`, `vertical-align`, `line-height`, `white-space` 속성이 적용된 요소  


**Block Formatting Context**  
: Block Formatting Context의 내부 요소들은 외부 요소의 영향을 받지 않고 레이아웃을 형성함  
: `position:absolute/fixed`, `display:flex/grid`, `overflow`, `float` 속성이 적용된 요소는 BFC가 생성됨  
: `display:flex/grid` 속성이 적용된 요소는 BFC이면서 Flex Context나 Grid Context도 형성함  



## Independent Formatting Context
: 독립적 포맷팅 컨텍스트  
: 요소가 외부 레이아웃에 영향을 받지 않고 자체적으로 레이아웃을 형성함  
: `position:absolute/fixed` 속성이 적용된 요소  



## Fragmentation Context
: 콘텐츠를 여러 페이지 또는 컬럼으로 나누는 컨텍스트  
: `column-count`, `column-gap`, `column-rule` 속성이 적용된 요소



## Stacking Context
: 요소가 z축에 쌓이는 방식을 정의하고 결정하는 컨텍스트  

- `position:absolute/relative/fixed` 인 요소에 `z-index`가 적용된 경우
- `opacity` 속성 값이 1보다 작은 경우
- `transform`, `filter`, `will-change` 적용된 요소



## Ruby Formatting Context
: 루비 텍스트를 표시하기 위한 특수한 컨텍스트  