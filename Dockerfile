FROM rockylinux:8
EXPOSE 8080

ENV DEBIAN_FRONTEND noninteractive

RUN yum install -y qbittorrent-nox


ENTRYPOINT ["qbittorrent-nox"]
CMD ["--webui-port=8080"]

