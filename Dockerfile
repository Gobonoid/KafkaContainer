FROM java:latest

RUN wget http://apache.mirror.anlx.net/kafka/0.10.1.0/kafka_2.11-0.10.1.0.tgz
RUN tar -xzf kafka_2.11-0.10.1.0.tgz
RUN rm kafka_2.11-0.10.1.0.tgz
RUN sed -i '/zookeeper.connect=localhost:2181/c\zookeeper.connect=0.0.0.0:2181' kafka_2.11-0.10.1.0/config/server.properties
RUN sed -i '/#advertised.listeners=PLAINTEXT:\/\/your.host.name:9092/c\advertised.listeners=PLAINTEXT:\/\/localhost:9092' kafka_2.11-0.10.1.0/config/server.properties

RUN echo "inter.broker.protocol.version=0.10.0.0 \n log.message.format.version=0.9.0.0" >> kafka_2.11-0.10.1.0/config/server.properties
RUN apt-get update
RUN apt-get -y install zookeeperd

EXPOSE 2181
EXPOSE 9092

CMD service zookeeper start & kafka_2.11-0.10.1.0/bin/kafka-server-start.sh kafka_2.11-0.10.1.0/config/server.properties
