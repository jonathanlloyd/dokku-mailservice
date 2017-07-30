FROM ubuntu:latest
RUN apt-get update --fix-missing
RUN apt-get install -y exim4
COPY update-exim4.conf.conf /etc/exim4
RUN update-exim4.conf
CMD ["exim4", "-bd", "-v"]
