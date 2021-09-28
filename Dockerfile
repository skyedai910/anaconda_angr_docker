FROM continuumio/anaconda3
MAINTAINER skye231
ENV REFRESHED_AT 2021-09-25
ENV LANG C.UTF-8

RUN conda install -c conda-forge jupyterlab -y
COPY start.sh start.sh
RUN chmod +x start.sh
ENTRYPOINT ./start.sh

EXPOSE 8888 
