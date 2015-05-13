#FROM scratch
#FROM ubuntu:14.04
FROM gliderlabs/alpine
MAINTAINER Tzu Hsiang Lin <thlin@pllab.cs.nthu.edu.tw>

RUN apk --update add bash apache2

#ADD  rootfs.tar.gz  /
COPY index.html /var/www/html/index.html
#CMD ["useradd","www-data"]


EXPOSE 80
CMD ["/etc/init.d/apache2", "start"]
ENTRYPOINT ["bin/bash"]
