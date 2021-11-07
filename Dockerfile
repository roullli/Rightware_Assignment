FROM ubuntu:latest

WORKDIR /app
COPY ./notejam .

RUN apt-get update
RUN apt-get install -y sudo openssh-server 

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test
RUN echo 'test:test' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22 8000
CMD ["/usr/sbin/sshd", "-D"]