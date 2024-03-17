# Starts an ubuntu container with 
#   - nginx
#   - devtools 
# run it from ../webserv to include the webserv folder

#    docker build -t webserv .

#    docker run -it -v $(pwd):/home/root ubuntu

# nginex will start on port 80
# webserv in the specified port from config
# press enter and you get a shell in the container

# get the ip of the container 
# ip a
# open a browser and enter the ip:port

FROM ubuntu:23.04

ENV DEBIAN_FRONTEND=noninteractive

VOLUME /home/root
WORKDIR /home/root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    nginx \
    python3 \ 
    clang \
    g++ \
    git \
    curl \
    make \
    nano \
    wget \
    tzdata && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

EXPOSE 80/tcp

COPY start_nginx.sh /usr/local/bin/start_nginx.sh

RUN chmod +x /usr/local/bin/start_nginx.sh

CMD ["/usr/local/bin/start_nginx.sh"]
