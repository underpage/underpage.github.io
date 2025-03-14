---
order: 1
title: Git
description: 버전 제어 시스템 - Git
summary:
keywords:
- tool
- vsc
- git
tags:
- git
- tool
created_time: 2024-10-01 01:10
modified_time: 2025-03-14 20:19
---

# Git
: 2005년 Linus Torvalds가 개발한 분산형 버전 제어 시스템  
: 소스 코드의 변경 사항을 기록하고 이를 추적하여 소스 코드를 관리 및 개발 협업을 지원  

- [Git 기초](./#git-basic)
- [Git 개념](./git-concept.md)
- Git 명령어
  - [설정 및 초기화](./git-cmd-setup.md)
  - [변경 기록](./git-cmd-commit.md)
  - [히스토리](./git-cmd-history.md)
  - [저장소](./git-cmd-remote.md)
  - [브랜치](./git-cmd-branch.md)
  - [복구 및 백업](./git-cmd-recovery.md)
  - [파일 관리](./git-cmd-file.md)
- Git 확장 기능
  - [Git LFS](./git-lfs.md)
  - [Git Submodule](./git-submodule.md)
  - [Git Subtree](./git-subtree.md)
  - [Git Worktree](./git-worktree.md)
  - [Git Hook](./git-hook.md)
- Git 방법론
  - Git Workflow Model
  - Git Branch Model
- Git 호스팅 서비스
  - GitHub
  - GitLab
  - BitBucket
  - RocketGit
  - Gitea


분류 | 명령어
---|---
Setup    | init, config, help
Commit   | add, commit, status, diff, tag
History  | log, shortlog, reflog, show, grep, blame, bisect
Remote   | clone, remote, fetch, pull, push, filter-branch, sparse-checkout, fsck, gc
Branch   | branch, checkout, switch, merge, rebase, cherry-pick
Recovery | stash, reset, revert
File     | ls-files, rm, mv, restore, clean, check-ignore, update-index, archive, bundle


**install**
```bash 
# linux 
sudo yum install git 
sudo apt install git

# windows 
choco install git.install

git version
```

**git version**  
https://mirrors.edge.kernel.org/pub/software/scm/git/
