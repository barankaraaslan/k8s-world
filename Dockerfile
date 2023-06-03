FROM debian
RUN apt update -y && apt upgrade -y 
RUN apt install apt-file -y && apt-file update
RUN apt install docker.io -y
RUN apt install git -y