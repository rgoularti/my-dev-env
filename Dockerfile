FROM ubuntu:plucky AS base

ARG TAGS
WORKDIR /root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y ansible && \
    apt clean autoclean && \
    apt autoremove -y

COPY . .

CMD [ "sh", "-c", "ansible-playbook $TAGS local.yml"]
