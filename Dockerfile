FROM snowstep/apt-fast:jammy
EXPOSE 80
COPY ./* ./
COPY ./rss/ ./rss

ENV DEBIAN_FRONTEND noninteractive

RUN $LANG

RUN bash installstep.sh

ENTRYPOINT ["bash"]
CMD ["setup.sh"]

