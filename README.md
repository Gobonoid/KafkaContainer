# Kafka Container
This is a repository containing Dockerfile to build and start Apache Kafka without a pain.

Tool for easy development or kafka testing. Producing and Consuming from host machine via localhost:9092

### To start this container as a deamon just run
```
  docker run -p 2181:2181 -p 9092:9092 -d --name kafka docker.io/gobasu/kafka:latest
```
### To stop deamon and free container name:
```
  docker stop kafka
  docker rm kafka
```

### Current avaible containers tags - related to kafka version:
* docker.io/gobasu/kafka:0.10.1-IV2 / docker.io/gobasu/kafka:latest / docker.io/gobasu/kafka:onbuild
* docker.io/gobasu/kafka:kafka-0.10.0.0
* docker.io/gobasu/kafka:kafka-0.9.0.0

### If u want to connect as a producer or consumer using shell use:
> https://github.com/edenhill/kafkacat - super usefull tool via shell

### For more graphic interface head to:
> http://www.kafkatool.com/
