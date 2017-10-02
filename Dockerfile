FROM centos:latest
MAINTAINER cmsj@tenshu.net
RUN yum install -y golang-bin git && \
    mv ~/go/bin/unifi_exporter /bin/ && \
    yum clean all && \
    rm -rf ~/go/
EXPOSE 9130
ENTRYPOINT /bin/unifi_exporter
