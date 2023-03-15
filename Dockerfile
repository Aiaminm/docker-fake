FROM snowstep/apt-fast:jammy
EXPOSE 80

ENV DEBIAN_FRONTEND noninteractive

RUN apt-fast update -y && \
apt-fast install software-properties-common nano sudo wget curl screen -y && \
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable && apt-fast update && \
apt-fast install qbittorrent-nox -y



ENTRYPOINT ["qbittorrent-nox"]
CMD ["--webui-port=80"]

