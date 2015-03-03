FROM quadrature/spark-base:latest

EXPOSE 7077 8080

ADD files /root/spark-files

RUN chmod a+x /root/spark-files/start-master.sh

CMD /root/spark-files/start-master.sh
