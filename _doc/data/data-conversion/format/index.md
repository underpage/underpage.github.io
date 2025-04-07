---
order: 0.1
title: data format
description: 데이터 포맷
tags:
- data
- format
created_time: 2024-09-18 19:02
modified_time: 2024-10-10 10:21
---

# Data Format
: 데이터를 저장하고 전송하기 위한 형식과 규칙  
: 데이터 형식은 데이터의 생성, 저장, 처리, 분석 등 전체 생명주기에 영향을 미침  

**formating**  
: 포맷팅이란 데이터를 특정 형식이나 구조로 변환하는 과정  
: 데이터 구조화나 직렬화 등 다양한 포맷팅 기법이 존재  


**구조화**  
: 비정형 데이터와 같은 구조가 없는 데이터를 특정 구조나 형식으로 조직화하는 과정  
: 이를 통해 데이터는 일관된 형식을 갖게됨  

```
로우 데이터 ==> 데이터 구조화 ==> 특정 구조로 변환 (포맷 포함)
```


**직렬화**  
: 데이터를 전송하거나 저장할 수 있도록 메모리에 존재하는 데이터를 특정 포맷으로 변환하는 과정  
: 직렬화된 데이터는 역직렬화를 통해 원래 데이터 구조로 복원될 수 있음  

```
사용자 정의 데이터 ==> 직렬화 ==> 특정 포맷으로 변환
```



## Data Format Classification

**구조적 데이터 형식**
- JSON
- TOML
- YAML
- XML
- CSV
- TSV

**데이터 교환 형식**
- JSON
- TOML
- YAML
- CSV
- Atom
- RSS

**이진 데이터 형식**
- Protobuf
- FlatBuffers
- MessagePack
- Avro
- BSON
- Cap'n Proto

**설정 파일 형식**
- INI
- Properties

**빅데이터 저장 형식**
- HDF5 
- ORC
- Parquet