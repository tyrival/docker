# Hadoop和Spark多机分布式部署

### 1. 配置文件

##### 1.1  hadoop.env

```properties
# 三个文件夹中的hadoop.env文件进行如下修改
# CORE_CONF_fs_defaultFS设置为namenode所在服务器的IP
CORE_CONF_fs_defaultFS=hdfs://192.168.0.100:8020
```

##### 1.2  `/etc/hosts`

```bash
### 这个文件要等集群启动之后进行修改

# spark的master节点
2.82.6.45	master
# 与namenode同在一个服务器的datanode节点的容器IP和容器ID映射
172.18.0.2	cca4c3e85de2
# datanode2和datanode3的宿主机IP和容器ID的映射
2.82.6.46	198a12c28017
2.82.6.47	c4913cbcbfd2
```

##### 1.3  docker-compose.yml

```yaml
# 修改datanode2和datanode3中的docker-compose.yml
# 将其中的spark容器的command中的IP地址，修改为spark master的IP（即namenode的IP）
command: bin/spark-class org.apache.spark.deploy.worker.Worker spark://192.168.0.100:7077
```



### 2. 集群状态查看

Hadoop： http://{NAMENODE_IP}:50070

Spark： http://{MASTER_IP}:8080
