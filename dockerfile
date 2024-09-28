FROM ubuntu:24.04

RUN apt update
RUN apt install -y wget git openscad

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py312_24.7.1-0-Linux-x86_64.sh -O Miniconda3.sh
RUN bash Miniconda3.sh -b -p /root/miniconda3
ENV PATH /root/miniconda3/bin:$PATH

RUN pip install -U pip
RUN pip install numpy jupyterlab matplotlib solidpython2 jupyterscad

RUN conda init
