FROM continuumio/anaconda3
MAINTAINER skye231
ENV LANG C.UTF-8

RUN conda install -c conda-forge jupyterlab -y
COPY start.sh start.sh
RUN chmod +x start.sh

RUN sed -i "s/http:\/\/deb.debian.org/http:\/\/mirrors.163.com/g" /etc/apt/sources.list
RUN apt update && apt install gcc -y && rm -rf /var/lib/apt/lists/*
RUN pip install pyvex unicorn simuvex -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install angr -i https://pypi.tuna.tsinghua.edu.cn/simple

ENTRYPOINT ./start.sh

EXPOSE 8888 
