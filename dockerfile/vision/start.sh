#!/bin/bash

java -jar /vision/eureka-server-1.0.jar  >/vision/eureka-server.log &
while [ -f /vision/eureka-server.log ]
do
    result=`grep "initialization completed" /vision/eureka-server.log`
    if [[ "$result" != "" ]]
    then
        break
    else
        sleep 1s
    fi
done

java -jar /vision/datasource-1.0.jar &
java -jar /vision/feign-1.0.jar &
java -jar /vision/system-1.0.jar &
java -jar /vision/vision-1.0.jar &
java -jar /vision/zuul-1.0.jar &

# java -jar /vision/eureka-server-1.0.jar  >/vision/eureka-server.log &
# while [ -f /vision/eureka-server.log ]
# do
#     result=`grep "initialization completed" /vision/eureka-server.log`
#     if [[ "$result" != "" ]]
#     then
#         break
#     else
#         sleep 1s
#     fi
# done

# java -jar /vision/datasource-1.0.jar  >/vision/datasource.log &
# while [ -f /vision/datasource.log ]
# do
#     result=`grep "initialization completed" /vision/datasource.log`
#     if [[ "$result" != "" ]]
#     then
#         break
#     else
#         sleep 1s
#     fi
# done

# java -jar /vision/feign-1.0.jar  >/vision/feign.log &
# while [ -f /vision/feign.log ]
# do
#     result=`grep "initialization completed" /vision/feign.log`
#     if [[ "$result" != "" ]]
#     then
#         break
#     else
#         sleep 1s
#     fi
# done

# java -jar /vision/system-1.0.jar  >/vision/system.log &
# while [ -f /vision/system.log ]
# do
#     result=`grep "initialization completed" /vision/system.log`
#     if [[ "$result" != "" ]]
#     then
#         break
#     else
#         sleep 1s
#     fi
# done

# java -jar /vision/vision-1.0.jar  >/vision/vision.log &
# while [ -f /vision/vision.log ]
# do
#     result=`grep "initialization completed" /vision/vision.log`
#     if [[ "$result" != "" ]]
#     then
#         break
#     else
#         sleep 1s
#     fi
# done

# java -jar /vision/zuul-1.0.jar  >/vision/zuul.log &
# while [ -f /vision/zuul.log ]
# do
#     result=`grep "initialization completed" /vision/zuul.log`
#     if [[ "$result" != "" ]]
#     then
#         break
#     else
#         sleep 1s
#     fi
# done