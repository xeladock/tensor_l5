FROM ubuntu
RUN apt-get update
RUN apt install pv netcat -y
RUN apt install net-tools iputils-ping -y
RUN apt install expect -y
COPY client.sh /root
COPY server_ip /root
USER root
CMD chmod +x /root/client.sh
WORKDIR /root

