FROM ubuntu
RUN apt-get update
RUN apt install pv -y
RUN apt install netcat -y
RUN apt install net-tools -y
RUN apt install iputils-ping -y
RUN apt install expect -y
RUN apt install python3 -y
COPY server.sh /root
COPY metric_server.sh /root
COPY metric.py /root
USER root
CMD chmod +x /root/server.sh
CMD chmod +x /root/metric_server.sh
CMD chmod +x /root/metric.py
WORKDIR /root

