---
order: 0
title: data format
description: 데이터 포맷 - JSON
tags:
- data
- format
created_time: 2024-10-05 04:38
modified_time: 2024-10-10 11:36
---

# JSON
JavaScript Object Notation  
: 텍스트 기반 경량 데이터 교환 형식  
: 데이터를 키/값을 쌍으로 표현하고 키는 따옴표로 감쌈  
: 기본 데이터 타입을 지원하고 배열, 객체, 중첩 배열, 중첩 객체같은 자료 구조 지원  
: 자바스크립트에서 데이터를 표현하기 위한 형식이었으나 현재는 다양한 언어와 환경에서 사용  
: 구조가 간단해 직렬화 처리가 쉬워 서버 간 데이터 전송에 사용하기 적합  

```json
{
  "key": "value",
  "num": 0,
  "bool": true,
  "null": null,
  "array": [],
  "object": {
    "key": "value"
  }
}
```


**extension**
- JSONC
- JSON5
- JSONP
- JSONB 
- GeoJSON



## JSONC
JSON with Comments  
: 자바스크립트 주석이 추가된 JSON 형식  
: 주석 사용이 가능한 형식으로 내부적으로는 JSONC 파서가 주석을 삭제해 JSON으로 변환해 처리  
: 프로그래밍 언어에서 JSONC 파서와 라이브러리를 지원해야 사용 가능  

- jsonc-parser (vscode)
- strip-json-comments (javascript)
- jsoncomment (python)
- json_comments (rust)



## JSON5
JSON for humans  
: 주석, 후행 쉼표 등 추가 기능을 지원하는 JSON 확장 형식  
: JSON5은 JSON보다 규칙이 느슨해 보다 유연성이 높음  

**표준**  
https://json5.org/

**온라인 에디터**  
https://json-5.com/


```
{
  /* comment */
  // comment 

  key: "value",
  'null': null,
  'number': +0,
  'array': [1,2,3,],
}
```



## JSONP
JSON with Padding  
: JSON 데이터를 다른 도메인에서 요청할 수 있게 하는 방식  
: 브라우저의 동일 출처 정책 제한을 우회하기 위해 개발  
: CORS가 등장하기 전까지 사용된 방식으로 현재는 잘 사용하지 않음  



## JSONB
JSON Binary  
: PostgreSQL에서 제공하는 데이터 타입  
: JSON은 인덱스 관리가 불가능한데 이를 보완하기 위해 추가된 데이터 타입  
: JSONB 타입은 JSON 데이터를 선처리 후 이진 형식으로 저장  

특징 | JSON | JSONB
---|---|---
저장 방식 | 텍스트 형식 | 이진 형식
데이터 순서 | 데이터 순서 유지 | 키를 기준으로 순서를 정렬함
공백 | 공백 유지 | 공백 제거
비용 | 읽기 비용 발생 | 쓰기 비용 발생
성능 | 대량 데이터 처리에 느림 | 대량 데이터 처리에 빠름



## GeoJSON
: 지리 정보 및 공간 데이터를 표현하기 위한 JSON 확장 형식  

```json
{
  "type": "Feature",
  "properties": {},
  "geometry": {
    "type": "Point",
    "coordinates": [126.9780, 37.5665]
  }
}
```