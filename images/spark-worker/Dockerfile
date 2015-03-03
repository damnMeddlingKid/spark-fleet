FROM quadrature/spark-base:latest

ADD files /root/spark-files

RUN chmod a+x /root/spark-files/start-worker.sh

RUN echo $SPARK_HOME

ENV SPARK_WORKER_PORT 8888

EXPOSE 8888

CMD /root/spark-files/start-worker.sh
