---
order: 1
title: Infra
description: Caddy
summary:
keywords:
- infra
- infra component
- web server
- caddy
tags:
- infra
created_time: 2025-04-15 19:20
modified_time: 2025-04-15 22:27
---

# Caddy
: Go 언어로 작성된 오픈소스 웹 서버  
: 모듈화된 아키텍처로 플러그인 설치를 통해 다양한 기능을 지원함  
: 일부 엔터프라이즈 환경을 위한 확장 기술은 상업용 라이선스(유료 플러그인)로 제공  


**주요 기능**
- HTTP/3 기본 지원
- Caddyfile을 통한 간단한 구성
- 자동 HTTPS 지원
- 리버스 프록시 기능 기본 내장
- 보안 중심 환경 제공
- 단일 바이너리 배포


**Automatic HTTPS**
: 도메인 설정만으로 HTTPS 구성을 자동으로 처리함  

- 무료 인증서 자동 발급 (Let's Encrypt 또는 ZeroSSL)
- HTTP에서 HTTPS로 자동 리디렉션 적용
- 인증서 자동 갱신
- TLS, HSTS 등 보안 옵션 자동 적용


**install**
```bash
curl -fsSL https://get.caddyserver.com | bash
caddy version

sudo systemctl start caddy
sudo systemctl status caddy

# 수동 실행
caddy start --config Caddyfile

# 문법 검사
caddy validate --config Caddyfile 

# JSON 형식으로 보기
caddy adapt --config Caddyfile

# JSON 형식으로 변환
caddy adapt --config Caddyfile > config.json
```


**Caddyfile**  
: Caddy 구성을 위한 [DSL](../../../program/language/classification/domain-specific-language.md) 형식의 파일로 다양한 지시어(디렉티브)를 통해 설정을 구성함  

```
example.com {
  # 정적 리소스
  root * /var/www/html

  # 압축 활성화
  encode gzip zstd

  # 리버스 프록시
  reverse_proxy localhost:8080
}

api.example.com {
  # 로드 밸런싱
  reverse_proxy {
    to backend1:8081 backend2:8082 backend3:8083
  }
}
```

https://caddyserver.com/docs/caddyfile/concepts
