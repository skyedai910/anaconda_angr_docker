FROM continuumio/anaconda3
MAINTAINER skye231
ENV REFRESHED_AT 2021-09-25
ENV LANG C.UTF-8

RUN conda install -c conda-forge jupyterlab -y
COPY start.sh start.sh
RUN chmod +x start.sh

RUN pip install pyvex unicorn simuvex -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install angr -i https://pypi.tuna.tsinghua.edu.cn/simple

ENTRYPOINT ./start.sh

EXPOSE 8888 
