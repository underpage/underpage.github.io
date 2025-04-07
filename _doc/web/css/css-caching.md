---
order: 0.21
title: css
description: CSS 파일 캐싱과 캐싱 무효화
summary:
keywords:
- web
- css
- cascading style sheets
- css caching
tags:
- web
- css
created_time: 2024-08-30 03:10
modified_time: 2024-11-04 21:49
---

# CSS Caching
: 브라우저는 CSS 파일이 로드되면 (비활성화하지 않은 경우) 이를 캐시에 저장하고 재사용함  
: CSS가 업데이트되어도 브라우저는 이전 CSS 파일을 사용하므로 업데이트된 CSS 파일을 다시 로드해야함  

- 캐싱 
  - Client Cache
  - Server Cache
- 캐싱 무효화 
  - Caching Invalidation
  - Cache Busting



## Client Cache

HTTP Cache
= Site Cache, Page Cache  
: 리소스를 클라이언트에 캐싱  
: HTTP 헤더를 통해 리소스의 캐싱을 제어  


: 리소스의 Last-Modified, etag 값을 사용해 유효성 검사를 함  


**캐시 유효 기간**  
```
Cache-Control: no-store | no-cache | max-age | private | public | must-revalidate

// http header 
Cache-Control: max-age=84600, public

// apache
Header set Cache-Control "max-age=84600, public"

// nginx
expires 365d;
add_header Cache-Control "public";
```

**캐싱 테스트**  
https://cache-tests.fyi/


**Browser Cache**    
: 클라이언트 측 캐싱 (개인 캐시)    
: 최종 사용자(유저)가 브라우저 설정을 통해 캐시 제어  

크롬 캐시 분할  
https://developer.chrome.com/blog/http-cache-partitioning/



## Server Cache  
= Proxy Cache, CDN Cache, Edge Cache 등
: 리소스를 서버 측에 캐싱 (공유 캐시)  
: 리소스를 여러 서버에 캐싱함 (프록시 서버, CDN, 엣지 서버 등에서 캐싱 기능을 지원)  



## Caching Invalidation
: 캐시된 리소스의 유효성을 무효화함  

```
Cache-Control: no-cache
```



## Cache Busting
: 리소스의 URL을 변경해 업데이트된 리소스를 새로 다운로드하는 방법


**파일명이나 파일 패스 변경**
```
/css/style1.css

/css/v1/style.css
```


**쿼리스트링 추가**  
: 일부 브라우저에서 작동하지 않음 

```
style.css?v=2024
```


**파일명 변경 + webpack**
```js
plugins: [
    new MiniCssExtractPlugin({
        filename: '[name].[hash | chunkhash | contenthash].css',
    })
]
```