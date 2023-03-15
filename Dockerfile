FROM rockylinux:8
EXPOSE 8080

ENV DEBIAN_FRONTEND noninteractive

RUN dnf update  && yum install  qbittorrent-nox screen curl wget 



ENTRYPOINT ["qbittorrent-nox"]
CMD ["--webui-port=8080"]

