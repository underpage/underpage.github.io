---
order: 0.2
title: browser
description: 브라우저 종류
summary:
keywords:
- web
- browser
- browser type
- 브라우저 종류
tags:
- web
created_time: 2024-10-01 22:56
modified_time: 2024-10-26 22:16
---

# Browser Type
: 환경과 용도에 따라 다양한 브라우저 유형 존재

- Desktop Browser 
- Mobile Browser
- Cross Platform Browser
- Private Browser
- Lightweight Browser
- Headless Browser
- Text-based Browser
- Specialty Browser



## Mobile Browser
= Micro Browser  
: 모바일 장치에 특화된 브라우저  
: 터치 인터페이스 지원, 데이터 절약 모드 등 모바일 환경에 최적화  


## Cross Platform Browser
: 여러 운영체제에서 사용 가능한 브라우저  
: 일관된 사용자 경험 제공  
: Google Chrome, Mozilla Firefox, Opera  


## Private Browser
: 보안에 중점을 둔 브라우저  
: 사용자 추적 차단, 익명성 강화, 자동 쿠키 삭제 등 제공  
: Comodo Dragon, Epic Privacy Browser, Browzar  


## Lightweight Browser
: 리소스 사용이 적은 브라우저  
: 적은 메모리 사용, 빠른 로딩 속도, 간소화된 인터페이스 등 제공  
: Opera Mini, Midori, K-Meleon  


## Headless Browser
: GUI 없이 동작하는 브라우저  
: 요청, 응답, 성능 등 테스트나 크롤링을 위해 사용  
: 크롬이나 파이어폭스 경우 헤드리스 모드 사용 가능  
: Splash, HtmlUnit, Puppeteer, Selenium WebDriver


## Text-based Browser
: 텍스트만 표시하는 브라우저  
: 그래픽 리소스를 소비하지 않으므로 웹 문서를 더 빨리 로드 
: 크롬 경우 텍스트 모드 사용 가능  
: Lynx, w3m, Links

```bash
# 데비안 
apt install lynx

# 레드헷
dnf install lynx

# 웹 문서를 파일로 저장
lynx -dump http://example.com > example.txt
```


## Specialty Browser
: 특수 목적이나 기능을 제공하는 브라우저  
: eToro Browser(금융), Brave(암호화폐), Coowon(게임), Torch(미디어)