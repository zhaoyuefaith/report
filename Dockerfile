FROM cserver.com.cn:5000/base/jdk:8u251
ENV LANG zh_CN.UTF-8
RUN mkdir /orderManage
WORKDIR /orderManage/
ADD target/com.cserver.saas.system.module.orderManage.jar ./app.jar
#EXPOSE 8080
CMD ["sh","-c","java  $JAVA_OPTS  -jar  ./app.jar"]