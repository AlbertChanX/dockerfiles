## Dockerfiles

### Databases
* relational database
  - [x] MySQL
  - [ ] SQL Server
  - [ ] PostgreSQL
  - [ ] MariaDB
  - [ ] Oracle
  
* NoSQL
  - [ ] MongoDB
  - [ ] HBase
  - [ ] Cassandra	
  - [x] Redis
    - [docker-redis-cluster: Dockerfile for Redis Cluster (redis 3.0+)](https://github.com/Grokzen/docker-redis-cluster)
  - [ ] SSDB 
  - [ ] Elasticsearch
  - [ ] InfluxDB
  - [ ] OpenTSDB

* Graph Database
  - [ ] NEO4J
  - [ ] ArangoDB
  - [ ] OrientDB

* query engine
  - [ ] Hive
    - 周期性转换大量数据(ETL)，例如：
      - 每天晚上导入OLTP数据并转换为星型模式；
      - 每小时批量转换数据等。
    - 整合遗留的数据格式，例如：
      - 将CSV数据转换为Avro；
      - 将一个用户自定义的内部格式转换为Parquet等。
  - [ ] Spark SQL
    - 从Hive数据仓库中抽取部分数据，使用Spark进行分析。
  - [ ] Flink SQL
    - [Flink SQL开发指南概述_Flink SQL开发指南_实时计算](https://help.aliyun.com/document_detail/111864.html)
  - [ ] Impala
    - 秒级的响应时间
    - OLAP
    - 交互式查询
    - [impala教程_w3cschool](https://www.w3cschool.cn/impala/)
  - [ ] Presto
  - [ ] Druid

### MQ
- [x] Kafka
  - [kafka-docker: Dockerfile for Apache Kafka](https://github.com/wurstmeister/kafka-docker)
  - [Apache Kafka 教程_w3cschool](https://www.w3cschool.cn/apache_kafka/)
- [ ] RabbitMQ
- [ ] RocketMQ
  * 支持事务型消息（消息发送和DB操作保持两方的最终一致性，rabbitmq和kafka不支持）
  * 支持结合rocketmq的多个系统之间数据最终一致性（多方事务，二方事务是前提）
  * 支持18个级别的延迟消息（rabbitmq和kafka不支持）
  * 支持指定次数和时间间隔的失败消息重发（kafka不支持，rabbitmq需要手动确认）
  * 支持consumer端tag过滤，减少不必要的网络传输（rabbitmq和kafka不支持） 
  * 支持重复消费（rabbitmq不支持，kafka支持）
  * [Rocketmq原理&最佳实践](https://www.jianshu.com/p/2838890f3284)
  * NameServer的主要功能是为整个MQ集群提供服务`协调与治理`，具体就是记录维护Topic、Broker的信息，及监控Broker的运行状态。为client提供路由能力（具体实现和zk有区别，NameServer是没有leader和follower区别的，不进行数据同步，通过Broker轮询修改信息）

- [ ] Pulsar

### Big Data
- [x] hue
  - [cloudera/hue: Hue is an open source SQL Cloud Assistant for developing and accessing SQL/Data Apps.](https://github.com/cloudera/hue)

### Tools
- [x] gitlab
  - [docker-gitlab: Dockerized GitLab](https://github.com/sameersbn/docker-gitlab)
- [x] yapi
  - [yapi: YApi 是一个可本地部署的、打通前后端及QA的、可视化的接口管理平台](https://github.com/YMFE/yapi)
  - [yapi-docker: yapi Docker](https://github.com/branchzero/yapi-docker)
- [x] Mattermost
  - [mattermost/mattermost-docker: Dockerfile for mattermost in production](https://github.com/mattermost/mattermost-docker)
- [x] [jumpserver/jumpserver: Jumpserver是全球首款完全开源的堡垒机，是符合 4A 的专业运维审计系统。](https://github.com/jumpserver/jumpserver)


## References
* [Dockerfiles: 50+ DockerHub public images for Docker & Kubernetes - Hadoop, Kafka, ZooKeeper, HBase, Cassandra, Solr, SolrCloud, Presto, Apache Drill, Nifi, Spark, Mesos, Consul, Riak, OpenTSDB, Jython, Advanced Nagios Plugins & DevOps Tools repos on Alpine, CentOS, Debian, Fedora, Ubuntu, Superset, H2O, Serf, Alluxio / Tachyon](https://github.com/HariSekhon/Dockerfiles)
* [dockerfiles: Various Dockerfiles I use on the desktop and on servers.](https://github.com/jessfraz/dockerfiles)
* :star:[dockerfile: some personally made dockerfile](https://github.com/mritd/dockerfile)
