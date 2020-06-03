FROM openjdk:8

ARG USERID
ARG GROUPID

RUN apt-get update -qqy && apt-get install -qqy --no-install-recommends \
     g++ make

RUN mkdir /src && \
 addgroup --force-badname --gid ${GROUPID} ${GROUPID} && \
 adduser --disabled-password --force-badname --ingroup $GROUPID -u ${USERID} ${USERID} && \
 chown ${USERID}:${GROUPID} /src

USER ${USERID}

VOLUME ["/src"]