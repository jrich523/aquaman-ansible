FROM resin/beaglebone-black-debian
RUN apt-get update;
RUN apt-get install curl
CMD bash