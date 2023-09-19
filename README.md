# CI CD Pipeline (Task-5)
Create a CI-CD pipeline for a sample application using any CI-CD tool of your choice like Jenkins, Azure DevOps, Gitlab, Github Actions, AWS CodePipeline or any other tool of your choice. Include a code build and a docker build step in your pipeline.
## TOOLS USED:
- Github, Docker Desktop.
- cloned a repository java rest api application (task-1) on GitHub.
- Created a Dockerfile for the application that includes all the dependencies and packages needed to run the application.
- Created a new workflow java using maven .github/workflows directory in repository and added a maven.yaml file inside it. Added the workflow in the maven.yaml file.
- This includes specifying the trigger events, jobs, and steps! Defined a job for the code build step in the workflow. This includes checking out the source code, installing dependencies, and running tests.
- Work flows :> https://github.com/MunwarAli12/ASLICICD/actions
-  ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/95939bb3-df4c-4e90-a5da-ed2fd96600a0)
-  ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/66516aaa-90e1-46dd-b3fd-2c0a4ad6373b)
-  ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/355893ca-f8d9-4031-a2b7-3640d31003bc)
-  ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/ae89e6ea-33d1-45fa-bf56-4be6b4875646)
- Defined a job for the Docker build step in the workflow. This includes building a Docker image, tagging it, and pushing it to a Docker registry and configured the necessary environment variables, such as the Docker hub registry login credentials. ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/37873305-3d4f-4fca-9325-b0ef09bd2f82)
- After that, the deployed image is downloaded and used in the target environment and runned via local host at post 8080. where we taken basic spring boot java maven built appplication. A continuous integration and continuous deployment (CI/CD) pipeline is used throughout this process to automate the creation and deployment of code. Code changes set off the pipeline, which makes sure that they are tested, built, and delivered in a repeatable and dependable manner.

- To deploy the application to a Kubernetes cluster, I spun up a single-node local Kubernetes cluster using Docker Desktop, Kind or Minikube, Previous we have checked and implemented all the rest api :https://github.com/MunwarAli12/model-java_REST-API_web_application-
- now creating docker file;  ![image](https://user-images.githubusercontent.com/126280146/233519188-a0fa1923-f125-4c68-8256-cbe19d52127a.png)
- building the Docker image; ![image](https://user-images.githubusercontent.com/126280146/233519490-3dbed23b-d155-4e06-8458-77d3e3d46610.png) ![image](https://user-images.githubusercontent.com/126280146/233519623-b3d9c879-344c-41b5-b969-b2e27e9f5f8a.png)
- - image pushed to docker hub; ![image](https://user-images.githubusercontent.com/126280146/233520612-c9718240-24cc-4f71-8c62-18aee998d6d7.png) ![image](https://user-images.githubusercontent.com/126280146/233520549-bcdb7c90-b161-4cb8-b6cb-468a4065ed17.png)
- Created Kubernetes deployment file(In the root project directory, created a new file named deployment.yaml, in the Deployment manifest.
- specified the container image,environment variables fot the mongodb connection, ![image](https://user-images.githubusercontent.com/126280146/233519703-5730a057-dcb0-47c8-9998-398aa2f8e1cc.png)
- parallely kubernetes created service file(In the root project directory, created a new file named service.yaml );
- Our application is made available outside of the Kubernetes cluster using a service. It serves as the load balancer, dividing up requests made to our application among the different clustered instances of the application. ![image](https://user-images.githubusercontent.com/126280146/233519864-5db6626a-e26b-4259-8165-562188427c25.png)
- Running minikube workflow:
![image](https://user-images.githubusercontent.com/126280146/233522589-c8160283-3716-4d08-9ad2-5f392549de45.png) ![image](https://user-images.githubusercontent.com/126280146/233522675-f00a43e4-6bcb-4b8e-b604-624783e34cb4.png) ![image](https://user-images.githubusercontent.com/126280146/233522689-70144044-4789-463b-be42-da5a54498c3c.png)
- chekced pod using logs command:
![image](https://user-images.githubusercontent.com/126280146/233522768-a0cb649c-43b2-462c-a7ea-6f881e11fc54.png)
- Using the command below, we access the application endpoints from your host machine using the minikube service to make sure the application is functioning.
![image](https://user-images.githubusercontent.com/126280146/233522829-5455cd67-4908-429c-8b11-1ed9a48c6cf9.png)
- http://127.0.0.1:51418
-- workload status:
![image](https://user-images.githubusercontent.com/126280146/233522390-7b24d341-bfb8-46fd-ae2c-7e9c43b09960.png) ![image](https://user-images.githubusercontent.com/126280146/233522431-0789bf6f-4660-4a25-9a41-cc4767ecaf4b.png) ![image](https://user-images.githubusercontent.com/126280146/233522489-23450cd0-323a-4f19-b73d-14afc25642ed.png)


## Result,
- As a result, established a CI-CD pipeline for a spring boot application built using Maven and use the CI-CD tool Github Actions. The pipeline now includes a code build and a docker build step.
### CMD Prompt:
-
- Microsoft Windows [Version 10.0.22621.1928]
- (c) Microsoft Corporation. All rights reserved.

- C:\Users\Munwar>docker run -p 8080:8080 servertask:latest

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::               (v2.7.10)

- 2023-07-07 13:51:17.515  INFO 1 --- [           main] c.k.servertask.ServertaskApplication     : Starting ServertaskApplication v0.0.1-SNAPSHOT using Java 11.0.16 on 96657c840d2f with PID 1 (/servertask.jar started by root in /)
- 2023-07-07 13:51:17.519  INFO 1 --- [           main] c.k.servertask.ServertaskApplication     : No active profile set, falling back to 1 default profile: "default"
- 2023-07-07 13:51:18.376  INFO 1 --- [           main] .s.d.r.c.RepositoryConfigurationDelegate : Bootstrapping Spring Data MongoDB repositories in DEFAULT mode.
- 2023-07-07 13:51:18.469  INFO 1 --- [           main] .s.d.r.c.RepositoryConfigurationDelegate : Finished Spring Data repository scanning in 85 ms. Found 1 MongoDB repository interfaces.
- 2023-07-07 13:51:19.327  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
- 2023-07-07 13:51:19.347  INFO 1 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
- 2023-07-07 13:51:19.348  INFO 1 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.73]
- 2023-07-07 13:51:19.507  INFO 1 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
- 2023-07-07 13:51:19.508  INFO 1 --- [           main] w.s.c.ServletWebServerApplicationContext : Root WebApplicationContext: initialization completed in 1902 ms
- 2023-07-07 13:51:19.874  INFO 1 --- [           main] org.mongodb.driver.client                : MongoClient with metadata {"driver": {"name": "mongo-java-driver|sync|spring-boot", "version": "4.6.1"}, "os": {"type": "Linux", "name": "Linux", "architecture": "amd64", "version": "5.15.90.1-microsoft-standard-WSL2"}, "platform": "Java/Oracle Corporation/11.0.16+8"} created with settings MongoClientSettings{readPreference=primary, writeConcern=WriteConcern{w=null, wTimeout=null ms, journal=null}, retryWrites=true, retryReads=true, readConcern=ReadConcern{level=null}, credential=null, streamFactoryFactory=null, commandListeners=[], codecRegistry=ProvidersCodecRegistry{codecProviders=[ValueCodecProvider{}, BsonValueCodecProvider{}, DBRefCodecProvider{}, DBObjectCodecProvider{}, DocumentCodecProvider{}, IterableCodecProvider{}, MapCodecProvider{}, GeoJsonCodecProvider{}, GridFSFileCodecProvider{}, Jsr310CodecProvider{}, JsonObjectCodecProvider{}, BsonCodecProvider{}, EnumCodecProvider{}, com.mongodb.Jep395RecordCodecProvider@62e20a76]}, clusterSettings={hosts=[localhost:27017], srvServiceName=mongodb, mode=SINGLE, requiredClusterType=UNKNOWN, requiredReplicaSetName='null', serverSelector='null', clusterListeners='[]', serverSelectionTimeout='30000 ms', localThreshold='30000 ms'}, socketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=0, receiveBufferSize=0, sendBufferSize=0}, heartbeatSocketSettings=SocketSettings{connectTimeoutMS=10000, readTimeoutMS=10000, receiveBufferSize=0, sendBufferSize=0}, connectionPoolSettings=ConnectionPoolSettings{maxSize=100, minSize=0, maxWaitTimeMS=120000, maxConnectionLifeTimeMS=0, maxConnectionIdleTimeMS=0, maintenanceInitialDelayMS=0, maintenanceFrequencyMS=60000, connectionPoolListeners=[], maxConnecting=2}, serverSettings=ServerSettings{heartbeatFrequencyMS=10000, minHeartbeatFrequencyMS=500, serverListeners='[]', serverMonitorListeners='[]'}, sslSettings=SslSettings{enabled=false, invalidHostNameAllowed=false, context=null}, applicationName='null', compressorList=[], uuidRepresentation=JAVA_LEGACY, serverApi=null, autoEncryptionSettings=null, contextProvider=null}
- 2023-07-07 13:51:19.880  INFO 1 --- [localhost:27017] org.mongodb.driver.cluster               : Exception in monitor thread while connecting to server localhost:27017

- com.mongodb.MongoSocketOpenException: Exception opening socket
        - at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:70) ~[mongodb-driver-core-4.6.1.jar!/:na]        at com.mongodb.internal.connection.InternalStreamConnection.open(InternalStreamConnection.java:180) ~[mongodb-driver-core-4.6.1.jar!/:na]
        - at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.lookupServerDescription(DefaultServerMonitor.java:193) ~[mongodb-driver-core-4.6.1.jar!/:na]
        - at com.mongodb.internal.connection.DefaultServerMonitor$ServerMonitorRunnable.run(DefaultServerMonitor.java:157) ~[mongodb-driver-core-4.6.1.jar!/:na]
        - at java.base/java.lang.Thread.run(Thread.java:829) ~[na:na]
Caused by: java.net.ConnectException: Connection refused (Connection refused)
        - at java.base/java.net.PlainSocketImpl.socketConnect(Native Method) ~[na:na]
        - at java.base/java.net.AbstractPlainSocketImpl.doConnect(AbstractPlainSocketImpl.java:412) ~[na:na]
        - at java.base/java.net.AbstractPlainSocketImpl.connectToAddress(AbstractPlainSocketImpl.java:255) ~[na:na]
        - at java.base/java.net.AbstractPlainSocketImpl.connect(AbstractPlainSocketImpl.java:237) ~[na:na]
        - at java.base/java.net.SocksSocketImpl.connect(SocksSocketImpl.java:392) ~[na:na]
        - at java.base/java.net.Socket.connect(Socket.java:609) ~[na:na]
        - at com.mongodb.internal.connection.SocketStreamHelper.initialize(SocketStreamHelper.java:107) ~[mongodb-driver-core-4.6.1.jar!/:na]
        - at com.mongodb.internal.connection.SocketStream.initializeSocket(SocketStream.java:79) ~[mongodb-driver-core-4.6.1.jar!/:na]
        - at com.mongodb.internal.connection.SocketStream.open(SocketStream.java:65) ~[mongodb-driver-core-4.6.1.jar!/:na]        ... 4 common frames omitted

- 2023-07-07 13:51:20.815  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
- 2023-07-07 13:51:20.829  INFO 1 --- [           main] c.k.servertask.ServertaskApplication     : Started ServertaskApplication in 4.209 seconds (JVM running for 5.276
