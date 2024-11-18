---
order: 0.9
title: data structure
description: 자료구조 - 트리
summary:
keywords:
- data
- data structure
- tree
- 트리
tags:
- data
- data structure
created_time: 2024-10-06 03:25
modified_time: 2024-11-18 02:31
---

# Tree
: 데이터의 계층적 관계를 [트리](../../mathematics/discrete-mathematics/tree.md) 구조로 표현한 자료구조  
: 트리는 그래프 자료구조의 특별한 형태로 사이클이 없는 방향 그래프  
: 그래프에서는 데이터를 정점이라고 표현하고 트리에서는 노드라고 표현함  
: 그래프와 달리 트리는 루트 노드를 가지며 루트 노드를 기준으로 계층적인 관계를 형성함  

- [트리 종류](#tree-type)
- [트리 알고리즘](../../program/algorithm/tree-algorithm.md)


용어 | 설명
---|---
노드 (정점) | 데이터 또는 객체
간선 (엣지) | 노드를 연결하는 선으로 노드 간 관계를 표현
루트 노드 | 최상위 노드로 트리의 시작
리프 노드 | 자식이 없는 노드
내부 노드 | 루트와 리프를 제외한 자식이 있는 노드
차수 | 특정 노드의 자식 노드의 수
진입 차수 | 해당 노드로 들어오는 간선의 수
진출 차수 | 해당 노드에서 나가는 간선의 수
높이 | 루트 노드에서 가장 먼 리프 노드까지의 경로에 포함된 간선의 수
깊이 | 루트 노드에서 특정 노드까지의 경로에 포함된 간선의 수
레벨 | 특정 노드의 깊이를 기준으로 같은 깊이를 가진 노드 집합
경로 | 루트 노드에서 특정 노드까지 연결된 노드와 간선의 순서열
순회 | 트리의 노드를 특정 순서로 방문하는 과정

```
       A      레벨 0 | 깊이  0 or 1 
      / \
     B   C    레벨 1 | 깊이  1 or 2 
    /     \
   D       E  레벨 2 | 깊이  2 or 3 | 높이 2

깊이는 0으로 시작하거나 1로 시작할 수 있음
```

**차수**
- 루트 노드는 시작점이므로 진입 차수는 0
- 루트를 제외한 모든 노드는 하나의 부모 노드만 가지므로 진입 차수는 1
- 리프 노드는 자식 노드가 없으므로 진출 차수는 0



## Tree Type
: 트리는 차수, 구조적 특성, 사용 목적 등에 따라 분류됨  
: 다양한 종류의 트리가 존재하나 이진 트리 계열이 구현하기 쉽고 효율성이 높아 많이 사용됨  

- [이진 트리](#binary-tree)
  - [이진 탐색 트리](#binary-search-tree)
  - [힙](#heap)
  - [스레드 트리](#threaded-tree)
  - [선택 트리](#selection-tree)
- [멀티웨이 트리](#multiway-tree)
  - [멀티웨이 탐색 트리](#multiway-search-tree)
  - [트라이](#tree)
- [숲](#forest)



### Binary Tree
: 이진 트리란	각 노드가 최대 두 개의 자식 노드를 가지는 트리  
: 각 자식 노드는 왼쪽 자식 노드와 오른쪽 자식 노드로 구분되며 방향성을 나타냄  

**이진 트리의 특수한 형태**

종류 | 설명
---|---
Complete Binary Tree | 마지막 레벨이 아닌 모든 레벨은 가득 차 있고 마지막 레벨은 왼쪽부터 순차적으로 채워진 트리
Perfect Binary Tree  | 모든 레벨이 가득 차 있고 리프 노드가 같은 깊이를 가지는 트리
Balanced Binary Tree | 왼쪽과 오른쪽 서브 트리의 높이 차이가 최대 1인 트리
Full Binary Tree     | 모든 노드가 0개 또는 2개의 자식 노드를 가지는 트리


완전 이진 트리  
=> 완전 이진 트리는 항상 균형 이진 트리 조건을 만족함  
```
       A        
     /   \
    B     C     
   / \   /
  D   E F      
```

포화 이진 트리  
=> 포화 이진 트리는 항상 완전 이진 트리이와 전 이진 트리 조건을 만족함  
```
       A        
     /   \
    B     C     
   / \   / \
  D   E F   G   
```

균형 이진 트리
```
      A
     / \
    B   C
   /     \
  D       E
```

균형 이진 트리 and 전 이진 트리
```
      A
     / \
    B   C
   / \
  D   E
```


**이진 트리 구현**  
: 노드의 삽입과 삭제가 거의 없고 포화 이진 트리라며 배열로 구현하는 것이 좋음  
: 노드의 삽입과 삭제가 빈번하거나 포화 이진 트리가 아니라면 포인터를 이용해 구현하는 것이 좋음  

```
    A     | left | A | right |
   / \
  B   C
```    


**이진 트리 순회**  
: 트리의 각 노드를 한 번씩 방문하는 것으로 노드 방문 순서에 따라 여러 방식으로 분류됨  
: 순회를 통해 데이터 정렬, 검색, 변환 등의 처리를 하며 순회 방식에 따라 처리 목적이 달라짐  

종류 | 설명 | 용도
---|---|---
이진 트리 전위 순회 | 루트 > 왼쪽 > 오른쪽 | 트리를 직렬화하거나 복제시 유용
이진 트리 중위 순회 | 왼쪽 > 루트 > 오른쪽 | 데이터를 정렬해 출력이 필요할때 유용
이진 트리 후위 순회 | 왼쪽 > 오른쪽 > 루트 | 하위 항목을 먼저 처리하는 경우 유용

```
       A        PLR : A B D E C F G
     /   \      LPR : D B E A F C G
    B     C     LRP : D E B F G C A
   / \   / \
  D   E F   G   
```