---
order: 0.1
title: aws
description: 아마존 웹 서비스 주요 용어
summary:
keywords:
- cloud
- aws
- amazon web services
- 아마존 웹 서비스
tags:
- aws
- glossary
created_time: 2024-09-29 16:16
modified_time: 2024-10-26 22:16
---

# AWS Glossary
: AWS 주요 용어와 개념  


**주요 서비스**

용어 | 설명
---|---
EC2  | 가상 서버 관리 서비스
ECS  | 컨테이너 오케스트레이션 서비스
S3   | 객체(데이터) 스토리지 서비스
RDS  | 관계형 데이터베이스 관리 서비스
Lambda | 서버리스 컴퓨팅 서비스
CloudFront     | CDN 서비스
CloudWatch     | 모니터링 서비스
CloudFormation | AWS 리소스를 프로그래밍 방식으로 정의하고 배포하는 서비스
Route 53 | DNS 서비스
VPC  | 사용자가 정의한 가상 네트워크
IAM  | AWS 리소스에 대한 접근 권한 관리 서비스


**물리적 인프라**
- [Region](#region)
  - [Availability Zone](#availability-zone)
  - [Local Zone](#local-zone)
- [Edge Location](#edge-location)



## Region
: 데이터 센터가 존재하는 물리적 장소로 전 세계에 22개 리전 존재  
: 리전을 기준으로 Availability Zone과 일부 Edge Location이 존재  
: 각 리전은 독립적이며 하나의 리전에는 최소 2개 이상의 가용 영역 존재   
: 리전에 따라 속도와 요금이 달라짐  

**주요 리전**

코드 | 리전
---|---
us-east-1      | 미국 동부
us-west-1      | 미국 서부
ca-central-1   | 캐나다 중부
ap-east-1      | 아시아 - 홍콩
ap-northeast-1 | 아시아 - 도쿄
ap-northeast-2 | 아시아 - 서울
ap-northeast-3 | 아시아 - 오사카
ap-southeast-1 | 아시아 - 싱가포르
ap-southeast-2 | 아시아 - 시드니
ap-south-1	   | 아시아 - 뭄바이
ap-south-2     | 아시아 - 호주


**region latency check**      
- http://awsspeedtest.xvf.dk
- https://www.cloudping.info



### Availability Zone
: 리전 내에 존재하는 독립적인 데이터센터 집합으로 현재 69개 가용 영역이 존재  
: 각 가용 영역은 떨어져 있으며 링크를 통해 연결됨  
: 가용 영역 안에서 통신할 경우 개인 IP 주소를 사용하여 별도 비용이 없음  
: 가용 영역 간의 통신은 글로벌 IP 주소를 사용하므로 비용이 발생  

**Multi AZ**  
: 부하 분산, 복구 시스템 구성을 위해 여러 AZ으로 구성하는 것  


**서울 리전 가용 영역**

코드 | 가용 영역
---|---
ap-northeast-2a | 아시아 - 서울
ap-northeast-2b | 아시아 - 서울
ap-northeast-2c | 아시아 - 서울
ap-northeast-2d | 아시아 - 서울



### Local Zone
: 일부 리전의 논리적 확장으로 물리적으로는 떨어져 있을 수 있음  
: 특정 리전과 연결되어 있으며 연결된 리전의 서브셋으로 간주  
: 지연 시간에 민감한 애플리케이션을 최종 사용자와 가까운 위치에서 서비스하기 위해 사용  
: 로컬 영역에서 가용 영역 기능을 일부 지원함  



## Edge Location
: CloudFront나 Route 53에서 사용하는 서버  
: 현재 전 세계에 약 180개 엣지 로케이션 존재하며 리전에 속해있거나 별도로 존재함  
: 리전에 속해있지 않는 엣지 로케이션은 리전과 물리적으로 멀리 떨어진 곳에 위치함  
: 정적 리소스, 미디어 콘텐츠 등을 배포하여 캐싱이나 대역폭을 최적화함  
: Health Check가 엣지 로케이션에서 애플리케이션을 모니터링하고 장애시 트래픽을 다른 경로로 라우팅할 수 있음  

**CloudFront**  
: 웹 콘텐츠나 정적 리소스를 엣지 로케이션에 캐싱  

**Route 53**  
: 엣지 로케이션을 활용해 DNS 쿼리 처리