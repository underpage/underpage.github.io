---
order: 8
title: web
description: 웹 표준 스펙 및 기관
summary:
keywords:
- web
- web standard
- web spec
- w3c
- whatwg
tags:
- web
created_time: 2024-11-13 22:02
modified_time: 2025-02-05 21:23
---

# Web Standard
: 웹 정의, 웹 기술 등 웹과 관련된 국제적 표준 지침  
: 웹의 일관성, 접근성, 상호운용성 등을 보장하기 위해 개발되는 포괄적인 기술 표준  
: 스펙은 표준화 기관 W3C와 WHATWG에서 정의되며 일부 기술은 IETF나 ECMA같은 기구와 협력하여 개발됨  

- Origin Security
  - [Same-Origin Policy](./sop.md)
  - [CORS](./cors.md)
  - COOP
  - COEP
  - CORB
- Content Security
  - [Content Security Policy](./csp.md)
  - Secure Contexts
- Resource Security
  - Cache-Control 
  - HTTP Strict Transport Security
  - Mixed Content Policy
  - Subresource Integrity
  - Referrer Policy
- State Management
  - Cookie Policy
  - Storage Policy
- Document Security
  - Permissions Policy
  - Document Policy
  - X-Frame-Options
- Accessibility Standards
  - WCAG
  - ARIA



**기관**
- [W3C](#w3c)
- [WHATWG](#whatwg)



## W3C
World Wide Web Consortium  
: 1994년 웹표준을 개발하기 위해 설립된 국제 기구  
: 현재는 미래 웹을 위한 새로운 기술을 개발하고 이를 표준화  

**W3C Standards**  
https://www.w3.org/standards/   

**W3C Working Groups**  
https://www.w3.org/groups/wg/

**W3C Community Groups**  
https://www.w3.org/groups/cg/



### WebApps WG
Web Applications Working Group  
: 웹 애플리케이션을 개발을 위한 사양 정의  

https://www.w3.org/groups/wg/webapps   



### WebApp Security WG
Web Application Security Working Group  
: 웹 애플리케이션 보안을 위한 기술과 정책 정의  

https://www.w3.org/groups/wg/webappsec



### WICG
Web Platform Incubator Community Group  
: 새로운 웹 플랫폼 기능 제안 및 실험 기술 개발  
: 공식 표준 이전 단계로 커뮤니티 주도로 실험적인 기술이 제안됨  

https://wicg.io/   



## WHATWG
Web Hypertext Application Technology Working Group  
: 2004년 애플, 모질라, 오페라 등 기업이 주도해 설립된 웹 기술 표준화 조직  
: W3C에서 선보인 XHTML2에 대응하기 위해 설립되어 자체적으로 HTML5를 개선  
: 현재 HTML과 DOM은 WHATWG 주도하에 개발되고 표준화됨  

https://whatwg.org/  


**spec**
- HTML (https://html.spec.whatwg.org/)
- DOM (https://dom.spec.whatwg.org/)
- Encoding (https://encoding.spec.whatwg.org/)
- MIME Sniffing (https://mimesniff.spec.whatwg.org/)
- URL (https://url.spec.whatwg.org/)

**api**
- History
- Events
- Canvas
- Fetch
- Web Storage
- IndexedDB
- WebSockets
- Streams
- Notifications
- Geolocation