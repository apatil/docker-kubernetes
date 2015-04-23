# Google Kubernetes

FROM centos:latest

ADD kubernetes /opt/go/src/github.com/GoogleCloudPlatform

RUN yum install -y epel-release make git golang
ENV GOPATH="/opt/go"
RUN /opt/go/src/github.com/GoogleCloudPlatform/kubernetes;make

ADD ./src /

RUN chmod +x /usr/local/sbin/start.sh

VOLUME ["/target", "/systemd-target"]

ENTRYPOINT ["/usr/local/sbin/start.sh"]
