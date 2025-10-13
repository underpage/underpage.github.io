---
order: 1
title: AI
description: 랭체인 (LangChain)
summary: LangChain은 LLM 중심 애플리케이션을 체인 단위로 구성 및 관리하는 프레임워크
keywords:
- ai framework
- langchain
tags:
- ai
created_time: 2025-10-13 17:21
modified_time: 2025-10-14 01:41
---

# LangChain
: LLM 기반 애플리케이션을 체인 단위로 구성하고 관리하는 프레임워크  
: 모델 호출, 프롬프트 관리, 메모리 등 주요 기능을 모듈화된 컴포넌트로 제공함  
: 언어 모델만 아니라 이미지 모델, 임베딩 모델 등 다양한 AI 모델을 지원함  

**적용 분야**
- 챗봇
- 문서 요약
- RAG
- Agent


**주요 기능**
- 다양한 언어 모델을 위한 통일된 인터페이스 제공하여 손쉬운 모델 전환 가능
- 모델 호출, 데이터 처리 등 여러 단계를 체인으로 연결해 파이프라인으로 구성
- 대화 기록, 컨텍스트 유지 등을 위해 메모리 및 상태 관리 기능 제공
- 다양한 외부 서비스와 통합하기 위한 인터페이스와 도구 제공


**모듈**
- langchain-core: 핵심 추상 기본 클래스, LCEL
- langchain: 랭체인 컴포넌트(문서 로더, 텍스트 분할기, 메모리 등)
- langchain-community: 커뮤니티가 유지보수하는 외부 통합 모듈
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
```

패키지 목록  
https://python.langchain.com/api_reference/
