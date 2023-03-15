FROM snowstep/apt-fast:jammy
EXPOSE 80

ENV DEBIAN_FRONTEND noninteractive

RUN apt-fast update -y && \
mkdir -p --mode=0755 /usr/share/keyrings && \
curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg |  tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null  && \
deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared jammy main' |  tee /etc/apt/sources.list.d/cloudflared.list && \
apt-fast update -y &&  apt-fast install cloudflared -y


RUN apt-fast update -y && \
apt-fast install software-properties-common nano sudo wget curl screen -y && \
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable && apt-fast update && \
apt-fast install qbittorrent-nox -y



ENTRYPOINT ["qbittorrent-nox"]
CMD ["--webui-port=80"]

