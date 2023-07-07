FROM ubuntu

LABEL "maintainer"="sk12k@simplilearn.net"

RUN apt-get update

RUN apt-get install -y nginx tree

RUN useradd sk12k

ENV environment production

COPY index.nginx-debian.html /var/www/html

CMD nginx -g 'daemon off;'
