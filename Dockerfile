FROM jobber:latest

USER root

RUN apk update && \
    apk upgrade && \
    apk add \
       openssh-client

USER jobberuser

RUN mkdir /home/jobberuser/.ssh && chmod 700 /home/jobberuser/.ssh

COPY --chown=jobberuser:jobberuser ssh-config /home/jobberuser/.ssh/config
