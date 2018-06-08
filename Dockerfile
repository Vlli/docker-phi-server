FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y mono-runtime mono-dmcs tzdata wget unzip && \
    mkdir -p /var/opt/phi_server && \
    wget https://github.com/Longwelwind/Phi/releases/download/v0.14.1/PhiServer.zip -P /var/opt/phi_server/ && \
    unzip /var/opt/phi_server/PhiServer.zip -d /var/opt/phi_server/ && \
    rm /var/opt/phi_server/PhiServer.zip

CMD ["/usr/bin/mono", "/var/opt/phi_server/PhiServer.exe", "&"]
