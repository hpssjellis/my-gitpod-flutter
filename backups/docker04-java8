FROM gitpod/workspace-full:latest


USER root

RUN apt-get update && \
    apt-get -y install build-essential libkrb5-dev gcc make gradle openjdk-8-jdk && \
    update-java-alternatives --jre-headless --jre --set java-1.8.0-openjdk-amd64 && \
    apt-get clean && \
    apt-get -y autoremove
