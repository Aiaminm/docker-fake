FROM rockylinux:8
EXPOSE 8080

ENV DEBIAN_FRONTEND noninteractive

RUN dnf update -y  && yum install  qbittorrent-nox screen curl wget -y



ENTRYPOINT ["qbittorrent-nox"]
CMD ["--webui-port=8080"]

