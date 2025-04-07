---
order: 0.17
title: java
description: Java Management Extensions (JMX)
summary:
keywords:
- java
- java api
- java management extensions
- jmx
tags:
- language
- java
created_time: 2024-10-23 00:31
modified_time: 2024-10-30 19:45
---

# JMX
Java Management Extensions  
: 자바 프로그램과 JVM 동작을 모니터링하고 원격으로 관리하기 위한 API  
: 시스템 리소스와 애플리케이션 구성 상태를 실시간으로 확인하고 관리하기 위한 기능 제공  

```
MBean Server - ConnectorServer <==> Connector - MBean Client
```

**서버 구성**

구성 요소 | 설명
---|---
Managed Bean    | JMX에 의해 관리되는 객체
MBean Server    | MBean을 등록 및 관리하고 클라이언트의 요청을 처리하는 서버
ConnectorServer | 클라이언트의 원격 접속을 허용하는 연결 서버
Adapter         | 클라이언트와 서버 간의 프로토콜 변환 및 데이터 변환을 수행


**클라이언트 구성**

구성 요소 | 설명
---|---
Connector    | 서버에 원격으로 접근하기 위한 인터페이스
MBean Client | 서버에 원격으로 접속해 MBean을 관리하는 객체



## Managed Bean
: JMX에 의해 관리되는 객체로 모니터링 대상  
: MBean 인터페이스 경우 일반적으로 접미사에 MBean를 붙임  
 
종류 | 설명
---|---
Standard MBean | 인터페이스와 클래스를 통해 정의하는 MBean
Dynamic MBean  | DynamicMBean 인터페이스를 구현해 동적으로 속성과 메소드를 정의하는 MBean



## MBean Server
: MBean을 등록하고 관리하는 서버로 프로그램이 실행될 때 JVM 내부에 MBean 서버가 생성됨  
: 애플리케이션과 외부 관리 도구 사이의 중간 역할을 함  



## MBean Client
: MBean 서버에 원격으로 접속해 MBean 객체를 관리  
: MBean 객체로 등록되지 않은 객체는 접근하거나 관리할 수 없음  
: MBean 객체와 JVM에 대한 정보를 모니터링하는데 특화되어 있으며 그외 기능은 없음  
: MBean 객체를 호출하면 동기 방식으로 작동되며 비동기 호출은 지원하지 않음  
: 원격 접속 기능으로 인해 보안 취약점이 발생할 수 있음  

**example**
```java
public interface ExampleMBean {
    String getMessage();
    void setMessage(String message);
}

public class Example implements ExampleMBean {

    private String message = "Hello, World!";

    @Override
    public String getMessage() {
        return this.message;
    }

    @Override
    public void setMessage(String message) {
        this.message = message;
    }

}

public class JMXServer {

    public static void main(String[] args) throws Exception {

        // MBean 서버 생성
        MBeanServer mBeanServer = ManagementFactory.getPlatformMBeanServer();

        // MBean 객체를 식별하기 위한 고유 이름을 설정
        ObjectName objectName = new ObjectName("com.example:type=Example");
        Example ex = new Example();
        
        // MBean 서버에 MBean 객체 등록
        mBeanServer.registerMBean(ex, objectName);

        // 커넥터 서버 생성 및 시작
        Registry registry = LocateRegistry.createRegistry(9999);
        JMXServiceURL url = new JMXServiceURL("service:jmx:rmi:///jndi/rmi://localhost:9999/jmxrmi");
        JMXConnectorServer jmxConnectorServer = JMXConnectorServerFactory.newJMXConnectorServer(url, null, mBeanServer);
        jmxConnectorServer.start();

        Thread.sleep(Long.MAX_VALUE);

    }

}


public class JMXClient {

    public static void main(String[] arg) throws Exception {

        // 커넥터 서버에 연결
        JMXServiceURL url = new JMXServiceURL("service:jmx:rmi:///jndi/rmi://localhost:9999/jmxrmi");
        
        try(JMXConnector jmxConnector = JMXConnectorFactory.connect(url)) {

            // MBean 서버에 접근
            MBeanServerConnection mBeanServerConnection = jmxConnector.getMBeanServerConnection();

            ObjectName objectName = new ObjectName("com.example:type=Example");

            // MBean 객체의 메소드 호출
            mBeanServerConnection.invoke(objectName, "getMessage", null, null);

        }

    }
}
```
