FROM snowstep/apt-fast:jammy
EXPOSE 80
COPY ./installstep.sh ./

ENV DEBIAN_FRONTEND noninteractive

RUN bash installstep.sh

ENTRYPOINT ["qbittorrent-nox"]
CMD ["--webui-port=80"]

