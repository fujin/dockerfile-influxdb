FROM ubuntu
MAINTAINER AJ Christensen <aj@junglist.io>

ADD http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb /influxdb_latest_amd64.deb
RUN dpkg -i /influxdb_latest_amd64.deb

EXPOSE 8083 8086

CMD ["-config=/opt/influxdb/shared/config.json"]
ENTRYPOINT ["/usr/bin/influxdb"]
