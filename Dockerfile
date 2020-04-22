FROM jobber:latest

USER root

RUN apk update && \
    apk upgrade && \
    apk add \
       openssh-client \
       curl

USER jobberuser

