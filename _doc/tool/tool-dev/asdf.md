---
order: 1
title: Tool
description: asdf
summary:
keywords:
- tool
- development support
- asdf
tags:
- tool
created_time: 2025-05-25 00:29
modified_time: 2025-05-25 00:49
---

# asdf
: 프로그래밍 언어, 실행 환경, 도구 버전을 통합적으로 관리하는 버전 관리 도구  
: 다양한 실행 환경, 개발 도구를 하나의 인터페이스로 관리 가능함  


**install**
```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd .asdf 

echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
source ~/.bashrc

asdf --version
```


**command**
```bash
# 전체 플러그인 업데이트
asdf plugin update --all

# 특정 플러그인 추가
asdf plugin add 플러그인

# 특정 플러그인 버전 확인
asdf list all 플러그인  

# 특정 플러그인 업데이트
asdf plugin update 플러그인

# 특정 플러그인 제거
asdf plugin remove 플러그인

# 특정 버전 설치
asdf install 플러그인 버전

# 현재 디렉토리에 설정
asdf local 플러그인 버전

# 전체 디렉토리에 설정
asdf global 플러그인 버전
```


**.asdfrc**  
: asdf 동작 방식을 제어하는 구성 파일  

```ini
# 기존 도구의 버전 파일을 자동으로 인식하는지 여부
legacy_version_file = yes

# asdf가 사용하는 기본 디렉토리
asdf_data_dir = $HOME/.asdf

# 저장소를 다시 확인하는 최소 간격
plugin_repository_last_check_duration = 1d
```


**.tool-versions**  
: asdf가 플러그인 별로 어떤 버전을 사용할지 정의하는 파일  
: 전역은 ~/.tool-versions 위치하며 프로젝트는 해당 디렉토리에 .tool-versions 파일을 생성  


**플러그인**  
https://github.com/asdf-vm/asdf-plugins