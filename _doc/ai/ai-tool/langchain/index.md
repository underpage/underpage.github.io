---
order: 1
title: AI
description: 랭체인 (LangChain)
summary: LLM 애플리케이션의 전체 생명주기를 지원하는 통합 프레임워크 LangChain에 대한 내용
keywords:
- ai
- ai framework
- langchain
- rag
tags:
- ai
- tool
created_time: 2025-10-04 03:21
modified_time: 2025-10-04 08:17
---

# LangChain
: LLM 기반의 애플리케이션 개발을 위한 포괄적인 오픈소스 프레임워크  
: 주로 언어 모델을 중심으로 하나 이미지 모델, 임베딩 모델 등 다양한 모델도 지원함  

**주요 기능**
- 다양한 언어 모델을 위한 통일된 인터페이스 제공하여 손쉬운 모델 전환 가능
- 모델 호출, 데이터 처리 등 여러 단계를 체인을 통해 파이프라인으로 구성
- 대화 기록, 컨텍스트 유지 등을 위해 메모리 및 상태 관리 기능 제공
- 다양한 외부 서비스와 통합하기 위한 인터페이스와 도구 제공

**적용 분야**
- 챗봇
- 문서 분석
- RAG
- Agent



## LangChain Ecosystem
: LangChain을 중심으로 통합된 도구 모음  
: 애플리케이션 개발, 배포, 모니터링 등 전체 라이프사이클을 지원함  

- LangChain
- LangGraph
- LangSmith
- LangServe



### LangChain
: 랭체인 프레임워크는 구성 요소를 모듈로 제공해 필요한 컴포넌트만 선택적으로 사용함  

**모듈**
- langchain-core: 핵심 추상 기본 클래스, LCEL
- langchain: 랭체인 컴포넌트(문서 로더, 텍스트 분할기, 메모리 구현체 등)
- langchain-community: 커뮤니티가 유지보수하는 서드파티 통합
- langchain-experimental: 연구 및 실험적 기능

**설치**
```bash
# 코어 설치 -- langchain를 설치하면 langchain-core가 포함됨
uv add langchain

# 특정 패키지 설치
uv add langchain-openai
uv add langchain-anthropic
uv add langchain-google-genai
uv add langchain-mistralai

# 전체 설치 -- 비권장
uv add langchain[all]


# 프레임워크/플랫폼 설치
uv add langgraph
uv add langgraph-cli
uv add langsmith
uv add langserve
```

패키지 목록  
https://python.langchain.com/api_reference/