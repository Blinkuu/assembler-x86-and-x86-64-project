FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y binutils nasm vim

COPY README.md /home/root/
COPY exercise/test.sh /home/root/
COPY exercise/test_cases.txt /home/root/
COPY code-snippets /home/root/code-snippets/

WORKDIR /home/root

RUN chmod +x test.sh
RUN touch exercise.asm