FROM snowstep/apt-fast:jammy
EXPOSE 80
COPY ./* ./


ENV DEBIAN_FRONTEND noninteractive

RUN bash installstep.sh

ENTRYPOINT ["bash"]
CMD ["setup.sh"]

