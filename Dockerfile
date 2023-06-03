FROM debian
RUN apt update -y && apt upgrade -y 
RUN apt install apt-file -y && apt-file update
RUN apt install git -y

# project spesific
# docker  
RUN apt install docker.io -y
# kind
RUN apt install curl -y &&\
    [ $(uname -m) = x86_64 ] &&\
    curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.19.0/kind-linux-amd64 &&\
    chmod +x ./kind &&\
    mv ./kind /usr/local/bin/kind