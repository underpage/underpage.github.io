---
order: 1
title: data
description: 데이터 압축
summary:
keywords:
- data
- data conversion
- data compression
- lossless
- lossy
tags:
- data
created_time: 2024-10-06 03:42
modified_time: 2025-02-12 00:42
---

# Data Compression
: 데이터 크기를 줄이기 위한 특화된 변환 작업  
: 데이터 압축을 통해 데이터 저장 공간을 절약하고 데이터 전송 속도를 개선할 수 있음  
: 압축 과정에서 데이터가 변환되므로 넓은 의미에서 인코딩 유형에 포함될 수 있음  
: 데이터가 변환 방식에 따라 손실 압축과 무손실 압축으로 분류됨  
: 압축률과 성능은 데이터의 특성과 압축 알고리즘에 따라 달라짐  

- [무손실 압축](#lossless-compression)
- [손실 압축](#lossy-compression)



## Lossless Compression
= 비손실 압축  
: 데이터가 손실 없이 압축되어 원본 데이터로 완벽한 복구가 가능함  
: 텍스트, 실행 파일 같은 데이터에 주로 사용되며 손실 압축보다는 압축률이 낮음  

**알고리즘**
- 가변 길이 압축 : Huffman coding, Arithmetic coding
- 사전 기반 압축 : LZ77, LZSS, LZW, LZMA , LZ4 
- 복합 알고리즘 : ZIP, Gzip, Deflate, Brotli, Zstd
- 특수 목적 알고리즘: PNG, PPM, FLAC 

알고리즘 | 압축률 | 속도 | 분야 
---|---|---|---
Huffman    | 중간 | 빠름 | 바이너리, 텍스트
Arithmetic | 높음 | 중간 | 바이너리, 텍스트
LZ77       | 중간 | 중간 | 데이터 스트림, 텍스트
LZSS       | 중간 | 중간 | 데이터 스트림, 텍스트, 압축 파일
LZW        | 중간 | 중간 | 텍스트, GIF, TIFF
LZMA       | 매우 높음 | 느림 | 소프트웨어 배포, 대용량 파일
LZ4        | 낮음 | 매우 빠름 | 로그 파일, 실시간 처리
ZIP        | 중간 | 빠름 | 파일 압축, 아카이브
Gzip       | 중간 | 빠름 | 웹 압축, 서버 간 데이터 전송
Deflate    | 중간 | 빠름 | ZIP, Gzip, PNG
Brotli     | 매우 높음 | 중간 | 웹 압축 (HTTPS, HTTP/2)
Zstd       | 매우 높음 | 매우 빠름 | 고속 압축, 실시간 데이터 처리
PNG        | 매우 높음 | 빠름 | 이미지 파일
PPM        | 중간 | 느림 | 고급 텍스트
FLAC       | 매우 높음 | 느림 | 오디오 파일, 고음질 음악 압축



## Lossy Compression
: 일부 데이터를 버려 파일 크기를 줄이는 방식으로 원본 데이터로 완벽한 복구가 불가능함  
: 압축 후 품질 저하가 있을 수 있지만 사람이 인지하기 어려운 수준으로 품질을 감소시킴  
: 이미지, 오디오, 비디오 같은 크기가 큰 비정형 데이터에서 사용됨  


**알고리즘**
- 이미지 : JPEG, WebP
- 비디오 : H.264 (AVC), H.265 (HEVC), VP9, AV1 
- 오디오 : MP3, AAC, Vorbis 

알고리즘 | 압축률 | 속도 | 분야
---|---|---|---
JPEG    | 매우 높음 | 중간 | 이미지 파일
WebP    | 매우 높음 | 빠름 | 웹 이미지 
H.264   | 매우 높음 | 중간 | 비디오 스트리밍
H.265   | 매우 높음 | 느림 | 4K/8K 비디오
VP9     | 매우 높음 | 느림 | 비디오 스트리밍
AV1     | 매우 높음 | 느림 | 4K/8K 비디오, 스트리밍
MP3     | 높음 | 빠름 | 음악 파일, 팟캐스트
AAC     | 높음 | 빠름 | 스트리밍 서비스
Vorbis  | 높음 | 빠름 | 음악 파일, 스트리밍