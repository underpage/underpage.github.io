---
order: 6
category: Software Engineering
title: 소프트웨어 인터페이스
summary:
keywords:
- software engineering
- software interface
- api
tags:
- software engineering
created_time: 2026-06-17 10:30
modified_time: 2026-06-17 12:25
---

{::comment}
ttl_tags: [software-interface, interface-concept, interface-principles, interface-specification, interface-form, interaction-style, interaction-boundary, api, abi, cli, sdk, plugin-interface, protocol, contract, schema, idl, wsdl, openapi, swagger, raml, api-blueprint, protocol-buffers, request-response, rpc, messaging, event, webhook, streaming, web-api, rest-api, hateoas, soap, graphql, odata, websocket-api, grpc, json-rpc, xml-rpc, apache-thrift, ipc, named-pipes, unix-domain-sockets, d-bus, mach-ports, distributed-object-interface, corba, rmi, dcom, os-api, posix-api, win32-api, system-call-api, browser-api, dom-api, fetch-api, web-storage-api, canvas-api, web-worker-api, webrtc-api, hardware-interface, device-interface]

related:
- id: software
  type: aspect_of
- id: protocol
  type: references
- id: web
  type: references
- id: os
  type: references
- id: computer
  type: references
{:/comment}

# Software Interface
: 소프트웨어 구성 요소가 데이터, 제어 흐름, 기능을 교환하며 상호작용하기 위해 사용하는 경계와 규약  
: 인터페이스는 형태, 상호작용 방식, 통신 범위, 도메인 등 여러 층위로 분류됨  
: 상호작용은 모델에 따라 클라이언트/서버, 발행자/구독자, 생산자/소비자 같은 역할이 존재함  

```
규약은 구성요소가 서로 맞춰 동작하기 위해 따르는 형식, 절차, 제약, 기대 조건의 집합을 의미하며
여기서 규약은 프로토콜과 동의어가 아니며 프로토콜은 통신 절차를 다루는 규약의 한 종류임
```

- [인터페이스 개념](./interface-concept.md)
- [인터페이스 형태](./interface-form.md)
- [인터페이스 설계 원칙](./interface-principles.md)
- [인터페이스 계약과 명세](./interface-specification/index.md)
- [인터페이스 유형](./interface-type/index.md)

**인터페이스 기술**
- [API](./api.md)
- [웹 서비스 API](./web-api.md) 
- [RPC](./rpc.md)
- [메시징 및 이벤트 인터페이스](./messaging.md)
- [IPC](./ipc.md)
- [분산 객체 인터페이스](./distributed-object.md)