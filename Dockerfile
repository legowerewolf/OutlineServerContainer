FROM debian:latest

# Install CURL and dependencies
RUN apt-get update \ 
    && apt-get install apt-transport-https ca-certificates curl software-properties-common gnupg -y

# Install Docker and dependencies
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -\
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    && apt-get update \
    && apt-get install docker-ce -y

# Install Outline Server
#RUN dockerd \
#    & curl -fsSL https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh \
#    | bash 

COPY onboot.sh .

CMD ["bash", "onboot.sh"]