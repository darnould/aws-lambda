FROM debian
MAINTAINER Dan Arnould <dan@arnould.co.uk>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install zip make python-pip

RUN pip install awscli

WORKDIR /project

ENTRYPOINT "aws lambda"

