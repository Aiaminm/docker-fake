FROM snowstep/apt-fast:jammy
EXPOSE 80
COPY ./installstep.sh ./
COPY ./setup.sh ./
COPY ./qbit.conf ./

ENV DEBIAN_FRONTEND noninteractive

RUN bash installstep.sh

ENTRYPOINT ["bash"]
CMD ["setup.sh"]

