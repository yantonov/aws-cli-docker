FROM ubuntu:22.04

MAINTAINER Yury Antonov <1390348+yantonov@users.noreply.github.com>

ENV \
    APP_HOME=/opt/app

RUN \
    mkdir -p $APP_HOME

RUN apt-get update && \
    # https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#cliv2-linux-install
    apt-get install -y groff less unzip curl && \
    apt-get clean

RUN cd $APP_HOME && \
    mkdir dist && \
    cd dist && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

# ADD files/* $APP_HOME

WORKDIR $APP_HOME

