---
order: 1
title: Kubernetes
description: 쿠버네티스 오브젝트
summary:
keywords:
- k8s
- k8s object
tags:
- container
created_time: 2025-04-27 08:22
modified_time: 2025-04-27 09:56
---

# Kubernetes Object
: 쿠버네티스 시스템에서 상태를 나타내는 영속적인 엔티티  
: 사용자가 클러스터 동작을 정의하면 쿠버네티스 시스템이 이를 통해 오브젝트를 생성해 클러스터 동작을 관리함  
: 오브젝트는 etcd에 저장되며 API 서버를 통해 API 엔드포인트로 접근 가능함  

**영속적인 엔티티** 
- 생성 후 명시적으로 삭제하기 전까지 클러스터에 존재하며 지속적으로 상태를 유지함
- 오브젝트 상태는 etcd에 저장되어 클러스터 재시작이나 장애시에도 유지됨


```
object create ==> api server ==> object store

ex.
API 엔드포인트 = /api/v1/namespaces/default/pods/nginx
etcd 저장 경로 = /registry/pods/default/nginx
```

1. 사용자가 오브젝트를 정의하고 명령어 실행
2. 요청이 API 서버에 전송되고 API 서버에서 요청을 인증하고 권한을 검증
3. 오브젝트 정의가 유효한지 검사하고 승인 컨트롤러를 통해 요청을 처리
4. 처리된 결과를 etcd에 저장함



## Object List
: 현재 약 58개 리소스(오브젝트)를 지원함  

```bash 
kubectl api-resources
```

실행 환경 구성
- Pod
- Service
- Volume
- ConfigMap
- Secret

워크 로드 관리 (배포, 확장, 유지)
- Deployment
- ReplicaSet
- StatefulSet
- DaemonSet
- Job
- CronJob

스토리지 관리
- PV
- PVC
- SC 

네트워크 및 트래픽 제어
- Ingress
- NetworkPolicy
- Endpoint
- EndpointSlice

보안 및 접근 관리
- NameSpace
- RBAC
- ServiceAccount
- Role
- ClusterRole
- RoleBinding
- ClusterRoleBinding

자동화 및 조정
- HPA
- PDB