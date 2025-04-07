---
order: 0.23
title: html
description: HTML 엘리먼트 이벤트 속성
summary:
keywords:
- web
- html
- element
- event attribute
tags:
- html
created_time: 2024-10-05 06:21
modified_time: 2024-10-29 22:48
---

# HTML Event Attribute
: 사용자와 상호 작용이나 요소의 상태 변화에 대응하기 위한 속성  
: 이벤트 속성은 모든 태그에서 사용 가능   


**인터랙션 이벤트**

이벤트 | 설명
---|---
onclick      | 클릭했을 때 발생
onscroll     | 스크롤바가 움직일 때 발생
onresize     | 웹 문서 뷰의 크기나 요소 크기가 변경될 때 발생
onfocus      | 요소에 포커스가 갔을 때 발생
onblur       | 요소에서 포커스가 벗어났을 때 발생
onmousedown  | 마우스 버튼을 눌렀을 때 발생
onmouseup    | 마우스 버튼을 뗄 때 발생
onmouseover  | 마우스가 요소 위로 올라왔을 때 발생
onmousemove  | 마우스가 움직일 때 발생
onmouseout   | 마우스가 요소를 벗어날 때 발생
onmouseenter | 마우스가 요소에 진입할 때 발생
onmouseleave | 마우스가 요소에서 벗어날 때 발생
ondblclick   | 더블 클릭했을 때 발생
onwheel      | 휠 버튼을 회전할 때 발생
onauxclick   | 보조 버튼으로 엘리먼트를 클릭할 때 발생
onselect     | 텍스트를 선택했을 때 발생
oncancel     | cancel 이벤트가 발생할 때 발생
onclose      | \<dialog> 같은 요소가 닫힐 때 발생
ontoggle     | \<details> 요소가 열리거나 닫힐 때 발생
oncontextmenu | 컨텍스트 메뉴를 열 때 발생


**윈도우 이벤트**

이벤트 | 설명
---|---
onload           | 페이지가 모두 로드되었을 때 발생
onunload         | 페이지가 언로드될 때 발생
onbeforeunload   | 문서가 언로드되기 직전에 발생
onpagehide       | 브라우저가 페이지를 숨길 때 발생
onpageshow       | 브라우저가 페이지를 표시할 때 발생
onpopstate       | 브라우저의 세션 기록이 변경될 때 발생
onhashchange     | URL의 해시 부분이 변경될 때 발생
onstorage        | Web Storage 영역이 변경될 때 발생
onmessage        | 메시지가 객체로 전달될 때 발생 (Web Worker 통신)
onmessageerror   | 메시지를 역직렬화할 수 없을 때 발생
onlanguagechange | 선호하는 언어 목록이 변경될 때 발생


**양식 이벤트**

이벤트 | 설명
---|---
onsubmit   | 폼이 제출될 때 발생
onchange   | 입력값이 변경되었을 때 발생
oninput    | 사용자가 입력할 때 발생
onreset    | 폼이 초기화될 때 발생
onformdata | FormData 객체가 생성될 때 발생
oninvalid  | 양식 제출 시 입력 요소가 유효성 검사에 실패할 때 발생


**키보드 이벤트**

이벤트 | 설명
---|---
onkeydown  | 키를 눌렀을 때 발생
onkeyup    | 키에서 손을 뗄 때 발생
onkeypress | 키를 누르고 있을 때 발생 (deprecated)


**클립보드 이벤트**

이벤트 | 설명
---|---
oncopy  | 복사할 때 발생
oncut   | 잘라낼 때 발생
onpaste | 붙여넣기 할 때 발생


**드래그 앤 드롭 이벤트**

이벤트 | 설명
---|---
ondragstart | 드래그가 시작될 때 발생
ondrag      | 드래그가 진행될 때 발생
ondragenter | 드래그한 객체가 대상 요소에 진입했을 때 발생
ondragover  | 드래그한 객체가 대상 요소 위에 있을 때 발생
ondragleave | 드래그한 객체가 대상 요소를 벗어날 때 발생
ondrop      | 드래그한 객체가 대상 요소에 놓였을 때 발생
ondragend   | 드래그가 끝날 때 발생


**터치 이벤트**

이벤트 | 설명
---|---
ontouchstart  | 터치가 시작될 때 발생
ontouchmove   | 터치가 움직일 때 발생
ontouchend    | 터치가 끝났을 때 발생
ontouchcancel | 터치가 취소될 때 발생


**포인터 이벤트**

이벤트 | 설명
---|---
onpointerdown   | 포인터가 눌렸을 때 발생
onpointermove   | 포인터가 움직일 때 발생
onpointerup     | 포인터를 떼었을 때 발생
onpointerenter  | 포인터가 요소에 진입할 때 발생
onpointerover   | 포인터가 요소 위에 있을 때 발생
onpointerleave  | 포인터가 요소를 떠날 때 발생
onpointerout    | 포인터가 요소 밖으로 나갔을 때 발생
onpointercancel | 포인터가 취소되었을 때 발생


**미디어 이벤트**

이벤트 | 설명
---|---
onplay           | 재생이 시작될 때 발생
onplaying        | 재생이 진행 중일 때 발생
onpause          | 재생이 일시 중지될 때 발생
onended          | 재생이 끝났을 때 발생
ontimeupdate     | 재생 위치가 변경될 때 발생
onvolumechange   | 볼륨이 변경될 때 발생
oncanplay        | 미디어를 재생할 수 있을 때 발생
onratechange     | 재생 속도가 변경될 때 발생
onwaiting        | 추가 버퍼링이 필요해 일시정지될 때 발생
oncanplaythrough | 미디어를 중단 없이 끝까지 재생할 수 있을 때 발생
ondurationchange | 미디어의 길이가 변경될 때 발생
onloadeddata     | 미디어의 첫 번째 프레임이 불러와졌을 때 발생
onloadedmetadata | 미디어의 메타데이터가 로드되었을 때 발생
onloadstart      | 미디어 로드되어 시작되었을 때 발생 
onprogress       | 브라우저가 리소스를 로딩 중일 때 주기적으로 발생
onstalled        | 브라우저가 데이터를 가져오려고 하지만 데이터가 없을 때 발생
onseeked         | 탐색이 완료되었을 때 발생
onseeking        | 탐색이 시작되었을 때 발생
onsuspend        | 미디어 로딩이 의도적으로 중단될 때 발생
onemptied        | 미디어가 비어있게 될 때 발생
onabort          | 리소스 로딩이 중단될 때 발생


**네트워크 이벤트**

이벤트 | 설명
---|---
ononline  | 네트워크에 연결되었을 때 발생
onoffline | 네트워크가 끊겼을 때 발생


**기타 이벤트**

이벤트 | 설명
---|---
onload   | 웹 문서나 리소스가 완전히 로드되었을 때 발생
onerror  | 리소스 로딩 실패나 스크립트 오류 발생 시 발생
onsecuritypolicyviolation | 콘텐츠 보안 정책 위반 시 발생
onrejectionhandled | Promise 거부가 처리될 때 발생
onslotchange       | 슬롯의 분산된 노드가 변경될 때 발생 (Web Components)
oncuechange        | WebVTT cue가 변경될 때 발생