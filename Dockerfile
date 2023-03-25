FROM ubuntu:22.04
EXPOSE 80
COPY ./* ./
COPY ./rss/ ./rss

ENV DEBIAN_FRONTEND noninteractive

RUN set -eux && \
    apt-get update && \
    apt-get install -y locales tzdata xfonts-wqy && \
    locale-gen zh_CN.UTF-8 && \
    update-locale LANG=zh_CN.UTF-8 LANGUAGE=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8 && \
    ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata 


ENV LANG=zh_CN.UTF-8 LANGUAGE=zh_CN.UTF-8 LC_ALL=zh_CN.UTF-8

RUN apt install supervisor -y

RUN bash installstep.sh

RUN cd /root/ && npm install https://github.com/Aiaminm/fleek-storage-js

WORKDIR /
# ENTRYPOINT ["bash"]
# CMD ["setup.sh"]
ENTRYPOINT ["supervisord"]
CMD [" -c /supervisord.conf"]

