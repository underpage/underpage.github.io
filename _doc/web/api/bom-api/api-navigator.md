---
order: 2
title: Web API
description: Web API - Navigator
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

# Navigator API
: 브라우저와 관련된 정보를 제공하는 인터페이스  
: 브라우저 버전, 운영체제 정보, 사용자 에이전트 문자열 등을 제공  

**스펙**  
https://html.spec.whatwg.org/multipage/system-state.html#the-navigator-object  


**속성과 메소드**

속성 | 설명
---|---
userAgentData | Client Hints API 기반 브라우저 정보 제공


**share()**  
: Web Share API로 텍스트, 파일 등을 공유할 수 있도록 함  
: HTTPS 환경과 모바일 브라우저에 주로 지원하며 데스크탑 브라우저 경우 일부만 지원

```js
navigator.share({
  url: window.location.href,
  title: '공유할 제목',
  text: '공유항 텍스트',
  files: [File],
}).then(() => console.log('공유 성공'))
  .catch((e) => console.log('공유 실패'));
```


**canShare()**  
: Web Share API로 URL이나 File 공유를 지원하는지 여부를 반환

```js
if(navigator.canShare({ files: [file]})) {
  navigator.share
}
```


**인터페이스**  
: Navigator는 다른 인터페이스를 조합해 기능을 확장한 인터페이스

- [NavigatorID](#navigatorid)
- [NavigatorLanguage](#navigatorlanguage)
- [NavigatorOnLine](#navigator)
- [NavigatorContentUtils](#navigatorcontentutils)
- [NavigatorCookies](#navigatorcookies)
- [NavigatorPlugins](#navigatorplugins)
- [NavigatorConcurrentHardware](#navigatorconcurrenthardware)



## NavigatorID
: 브라우저와 관련된 정보를 제공하는 인터페이스  
: 브라우저 벤더사에서 구현하므로 반환 형식은 브라우저마다 다를 수 있음  
: 현재 대부분의 속성은 레거시이며 navigator.userAgentData 속성 사용이 권장됨  

속성 | 설명
---|---
appCodeName  | 브라우저 코드 이름 반환
appName      | 브라우저 이름 반환
appVersion   | 브라우저 버전 정보 반환
platform     | 브라우저가 실행되고 있는 운영체제 정보 반환
product      | 브라우저에서 사용되고 있는 엔진 정보 반환
productSub   | 브라우저 빌드 번호 반환
userAgent    | 유저 에이전트 헤더를 문자열로 반환
vendor       | 벤더사 이름 반환
vendorSub    | 벤더사 빌드 번호 반환  


**taintEnabled()**  
: 브라우저의 taint 모드가 활성화되었는지 여부 반환  
: 과거 사용된 메소드로 최신 브라우저에서는 지원되지 않을 수 있음  



## NavigatorLanguage
: 브라우저나 시스템에 설정한 언어에 대한 정보를 제공하는 인터페이스  

속성 | 설명
---|---
language     | 사용자가 설정한 언어를 문자열로 반환
languages    | 사용자가 설정한 언어 목록을 배열로 반환



# NavigatorOnLine
: 브라우저가 온라인 상태인지 여부를 제공하는 인터페이스  
: 브라우저의 인터넷 연결 상태를 확인해 온라인과 오프라인 여부를 판별함  
: 네트워크 연결이 불안정하거나 비활성화된 경우 false를 반환함  

속성 | 설명
---|---
onLine       | 온라인 상태면 true를 반환하고 오프라인 상태일 경우 false를 반환 

```js
navigator.addEventListener('online', callback);
navigator.addEventListener('offline', callback);
```



# NavigatorContentUtils
: URL 프로토콜을 처리하는 방법을 제공하는 인터페이스  


**registerProtocolHandler()**  
: 특정 URL protocol을 URL로 처리하는 메소드  
: 보안 상 이유로 모든 프로토콜을 지원하지 않으며 브라우저에 따라 허용된 프로토콜이 존재함  
: 스키마에 콜론을 포함하면 오류가 발생하며 URL에 %s이 포함되지 않으면 오류가 발생  

```html
<a href="mailto:send+data">mail</a>

<script>
navigator.registerProtocolHandler('web+chat', 'https://example.com/chat?example=%s');
navigator.registerProtocolHandler('mailto', 'https://example.com/mail?data=%s');
</script>
```

프로토콜 | 설명 | 예시
---|---|---
web+   | 사용자 정의 프로토콜 | web+chat:example
mailto | 이메일 링크 | mailto:example@example.com
sms	   | 문자 메시지 | sms:+1234567890
tel	   | 전화 걸기   | tel:+1234567890
mms	   | 멀티미디어 메시지 | mms:+1234567890
geo    | 위치 정보 | geo:00.1111,00.2222
webcal | 웹 기반 캘린더 | webcal://example.com/calendar.ics


**unregisterProtocolHandler()**  
: 등록한 URL 프로토콜 핸들러를 해제하는 메소드  



# NavigatorCookies
: 브라우저의 쿠키 사용 여부에 대한 정보를 제공하는 인터페이스  

속성 | 설명
---|---
cookieEnabled | 쿠키 사용 가능 여부를 반환   



# NavigatorPlugins
: 현재 브라우저에 설치된 플러그인과 지원하는 MIME 타입에 대한 정보를 제공하는 인터페이스  
: 보안상의 이유로 제한적인 정보만 제공하거나 빈 배열을 반환할 수 있음  

속성 | 설명
---|---
plugins   | 브라우저에 설치된 플러그인을 PluginArray 객체로 반환 (보안 문제로 일부 브라우저는 기능 제한)
mimeTypes | 브라우저가 인식 가능한 MIME 유형 MimeTypeArray 객체로 반환 
pdfViewerEnabled | 브라우저가 PDF 인라인 보기를 지원하는지 여부 반환  


**javaEnabled()**  
: 브라우저가 Java를 제어하는 환경 설정이 되어있는지 여부 반환    



# NavigatorConcurrentHardware
: 브라우저가 사용할 수 있는 하드웨어의 동시 처리 능력에 대한 정보를 제공하는 인터페이스  

속성 | 설명
---|---
hardwareConcurrency | 현재 사용 중인 CPU의 논리 프로세서 개수를 반환
maxTouchPoints      | 현재 장치에서 동시에 감지할 수 있는 터치 포인트 개수를 반환