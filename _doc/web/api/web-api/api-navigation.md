---
order: 1
title: Web API
description: Web API - Navigation API
summary:
keywords:
- web api
- navigation
tags:
- web
- web api
created_time: 2025-02-03 05:15
modified_time: 2025-02-26 12:15
---

# Navigation API
: 페이지 탐색을 더 세밀하게 제어하기 위해 도입된 인터페이스 집합  
: [History API](../bom-api/api-history.md) 한계를 보완하기 위해 도입되어 세밀한 탐색 제어와 상태 관리가 가능함  
: SPA 환경에서 복잡한 라우팅과 상태 관리를 처리할 때 유용함  
: [Performance API](./api-performance.md)와 연계되어 페이지 탐색의 성능 측정 및 모니터링이 가능함  
: [Navigator API](../bom-api/api-navigator.md)는 브라우저 정보를 제공하는 인터페이스  

주요 기능 | 설명
---|---
State Management   | URL 변경 시 상태를 반영하여 페이지를 동적으로 업데이트
History Management | 브라우저 히스토리 엔트리를 생성, 수정, 삭제하여 탐색 기록을 관리
Navigation Events  | 탐색 과정의 각 단계별 이벤트 처리
Navigation Interception | 페이지 이동을 중간에 가로채고 제어
Navigation Timing  | 페이지 이동 시각과 타이밍을 측정
Error Handling     | 탐색 실패 시 오류 처리


**인터페이스**
- Navigation
- NavigationHistoryEntry
- NavigationDestination
- NavigateEvent
- NavigationNavigateEvent
- NavigationCurrentEntryChangeEvent
- NavigationTransition
- NavigationActivation
- NavigationResult
- NavigationType



## Navigation
: 페이지 탐색 및 탐색 상태 관리를 위한 기본 인터페이스  

**스펙**  
https://html.spec.whatwg.org/multipage/nav-history-apis.html#navigation-interface


**속성과 메소드**  

속성 | 설명
---|---
currentEntry | 현재 탐색 항목을 나타내는 NavigationHistoryEntry 객체 반환
transition   | 탐색 전환 정보를 나타내는 NavigationTransition 객체 반환
activation   | 페이지 활성 정보를 나타내는 NavigationActivation 객체 반환
canGoBack    | 탐색 기록에서 이전으로 갈 수 있는지 여부 반환
canGoForward | 탐색 기록에서 다음으로 갈 수 있는지 여부 반환


**entries()**  
: 탐색 기록 항목을 담은 NavigationHistoryEntry 객체 배열을 반환  


**updateCurrentEntry()**  
: 현재 탐색 항목의 상태와 메타데이터를 업데이트함  


**navigate()**  
: 지정한 URL로 이동하고 NavigationResult 객체 반환


**reload()**  
: 현재 페이지를 다시 로드함  
: 옵션을 추가하면 상태 및 추가 정보를 지정할 수 있음  

```js
await navigation.reload({
  // NavigationReloadOptions
  state: { userData: '상태 정보' },
  info: '탐색에 대한 추가 정보',
});
```


**traverseTo()**  
: 탐색 기록에서 키를 가진 항목으로 이동함  


**back()**  
: 탐색 기록에서 이전 항목으로 이동함


**forward()**  
: 탐색 기록에서 다음 항목으로 이동함



## NavigationHistoryEntry
: 탐색 기록의 개별 항목을 나타내는 인터페이스로 URL, 상태, 탐색 유형 등의 메타데이터를 관리함  

속성 | 설명
---|---
key | 탐색 항목을 식별하는 고유한 문자열 반환
id  | 히스토리 항목의 고유 숫자 반환
url | 항목의 URL 반환
sameDocument | 같은 문서 내 탐색 여부 반환
state | 설정된 상태 객체 반환