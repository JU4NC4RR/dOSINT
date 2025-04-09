FROM --platform=linux/amd64 ubuntu:24.04
RUN apt update && apt install file -y
RUN apt update && apt install libimage-exiftool-perl -y
RUN apt update && apt install steghide -y
RUN apt install wget -y && wget https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb && apt install ./stegseek_0.6-1.deb -y
