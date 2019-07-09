FROM python:3.7.4

RUN pip install --upgrade pip
RUN pip install \
    aws \
    lambda-uploader

RUN mkdir /root/.aws

RUN apt-get update \
    && \
    apt-get install -y \
    zip \
    vim \
    && \
    apt-get clean

