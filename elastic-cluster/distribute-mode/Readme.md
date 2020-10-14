# Elasticsearch多机分布式部署

### 1. 配置文件

##### elasticsearch.yml

```yaml
# 修改三个节点的yml文件，
# 改为本机IP
network.publish_host: 2.82.6.45
# 集群发现，改为三台服务器的IP:端口
discovery.zen.ping.unicast.hosts: ["2.82.6.45:9300","2.82.6.46:9300","2.82.6.47:9300"]
```

### 2. 集群状态查看

浏览器访问： http://NODE_IP:9200/_cluster/health?pretty
