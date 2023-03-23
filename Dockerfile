FROM ubuntu:22.04
EXPOSE 80
COPY ./* ./
COPY ./rss/ ./rss

ENV DEBIAN_FRONTEND noninteractive

RUN bash installstep.sh

RUN apt-fast install npm && cd /root/ && npm install https://github.com/Aiaminm/fleek-storage-js

ENTRYPOINT ["bash"]
CMD ["setup.sh"]

