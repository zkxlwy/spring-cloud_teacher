java -jar -Dserver.port=10000 -Deureka.client.register-with-eureka=true -Deureka.instance.hostname=peer1 -Deureka.client.service-url.defaultZone=http://peer2:10001/eureka/ /Users/peter/IdeaProjects/spring-cloud/eureka/build/libs/eureka-0.0.1-SNAPSHOT.jar > ~/springcloud/eureka1 &

java -jar -Dserver.port=10001 -Deureka.client.register-with-eureka=true -Deureka.instance.hostname=peer2 -Deureka.client.service-url.defaultZone=http://peer1:10000/eureka/ /Users/peter/IdeaProjects/spring-cloud/eureka/build/libs/eureka-0.0.1-SNAPSHOT.jar > ~/springcloud/eureka2 &

java -jar -Dserver.port=10002 -Deureka.client.service-url.defaultZone=http://peer1:10000/eureka,http://peer2:10001/eureka /Users/peter/IdeaProjects/spring-cloud/hello-service/build/libs/hello-service-0.0.1-SNAPSHOT.jar > ~/springcloud/hello1 &

java -jar -Dserver.port=10003 -Deureka.client.service-url.defaultZone=http://peer1:10000/eureka,http://peer2:10001/eureka /Users/peter/IdeaProjects/spring-cloud/hello-service/build/libs/hello-service-0.0.1-SNAPSHOT.jar > ~/springcloud/hello2 &

java -jar /Users/peter/IdeaProjects/spring-cloud/hystrix-dashboard/build/libs/hystrix-dashboard-0.0.1-SNAPSHOT.jar > ~/springcloud/dashboard &

java -jar /Users/peter/IdeaProjects/spring-cloud/feign-consumer/build/libs/feign-consumer-0.0.1-SNAPSHOT.jar > ~/springcloud/feign &

java -jar /Users/peter/IdeaProjects/spring-cloud/api-gateway/build/libs/api-gateway-0.0.1-SNAPSHOT.jar > ~/springcloud/zuul &
