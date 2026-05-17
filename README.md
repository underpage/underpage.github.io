# GitHub Pages
: 깃허브에서 지원하는 정적 사이트 호스팅 서비스  

- jekyll
- hugo
- hexo 
- next
- nuxt
- gatsbyjs



## jekyll
: 텍스트 변환 엔진  
: 마크업 언어나 마크다운으로 작성한 문서를 설정한 규칙에 맞춰 정적 사이트 생성

```bash
gem install jekyll bundler

# 블로그 생성
jekyll new example 

# 실행
cd example && bundle install
bundle exec jekyll serve

## 변경된 파일만 빌드
bundle exec jekyll serve --incremental

## 빌드 상세 정보 확인
bundle exec jekyll serve --verbose

## Gemfile.lock에 x86_64-linux 플랫폼 추가
bundle lock --add-platform x86_64-linux


# 정적 사이트 생성
jekyll build

## 변화를 감지해 재생성
jekyll build --watch

## 빌드 과정 분석
jekyll build --profile


# 캐시 삭제
jekyll clear


# 웹 서버 실행
jekyll serve
>> localhost:4000
```



### 프로젝트 구성

```
github.io/
├── _doc/               # 문서 (Jekyll 컬렉션)
├── _includes/          # 공통 컴포넌트
├── _layouts/           # 레이아웃 템플릿
├── _plugins/           # Ruby 플러그인
├── assets/
├── pages/              # 정적 페이지
│   ├── index.html
│   ├── about.html
│   ├── search.html
│   ├── category.html
│   ├── dashboard.html
│   └── knowledge-graph.html
├── _config.yml
├── 404.html
├── sitemap.xml
├── feed.xml
└── robots.txt
```