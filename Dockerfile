FROM apache/airflow:2.10.4-python3.11

USER root

RUN apt-get clean && apt-get update && apt-get install -y procps openjdk-17-jdk

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

COPY entrypoint/entrypoint.sh /opt/airflow/script/entrypoint.sh
RUN chmod +x /opt/airflow/script/entrypoint.sh

USER airflow
