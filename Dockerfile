FROM ubuntu:18.04

MAINTAINER Juliano Buzanello <juliano.buzanello@engesoftware.com.br>

COPY assets/. /tmp/.
RUN /tmp/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

RUN apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /usr/sbin/startup.sh && tail -f /dev/null
