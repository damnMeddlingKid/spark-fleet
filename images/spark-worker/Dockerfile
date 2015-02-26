FROM quadrature/spark-base

ADD files /root/spark-files

ENV SPARK_WORKER_PORT 8888

EXPOSE 8888

CMD /root/spark-files/start-worker.sh