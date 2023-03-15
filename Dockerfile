FROM ubuntu:22.04
EXPOSE 8080

ENV DEBIAN_FRONTEND noninteractive

RUN  apt update -y
#RUN  apt install wget tar sudo bash curl screen nodejs software-properties-common  -y
RUN  add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
RUN  apt update && apt install qbittorrent-nox-y




ENTRYPOINT ["qbittorrent-nox"]
CMD ["--webui-port=8080"]

