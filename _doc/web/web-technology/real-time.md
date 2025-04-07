---
order: 3
title: web
description: 웹 기술 - 실시간 통신
summary:
keywords:
- web
- web technology
- real-time communication
- polling
- webhook
- sse
- websocket
- webrtc
tags:
created_time: 2025-02-23 22:59
modified_time: 2025-02-24 00:04
---

# Real-time Communication
: 클라이언트와 서버 간 실시간 데이터 전송을 위한 기술들  
: 주기적 요청없이 이벤트 기반이나 지속적 연결을 통해 최소한의 지연으로 데이터를 주고받을 수 있도록 함  

- Polling
- Webhook
- SSE
- WebSocket
- WebRTC


기술 | 특징 | 사용
---|---|---
Polling   | 주기적으로 서버에 요청 | 데이터 동기화, 알림 시스템
Webhook   | 이벤트 발생 시 서버가 HTTP 요청 전송 | 결제 시스템, CI/CD 파이프라인, 외부 서비스 연동
SSE       | 서버에서 클라이언트로 단방향 실시간 데이터 스트리밍 | 실시간 뉴스, 실시간 알림, 주식
WebSocket | 양방향 실시간 통신 | 실시간 채팅, 실시간 협업 도구, 온라인 게임
WebRTC    | 클라이언트 간 P2P 미디어/데이터 전송 | 화상 회의, 오디오/비디오 스트리밍

