FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y binutils nasm vim

COPY README.md /home/root/
COPY exercise/* /home/root/

WORKDIR /home/root

RUN chmod +x test.sh
RUN touch exercise.asm