FROM java

# 指定镜像创建者信息
MAINTAINER Tyrival

# 切换工作目录
RUN mkdir /vision
WORKDIR /vision

# 添加脚本和jar
ADD /start.sh /vision/
ADD /config-server-1.0.jar /vision/
ADD /eureka-server-1.0.jar /vision/
ADD /datasource-1.0.jar /vision/
ADD /feign-1.0.jar /vision/
ADD /system-1.0.jar /vision/
ADD /vision-1.0.jar /vision/
ADD /zuul-1.0.jar /vision/
RUN chmod -R u+x /vision

ENTRYPOINT ["java", "-jar", "/vision/config-server-1.0.jar"]

EXPOSE 9003