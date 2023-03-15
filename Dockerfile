FROM snowstep/apt-fast:jammy
EXPOSE 8080

ENV DEBIAN_FRONTEND noninteractive

RUN apt-fast update -y
RUN apt-fast install software-properties-common nano sudo wget curl screen -y


ENTRYPOINT ["qbittorrent-nox"]
CMD ["--webui-port=8080"]

