---
order: 1
title: Python
description: 파이썬
summary:
keywords:
- programming language
- python
tags:
- python
- language
created_time: 2025-10-04 09:05
modified_time: 2025-10-04 09:31
---

# Python
: 1991년 귀도 반 로섬이 개발한 고급 프로그래밍 언어 및 생태계  
: PEP 프로세스를 통해 언어의 발전 방향과 새로운 기능, 개선, 정책 등을 체계적으로 관리함  
: [PyPI](./python-package-index/index.md)를 통해 서드파티 패키지를 제공하며 이를 관리하기 위한 패키지 관리 도구를 제공함  
: 가상 환경 도구를 통해 프로젝트별로 독립적인 실행 환경으로 구성하고 관리함  
: 파이썬은 웹 개발, 자동화, 데이터 과학, 인공지능 등 다양한 분야에서 폭넓게 활용됨  

- [파이썬 언어](./python-lang/index.md)
- [파이썬 실행 방식](./python-execution.md)
  - [PVM](./python-execution.md#pvm)
- [파이썬 구현체](./python-implementation.md)
- 파이썬 개발 도구
  - [패키지 관리자](./python-package-manager.md)
  - [가상 환경 관리자](./python-environment-manager.md)
  - [빌드 도구](./python-build-tool.md)
  - [코드 품질 도구](./python-quality-tool.md)
- 파이썬 통합 개발 환경
  - [Anaconda](./tool-anaconda.md)
  - [Jupyter Notebook](./tool-jupyter.md)
- [파이썬 개선 제안서](./pep.md)
  - [패키징 표준](./python-packaging.md)
  - [WSGI와 ASGI](./wsgi-and-asgi.md)
- [파이썬 표준 라이브러리](./python-standard-library/index.md)
- [파이썬 패키지 인덱스](./python-package-index/index.md)

**응용 분야**
- [자동화](./python-automation/index.md)
- [데이터 과학](./python-data/index.md)



## Python Install

**system package manager**  
: 시스템 패키지 관리자로 설치  
: 간편하게 설치 가능하나 파이썬이 최신 버전이 아닐 수 있으며 시스템 전역으로 설치되어 의존성 문제가 있을 수 있음  

```bash
# Debian
sudo apt install python3 python3-pip python3-venv python3-dev

# Red Hat
sudo dnf install python3 python3-pip python3-venv python3-devel
```

도구 | 설명
---|---
python | 파이썬 인터프리터
pip    | 파이썬 패키지 관리자
venv   | 가상환경 관리 도구
pdb    | 디버깅 도구


**pyenv**  
: 파이썬 버전 관리자  
: 여러 버전의 파이썬을 동시에 설치하고 관리하는 도구  

```bash
curl https://pyenv.run | bash

pyenv install 3.12
pyenv global 3.12
```


**conda**  
: 가상 환경 및 패키지 관리 도구  
: 도구만 단독 설치가 불가능하며 miniconda 또는 anaconda를 설치하여 사용  

```bash
# miniconda 설치
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

## 권한 수정
chmod +x Miniconda3-latest-Linux-x86_64.sh

## 스크립트 실행
bash ./Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
# -b : 배치 모드로 프롬프트없이 자동 설치함
# -p : 설치 경로

## 환경 변수 설정
$HOME/miniconda3/bin/conda init
# or
echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc


# 가상 환경 생성 및 파이썬 설치
conda create -n example python=3.12

# 가상 환경 활성화
conda activate example
```


**asdf**  
: 여러 언어를 통합 관리하는 멀티 버전 관리자  

```bash
asdf plugin add python
asdf install python 3.12

# 전역 사용 설정
asdf global python 3.12

# 현재 디렉토리에 사용 설정
asdf local python 3.12
```