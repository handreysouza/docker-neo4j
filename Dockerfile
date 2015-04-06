FROM ubuntu:14.10
MAINTAINER Matheus Vill matheusvill@gmail.com

RUN apt-get update
RUN apt-get install -y wget zip tar openjdk-7-jdk lsof
RUN cd /opt && wget http://neo4j.com/artifact.php?name=neo4j-community-2.2.0-unix.tar.gz -O neo4j.tar.gz && tar -vzxf neo4j.tar.gz
RUN cd /opt && mv neo4j-community-2.2.0 neo4j
ADD graph.db.zip /
RUN mv /graph.db.zip /opt/neo4j/data
RUN unzip /opt/neo4j/data/graph.db.zip
EXPOSE 7474